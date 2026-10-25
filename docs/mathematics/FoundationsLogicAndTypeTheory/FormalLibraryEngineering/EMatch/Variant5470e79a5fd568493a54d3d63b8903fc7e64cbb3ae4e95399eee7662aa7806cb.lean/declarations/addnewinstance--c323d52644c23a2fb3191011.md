# addNewInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e9337ef40a84cd48c3881dca2b1aab08494b3ed13aa95c6a92f998b51ec941e",
  "kind": "def",
  "lexical_name": "addNewInstance",
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
  "slug": "addnewinstance--c323d52644c23a2fb3191011",
  "source": {
    "blob": "e4b44c9d3be89b0d60e18832499bb47a33fc7dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 497,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c323d52644c23a2fb31910115db0ebca4906b76b7307b39db1f6fe29a423917b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e9337ef40a84cd48c3881dca2b1aab08494b3ed13aa95c6a92f998b51ec941e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addNewInstance (thm : EMatchTheorem) (proof : Expr) (generation : Nat)
    (guards : List TheoremGuard) (sources : PHashSet EMatchDiagNode) : M Unit := do
  let proof ← instantiateMVars proof
  if grind.debug.proofs.get (← getOptions) then
    check proof
  let prop ← inferType proof
  let us ← getUnassignedLevelMVars prop
  if !us.isEmpty then
    let pps ← assignUnassignedLevelMVars us proof prop
    if pps.isEmpty then
      reportEMatchIssue! "failed to instantiate `{thm.origin.pp}`, proposition contains universe metavariables{indentExpr prop}"
      return ()
    for (proof, prop) in pps do
      go proof prop
  else
    go proof prop
where
  go (proof prop : Expr) : M Unit := do
    let mut proof := proof
    let mut prop := prop
    if (← getConfig).trace || (← getConfig).markInstances then
      /-
      **Note**: It is incorrect to use `mkFreshId` here because we use `withFreshNGen` at
      `instantiateTheorem`. So, we generate an unique id by using the number of instances generated so far.
      The code relies on the fact that `addTheoremInstance` bumps this counter.
      -/
      let uniqueId := Name.num `_grind_inst (← getNumTheoremInstances)
      proof := markTheoremInstanceProof proof uniqueId
      modify fun s => { s with instanceMap := s.instanceMap.insert uniqueId thm }
    if (← isMatchEqLikeDeclName thm.origin.key) then
      prop ← annotateMatchEqnType prop (← read).initApp
      -- We must add a hint here because `annotateMatchEqnType` introduces `simpMatchDiscrsOnly` and
      -- `Grind.PreMatchCond` which are not reducible.
      proof := mkExpectedPropHint proof prop
    else if (← isEqnThm thm.origin.key) then
      prop ← annotateEqnTypeConds prop
      -- We must add a hint because `annotateEqnTypeConds` introduces `Grind.PreMatchCond`
      -- which is not reducible.
      proof := mkExpectedPropHint proof prop
    /-
    **Note**: Restores grind transparency setting because with use `withDefault` at `instantiateTheorem`.
    -/
    withGTransparency do
      addTheoremInstance thm proof prop (generation+1) guards sources.toList

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4b44c9d3be89b0d60e18832499bb47a33fc7dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
