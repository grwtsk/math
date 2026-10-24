# sum_div_pow_sq_le_div_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e6af85d-1973-6a9e-09ff-47e6c61d9c36",
  "kind": "theorem",
  "lexical_name": "sum_div_pow_sq_le_div_sq",
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
  "slug": "sum-div-pow-sq-le-div-sq--e39f129700d4649475ba48c0",
  "source": {
    "blob": "53c11322aab29bc3cf0b63f35884f96d5b1dc65a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 252,
    "path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e39f129700d4649475ba48c0f5dbdc7d65a3e0bf37666c4ba07fba5c96a4a065",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e6af85d-1973-6a9e-09ff-47e6c61d9c36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_div_pow_sq_le_div_sq (N : ℕ) {j : ℝ} (hj : 0 < j) {c : ℝ} (hc : 1 < c) :
    (∑ i in (range N).filter (j < c ^ ·), (1 : ℝ) / (c ^ i) ^ 2) ≤ c ^ 3 * (c - 1)⁻¹ / j ^ 2 := by
  have cpos : 0 < c := zero_lt_one.trans hc
  have A : (0 : ℝ) < c⁻¹ ^ 2 := sq_pos_of_pos (inv_pos.2 cpos)
  have B : c ^ 2 * ((1 : ℝ) - c⁻¹ ^ 2)⁻¹ ≤ c ^ 3 * (c - 1)⁻¹ := by
    rw [← div_eq_mul_inv, ← div_eq_mul_inv, div_le_div_iff _ (sub_pos.2 hc)]
    swap
    · exact sub_pos.2 (pow_lt_one (inv_nonneg.2 cpos.le) (inv_lt_one hc) two_ne_zero)
    have : c ^ 3 = c ^ 2 * c := by ring
    simp only [mul_sub, this, mul_one, inv_pow, sub_le_sub_iff_left]
    rw [mul_assoc, mul_comm c, ← mul_assoc, mul_inv_cancel (sq_pos_of_pos cpos).ne', one_mul]
    simpa using pow_le_pow hc.le one_le_two
  calc
    (∑ i in (range N).filter fun i => j < c ^ i, (1 : ℝ) / (c ^ i) ^ 2) ≤
        ∑ i in Ico ⌊Real.log j / Real.log c⌋₊ N, (1 : ℝ) / (c ^ i) ^ 2 := by
      refine'
        sum_le_sum_of_subset_of_nonneg _ fun i _hi _hident => div_nonneg zero_le_one (sq_nonneg _)
      intro i hi
      simp only [mem_filter, mem_range] at hi
      simp only [hi.1, mem_Ico, and_true_iff]
      apply Nat.floor_le_of_le
      apply le_of_lt
      rw [div_lt_iff (Real.log_pos hc), ← Real.log_pow]
      exact Real.log_lt_log hj hi.2
    _ = ∑ i in Ico ⌊Real.log j / Real.log c⌋₊ N, (c⁻¹ ^ 2) ^ i := by
      congr 1 with i
      simp [← pow_mul, mul_comm]
    _ ≤ (c⁻¹ ^ 2) ^ ⌊Real.log j / Real.log c⌋₊ / ((1 : ℝ) - c⁻¹ ^ 2) := by
      apply geom_sum_Ico_le_of_lt_one (sq_nonneg _)
      rw [sq_lt_one_iff (inv_nonneg.2 (zero_le_one.trans hc.le))]
      exact inv_lt_one hc
    _ ≤ (c⁻¹ ^ 2) ^ (Real.log j / Real.log c - 1) / ((1 : ℝ) - c⁻¹ ^ 2) := by
      apply div_le_div _ _ _ le_rfl
      · apply Real.rpow_nonneg_of_nonneg (sq_nonneg _)
      · rw [← Real.rpow_nat_cast]
        apply Real.rpow_le_rpow_of_exponent_ge A
        · exact pow_le_one _ (inv_nonneg.2 (zero_le_one.trans hc.le)) (inv_le_one hc.le)
        · exact (Nat.sub_one_lt_floor _).le
      · simpa only [inv_pow, sub_pos] using inv_lt_one (one_lt_pow hc two_ne_zero)
    _ = c ^ 2 * ((1 : ℝ) - c⁻¹ ^ 2)⁻¹ / j ^ 2 := by
      have I : (c⁻¹ ^ 2) ^ (Real.log j / Real.log c) = (1 : ℝ) / j ^ 2 := by
        apply Real.log_injOn_pos (Real.rpow_pos_of_pos A _)
        · rw [one_div]
          exact inv_pos.2 (sq_pos_of_pos hj)
        rw [Real.log_rpow A]
        simp only [one_div, Real.log_inv, Real.log_pow, Nat.cast_one, mul_neg,
          neg_inj]
        field_simp [(Real.log_pos hc).ne']
        ring
      rw [Real.rpow_sub A, I]
      have : c ^ 2 - 1 ≠ 0 := (sub_pos.2 (one_lt_pow hc two_ne_zero)).ne'
      field_simp [hj.ne', (zero_lt_one.trans hc).ne']
      ring
    _ ≤ c ^ 3 * (c - 1)⁻¹ / j ^ 2 := by
      apply div_le_div _ B (sq_pos_of_pos hj) le_rfl
      exact mul_nonneg (pow_nonneg cpos.le _) (inv_nonneg.2 (sub_pos.2 hc).le)

#align sum_div_pow_sq_le_div_sq sum_div_pow_sq_le_div_sq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53c11322aab29bc3cf0b63f35884f96d5b1dc65a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
