# floor_square_log_square_div_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e47e7b1e9a623ff3fd6d8ea67bdedca6787818e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e299302-902a-38ef-a90f-f27f768eb804",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1f7ed28-d6eb-be76-26e7-2e1c5753a58a",
  "kind": "theorem",
  "lexical_name": "floor_square_log_square_div_bound",
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
  "slug": "floor-square-log-square-div-bound--d783d64ccdba66b7e2583004",
  "source": {
    "blob": "e47e7b1e9a623ff3fd6d8ea67bdedca6787818e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Varianta4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d783d64ccdba66b7e2583004d5011c329d6b88c702c60a2112d16f951926a087",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Varianta4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1f7ed28-d6eb-be76-26e7-2e1c5753a58a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem floor_square_log_square_div_bound (A : ℝ) (hA : 1 ≤ A) :
    (Real.log (⌊A ^ 2⌋₊ : ℝ)) ^ 2 / A ≤ 16 := by
  have hA0 : 0 < A := by linarith
  have hfloor : 1 ≤ ⌊A ^ 2⌋₊ := (Nat.one_le_floor_iff _).mpr (by nlinarith)
  have hfR : (1 : ℝ) ≤ ⌊A ^ 2⌋₊ := by exact_mod_cast hfloor
  have hL0 : 0 ≤ Real.log (⌊A ^ 2⌋₊ : ℝ) := Real.log_nonneg hfR
  have hLA : Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ 2 * Real.log A := by
    calc
      Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ Real.log (A ^ 2) :=
        Real.log_le_log (by linarith) (Nat.floor_le (sq_nonneg A))
      _ = 2 * Real.log A := by rw [Real.log_pow]; norm_num
  have hs0 : 0 < Real.sqrt A := Real.sqrt_pos.2 hA0
  have hlog := Real.log_le_sub_one_of_pos hs0
  rw [Real.log_sqrt (le_of_lt hA0)] at hlog
  have hLs : Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ 4 * Real.sqrt A := by linarith
  have hs2 := Real.sq_sqrt (le_of_lt hA0)
  apply (div_le_iff₀ hA0).2
  nlinarith [sq_nonneg (4 * Real.sqrt A - Real.log (⌊A ^ 2⌋₊ : ℝ))]

/-- The literal lower window costs at most eighty, uniformly for all `A ≥ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Varianta4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Varianta4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e47e7b1e9a623ff3fd6d8ea67bdedca6787818e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
