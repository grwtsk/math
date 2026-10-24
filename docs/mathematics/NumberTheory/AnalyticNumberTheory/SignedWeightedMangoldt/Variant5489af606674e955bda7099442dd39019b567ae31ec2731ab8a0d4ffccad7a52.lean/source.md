# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SignedWeightedMangoldt.Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab79fc8f41264567f32b4d0cfd52227cabf3fe74` · SHA-256 `dc894f31aaea4bac2833faefc268da01bd08ae450b7fe8ad28ae1d86932195e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.WeightedMangoldt.Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.WeightedMangoldt.Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"d41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/theta-next/signed-weighted-mangoldt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.ArithmeticFunction.Misc
import Mathlib.Analysis.SpecialFunctions.Stirling
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Elementary weighted-prime Mertens estimate

The exact factorial convolution and Chebyshev's bound give the uniformly bounded
error for the weighted Mangoldt sum. Abel summation removes the proper prime
powers: their weighted mass is bounded using `psi - theta = O(sqrt x)`.

The prime inventory is closed at the upper endpoint, and real cutoffs are
transported through their natural floor. The logarithmic cutoff specialization
is the arithmetic input needed for extracting the retained Vaughan diagonal.
This module supplies no bound on the signed Mangoldt–Möbius covariance.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.WeightedMangoldt.Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.WeightedPrimeMertens

open Finset Real ArithmeticFunction MeasureTheory

noncomputable section

def weightedMangoldt (N : ℕ) : ℝ :=
  ∑ n ∈ Ioc 0 N, vonMangoldt n / (n : ℝ)

theorem log_factorial_eq_sum (N : ℕ) :
    Real.log (N.factorial : ℝ) = ∑ n ∈ Ioc 0 N, Real.log (n : ℝ) := by
  induction N with
  | zero => simp
  | succ N ih =>
    rw [Nat.factorial_succ, Nat.cast_mul,
      Real.log_mul (by positivity) (by positivity), ih]
    rw [Finset.sum_Ioc_succ_top (by omega)]
    ring

theorem factorial_identity (N : ℕ) :
    Real.log (N.factorial : ℝ) =
      ∑ n ∈ Ioc 0 N, vonMangoldt n * ((N / n : ℕ) : ℝ) := by
  rw [log_factorial_eq_sum]
  simpa only [vonMangoldt_mul_zeta, ArithmeticFunction.log_apply] using
    ArithmeticFunction.sum_Ioc_mul_zeta_eq_sum (vonMangoldt : ArithmeticFunction ℝ) N

theorem natural_division_error_le_one (N n : ℕ) (hn : 0 < n) :
    (N : ℝ) / (n : ℝ) - ((N / n : ℕ) : ℝ) ≤ 1 := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn
  have heq : (n : ℝ) * ((N / n : ℕ) : ℝ) + ((N % n : ℕ) : ℝ) = N := by
    exact_mod_cast Nat.div_add_mod N n
  have hmod : ((N % n : ℕ) : ℝ) < n := by exact_mod_cast Nat.mod_lt N hn
  have hdiv : (N : ℝ) / (n : ℝ) ≤ ((N / n : ℕ) : ℝ) + 1 := by
    apply (div_le_iff₀ hnR).2
    nlinarith
  linarith

