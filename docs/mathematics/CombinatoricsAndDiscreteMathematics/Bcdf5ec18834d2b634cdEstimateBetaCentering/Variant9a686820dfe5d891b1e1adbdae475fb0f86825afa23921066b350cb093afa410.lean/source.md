# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Bcdf5ec18834d2b634cdEstimateBetaCentering.Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a5b6bf1acf71aab6b954df80405b5e5dc661820` · SHA-256 `87af47f25aff48f4d4e83f160ea96ddbf4950c86112eed82a7fecee5e1e3fb92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Alpha.Variantbcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Alpha.Variantbcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"bcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/bcdf5ec18834d2b634cd-EstimateBetaCentering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Algebra.Order.Floor.Semifield

/-!
# Exact finite centering of the actual Vaughan beta coefficient

Natural quotients are individually cast to real before subtraction. Counting
an interval uses the difference of two real prefix counts. No weighted signed
estimate follows from these unweighted identities.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Alpha.Variantbcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateBetaCentering

open ArithmeticFunction EstimateVaughanIdentity

noncomputable section

/-- The literal finite short-divisor mean coefficient, without an asymptotic claim. -/
def alpha (U : ℕ) : ℝ := ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) / (d : ℝ)

/-- Separate quotient casts are essential in this real finite discrepancy. -/
def floorDiscrepancy (L H d : ℕ) : ℝ :=
  ((H/d : ℕ) : ℝ) - ((L/d : ℕ) : ℝ) - ((H : ℝ)-(L : ℝ))/(d : ℝ)

/-- Centering is transparent and does not discard the original finite mean. -/
def centeredBeta (U n : ℕ) : ℝ := beta U n + alpha U

/-- The raw coefficient always retains its exact negative-mean contribution. -/
theorem beta_eq_centered_sub_alpha (U n : ℕ) :
    beta U n = centeredBeta U n - alpha U := by unfold centeredBeta; ring

/-- A real prefix count uses the canonical natural quotient count, without subtraction. -/
theorem multiples_prefix_sum (H d : ℕ) :
    (∑ n ∈ Finset.Ioc 0 H, if d ∣ n then (1 : ℝ) else 0) = ((H/d : ℕ) : ℝ) := by
  classical
  rw [← Finset.sum_filter]
  simp only [Finset.sum_const, nsmul_eq_mul, mul_one, Nat.Ioc_filter_dvd_card_eq_div]

/-- Real interval counts are differences of separately cast real prefix counts. -/
theorem multiples_interval_sum (L H d : ℕ) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, if d ∣ n then (1 : ℝ) else 0) =
      ((H/d : ℕ) : ℝ) - ((L/d : ℕ) : ℝ) := by
  have h := Finset.sum_Ioc_consecutive
    (fun n ↦ if d ∣ n then (1 : ℝ) else 0) (Nat.zero_le L) hLH
  rw [multiples_prefix_sum, multiples_prefix_sum] at h
  linarith

/-- The canonical divisor filter is a short inventory with a divisibility indicator. -/
theorem short_divisor_sum_eq_indicator (U n : ℕ) (hn : 0 < n) :
    (∑ d ∈ n.divisors.filter (fun d ↦ d ≤ U), (moebius d : ℝ)) =
      ∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0 := by
  classical
  rw [← Finset.sum_filter]
  congr 1
  ext d
  simp only [Finset.mem_filter, Nat.mem_divisors, Finset.mem_Icc]
  constructor
  · rintro ⟨⟨hd, _⟩, hdU⟩
    exact ⟨⟨Nat.pos_of_dvd_of_pos hd hn, hdU⟩, hd⟩
  · rintro ⟨⟨_, hdU⟩, hd⟩
    exact ⟨⟨hd, hn.ne'⟩, hdU⟩

