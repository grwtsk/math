# sum_div_pow_sq_le_div_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c1144e0c5a634f4e2264fc1d2a84add4d01f3e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:939978e5-99ad-9f70-7d97-c72de08c3491",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a41e849d-9db7-3b7d-ae94-3663a97532f1",
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
  "slug": "sum-div-pow-sq-le-div-sq--c755d56e373a1d16f15d74f7",
  "source": {
    "blob": "8c1144e0c5a634f4e2264fc1d2a84add4d01f3e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variantcb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c755d56e373a1d16f15d74f707695253869ac434fd50a1d90bfbd10202ac54c3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FloorPow/Variantcb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a41e849d-9db7-3b7d-ae94-3663a97532f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_div_pow_sq_le_div_sq (N : ℕ) {j : ℝ} (hj : 0 < j) {c : ℝ} (hc : 1 < c) :
    (∑ i ∈ range N with j < c ^ i, (1 : ℝ) / (c ^ i) ^ 2) ≤ c ^ 3 * (c - 1)⁻¹ / j ^ 2 := by
  have cpos : 0 < c := zero_lt_one.trans hc
  have A : (0 : ℝ) < c⁻¹ ^ 2 := sq_pos_of_pos (inv_pos.2 cpos)
  have B : c ^ 2 * ((1 : ℝ) - c⁻¹ ^ 2)⁻¹ ≤ c ^ 3 * (c - 1)⁻¹ := by
    rw [← div_eq_mul_inv, ← div_eq_mul_inv, div_le_div_iff₀ _ (sub_pos.2 hc)]
    swap
    · exact sub_pos.2 (pow_lt_one₀ (inv_nonneg.2 cpos.le) (inv_lt_one_of_one_lt₀ hc) two_ne_zero)
    have : c ^ 3 = c ^ 2 * c := by ring
    simp only [mul_sub, this, mul_one, inv_pow, sub_le_sub_iff_left]
    rw [mul_assoc, mul_comm c, ← mul_assoc, mul_inv_cancel₀ (sq_pos_of_pos cpos).ne', one_mul]
    simpa using pow_right_mono₀ hc.le one_le_two
  have C : c⁻¹ ^ 2 < 1 := pow_lt_one₀ (inv_nonneg.2 cpos.le) (inv_lt_one_of_one_lt₀ hc) two_ne_zero
  calc
    (∑ i ∈ range N with j < c ^ i, (1 : ℝ) / (c ^ i) ^ 2) ≤
        ∑ i ∈ Ico ⌊Real.log j / Real.log c⌋₊ N, (1 : ℝ) / (c ^ i) ^ 2 := by
      gcongr
      intro i hi
      simp only [mem_filter, mem_range] at hi
      simp only [hi.1, mem_Ico, and_true]
      apply Nat.floor_le_of_le
      apply le_of_lt
      rw [div_lt_iff₀ (Real.log_pos hc), ← Real.log_pow]
      exact Real.log_lt_log hj hi.2
    _ = ∑ i ∈ Ico ⌊Real.log j / Real.log c⌋₊ N, (c⁻¹ ^ 2) ^ i := by
      simp [← pow_mul, mul_comm]
    _ ≤ (c⁻¹ ^ 2) ^ ⌊Real.log j / Real.log c⌋₊ / ((1 : ℝ) - c⁻¹ ^ 2) :=
      geom_sum_Ico_le_of_lt_one (sq_nonneg _) C
    _ ≤ (c⁻¹ ^ 2) ^ (Real.log j / Real.log c - 1) / ((1 : ℝ) - c⁻¹ ^ 2) := by
      gcongr
      rw [← Real.rpow_natCast]
      exact Real.rpow_le_rpow_of_exponent_ge A C.le (Nat.sub_one_lt_floor _).le
    _ = c ^ 2 * ((1 : ℝ) - c⁻¹ ^ 2)⁻¹ / j ^ 2 := by
      have I : (c⁻¹ ^ 2) ^ (Real.log j / Real.log c) = (1 : ℝ) / j ^ 2 := by
        apply Real.log_injOn_pos (Real.rpow_pos_of_pos A _)
        · rw [Set.mem_Ioi]; positivity
        rw [Real.log_rpow A]
        simp only [one_div, Real.log_inv, Real.log_pow, mul_neg, neg_inj]
        field [(Real.log_pos hc).ne']
      rw [Real.rpow_sub A, I]
      simp
      ring
    _ ≤ c ^ 3 * (c - 1)⁻¹ / j ^ 2 := by gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FloorPow/Variantcb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FloorPow/Variantcb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c1144e0c5a634f4e2264fc1d2a84add4d01f3e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
