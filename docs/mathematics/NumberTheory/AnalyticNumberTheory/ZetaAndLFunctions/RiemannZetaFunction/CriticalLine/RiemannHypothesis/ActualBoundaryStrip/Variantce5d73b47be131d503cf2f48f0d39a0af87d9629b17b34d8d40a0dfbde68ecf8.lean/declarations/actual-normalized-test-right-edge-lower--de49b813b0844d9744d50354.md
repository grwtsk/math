# actual_normalized_test_right_edge_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9d576c0146c0a10b15590ad414b0d10180ece98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87a17e29-b896-1397-6fd2-d375b96590bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad4631db-4bfe-a716-6ea9-a1b4ed1076e0",
  "kind": "theorem",
  "lexical_name": "actual_normalized_test_right_edge_lower",
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
  "slug": "actual-normalized-test-right-edge-lower--de49b813b0844d9744d50354",
  "source": {
    "blob": "a9d576c0146c0a10b15590ad414b0d10180ece98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBoundaryStrip/Variantce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de49b813b0844d9744d50354ea64a2ead769625579a0d2aeb5ee26d601e20680",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBoundaryStrip/Variantce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad4631db-4bfe-a716-6ea9-a1b4ed1076e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_normalized_test_right_edge_lower (A δ : ℝ) (hA : 4 ≤ A)
    (hδ0 : 0 ≤ δ) (hδ1 : δ ≤ 1) :
    δ ^ 2 / (A ^ 4 * Real.sqrt A) ≤
      normalizedTest explicitSecondDerivative A (A - δ) := by
  have hp : 0 < A := by linarith
  have hZp : 0 < sourceNormalization A := source_normalization_pos A (by linarith)
  have hsZ : 0 < Real.sqrt (sourceNormalization A) := Real.sqrt_pos.mpr hZp
  have hZa : Real.sqrt (sourceNormalization A) ≤ 1 :=
    Real.sqrt_le_one.mpr (actual_normalization_le_one_of_four_le A hA)
  have hsa : 0 < Real.sqrt A := Real.sqrt_pos.mpr hp
  have hD : 0 < A ^ 4 * Real.sqrt A := by positivity
  have hx : A - δ ∈ Set.Icc (-A) A := by constructor <;> linarith
  rw [normalizedTest_eq_indicator A hp, Set.indicator_of_mem hx]
  let v := δ / A
  let u := 1 - v
  let s := 2 - v
  let B := 8 * (7 * u ^ 2 - 1) - δ ^ 2 * s ^ 2 / 4
  have hv0 : 0 ≤ v := by dsimp [v]; positivity
  have hv1 : v ≤ 1 / 4 := by
    dsimp [v]
    apply (div_le_iff₀ hp).mpr
    linarith
  have hu0 : 3 / 4 ≤ u := by dsimp [u]; linarith
  have hu1 : u ≤ 1 := by dsimp [u]; linarith
  have hs0 : 1 ≤ s := by dsimp [s]; linarith
  have hs1 : s ≤ 2 := by dsimp [s]; linarith
  have hu2 : 9 / 16 ≤ u ^ 2 := by nlinarith
  have hδ2 : δ ^ 2 ≤ 1 := by nlinarith
  have hs2 : s ^ 2 ≤ 4 := by nlinarith
  have hprod : δ ^ 2 * s ^ 2 ≤ 4 := by
    nlinarith [mul_le_mul_of_nonneg_left hs2 (sq_nonneg δ)]
  have hB : 22 ≤ B := by dsimp [B]; nlinarith
  have hs2l : 1 ≤ s ^ 2 := by nlinarith
  have hnum : δ ^ 2 ≤ δ ^ 2 * s ^ 2 * B := by
    have h₁ := mul_le_mul_of_nonneg_left hs2l (sq_nonneg δ)
    have h₂ := mul_le_mul_of_nonneg_left hB (mul_nonneg (sq_nonneg δ) (sq_nonneg s))
    nlinarith
  have he : normalizedInterior A (A - δ) =
      (δ ^ 2 * s ^ 2 * B) /
        (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
    dsimp [normalizedInterior, secondInterior, bumpInterior, B, s, u, v]
    field_simp
    ring
  rw [he]
  calc
    δ ^ 2 / (A ^ 4 * Real.sqrt A) ≤
        δ ^ 2 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
      apply div_le_div_of_nonneg_left (sq_nonneg δ) (by positivity)
      nlinarith
    _ ≤ _ := (div_le_div_iff_of_pos_right (by positivity)).mpr hnum

/-- Evenness gives the matching lower bound at the other actual support edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBoundaryStrip/Variantce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBoundaryStrip/Variantce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9d576c0146c0a10b15590ad414b0d10180ece98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