/-- Exact unweighted long interval beta identity, with separately cast quotients. -/
theorem beta_interval_eq_quotients (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L)
    (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, beta U n) =
      -∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (((H/d : ℕ) : ℝ)-((L/d : ℕ) : ℝ)) := by
  classical
  have he (n : ℕ) (hn : n ∈ Finset.Ioc L H) :
      beta U n = -(∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0) := by
    have hn1 : 1 < n := by have := (Finset.mem_Ioc.mp hn).1; omega
    rw [beta_eq_delta_sub_short, if_neg (by omega), zero_sub,
      short_divisor_sum_eq_indicator U n (by omega)]
  calc
    _ = -∑ n ∈ Finset.Ioc L H,
        ∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0 := by
      rw [← Finset.sum_neg_distrib]
      exact Finset.sum_congr rfl he
    _ = -∑ d ∈ Finset.Icc 1 U,
        ∑ n ∈ Finset.Ioc L H, if d ∣ n then (moebius d : ℝ) else 0 := by
      rw [Finset.sum_comm]
    _ = _ := by
      congr 1
      apply Finset.sum_congr rfl
      intro d hd
      rw [← multiples_interval_sum L H d hLH, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      split_ifs <;> simp

/-- Centered interval identity with the finite mean and discrepancy both retained. -/
theorem beta_interval_eq_mean_discrepancy (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L)
    (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, beta U n) =
      -alpha U * ((H : ℝ)-(L : ℝ)) -
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * floorDiscrepancy L H d := by
  have h : alpha U * ((H : ℝ)-(L : ℝ)) +
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * floorDiscrepancy L H d) =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (((H/d : ℕ) : ℝ)-((L/d : ℕ) : ℝ)) := by
    rw [alpha, Finset.sum_mul, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d hd
    unfold floorDiscrepancy
    ring
  linarith [beta_interval_eq_quotients U L H hU hUL hLH]

/-- The centered unweighted sum contains only the literal finite floor discrepancy. -/
theorem centeredBeta_interval_eq_discrepancy (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L)
    (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, centeredBeta U n) =
      -∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * floorDiscrepancy L H d := by
  have hc : (∑ n ∈ Finset.Ioc L H, (1 : ℝ)) = (H : ℝ)-(L : ℝ) := by
    simpa using multiples_interval_sum L H 1 hLH
  have ha : (∑ n ∈ Finset.Ioc L H, alpha U) = alpha U * ((H : ℝ)-(L : ℝ)) := by
    rw [← hc, Finset.mul_sum]
    simp
  simp only [centeredBeta, Finset.sum_add_distrib]
  rw [ha, beta_interval_eq_mean_discrepancy U L H hU hUL hLH]
  ring

/-- Elementary unit floor-error bound, independent of any weighted covariance estimate. -/
theorem floorDiscrepancy_abs_le_one (L H d : ℕ) (hd : 1 ≤ d) :
    |floorDiscrepancy L H d| ≤ 1 := by
  have hd0 : 0 < (d : ℝ) := by exact_mod_cast (by omega : 0 < d)
  have hH := Nat.floor_le (div_nonneg (Nat.cast_nonneg H) hd0.le)
  have hL := Nat.floor_le (div_nonneg (Nat.cast_nonneg L) hd0.le)
  have hH' := Nat.lt_floor_add_one ((H : ℝ)/(d : ℝ))
  have hL' := Nat.lt_floor_add_one ((L : ℝ)/(d : ℝ))
  rw [Nat.floor_div_eq_div] at hH hL hH' hL'
  unfold floorDiscrepancy
  rw [sub_div, abs_le]
  constructor <;> linarith

/-- A finite discrepancy bound remains only unweighted arithmetic bookkeeping. -/
theorem centeredBeta_interval_abs_le (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L)
    (hLH : L ≤ H) :
    |∑ n ∈ Finset.Ioc L H, centeredBeta U n| ≤
      ∑ d ∈ Finset.Icc 1 U, |(moebius d : ℝ)| := by
  rw [centeredBeta_interval_eq_discrepancy U L H hU hUL hLH, abs_neg]
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  apply Finset.sum_le_sum
  intro d hd
  rw [abs_mul]
  exact (mul_le_mul_of_nonneg_left
    (floorDiscrepancy_abs_le_one L H d (Finset.mem_Icc.mp hd).1) (abs_nonneg _)).trans_eq
      (mul_one _)

end
end EstimateBetaCentering
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
