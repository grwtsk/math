# x_K_le_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26477a33-b7ac-29f5-ba5d-4b93d25ef1e0",
  "kind": "theorem",
  "lexical_name": "x_K_le_X_pow",
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
  "slug": "x-k-le-x-pow--1f00b5fdd292d7ef872339a9",
  "source": {
    "blob": "38f66b3447d2c349bebeb8c76a0cd28699e32260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 416,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f00b5fdd292d7ef872339a95db31677f8b3643cbf5c84232e56c5c7903670bc",
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

Occurrence: `result:26477a33-b7ac-29f5-ba5d-4b93d25ef1e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem x_K_le_X_pow : x KIndex ≤ (X : ℝ) ^ ε := by
  have hX : 1 ≤ X := h1n.trans hnX
  have hKd' := hKd
  rw [x, if_pos KIndex_val_add_one]
  simp only [KIndex_val_add_one, Nat.cast_mul, Nat.cast_prod,
    Nat.cast_pow, ge_iff_le]
  exact_mod_cast calc
    (y K * ∏ m ∈ Finset.Ioc d n, y m ^ (m / K) : ℝ) ≤
        (y K ^ K) ^ (K⁻¹ : ℝ) *
          (∏ m ∈ Finset.Ioc d n, y m ^ m) ^ (K⁻¹ : ℝ) := by
      gcongr
      · rw [← Real.rpow_natCast_mul, mul_inv_cancel₀]
        · simp
        · simp only [ne_eq, Nat.cast_eq_zero]
          exact hK_pos.ne'
        · exact_mod_cast (hy_pos _).le
      · push_cast
        rw [← Real.finsetProd_rpow _ _ (by simp)]
        gcongr with i hi
        rw [← Real.rpow_natCast_mul, ← Real.rpow_natCast]
        · gcongr
          · exact_mod_cast hy_pos i
          · simpa only [div_eq_mul_inv] using
              (Nat.cast_div_le (α := ℝ) (m := i) (n := K))
        · simp
    _ = (∏ m ∈ {K} ∪ Finset.Ioc d n, y m ^ m) ^ (K⁻¹ : ℝ) := by
      rw [Finset.prod_union]
      · simp only [Nat.cast_prod, Nat.cast_pow, Finset.prod_singleton,
          Nat.cast_mul]
        rw [Real.mul_rpow]
        · simp
        · positivity
      · simp only [disjoint_singleton_left, mem_Ioc, not_and, not_le]
        intro h
        linarith
    _ ≤ (∏ m ∈ Finset.Icc 1 d ∪ Finset.Ioc d n, y m ^ m) ^
        (K⁻¹ : ℝ) := by
      have hprod : (∏ m ∈ {K} ∪ Finset.Ioc d n, y m ^ m : ℕ) ≤
          ∏ m ∈ Finset.Icc 1 d ∪ Finset.Ioc d n, y m ^ m := by
        apply Finset.prod_le_prod_of_subset_of_one_le'
        · intro i hi
          rcases Finset.mem_union.mp hi with hi | hi
          · have hiK : i = K := Finset.mem_singleton.mp hi
            subst i
            exact Finset.mem_union_left _ (Finset.mem_Icc.mpr ⟨hK_pos, hKd.le⟩)
          · exact Finset.mem_union_right _ hi
        · intro i hi hnot
          apply Nat.one_le_pow
          exact hy_pos i
      exact Real.rpow_le_rpow (by positivity) (by exact_mod_cast hprod) (by positivity)
    _ = (n : ℝ) ^ (K⁻¹ : ℝ) := by
      congr
      rw [prod_y_pow_eq_n]
    _ ≤ (X : ℝ) ^ (K⁻¹ : ℝ) := by
      gcongr
      exact hnX
    _ ≤ (X : ℝ) ^ ε := by
      exact Real.rpow_le_rpow_of_exponent_le (by exact_mod_cast hX) K_inv_le_eps

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38f66b3447d2c349bebeb8c76a0cd28699e32260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
