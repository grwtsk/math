# finalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b101ac18d0b58cf26ab7e2426d9850c5cfcc698c70398af745ad76dc1345e49",
  "kind": "def",
  "lexical_name": "finalize",
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
  "slug": "finalize--637cf7ebd6a05923d1c293dc",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 618,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:637cf7ebd6a05923d1c293dc5dbc60f433f616f6f6900cba9440ac1c6a333485",
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

Occurrence: `declaration:0b101ac18d0b58cf26ab7e2426d9850c5cfcc698c70398af745ad76dc1345e49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def finalize : M Expr := do
  withTraceNode `Elab.app.finalize (fun
      | .ok e => return m!"{e} : {← inferType e}"
      | .error ex => return m!"error finalizing{indentD (← get).f}\n{ex.toMessageData}") do
    let s ← get
    let mut e := s.f
    trace[Elab.app.finalize] "initial: {e}"
    let ref ← getRef
    -- Register the error context of implicits
    for mvarId in s.toSetErrorCtx do
      registerMVarErrorImplicitArgInfo mvarId ref e
    unless s.etaArgs.isEmpty do
      e ← mkLambdaFVars (s.etaArgs.map (·.2)) e
      e := e.updateBinderNames (s.etaArgs.map (some <| ·.1)).toList
      trace[Elab.app.finalize] "after etaArgs, {e}"
    /-
      Remark: we should not use `s.fType` as `eType` even when
      `s.etaArgs.isEmpty`. Reason: it may have been unfolded.
    -/
    let eType ← inferType e
    /- Recall that `resultTypeOutParam? = some mvarId` if the function result type is the output parameter
      of a local instance. The value of this parameter may be inferable using other arguments. For example,
      suppose we have
      ```lean
      def add_one {X} [Trait X] [One (Trait.R X)] [HAdd X (Trait.R X) X] (x : X) : X := x + (One.one : (Trait.R X))
      ```
      from test `948.lean`. There are multiple ways to infer `X`, and we don't want to mark it as `syntheticOpaque`.
    -/
    if let some outParamMVarId := s.resultTypeOutParam? then
      synthesizeAppInstMVars
      /- If `eType != mkMVar outParamMVarId`, then the
        function is partially applied, and we do not apply default instances. -/
      if !(← outParamMVarId.isAssigned) && eType.isMVar && eType.mvarId! == outParamMVarId then
        synthesizeSyntheticMVarsUsingDefault
        return e
      else
        return e
    if let some expectedType := s.expectedType? then
      trySynthesizeAppInstMVars
      -- Try to propagate expected type. Ignore if types are not definitionally equal, caller must handle it.
      discard <| withTraceNodeBefore `Elab.app.finalize (fun _ => return m!"propagating expected type: {expectedType} =?= {eType}") do
        if (← isDefEq expectedType eType) then
          trace[Elab.app.finalize] "propagated: {expectedType} =?= {eType}"
          return true
        else
          return false
    synthesizeAppInstMVars
    return e

/--
  Return `true` if the next argument to be processed is the outparam of a local instance, and it the result type
  of the function.

  For example, suppose we have the class
  ```lean
  class Get (Cont : Type u) (Idx : Type v) (Elem : outParam (Type w)) where
    get (xs : Cont) (i : Idx) : Elem
  ```
  And the current value of `fType` is
  ```
  {Cont : Type u_1} → {Idx : Type u_2} → {Elem : Type u_3} → [self : Get Cont Idx Elem] → Cont → Idx → Elem
  ```
  then the result returned by this method is `false` since `Cont` is not the output param of any local instance.
  Now assume `fType` is
  ```
  {Elem : Type u_3} → [self : Get Cont Idx Elem] → Cont → Idx → Elem
  ```
  then, the method returns `true` because `Elem` is an output parameter for the local instance `[self : Get Cont Idx Elem]`.

  Remark: if `resultIsOutParamSupport` is `false`, this method returns `false`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
