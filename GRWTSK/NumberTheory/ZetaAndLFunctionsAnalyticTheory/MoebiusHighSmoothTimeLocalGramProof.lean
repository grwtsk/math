/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / PINNED_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothIncidentDyadic
import Mathlib

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

/-!
# Original physical-time pickup Gram on a true dyadic shell

The source index n is unchanged; pickupResponse and
pickupResponseGram are the existing definitions. The proof attempts
to split the original interval integral at log(X). Before log(X),
all responses of original shell indices n>X vanish. Thereafter each
is nonnegative and at most 2 / sqrt(X), during log(2) time units.

No arithmetic cancellation, RH supplier, or altered kernel occurs.
Compilation, expected types, fresh kernel and axiom audit NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.HighSmoothTimeLocalGramProof

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.HighSmoothIncidentDyadic
open GRWTSK.NumberTheory.MoebiusPNTDyadicBilinearBlock

/-- Original causal response vanishes before the original birth,
in particular at all times earlier than log(X) when n>X. -/
theorem sourceResponse_zero_before_dyadic_birth
    {X n : ℕ} (hX : 1 ≤ X) (hn : X < n)
    {u : ℝ} (hu : u < Real.log (X : ℝ)) :
    pickupResponse n u = 0 := by
  have hXpos : (0 : ℝ) < X := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 1) hX)
  have hnreal : (X : ℝ) ≤ n := by exact_mod_cast hn.le
  have hlog : Real.log (X : ℝ) ≤ Real.log (n : ℝ) :=
    Real.log_le_log hXpos hnreal
  have hbefore : ¬Real.log (n : ℝ) ≤ u :=
    not_le.mpr (lt_of_lt_of_le hu hlog)
  simp [pickupResponse, hbefore]

/-- The EXACT branch of the original pickup response is positive
and bounded by the dyadic square-root amplitude for all real u. -/
theorem sourceResponse_nonneg_le_dyadic_amplitude
    {X n : ℕ} (hX : 1 ≤ X) (hn : X < n) (u : ℝ) :
    0 ≤ pickupResponse n u ∧
      pickupResponse n u ≤ 2 * (Real.sqrt (X : ℝ))⁻¹ := by
  have hXpos : (0 : ℝ) < X := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 1) hX)
  have hnposNat : 1 ≤ n := by omega
  have hnreal : (X : ℝ) ≤ n := by exact_mod_cast hn.le
  have hXSqrt : 0 < Real.sqrt (X : ℝ) := Real.sqrt_pos.mpr hXpos
  have hsqrtle : Real.sqrt (X : ℝ) ≤ Real.sqrt (n : ℝ) :=
    Real.sqrt_le_sqrt hnreal
  have hinv : (Real.sqrt (n : ℝ))⁻¹ ≤
      (Real.sqrt (X : ℝ))⁻¹ := inv_anti₀ hXSqrt hsqrtle
  by_cases hbirth : Real.log (n : ℝ) ≤ u
  · have he : Real.exp (-u / 2) ≤ (Real.sqrt (n : ℝ))⁻¹ := by
      have h := Real.exp_le_exp.mpr
        (show -u / 2 ≤ -Real.log (n : ℝ) / 2 by linarith)
      rw [pickup_exp_negative_log_half hnposNat] at h
      exact h
    have hexp : 0 ≤ Real.exp (-u / 2) := (Real.exp_pos _).le
    constructor
    · simp only [pickupResponse, if_pos hbirth]
      nlinarith
    · simp only [pickupResponse, if_pos hbirth]
      nlinarith
  · simp [pickupResponse, hbirth, inv_nonneg.mpr (Real.sqrt_nonneg _)]

/-- Original, globally nonnegative dyadic response product with
an amplitude bound that is independent of physical time. -/
theorem response_product_le_dyadic_amplitude_square
    {X m n : ℕ} (hX : 1 ≤ X) (hm : X < m) (hn : X < n)
    (u : ℝ) :
    0 ≤ pickupResponse m u * pickupResponse n u ∧
      pickupResponse m u * pickupResponse n u ≤
        (2 * (Real.sqrt (X : ℝ))⁻¹) ^ 2 := by
  obtain ⟨hm0, hm2⟩ := sourceResponse_nonneg_le_dyadic_amplitude hX hm u
  obtain ⟨hn0, hn2⟩ := sourceResponse_nonneg_le_dyadic_amplitude hX hn u
  have hC : 0 ≤ 2 * (Real.sqrt (X : ℝ))⁻¹ := by positivity
  refine ⟨mul_nonneg hm0 hn0, ?_⟩
  have hmul := mul_le_mul hm2 hn2 hn0 hC
  simpa only [pow_two] using hmul

/-- The original squared-amplitude constant normalizes precisely
to 4/X, with X>=1 and no division by zero. -/
theorem amplitude_square_eq_four_div
    {X : ℕ} (hX : 1 ≤ X) :
    (2 * (Real.sqrt (X : ℝ))⁻¹) ^ 2 = 4 / (X : ℝ) := by
  have hX0 : (0 : ℝ) ≤ X := by positivity
  rw [mul_pow, ← inv_pow, Real.sq_sqrt hX0]
  ring

