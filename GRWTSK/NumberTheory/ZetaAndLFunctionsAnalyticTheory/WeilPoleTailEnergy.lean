/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPoleCoefficientRounding
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFixedWindowSemibounded
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualParseval

/-!
# Complete omitted pole energy on the original sine complement

The complete source pole profile has squared norm `sinh T - T`. Original
Parseval and exact sine-head removal identify ALL modes above N with that
mass minus the finite head. This is not the finite sum from N+1 to an
experimental cutoff. Rational radius-two coefficient bounds enclose the
remaining norm and return to the negative pole on every actual high test.

SOURCE_PROOF_CANDIDATE. Lean elaboration, exact signatures, kernel replay,
transitive axiom audit and independent review NOT_RUN. Source publication
and exact rational arithmetic do not upgrade these evidence statuses.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PoleTailEnergy

open OddRootProjection OddOutputTrace OddPrimePoleOutput OddSineParseval
open OddSineHeadRemoval OddResidualParseval OddSineForm OddGammaOutput
open FixedWindowSemibounded RationalPoleCoefficients

/-- The omitted mass refers to every positive mode above N. -/
def tailEnergy (T : ℝ) (N : ℕ) : ℝ :=
  Real.sinh T - T - ∑ n ∈ Finset.range N, sinePoleCoefficient T (n + 1) ^ 2

private theorem profile_supported (T : ℝ) :
    ∀ᵐ t ∂volume, t ∉ Icc (-T) T → sourcePoleProfile T t = 0 := by
  filter_upwards [] with t ht
  simp [sourcePoleProfile_apply, ht]

private theorem profile_odd (T : ℝ) :
    ∀ᵐ t ∂volume, sourcePoleProfile T (-t) = -sourcePoleProfile T t := by
  exact Eventually.of_forall
    (primePoleOutput_odd T (gammaConstant 1 0)
      (f := fun _ : ℝ => (0 : ℝ)) (by intro t; simp) 1)

/-- Exact original coefficient of the original profile. -/
theorem profile_coefficient (T : ℝ) (hT : 0 < T) {n : ℕ} (hn : 0 < n) :
    sineCoefficient T (sourcePoleProfile T) n = sinePoleCoefficient T n := by
  cases n with
  | zero => omega
  | succ m =>
      simpa only [sourcePoleProfile, one_mul] using
        sineCoefficient_primePoleOutput_zero T hT (gammaConstant 1 0) 1 m

/-- Parseval is applied to the complete supported source profile, not to a table. -/
theorem profile_coefficients_hasSum (T : ℝ) (hT : 0 < T) :
    HasSum (fun n : ℕ => sinePoleCoefficient T (n + 1) ^ 2) (Real.sinh T - T) := by
  have h := hasSum_source_sineCoefficient_sq_ae T hT
    (memLp_sourcePoleProfile T) (profile_odd T) (profile_supported T)
  simp_rw [profile_coefficient T hT (Nat.succ_pos _), Real.norm_eq_abs, sq_abs] at h
  rw [sourcePoleProfile_sq_integral T hT.le] at h
  exact h

