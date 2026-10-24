# subpolynomialCoreGrowingShiftQuarticParallelogramBudget_iff_collisionFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d84efd2-73b3-13d6-85de-539fb3a205b3",
  "kind": "theorem",
  "lexical_name": "subpolynomialCoreGrowingShiftQuarticParallelogramBudget_iff_collisionFree",
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
  "slug": "subpolynomialcoregrowingshiftquarticparallelogrambudget-iff-collisionfre--eaaf5c5647d7cfb2f31f61c8",
  "source": {
    "blob": "d48c06b81e46edcaacc587e62a67694762b20499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 166,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaaf5c5647d7cfb2f31f61c8d8ec561af952771c6b89fe618dd657843f2c3757",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d84efd2-73b3-13d6-85de-539fb3a205b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialCoreGrowingShiftQuarticParallelogramBudget_iff_collisionFree :
    SubpolynomialCoreGrowingShiftQuarticParallelogramBudget ↔
      SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget := by
  constructor
  · intro hPara δ hδ
    obtain ⟨C, hC, hbound⟩ := hPara δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftQuarticCollisionFreeEnergy_eq_parallelogram]
    exact hbound j
  · intro hFree δ hδ
    obtain ⟨C, hC, hbound⟩ := hFree δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftQuarticCollisionFreeEnergy_eq_parallelogram]
    exact hbound j

/-- Centered squarefree collision-line compensation and the exact affine
parallelogram budget retain the conditional endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d48c06b81e46edcaacc587e62a67694762b20499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