/-- The exact original physical-time Gram is nonnegative and
its dyadic duration is log(2), not the entire horizon log(2X). -/
theorem original_dyadic_time_local_gram
    (X m n : ℕ) (hX : 1 ≤ X)
    (hm : X < m) (hn : X < n) :
    |pickupResponseGram (Real.log (2 * (X : ℝ))) m n| ≤
      4 * Real.log 2 / (X : ℝ) := by
  let T := Real.log (2 * (X : ℝ))
  let L := Real.log (X : ℝ)
  let C := (2 * (Real.sqrt (X : ℝ))⁻¹) ^ 2
  let f : ℝ → ℝ := fun u => pickupResponse m u * pickupResponse n u
  have hmpos : 1 ≤ m := by omega
  have hnpos : 1 ≤ n := by omega
  have hXReal : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hXPos : (0 : ℝ) < X := lt_of_lt_of_le (by norm_num) hXReal
  have hL : 0 ≤ L := Real.log_nonneg hXReal
  have hT : L ≤ T := by
    apply Real.log_le_log hXPos
    dsimp [T, L]
    nlinarith
  have hf : Continuous f :=
    (pickupResponse_continuous hmpos).mul (pickupResponse_continuous hnpos)
  have hzero : (∫ u in (0 : ℝ)..L, f u) = 0 := by
    calc
      _ = ∫ u in (0 : ℝ)..L, (0 : ℝ) := by
        apply intervalIntegral.integral_congr_Ioo_of_le hL
        intro u hu
        have hbefore := sourceResponse_zero_before_dyadic_birth hX hm hu.2
        simp [f, hbefore]
      _ = 0 := intervalIntegral.integral_zero
  have hsplit : (∫ u in (0 : ℝ)..T, f u) =
      ∫ u in L..T, f u := by
    have hadd := intervalIntegral.integral_add_adjacent_intervals
      (hf.intervalIntegrable 0 L) (hf.intervalIntegrable L T)
    linarith [hadd, hzero]
  have hUpper : (∫ u in L..T, f u) ≤
      ∫ u in L..T, C := by
    apply intervalIntegral.integral_mono_on hT
      (hf.intervalIntegrable L T) (continuous_const.intervalIntegrable L T)
    intro u hu
    exact (response_product_le_dyadic_amplitude_square hX hm hn u).2
  have hNonneg : 0 ≤ pickupResponseGram T m n := by
    change 0 ≤ ∫ u in (0 : ℝ)..T, f u
    rw [hsplit]
    apply intervalIntegral.integral_nonneg_of_forall hT
    intro u
    exact (response_product_le_dyadic_amplitude_square hX hm hn u).1
  have hLog : T - L = Real.log 2 := by
    dsimp [T, L]
    rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0)
      (by exact hXPos.ne')]
    ring
  have hIntegral : (∫ u in L..T, C) = (T - L) * C := by
    simp
  have hSquare : C = 4 / (X : ℝ) := amplitude_square_eq_four_div hX
  rw [show |pickupResponseGram (Real.log (2 * (X : ℝ))) m n| =
      pickupResponseGram T m n from abs_of_nonneg hNonneg]
  calc
    pickupResponseGram T m n = ∫ u in L..T, f u := hsplit
    _ ≤ ∫ u in L..T, C := hUpper
    _ = (T - L) * C := hIntegral
    _ = 4 * Real.log 2 / (X : ℝ) := by
      rw [hLog, hSquare]
      ring

/-- Source-specific return to the original source-clipped
balancedBlock. Only the original positive integer endpoints are used. -/
theorem original_dyadic_gram_on_balancedBlock
    (X : ℕ) (hX : 1 ≤ X)
    (m n : ℕ)
    (hm : m ∈ balancedBlock X (Real.log (2 * (X : ℝ))))
    (hn : n ∈ balancedBlock X (Real.log (2 * (X : ℝ)))) :
    |pickupResponseGram (Real.log (2 * (X : ℝ))) m n| ≤
      4 * Real.log 2 / (X : ℝ) := by
  have hmi : m ∈ Finset.Ioc X (2 * X) := by
    change m ∈ (Finset.Ioc X (2 * X)).filter
      (fun n => n ∈ endpointIndex (Real.log (2 * (X : ℝ)))) at hm
    exact (Finset.mem_filter.mp hm).1
  have hni : n ∈ Finset.Ioc X (2 * X) := by
    change n ∈ (Finset.Ioc X (2 * X)).filter
      (fun n => n ∈ endpointIndex (Real.log (2 * (X : ℝ)))) at hn
    exact (Finset.mem_filter.mp hn).1
  exact original_dyadic_time_local_gram X m n hX
    (Finset.mem_Ioc.mp hmi).1 (Finset.mem_Ioc.mp hni).1

/-- Intended genuine unconditional discharge of the previous
DyadicTimeLocalGramTarget proposition: same original Gram and
unmodified source index inventory. -/
theorem dyadicTimeLocalGram_target : DyadicTimeLocalGramTarget := by
  intro X hX m hm n hn
  exact original_dyadic_gram_on_balancedBlock X hX m n hm hn

end GRWTSK.NumberTheory.Moebius.HighSmoothTimeLocalGramProof