/-- The COMPLETE infinite tail equals total source mass minus the exact head. -/
theorem tail_hasSum (T : ℝ) (hT : 0 < T) (N : ℕ) :
    HasSum (fun n : ℕ => sinePoleCoefficient T (N + 1 + n) ^ 2) (tailEnergy T N) := by
  let c := fun n : ℕ => sinePoleCoefficient T (n + 1) ^ 2
  have hall : HasSum c (Real.sinh T - T) := profile_coefficients_hasSum T hT
  have htail : Summable (fun n : ℕ => c (n + N)) :=
    (summable_nat_add_iff N).mpr hall.summable
  have hsplit := hall.summable.sum_add_tsum_nat_add N
  rw [hall.tsum_eq] at hsplit
  have hvalue : (∑' n : ℕ, c (n + N)) = tailEnergy T N := by
    dsimp [tailEnergy, c] at hsplit ⊢
    linarith
  convert htail.hasSum using 1
  · funext n
    dsimp [c]
    congr 2
    omega
  · exact hvalue.symm

/-- Norm identity of the ACTUAL output after canonical head removal. -/
theorem removed_profile_mass (T : ℝ) (hT : 0 < T) (N : ℕ) :
    (∫ t : ℝ, ‖removeSineHead T N (sourcePoleProfile T) t‖ ^ 2) = tailEnergy T N := by
  have hf := memLp_sourcePoleProfile T
  have h := highSine_sq_hasSum T hT
    (removeSineHead_memLp T N hf)
    (removeSineHead_odd T N (profile_odd T))
    (removeSineHead_support T N (profile_supported T))
    (fun n hn => sineCoefficient_removeSineHead_low T hT hf hn)
  have hcoeff (n : ℕ) :
      sineCoefficient T (removeSineHead T N (sourcePoleProfile T)) (N + 1 + n) =
        sinePoleCoefficient T (N + 1 + n) := by
    rw [sineCoefficient_removeSineHead_high T hT hf (show N < N + 1 + n by omega)]
    exact profile_coefficient T hT (by omega)
  simp_rw [hcoeff] at h
  exact h.unique (tail_hasSum T hT N)

theorem tailEnergy_nonneg (T : ℝ) (hT : 0 < T) (N : ℕ) : 0 ≤ tailEnergy T N := by
  rw [← removed_profile_mass T hT N]
  exact integral_nonneg fun _ => sq_nonneg _

/-- For actual high tests the source moment pairs only with the omitted profile. -/
theorem high_moment_eq (T : ℝ) (N : ℕ) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0) :
    (∫ t : ℝ, f t * Real.sinh (t / 2)) =
      ∫ t : ℝ, f t * removeSineHead T N (sourcePoleProfile T) t := by
  let a := sineCoordinates T N (sourcePoleProfile T)
  have hpair (i : Fin N) :
      (∫ t : ℝ, f t * zeroExtendedSine T (i.val + 1) t) = 0 := by
    have h := hhead i.val i.isLt
    simpa only [sineCoefficient, mul_comm] using h
  have hfinite : (∫ t : ℝ, f t * finiteSine T a t) = 0 := by
    have hid : (fun t : ℝ => f t * finiteSine T a t) =
        fun t => ∑ i : Fin N, a i * (f t * zeroExtendedSine T (i.val + 1) t) := by
      funext t
      simp only [finiteSine, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      ring
    rw [hid, integral_finsetSum _
      (fun i _ => (hf.integrable_mul (memLp_zeroExtendedSine T (i.val + 1))).const_mul (a i))]
    simp only [integral_const_mul, hpair, mul_zero, Finset.sum_const_zero]
  have hprofile : (∫ t : ℝ, f t * Real.sinh (t / 2)) =
      ∫ t : ℝ, f t * sourcePoleProfile T t := by
    apply integral_congr_ae
    filter_upwards [hs] with t ht
    by_cases hm : t ∈ Icc (-T) T
    · simp [sourcePoleProfile_apply, hm]
    · simp [sourcePoleProfile_apply, hm, ht hm]
  rw [hprofile]
  change _ = ∫ t : ℝ, f t * (sourcePoleProfile T t - finiteSine T a t)
  simp_rw [mul_sub]
  rw [integral_sub (hf.integrable_mul (memLp_sourcePoleProfile T))
    (hf.integrable_mul (finiteSine_memLp T a)), hfinite, sub_zero]

/-- Sharper original negative-pole allowance on the full high complement. -/
theorem high_moment_sq_le (T : ℝ) (hT : 0 < T) (N : ℕ) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0) :
    (∫ t : ℝ, f t * Real.sinh (t / 2)) ^ 2 ≤
      tailEnergy T N * (∫ t : ℝ, ‖f t‖ ^ 2) := by
  rw [high_moment_eq T N hf hs hhead]
  have h := integral_mul_sq_le hf
    (removeSineHead_memLp T N (memLp_sourcePoleProfile T))
  have hm : (∫ t : ℝ, removeSineHead T N (sourcePoleProfile T) t ^ 2) = tailEnergy T N := by
    simpa only [Real.norm_eq_abs, sq_abs] using removed_profile_mass T hT N
  rw [hm] at h
  simpa only [Real.norm_eq_abs, sq_abs, mul_comm] using h

/-- Exact rational bounds for the total radius-two profile mass. -/
def massLower : ℚ := (expLower ^ 2 - 1 / expLower ^ 2) / 2 - 2
def massUpper : ℚ := (expUpper ^ 2 - 1 / expUpper ^ 2) / 2 - 2

