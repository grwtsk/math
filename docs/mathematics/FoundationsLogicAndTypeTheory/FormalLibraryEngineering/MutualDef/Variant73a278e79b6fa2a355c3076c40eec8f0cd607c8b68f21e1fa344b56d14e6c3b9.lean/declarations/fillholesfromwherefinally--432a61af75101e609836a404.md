# fillHolesFromWhereFinally

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68bfa210eb7e4631040b5777e192890c0e1c3a3ddf73bb877646e88fac5a716f",
  "kind": "def",
  "lexical_name": "fillHolesFromWhereFinally",
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
  "slug": "fillholesfromwherefinally--432a61af75101e609836a404",
  "source": {
    "blob": "81f3d84a62a9cfc1ef4502eb8c2e6b69618d9b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 673,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:432a61af75101e609836a40494ecb28b38f07787446aeb2e2c46e6286d3fb9e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68bfa210eb7e4631040b5777e192890c0e1c3a3ddf73bb877646e88fac5a716f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def fillHolesFromWhereFinally (name : Name) (es : Array ExprWithHoles) (whereFinally : WhereFinallyView)
    (attrs : Array Attribute) : TermElabM PUnit := do
  if whereFinally.isNone then return
  let goals := (← es.mapM fun e => e.getHoles).flatten

  -- Exit exporting context if entering proof(s), analogous to `Term.runTactic`.
  -- NOTE: when entering a proof/data mix, we must conservatively default to not changing the
  -- context.
  let wasExporting := (← getEnv).isExporting
  let isNoLongerExporting ← pure wasExporting <&&> goals.allM fun mvarId => do
    mvarId.withContext do
      isProp (← mvarId.getType)

  let mut goals' := goals
  if isNoLongerExporting then
    goals' ← goals.mapM fun mvarId => do
      let mvarDecl ← getMVarDecl mvarId
      return (← mkFreshExprMVarAt mvarDecl.lctx mvarDecl.localInstances mvarDecl.type mvarDecl.kind mvarDecl.userName).mvarId!

  withExporting (isExporting := wasExporting && !isNoLongerExporting) do
  Lean.Elab.Term.TermElabM.run' do
  withDeprecationContextFromAttrs attrs do
  Term.withDeclName name do
  withRef whereFinally.ref do
    unless goals.isEmpty do
      -- make info from `runTactic` available
      goals'.forM fun goal => pushInfoTree (.hole goal)
      -- assign goals
      let remainingGoals ← Tactic.run goals'[0]! do
        Tactic.setGoals goals'.toList
        Tactic.withTacticInfoContext whereFinally.ref do
          Tactic.evalTactic whereFinally.tactic
      -- complain if any goals remain
      unless remainingGoals.isEmpty do
        Term.reportUnsolvedGoals remainingGoals
      if isNoLongerExporting then
        for mvarId in goals, mvarId' in goals' do
          let mut e ← instantiateExprMVars (.mvar mvarId')
          if !e.isFVar then
            e ← mvarId'.withContext do
              withExporting (isExporting := wasExporting) do
                abstractProof e
          mvarId.assign e

namespace MutualClosure

/-- A mapping from FVarId to Set of FVarIds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f3d84a62a9cfc1ef4502eb8c2e6b69618d9b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
