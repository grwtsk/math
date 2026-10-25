# collectVarInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:556eb18f9b075b157281537e51f87c265f41852bf703909cd040bca788542b77",
  "kind": "def",
  "lexical_name": "collectVarInfo",
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
  "slug": "collectvarinfo--fe4b3b6a85ed8a8e7417f6d7",
  "source": {
    "blob": "573ab04baadde3fd6607bfd6267d3a6f9d797700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe4b3b6a85ed8a8e7417f6d7964eca4a8a63ca9615e183ec96e8fdd96e706cb2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:556eb18f9b075b157281537e51f87c265f41852bf703909cd040bca788542b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def collectVarInfo : GoalM (Array VarInfo) := do
  let (_, info) ← go |>.run (Array.replicate (← get').vars.size {})
  return info
where
  go : CollectM Unit := do
    let s ← get'
    for x in [: s.vars.size] do
      unless (← eliminated x) do
        for c in s.lowers[x]! do
          visitPoly c.p
        for c in s.uppers[x]! do
          visitPoly c.p
        if let some c := s.dvds[x]! then
          updateDvd c.d.natAbs x

  visitPoly : Poly → CollectM Unit
    | .num .. => return ()
    | .add a x p => do updateVarCoeff a x; visitPoly p

/-!
We order variables in decreasing order of "cost".
We use the lexicographical order of two different costs.
The first one is the `max (min lowerCoeff upperCoeff) dvdCoeff`.
Recall that we use cooper-left if the coefficient of the lower bound is smaller, and cooper-right otherwise.
This is way we use the `min lowerCoeff upperCoeff`. The coefficient of the divisibility constraint also
impacts the size of the search space.
Then, we break ties using the max of all of them, and then the variable original order.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `573ab04baadde3fd6607bfd6267d3a6f9d797700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
