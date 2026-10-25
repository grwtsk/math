# elabCtors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aad913711ebbfd202d000b610f89eafc3c75dee367a0c7dd0a8f9e61353ac408",
  "kind": "def",
  "lexical_name": "elabCtors",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "elabctors--874af424a2b9cb291a0bc32b",
  "source": {
    "blob": "015f33d01dc9080041fe10e6e6abb2767f6d3f8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:874af424a2b9cb291a0bc32bc4f2fa174ad5d1162eab5f20cf72f453aa426838",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aad913711ebbfd202d000b610f89eafc3c75dee367a0c7dd0a8f9e61353ac408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def elabCtors (indFVars : Array Expr) (params : Array Expr) (r : ElabHeaderResult) : TermElabM (List Constructor) :=
  withRef r.view.ref do
  withExplicitToImplicit params do
  let indFVar := r.indFVar
  let indFamily ← isInductiveFamily params.size indFVar
  r.view.ctors.toList.mapM fun ctorView =>
    withoutExporting (when := isPrivateName ctorView.declName) do
    let (binders, paramInfoOverrides) ← elabParamInfoUpdates params ctorView.binders.getArgs (fun _ => pure true)
    Term.withAutoBoundImplicit <| Term.elabBinders binders fun ctorParams =>
      withRef ctorView.ref do
        let elabCtorType : TermElabM Expr := do
          match ctorView.type? with
          | none          =>
            if indFamily then
              throwError "Missing resulting type for constructor `{ctorView.declName}`: \
                Its resulting type must be specified because it is part of an inductive family declaration"
            return mkAppN indFVar params
          | some ctorType =>
            let type ← Term.elabType ctorType
            trace[Elab.inductive] "elabType {ctorView.declName} : {type}"
            Term.synthesizeSyntheticMVars (postpone := .yes)
            let type ← instantiateMVars type
            let type ← checkParamOccs type
            trace[Elab.inductive] "checkParamOccs {ctorView.declName} : {type}"
            forallTelescopeReducing type fun _ resultingType => do
              unless resultingType.getAppFn == indFVar do
                throwUnexpectedResultingTypeMismatch resultingType indFVar ctorView.declName ctorType
              unless (← isType resultingType) do
                throwUnexpectedResultingTypeNotType resultingType ctorView.declName ctorType
            return type
        let type ← elabCtorType
        Term.synthesizeSyntheticMVarsNoPostponing
        let ctorParams ← Term.addAutoBoundImplicits ctorParams (ctorView.declId.getTailPos? (canonicalOnly := true))
        let except (mvarId : MVarId) := ctorParams.any fun ctorParam => ctorParam.isMVar && ctorParam.mvarId! == mvarId
        /-
          We convert metavariables in the resulting type into extra parameters. Otherwise, we would not be able to elaborate
          declarations such as
          ```
          inductive Palindrome : List α → Prop where
            | nil      : Palindrome [] -- We would get an error here saying "failed to synthesize implicit argument" at `@List.nil ?m`
            | single   : (a : α) → Palindrome [a]
            | sandwich : (a : α) → Palindrome as → Palindrome ([a] ++ as ++ [a])
          ```
          We used to also collect unassigned metavariables on `ctorParams`, but it produced counterintuitive behavior.
          For example, the following declaration used to be accepted.
          ```
          inductive Foo
          | bar (x)

          #check Foo.bar
          -- @Foo.bar : {x : Sort u_1} → x → Foo
          ```
          which is also inconsistent with the behavior of auto implicits in definitions. For example, the following example was never accepted.
          ```
          def bar (x) := 1
          ```
        -/
        let extraCtorParams ← Term.collectUnassignedMVars (← instantiateMVars type) #[] except
        trace[Elab.inductive] "extraCtorParams: {extraCtorParams}"
        /- We must abstract `extraCtorParams` and `ctorParams` simultaneously to make
            sure we do not create auxiliary metavariables. -/
        let type ← mkForallFVars (extraCtorParams ++ ctorParams) type
        let type ← reorderCtorArgs type
        let type ← mkForallFVars params type
        let type := type.updateForallBinderInfos (params |>.map (fun param => paramInfoOverrides[param]?.map Prod.snd) |>.toList)
        trace[Elab.inductive] "{ctorView.declName} : {type}"
        return { name := ctorView.declName, type }
where
  /--
  Ensures that the arguments to recursive occurrences of the type family being defined match the
  parameters from the inductive definition.
  -/
  checkParamOccs (ctorType : Expr) : MetaM Expr :=
    let visit (e : Expr) : StateT (List Expr) MetaM TransformStep := do
      let f := e.getAppFn
      if indFVars.contains f then
        let mut args := e.getAppArgs
        -- Prefer throwing an "argument mismatch" error rather than a "missing parameter" one
        for i in *...min args.size params.size do
          let param := params[i]!
          let arg := args[i]!
          unless (← isDefEq param arg) do
            let (arg, param) ← addPPExplicitToExposeDiff arg param
            let msg := m!"Mismatched inductive type parameter in{indentExpr e}\nThe provided argument\
              {indentExpr arg}\nis not definitionally equal to the expected parameter{indentExpr param}"
            let noteMsg := m!"The value of parameter `{param}` must be fixed throughout the inductive \
              declaration. Consider making this parameter an index if it must vary."
            throwNamedError lean.inductiveParamMismatch (msg ++ .note noteMsg)
          args := args.set! i param
        unless args.size ≥ params.size do
          let expected := mkAppN f params
          let containingExprMsg := (← get).head?.map toMessageData |>.getD m!"<missing>"
          let msg :=
            m!"Missing parameter(s) in occurrence of inductive type: In the expression{indentD containingExprMsg}\n\
               found{indentExpr e}\nbut expected all parameters to be specified:{indentExpr expected}"
          let noteMsg :=
            m!"All occurrences of an inductive type in the types of its constructors must specify its \
              fixed parameters. Only indices can be omitted in a partial application of the type constructor."
          throwNamedError lean.inductiveParamMissing (msg ++ .note noteMsg)
        return TransformStep.done (mkAppN f args)
      else
        modify fun es => e :: es
        return .continue
    let popContainingExpr (e : Expr) : StateT (List Expr) MetaM TransformStep := do
      modify fun es => es.drop 1
      return .done e
    transform ctorType (pre := visit) (post := popContainingExpr) |>.run' [ctorType]

  throwUnexpectedResultingTypeMismatch (resultingType indFVar : Expr) (declName : Name) (ctorType : Syntax) := do
    let lazyAppMsg := MessageData.ofLazyM do
      if let some fvarId := indFVar.fvarId? then
        if let some decl := (← getLCtx).find? fvarId then
          if (← whnfD decl.type).isForall then
            return m!" an application of"
      return m!""
    throwNamedErrorAt ctorType lean.ctorResultingTypeMismatch "Unexpected resulting type for constructor `{declName}`: \
      Expected{lazyAppMsg}{indentExpr indFVar}\nbut found{indentExpr resultingType}"

  throwUnexpectedResultingTypeNotType (resultingType : Expr) (declName : Name) (ctorType : Syntax) := do
    let lazyMsg := MessageData.ofLazyM do
      let resultingTypeType ← inferType resultingType
      return indentExpr resultingTypeType
    throwNamedErrorAt ctorType lean.ctorResultingTypeMismatch "Unexpected resulting type for constructor `{declName}`: \
      Expected a type, but found{indentExpr resultingType}\nof type{lazyMsg}"

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015f33d01dc9080041fe10e6e6abb2767f6d3f8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
