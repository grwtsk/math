# X_pow_mul_prod_le_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3d9a4b8-4e1c-d0f7-8c4d-43da24ded526",
  "kind": "theorem",
  "lexical_name": "X_pow_mul_prod_le_radical",
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
  "slug": "x-pow-mul-prod-le-radical--cbc0ac14811c94b3bcd94a23",
  "source": {
    "blob": "38f66b3447d2c349bebeb8c76a0cd28699e32260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 475,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc0ac14811c94b3bcd94a23c75775e19732ac53afa57d07384a21ef34580013",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3d9a4b8-4e1c-d0f7-8c4d-43da24ded526`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem X_pow_mul_prod_le_radical :
    (X : ℝ) ^ (-ε) * ∏ j, x j ≤ (radical n : ℕ) := by
  calc
    (X : ℝ) ^ (-ε) * ∏ j, x j ≤
        ∏ j : Fin d, if j ≠ KIndex then x j else 1 := by
      rw [Real.rpow_neg (by positivity)]
      apply inv_mul_le_of_le_mul₀
      · positivity
      · positivity
      · simp only [Nat.cast_prod, Nat.cast_ite, Nat.cast_one]
        calc
          (∏ j : Fin d, x j : ℝ) ≤
              (x KIndex : ℝ) *
                ∏ j : Fin d, if j ≠ KIndex then (x j : ℝ) else 1 := by
            norm_cast
            rw [← Finset.prod_filter, Finset.filter_ne',
              Finset.mul_prod_erase]
            exact Finset.mem_univ _
          _ ≤ (X : ℝ) ^ ε *
                ∏ j : Fin d, if j ≠ KIndex then (x j : ℝ) else 1 := by
            gcongr
            exact x_K_le_X_pow
    _ = ∏ j : Fin d,
        if j.val ≠ K - 1 then y (j.val + 1) else 1 := by
      have hKIndex (j : Fin d) : j.val = K - 1 ↔ j = KIndex := by
        have hlt : K - 1 < d := lt_of_le_of_lt (Nat.sub_le K 1) hKd
        constructor
        · intro hj
          ext
          simpa [KIndex, Fin.ofNat, Nat.mod_eq_of_lt hlt] using hj
        · intro hj
          rw [hj]
          simp [KIndex, Fin.ofNat, Nat.mod_eq_of_lt hlt]
      norm_cast
      simp_rw [← Finset.prod_filter, hKIndex]
      apply Finset.prod_congr
      · ext j
        simp
      · simp only [Finset.mem_filter, Finset.mem_univ, true_and]
        intro j hj
        have hnot : j.val + 1 ≠ K := by
          intro h
          have hv : j.val = K - 1 := by omega
          exact hj ((hKIndex j).mp hv)
        simp [x, mul_one, hnot]
    _ ≤ ∏ j : Fin d,
        if j.val + 1 ≠ K then y (j.val + 1) else 1 := by
      gcongr with j
      apply le_of_eq
      apply if_congr
      · apply Iff.not
        rw [eq_comm, Nat.sub_eq_iff_eq_add, eq_comm]
        have := two_lt_K
        omega
      · rfl
      · rfl
    _ = ∏ m ∈ Finset.range d with m + 1 ≠ K, y (m + 1) := by
      norm_cast
      rw [Finset.prod_filter,
        Fin.prod_univ_eq_prod_range
          (fun j ↦ if j + 1 ≠ K then y (j + 1) else 1) d]
    _ ≤ ∏ m ∈ Finset.range d, y (m + 1) := by
      norm_cast
      apply Finset.prod_le_prod_of_subset_of_one_le'
      · exact Finset.filter_subset _ _
      · intro i hi hnot
        exact (hy_pos _)
    _ = ∏ m ∈ Finset.Icc 1 d, y m := by
      norm_cast
      have hmap :
          (Finset.range d).map (addRightEmbedding 1) = Finset.Icc 1 d := by
        have h1d : 1 ≤ d := hd_pos
        rw [Nat.range_eq_Icc_zero_sub_one _ (by omega),
          Finset.map_add_right_Icc]
        simp [h1d]
      simp [← hmap, Finset.prod_map]
    _ ≤ ∏ m ∈ Finset.Icc 1 d ∪ Finset.Ioc d n, y m := by
      norm_cast
      apply Finset.prod_le_prod_of_subset_of_one_le'
      · simp
      · intro i hi hnot
        exact (hy_pos _)
    _ = (radical n : ℕ) := by
      exact_mod_cast prod_y_eq_radical_n

/-- Fixed-parameter quantitative anatomic factorization. This is the complete
arithmetic compression step used in the source proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38f66b3447d2c349bebeb8c76a0cd28699e32260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