theorem mass_bounds :
    (massLower : ℝ) ≤ Real.sinh 2 - 2 ∧ Real.sinh 2 - 2 ≤ (massUpper : ℝ) := by
  obtain ⟨hl, hu⟩ := exp_one_bounds
  have hl0 : (0 : ℝ) < (expLower : ℝ) := by exact_mod_cast scalar_signs.2.2.1
  have hu0 : (0 : ℝ) < (expUpper : ℝ) := (Real.exp_pos 1).trans_le hu
  have hL : (expLower : ℝ) ^ 2 ≤ Real.exp 2 := by
    rw [show Real.exp 2 = Real.exp 1 ^ 2 by rw [pow_two, ← Real.exp_add]; norm_num]
    nlinarith [Real.exp_pos 1]
  have hU : Real.exp 2 ≤ (expUpper : ℝ) ^ 2 := by
    rw [show Real.exp 2 = Real.exp 1 ^ 2 by rw [pow_two, ← Real.exp_add]; norm_num]
    nlinarith [Real.exp_pos 1]
  have hiL := one_div_le_one_div_of_le (sq_pos_of_pos hl0) hL
  have hiU := one_div_le_one_div_of_le (Real.exp_pos 2) hU
  simp only [one_div] at hiL hiU
  simp only [massLower, massUpper, Rat.cast_sub, Rat.cast_div, Rat.cast_pow,
    Rat.cast_one, Rat.cast_ofNat, Real.sinh_eq, Real.exp_neg, one_div]
  constructor <;> linarith

/-- Rational endpoints cover the INFINITE tail; finite terms are subtracted outward. -/
def tailLower (N : ℕ) : ℚ :=
  massLower - ∑ n ∈ Finset.range N, amplitudeUpper (n + 1) ^ 2

def tailUpper (N : ℕ) : ℚ :=
  massUpper - ∑ n ∈ Finset.range N, amplitudeLower (n + 1) ^ 2

private theorem coefficient_sq_bounds (n : ℕ) :
    ((amplitudeLower n) ^ 2 : ℚ) ≤ (amplitudeUpper n) ^ 2 ∧
      ((amplitudeLower n : ℝ) ^ 2 ≤ sinePoleCoefficient 2 n ^ 2 ∧
        sinePoleCoefficient 2 n ^ 2 ≤ (amplitudeUpper n : ℝ) ^ 2) := by
  have hl0 : 0 ≤ amplitudeLower n := by
    obtain ⟨hp, ha, he, hs⟩ := scalar_signs
    unfold amplitudeLower
    positivity
  have hl0R : (0 : ℝ) ≤ (amplitudeLower n : ℝ) := by exact_mod_cast hl0
  obtain ⟨hl, hu⟩ := amplitude_bounds n
  have ha0 := hl0R.trans hl
  have habs : |sinePoleCoefficient 2 n| = amplitude n := by
    rw [coefficient_eq_sign_mul_amplitude, abs_mul, abs_pow, abs_neg, abs_one,
      one_pow, one_mul, abs_of_nonneg ha0]
  have heq : sinePoleCoefficient 2 n ^ 2 = amplitude n ^ 2 := by
    rw [← sq_abs (sinePoleCoefficient 2 n), habs]
  have hL : (amplitudeLower n : ℝ) ^ 2 ≤ sinePoleCoefficient 2 n ^ 2 := by
    rw [heq]
    nlinarith
  have hU : sinePoleCoefficient 2 n ^ 2 ≤ (amplitudeUpper n : ℝ) ^ 2 := by
    rw [heq]
    nlinarith
  refine ⟨?_, hL, hU⟩
  exact_mod_cast hL.trans hU

theorem tail_bounds (N : ℕ) :
    (tailLower N : ℝ) ≤ tailEnergy 2 N ∧ tailEnergy 2 N ≤ (tailUpper N : ℝ) := by
  have hL : (∑ n ∈ Finset.range N, (amplitudeLower (n + 1) : ℝ) ^ 2) ≤
      ∑ n ∈ Finset.range N, sinePoleCoefficient 2 (n + 1) ^ 2 :=
    Finset.sum_le_sum fun n _ => (coefficient_sq_bounds (n + 1)).2.1
  have hU : (∑ n ∈ Finset.range N, sinePoleCoefficient 2 (n + 1) ^ 2) ≤
      ∑ n ∈ Finset.range N, (amplitudeUpper (n + 1) : ℝ) ^ 2 :=
    Finset.sum_le_sum fun n _ => (coefficient_sq_bounds (n + 1)).2.2
  obtain ⟨hmL, hmU⟩ := mass_bounds
  unfold tailLower tailUpper tailEnergy
  push_cast
  constructor <;> linarith