theorem factorial_le_scaled_weighted (N : ℕ) :
    Real.log (N.factorial : ℝ) ≤ (N : ℝ) * weightedMangoldt N := by
  rw [factorial_identity, weightedMangoldt, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro n hn
  have hd : ((N / n : ℕ) : ℝ) ≤ (N : ℝ) / n := Nat.cast_div_le
  calc
    vonMangoldt n * ((N / n : ℕ) : ℝ) ≤
        vonMangoldt n * ((N : ℝ) / n) :=
      mul_le_mul_of_nonneg_left hd (vonMangoldt_nonneg (n := n))
    _ = (N : ℝ) * (vonMangoldt n / (n : ℝ)) := by ring

theorem scaled_weighted_le_factorial_add_psi (N : ℕ) :
    (N : ℝ) * weightedMangoldt N ≤
      Real.log (N.factorial : ℝ) + Chebyshev.psi (N : ℝ) := by
  rw [factorial_identity, Chebyshev.psi, Nat.floor_natCast,
    ← Finset.sum_add_distrib, weightedMangoldt, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro n hn
  have hn0 := (Finset.mem_Ioc.mp hn).1
  have he := natural_division_error_le_one N n hn0
  have hm := mul_le_mul_of_nonneg_left he (vonMangoldt_nonneg (n := n))
  calc
    (N : ℝ) * (vonMangoldt n / (n : ℝ)) =
        vonMangoldt n * ((N : ℝ) / n - ((N / n : ℕ) : ℝ)) +
          vonMangoldt n * ((N / n : ℕ) : ℝ) := by ring
    _ ≤ vonMangoldt n * 1 + vonMangoldt n * ((N / n : ℕ) : ℝ) :=
      add_le_add hm le_rfl
    _ = _ := by ring

theorem log_factorial_lower (N : ℕ) (hN : 1 ≤ N) :
    (N : ℝ) * Real.log N - N ≤ Real.log (N.factorial : ℝ) := by
  have h := Stirling.le_log_factorial_stirling (Nat.ne_zero_of_lt (by omega : 0 < N))
  have hlogN : 0 ≤ Real.log (N : ℝ) := Real.log_nonneg (by exact_mod_cast hN)
  have hlogpi : 0 ≤ Real.log (2 * Real.pi) := Real.log_nonneg (by linarith [Real.two_le_pi])
  linarith

theorem log_factorial_upper (N : ℕ) :
    Real.log (N.factorial : ℝ) ≤ (N : ℝ) * Real.log N := by
  have hfac : (N.factorial : ℝ) ≤ (N : ℝ) ^ N := by
    exact_mod_cast Nat.factorial_le_pow N
  have h := Real.log_le_log (by positivity : (0 : ℝ) < N.factorial) hfac
  simpa only [Real.log_pow] using h

theorem weightedMangoldt_sub_log_bounds (N : ℕ) (hN : 1 ≤ N) :
    -1 ≤ weightedMangoldt N - Real.log N ∧
      weightedMangoldt N - Real.log N ≤ Real.log 4 + 4 := by
  have hN0 : (0 : ℝ) < N := by exact_mod_cast (by omega : 0 < N)
  have hlow := (log_factorial_lower N hN).trans (factorial_le_scaled_weighted N)
  have hupp := scaled_weighted_le_factorial_add_psi N
  have hfac := log_factorial_upper N
  have hpsi := Chebyshev.psi_le_const_mul_self (x := (N : ℝ)) (by positivity)
  constructor <;> nlinarith

theorem weightedMangoldt_mertens (N : ℕ) (hN : 1 ≤ N) :
    |weightedMangoldt N - Real.log N| ≤ Real.log 4 + 4 := by
  have h := weightedMangoldt_sub_log_bounds N hN
  have hlog : 0 ≤ Real.log (4 : ℝ) := Real.log_nonneg (by norm_num)
  exact abs_le.mpr ⟨by linarith [h.1], h.2⟩

def primeCoefficient (n : ℕ) : ℝ := if n.Prime then Real.log n else 0

def properPowerCoefficient (n : ℕ) : ℝ := vonMangoldt n - primeCoefficient n

def weightedPrime (N : ℕ) : ℝ := ∑ n ∈ Ioc 0 N, primeCoefficient n / (n : ℝ)

theorem properPowerCoefficient_nonneg (n : ℕ) : 0 ≤ properPowerCoefficient n := by
  by_cases hp : n.Prime
  · simp [properPowerCoefficient, primeCoefficient, hp, vonMangoldt_apply_prime hp]
  · simp [properPowerCoefficient, primeCoefficient, hp, vonMangoldt_nonneg]

theorem properPower_prefix (x : ℝ) :
    (∑ n ∈ Icc 0 ⌊x⌋₊, properPowerCoefficient n) =
      Chebyshev.psi x - Chebyshev.theta x := by
  rw [Chebyshev.psi_eq_sum_Icc, Chebyshev.theta_eq_sum_Icc,
    Finset.sum_filter, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rfl

theorem weighted_difference (N : ℕ) :
    weightedMangoldt N - weightedPrime N =
      ∑ n ∈ Ioc 0 N, properPowerCoefficient n / (n : ℝ) := by
  simp only [weightedMangoldt, weightedPrime, properPowerCoefficient,
    sub_div, Finset.sum_sub_distrib]

theorem weighted_difference_nonneg (N : ℕ) :
    0 ≤ weightedMangoldt N - weightedPrime N := by
  rw [weighted_difference]
  exact Finset.sum_nonneg fun n _ => div_nonneg (properPowerCoefficient_nonneg n) (by positivity)

theorem weighted_difference_abel (N : ℕ) :
    weightedMangoldt N - weightedPrime N =
      (Chebyshev.psi N - Chebyshev.theta N) / (N : ℝ) +
        ∫ x in Set.Ioc 1 (N : ℝ), (Chebyshev.psi x - Chebyshev.theta x) / x ^ 2 := by
  have hd (x : ℝ) (hx : x ∈ Set.Icc 1 (N : ℝ)) :
      deriv (fun t : ℝ => t⁻¹) x = -(x ^ 2)⁻¹ :=
    (hasDerivAt_inv (by linarith [hx.1] : x ≠ 0)).deriv
  have hi : IntegrableOn (deriv (fun t : ℝ => t⁻¹)) (Set.Icc 1 (N : ℝ)) := by
    have hc : ContinuousOn (fun x : ℝ => -(x ^ 2)⁻¹) (Set.Icc 1 (N : ℝ)) :=
      ((continuousOn_id.pow 2).inv₀
        (by intro x hx; exact pow_ne_zero 2 (by linarith [hx.1] : x ≠ 0))).neg
    exact hc.integrableOn_Icc.congr_fun (fun x hx => (hd x hx).symm) measurableSet_Icc
  have ha := sum_mul_eq_sub_integral_mul₀ properPowerCoefficient
    (by simp [properPowerCoefficient, primeCoefficient]) (N : ℝ)
    (f := fun t : ℝ => t⁻¹)
    (fun t ht => (hasDerivAt_inv (by linarith [ht.1] : t ≠ 0)).differentiableAt) hi
  have hpN := properPower_prefix (N : ℝ)
  rw [Nat.floor_natCast] at hpN
  rw [Nat.floor_natCast, hpN] at ha
  have hsum : (∑ k ∈ Icc 0 N, (k : ℝ)⁻¹ * properPowerCoefficient k) =
      weightedMangoldt N - weightedPrime N := by
    rw [weighted_difference, Finset.Icc_eq_cons_Ioc (Nat.zero_le N), Finset.sum_cons]
    · simp only [Nat.cast_zero, inv_zero, zero_mul, zero_add]
      apply Finset.sum_congr rfl
      intro k hk
      ring
  rw [hsum] at ha
  have hint : (∫ t in Set.Ioc 1 (N : ℝ),
      deriv (fun t : ℝ => t⁻¹) t * ∑ k ∈ Icc 0 ⌊t⌋₊, properPowerCoefficient k) =
      -(∫ t in Set.Ioc 1 (N : ℝ), (Chebyshev.psi t - Chebyshev.theta t) / t ^ 2) := by
    rw [← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro t ht
    dsimp only
    rw [hd t ⟨ht.1.le, ht.2⟩, properPower_prefix]
    ring
  rw [hint] at ha
  simpa only [sub_neg_eq_add, div_eq_mul_inv, mul_comm] using ha

theorem properPower_integrand_integrable (N : ℕ) :
    IntegrableOn (fun x : ℝ => (Chebyshev.psi x - Chebyshev.theta x) / x ^ 2)
      (Set.Icc 1 (N : ℝ)) := by
  have hc : ContinuousOn (fun x : ℝ => (x ^ 2)⁻¹) (Set.Icc 1 (N : ℝ)) :=
    (continuousOn_id.pow 2).inv₀
      (by intro x hx; exact pow_ne_zero 2 (by linarith [hx.1] : x ≠ 0))
  have hi := integrableOn_mul_sum_Icc properPowerCoefficient
    (a := (1 : ℝ)) (b := (N : ℝ)) (m := 0) (by norm_num) hc.integrableOn_Icc
  convert hi using 1
  ext x
  rw [properPower_prefix]
  ring

theorem sqrt_div_square (x : ℝ) (hx : 0 < x) :
    Real.sqrt x / x ^ 2 = x ^ (-(3 / 2 : ℝ)) := by
  rw [Real.sqrt_eq_rpow, ← Real.rpow_natCast x 2, ← Real.rpow_sub hx]
  norm_num

theorem weighted_difference_bound_of_sqrt
    (C : ℝ) (hC0 : 0 ≤ C)
    (hC : ∀ x : ℝ, Chebyshev.psi x - Chebyshev.theta x ≤ C * Real.sqrt x)
    (N : ℕ) (hN : 1 ≤ N) :
    weightedMangoldt N - weightedPrime N ≤ 3 * C := by
  have hN1 : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hN0 : (0 : ℝ) < N := by linarith
  have hsqrt : Real.sqrt (N : ℝ) ≤ N := by
    have hsq := Real.sq_sqrt (le_of_lt hN0)
    have hs1 := Real.one_le_sqrt.mpr hN1
    nlinarith
  have hb : (Chebyshev.psi N - Chebyshev.theta N) / (N : ℝ) ≤ C := by
    apply (div_le_iff₀ hN0).2
    exact (hC N).trans (by nlinarith)
  have hgcont : ContinuousOn (fun x : ℝ => C * x ^ (-(3 / 2 : ℝ)))
      (Set.Icc 1 (N : ℝ)) :=
    continuousOn_const.mul (continuousOn_id.rpow_const
      (by intro x hx; exact Or.inl (by linarith [hx.1] : x ≠ 0)))
  have hm : (∫ x in Set.Ioc 1 (N : ℝ), (Chebyshev.psi x - Chebyshev.theta x) / x ^ 2) ≤
      ∫ x in Set.Ioc 1 (N : ℝ), C * x ^ (-(3 / 2 : ℝ)) := by
    apply setIntegral_mono_on
      ((properPower_integrand_integrable N).mono_set Set.Ioc_subset_Icc_self)
      (hgcont.integrableOn_Icc.mono_set Set.Ioc_subset_Icc_self) measurableSet_Ioc
    intro x hx
    have hx0 : 0 < x := by linarith [hx.1]
    calc
      (Chebyshev.psi x - Chebyshev.theta x) / x ^ 2 ≤
          (C * Real.sqrt x) / x ^ 2 := div_le_div_of_nonneg_right (hC x) (sq_nonneg x)
      _ = C * x ^ (-(3 / 2 : ℝ)) := by rw [mul_div_assoc, sqrt_div_square x hx0]
  have hg : (∫ x in Set.Ioc 1 (N : ℝ), C * x ^ (-(3 / 2 : ℝ))) ≤ 2 * C := by
    rw [← intervalIntegral.integral_of_le hN1, intervalIntegral.integral_const_mul,
      integral_rpow]
    · norm_num
      have hp := mul_nonneg hC0 (Real.rpow_nonneg (le_of_lt hN0) (-(1 / 2 : ℝ)))
      nlinarith
    · right
      constructor
      · norm_num
      · rw [Set.uIcc_of_le hN1]
        simp
  rw [weighted_difference_abel]
  linarith

theorem weighted_difference_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ, 1 ≤ N →
      0 ≤ weightedMangoldt N - weightedPrime N ∧
        weightedMangoldt N - weightedPrime N ≤ C := by
  obtain ⟨C, hC⟩ := Chebyshev.psi_sub_theta_le_mul_sqrt
  have hC0 : 0 ≤ C := by simpa using hC 1
  refine ⟨3 * C, by positivity, ?_⟩
  intro N hN
  exact ⟨weighted_difference_nonneg N, weighted_difference_bound_of_sqrt C hC0 hC N hN⟩

theorem weightedPrime_mertens :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ, 1 ≤ N →
      |weightedPrime N - Real.log N| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := weighted_difference_uniformly_bounded
  refine ⟨Real.log 4 + 4 + C, by positivity, ?_⟩
  intro N hN
  have hwm := weightedMangoldt_mertens N hN
  have hdiff := hC N hN
  exact abs_le.mpr ⟨by linarith [(abs_le.mp hwm).1], by linarith [(abs_le.mp hwm).2]⟩

theorem weightedPrime_eq_filtered (N : ℕ) :
    weightedPrime N =
      ∑ p ∈ (Ioc 0 N).filter Nat.Prime, Real.log (p : ℝ) / (p : ℝ) := by
  rw [weightedPrime, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hp : n.Prime <;> simp [primeCoefficient, hp]

theorem log_floor_error (x : ℝ) (hx : 1 ≤ x) :
    |Real.log (⌊x⌋₊ : ℝ) - Real.log x| ≤ Real.log 2 := by
  have hfloor : 1 ≤ ⌊x⌋₊ := (Nat.one_le_floor_iff x).mpr hx
  have hfR : (1 : ℝ) ≤ ⌊x⌋₊ := by exact_mod_cast hfloor
  have hfle : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le (by linarith)
  have hxupper : x ≤ 2 * (⌊x⌋₊ : ℝ) := by
    have hlt := Nat.lt_floor_add_one x
    linarith
  have hlo : Real.log (⌊x⌋₊ : ℝ) ≤ Real.log x := Real.log_le_log (by linarith) hfle
  have hup : Real.log x ≤ Real.log 2 + Real.log (⌊x⌋₊ : ℝ) := by
    have h := Real.log_le_log (by linarith : 0 < x) hxupper
    rwa [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) (by linarith : (⌊x⌋₊ : ℝ) ≠ 0)] at h
  have hlog2 := Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 2)
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- Elementary weighted-prime Mertens at every real cutoff, with a fixed error.
The prime inventory is closed at the upper endpoint. -/
theorem weightedPrime_mertens_real :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ x : ℝ, 1 ≤ x →
      |(∑ p ∈ (Ioc 0 ⌊x⌋₊).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ)) - Real.log x| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := weightedPrime_mertens
  refine ⟨C + Real.log 2, by positivity, ?_⟩
  intro x hx
  have hw := hC ⌊x⌋₊ ((Nat.one_le_floor_iff x).mpr hx)
  rw [weightedPrime_eq_filtered] at hw
  have hf := log_floor_error x hx
  calc
    |(∑ p ∈ (Ioc 0 ⌊x⌋₊).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ)) - Real.log x| =
      |((∑ p ∈ (Ioc 0 ⌊x⌋₊).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ)) - Real.log (⌊x⌋₊ : ℝ)) +
        (Real.log (⌊x⌋₊ : ℝ) - Real.log x)| := by congr 1; ring
    _ ≤ _ := abs_add_le _ _
    _ ≤ C + Real.log 2 := add_le_add hw hf

/-- The logarithmic cutoff form used by the actual Vaughan diagonal. -/
theorem weightedPrime_mertens_log_cutoff :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ t : ℝ, 0 ≤ t →
      |(∑ p ∈ (Ioc 0 ⌊Real.exp t⌋₊).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ)) - t| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := weightedPrime_mertens_real
  refine ⟨C, hC0, ?_⟩
  intro t ht
  simpa only [Real.log_exp] using hC (Real.exp t) (Real.one_le_exp_iff.mpr ht)

end
end FormalResearch.RiemannHypothesis.WeightedPrimeMertens
```
