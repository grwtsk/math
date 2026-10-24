# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateVaughanDiagonalArithmetic.Variantc475eac5b4afca7182b8c58d9f0d95b98ddc11ae4a977ab00ab6fb156ac07db6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `654db9426a80c64ded724f1934761f27fb97fa01` · SHA-256 `0541f0153432dade2b57ba474d6c96a0e1d10dae90a95203b3f0dd6cc3924688`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.BetaPrimePow.Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.BetaPrimePow.Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-tandem-01a1149a/refocus-20261007/mean-audit/pins/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateVaughanDiagonalArithmetic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity

/-!
# Exact prime-power test for the Vaughan diagonal

The opposite-translation bilinear form has displacement `log m + log n`.
Its equal-index terms therefore have displacement `2 * log m`, not zero.
This finite arithmetic test identifies the long-divisor coefficient on every
prime power and the surviving prime-square coefficient after the short terms.
It does not assert positivity of the source correlation or a tail estimate.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.BetaPrimePow.Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateVaughanDiagonalArithmetic

open ArithmeticFunction EstimateVaughanIdentity

noncomputable section

/-- On a positive prime power, the only nonzero long Möbius divisor can be its prime base. -/
theorem beta_prime_pow (U p k : ℕ) (hU : 1 ≤ U) (hp : p.Prime) (hk : 1 ≤ k) :
    beta U (p ^ k) = if U < p then -1 else 0 := by
  classical
  unfold beta
  rw [Finset.sum_filter, Nat.sum_divisors_prime_pow hp]
  have hterm (j : ℕ) :
      (if U < p ^ j then (moebius (p ^ j) : ℝ) else 0) =
        if j = 1 then (if U < p then -1 else 0) else 0 := by
    by_cases hj0 : j = 0
    · subst j
      simp [not_lt.mpr hU]
    · rw [moebius_apply_prime_pow hp hj0]
      by_cases hj1 : j = 1
      · subst j
        simp
      · simp [hj1]
  simp_rw [hterm]
  simp [show 1 < k + 1 by omega]

/-- On the Mangoldt support the diagonal coefficient is exactly a long-base filter. -/
theorem mangoldt_mul_beta (U n : ℕ) (hU : 1 ≤ U) :
    vonMangoldt n * beta U n =
      if U < n.minFac then -vonMangoldt n else 0 := by
  by_cases hn : IsPrimePow n
  · obtain ⟨p, k, hp, hk, rfl⟩ := (isPrimePow_nat_iff n).mp hn
    rw [beta_prime_pow U p k hU hp hk, Nat.pow_minFac hk.ne', hp.minFac_eq]
    split_ifs <;> ring
  · rw [vonMangoldt_eq_zero_iff.mpr hn]
    simp

/-- Its magnitude is elementary and independent of the long-divisor count. -/
theorem mangoldt_mul_beta_abs_le (U n : ℕ) (hU : 1 ≤ U) :
    |vonMangoldt n * beta U n| ≤ vonMangoldt n := by
  rw [mangoldt_mul_beta U n hU]
  split_ifs
  · rw [abs_neg, abs_of_nonneg vonMangoldt_nonneg]
  · simp [vonMangoldt_nonneg]

/-- The exact coefficient of the equal-index prime term in the long-long sector. -/
theorem long_diagonal_prime_coefficient (U p : ℕ) (hU : 1 ≤ U)
    (hp : p.Prime) (hUp : U < p) :
    vonMangoldt p * beta U p = -Real.log (p : ℝ) := by
  have hb := beta_prime_pow U p 1 hU hp (by omega)
  simp only [pow_one, if_pos hUp] at hb
  rw [hb, vonMangoldt_apply_prime hp]
  ring

/-- The combined three short arithmetic coefficients, before the actual source weight. -/
def shortVaughanCoefficient (U n : ℕ) : ℝ :=
  (shortPart U vonMangoldt + shortPart U (moebius : ArithmeticFunction ℝ) * log -
    shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt *
      (zeta : ArithmeticFunction ℝ)) n

/-- At a prime square beyond the short cutoff the entire long-long coefficient is its diagonal. -/
theorem long_prime_square_coefficient (U p : ℕ) (hU : 1 ≤ U)
    (hp : p.Prime) (hUp : U < p) :
    (longPart U (moebius : ArithmeticFunction ℝ) * longPart U vonMangoldt *
      (zeta : ArithmeticFunction ℝ)) (p ^ 2) = -Real.log (p : ℝ) := by
  rw [mul_comm (longPart U (moebius : ArithmeticFunction ℝ)), mul_assoc,
    ArithmeticFunction.mul_apply]
  rw [Nat.sum_divisorsAntidiagonal (fun m n ↦
    longPart U vonMangoldt m *
      (longPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) n)]
  simp_rw [← beta_eq_long_convolution]
  rw [Nat.sum_divisors_prime_pow hp]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add, pow_zero, pow_one,
    Nat.div_one]
  have hb := beta_prime_pow U p 1 hU hp (by omega)
  simp only [pow_one, if_pos hUp] at hb
  simp [longPart_apply, not_lt.mpr hU, hUp, hb, beta_one U hU,
    vonMangoldt_apply_prime hp,
    pow_two, hp.ne_zero]

/-- The short terms have twice the diagonal's magnitude at this product,
leaving a prime-power atom. -/
theorem short_prime_square_coefficient (U p : ℕ) (hU : 1 ≤ U)
    (hp : p.Prime) (hUp : U < p) :
    shortVaughanCoefficient U (p ^ 2) = 2 * Real.log (p : ℝ) := by
  have hv := congrArg (fun f : ArithmeticFunction ℝ ↦ f (p ^ 2)) (vaughan_identity U U)
  change vonMangoldt (p ^ 2) = shortVaughanCoefficient U (p ^ 2) +
    (longPart U (moebius : ArithmeticFunction ℝ) * longPart U vonMangoldt *
      (zeta : ArithmeticFunction ℝ)) (p ^ 2) at hv
  rw [long_prime_square_coefficient U p hU hp hUp,
    vonMangoldt_apply_pow (by norm_num : (2 : ℕ) ≠ 0), vonMangoldt_apply_prime hp] at hv
  linarith

/-- The source-weighted prime-square diagonal and three short terms leave this literal atom. -/
theorem prime_square_short_diagonal_remainder (U p : ℕ) (hU : 1 ≤ U)
    (hp : p.Prime) (hUp : U < p) (w : ℝ) :
    shortVaughanCoefficient U (p ^ 2) * w +
      (vonMangoldt p * beta U p) * w = Real.log (p : ℝ) * w := by
  rw [short_prime_square_coefficient U p hU hp hUp,
    long_diagonal_prime_coefficient U p hU hp hUp]
  ring

/-- The mismatch is nonzero at coefficient level; no sign of the eventual kernel is inferred. -/
theorem prime_square_short_diagonal_coefficient_pos (U p : ℕ) (hU : 1 ≤ U)
    (hp : p.Prime) (hUp : U < p) :
    0 < shortVaughanCoefficient U (p ^ 2) + vonMangoldt p * beta U p := by
  rw [short_prime_square_coefficient U p hU hp hUp,
    long_diagonal_prime_coefficient U p hU hp hUp]
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  linarith [Real.log_pos hp1]

end
end EstimateVaughanDiagonalArithmetic
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