/-- A finite rational enclosure is transported to the entire residual norm. -/
theorem tail_enclosure (N : ℕ) (lo hi : ℚ)
    (hlo : lo ≤ tailLower N) (hhi : tailUpper N ≤ hi) :
    (lo : ℝ) ≤ (∫ t : ℝ, ‖removeSineHead 2 N (sourcePoleProfile 2) t‖ ^ 2) ∧
      (∫ t : ℝ, ‖removeSineHead 2 N (sourcePoleProfile 2) t‖ ^ 2) ≤ (hi : ℝ) := by
  rw [removed_profile_mass 2 (by norm_num)]
  obtain ⟨hl, hu⟩ := tail_bounds N
  have hloR : (lo : ℝ) ≤ (tailLower N : ℝ) := by exact_mod_cast hlo
  have hhiR : (tailUpper N : ℝ) ≤ (hi : ℝ) := by exact_mod_cast hhi
  exact ⟨hloR.trans hl, hu.trans hhiR⟩

/-- All measurable supported L2 high tests, not only a finite trial list. -/
theorem high_pole_lower_of_rational_upper (N : ℕ) (hi : ℚ)
    (hhi : tailUpper N ≤ hi) {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-2 : ℝ) 2 → f t = 0)
    (hhead : ∀ n < N, sineCoefficient 2 f (n + 1) = 0) :
    -2 * (hi : ℝ) * (∫ t : ℝ, ‖f t‖ ^ 2) ≤
      -2 * (∫ t : ℝ, f t * Real.sinh (t / 2)) ^ 2 := by
  have h := high_moment_sq_le 2 (by norm_num) N hf hs hhead
  have ht : tailEnergy 2 N ≤ (hi : ℝ) :=
    (tail_bounds N).2.trans (by exact_mod_cast hhi)
  have hm : 0 ≤ ∫ t : ℝ, ‖f t‖ ^ 2 := integral_nonneg fun _ => sq_nonneg _
  nlinarith [mul_le_mul_of_nonneg_right ht hm]

/-- An explicit radius-two, 64-mode COMPLETE-tail fixture.
The rational conditions were checked externally; this numeral proof is unexecuted. -/
set_option maxRecDepth 16384 in
set_option maxHeartbeats 8000000 in
theorem tail64_arithmetic :
    (17355583746 / 1000000000000 : ℚ) ≤ tailLower 64 ∧
      tailUpper 64 ≤ (17355583747 / 1000000000000 : ℚ) := by
  norm_num [tailLower, tailUpper, massLower, massUpper,
    amplitudeLower, amplitudeUpper, piLower, piUpper, alphaLower, alphaUpper,
    sinhLower, sinhUpper, expLower, expUpper, Finset.sum_range_succ]

/-- Every omitted mode is included; the upper limit is not 2048. -/
theorem radius_two_tail64 :
    (17355583746 / 1000000000000 : ℝ) ≤
        (∫ t : ℝ, ‖removeSineHead 2 64 (sourcePoleProfile 2) t‖ ^ 2) ∧
      (∫ t : ℝ, ‖removeSineHead 2 64 (sourcePoleProfile 2) t‖ ^ 2) ≤
        (17355583747 / 1000000000000 : ℝ) := by
  simpa using tail_enclosure 64 (17355583746 / 1000000000000)
    (17355583747 / 1000000000000) tail64_arithmetic.1 tail64_arithmetic.2

/-- The actual pole payment on all 64-high tests at radius two. -/
theorem radius_two_high64_pole_lower {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-2 : ℝ) 2 → f t = 0)
    (hhead : ∀ n < 64, sineCoefficient 2 f (n + 1) = 0) :
    -(17355583747 / 500000000000 : ℝ) * (∫ t : ℝ, ‖f t‖ ^ 2) ≤
      -2 * (∫ t : ℝ, f t * Real.sinh (t / 2)) ^ 2 := by
  have h := high_pole_lower_of_rational_upper 64 (17355583747 / 1000000000000)
    tail64_arithmetic.2 hf hs hhead
  norm_num at h ⊢
  exact h

end GRWTSK.NumberTheory.WeilQuadraticForm.PoleTailEnergy
