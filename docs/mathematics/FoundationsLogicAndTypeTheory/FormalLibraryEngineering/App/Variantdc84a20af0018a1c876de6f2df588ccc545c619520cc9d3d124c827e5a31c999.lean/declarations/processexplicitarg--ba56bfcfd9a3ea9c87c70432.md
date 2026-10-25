# processExplicitArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41b93cdb65e102aed5f5da30875e9ce09f50e33047330d0a84022fe151aef06d",
  "kind": "def",
  "lexical_name": "processExplicitArg",
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
  "slug": "processexplicitarg--ba56bfcfd9a3ea9c87c70432",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 889,
    "line": 774,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba56bfcfd9a3ea9c87c7043268c0ea5acbd5cd97ab372f668811b8e6f3984fdd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41b93cdb65e102aed5f5da30875e9ce09f50e33047330d0a84022fe151aef06d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 774–889.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
  private partial def processExplicitArg (argName : Name) : M Expr := do
    if (← get).paramIdx < (← read).numImplicitParams then
      /-
      We treat the explicit argument `argName` as implicit if
      it's among the first `numImplicitParams` parameters.
      The motivation for this is class projections (issue #1851).
      In some cases, class projections can have explicit parameters. For example, in
      ```
      class Approx {α : Type} (a : α) (X : Type) : Type where
        val : X
      ```
      the type of `Approx.val` is `{α : Type} → (a : α) → {X : Type} → [self : Approx a X] → X`.
      Note that the parameter `a` is explicit since there is no way to infer it from the expected
      type or from the types of other explicit parameters.
      Being a parameter of the class, `a` is determined by the type of `self`.

      Consider
      ```
      variable {α β X Y : Type} {f' : α → β} {x' : α} [f : Approx f' (X → Y)]
      ```
      Recall that `f.val` is, to first approximation, sugar for `Approx.val (self := f)`.
      Without further refinement, this would expand to `fun f'' : α → β => Approx.val f'' f`,
      which is a type error, since `f''` must be defeq to `f'`.
      Furthermore, with projection notation, users expect all structure parameters
      to be uniformly implicit; after all, they are determined by `self`.
      To handle this, the `(self := f)` named argument is annotated with the `suppressDeps` flag.
      This causes the `a` parameter to become implicit, and `f.val` instead expands to `Approx.val f' f`.

      This feature previously was enabled for *all* explicit arguments, which confused users
      and was frequently reported as a bug (issue #1867).
      Now it is only enabled for the `self` argument in structure projections.

      We used to do this only when `(← get).args` was empty,
      but it created an asymmetry because `f.val` worked as expected,
      yet one would have to write `f.val _ x` when there are further arguments.
      -/
      return (← addImplicitArg argName)
    match (← get).args with
    | arg::args =>
      propagateExpectedType arg
      modify fun s => { s with args }
      elabAndAddNewArg argName arg
      main
    | _ =>
      if (← read).ellipsis && (← readThe Term.Context).inPattern then
        /-
        In patterns, ellipsis should always be an implicit argument, even if it is an optparam or autoparam.
        This prevents examples such as the one in #4555 from failing:
        ```lean
        match e with
        | .internal .. => sorry
        | .error .. => sorry
        ```
        The `internal` has an optparam (`| internal (id : InternalExceptionId) (extra : KVMap := {})`).

        We may consider having ellipsis suppress optparams and autoparams in general.
        We avoid doing so for now since it's possible to opt-out of them (for example with `.internal (extra := _) ..`)
        but it's not possible to opt-in.
        -/
        return ← addImplicitArg argName
      let paramType ← getParamType
      match (← read).explicit, paramType.getOptParamDefault?, paramType.getAutoParamTactic? with
      | false, some defVal, _  => addNewArg argName defVal; main
      | false, _, some (.const tacticDecl _) =>
        let env ← getEnv
        let opts ← getOptions
        match evalSyntaxConstant env opts tacticDecl with
        | Except.error err       => throwError err
        | Except.ok tacticSyntax =>
          let tacticBlock ← `(by $(⟨tacticSyntax⟩))
          /-
          We insert position information from the current ref into `stx` everywhere, simulating this being
          a tactic script inserted by the user, which ensures error messages and logging will always be attributed
          to this application rather than sometimes being placed at position (1,0) in the file.
          Placing position information on `by` syntax alone is not sufficient since incrementality
          (in particular, `Lean.Elab.Term.withReuseContext`) controls the ref to avoid leakage of outside data.
          Note that `tacticSyntax` contains no position information itself, since it is erased by `Lean.Elab.Term.quoteAutoTactic`.
          -/
          let info := (← getRef).getHeadInfo.nonCanonicalSynthetic
          let tacticBlock := tacticBlock.raw.rewriteBottomUp (·.setInfo info)
          let mvar ← mkTacticMVar (← getArgExpectedType) tacticBlock (.autoParam argName)
          -- Note(kmill): We are adding terminfo to simulate a previous implementation that elaborated `tacticBlock`.
          -- We should look into removing this since terminfo for synthetic syntax is suspect,
          -- but we noted it was necessary to preserve the behavior of the unused variable linter.
          addTermInfo' tacticBlock mvar
          addNewArg argName mvar
          main
      | false, _, some _ =>
        throwError "Internal error when elaborating function application: autoParam `{argName}` is not a constant"
      | _, _, _ =>
        if (← read).ellipsis then
          addImplicitArg argName
        else if !(← get).namedArgs.isEmpty then
          if let some depNamedArg ← findNamedArgDependsOnCurrent? then
            /-
            Dependencies of named arguments cannot be turned into eta arguments
            since they are determined by the named arguments.
            Instead we can turn them into implicit arguments.
            -/
            trace[Elab.app.args] "named arg `{depNamedArg.name}` depends on this one, adding implicit"
            addImplicitArg argName
          else
            trace[Elab.app.args] "using eta arg since there are still named arguments"
            addEtaArg argName
        else if !(← read).explicit then
          if (← hasOptAutoParams (← getFType)) then
            trace[Elab.app.args] "using eta arg since there are still optParams or autoParams"
            addEtaArg argName
          else
            finalize
        else
          finalize

  /--
    Process a `fType` of the form `{x : A} → B x`.
    This method assume `fType` is a function type -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L774).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
