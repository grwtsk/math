/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib and GRWTSK results retain their original attribution and licenses. -/
import GRWTSK.DifferentialGeometry.GodelObserverRootTransport
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MobiusDilationPairSplit
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupSparseExceptionalCovariance
import Mathlib.Tactic

/-!
# Exact Gödel chart transport of the original pickup under doubling

At the chart label x = log n, the genuine Gödel isometry with s = log 2
has destination label log (2n). The isometry preserves the spatial
observer metric and vorticity; simultaneously the ORIGINAL causal pickup
response has the separate exact half-power scaling law. The latter is
proved from the source-defined response, not from positivity of the
Gödel metric. The source Möbius sign changes on odd indices, and the
nonunit branch vanishes, exactly as in the existing parity lemma.

Full interval Grams scale by 1/2 under doubled indices and shifted time,
including the birth/early-time zero interval. This does not bound the
complete sum over the original endpoint inventory or assert RH.
SOURCE_PROOF_CANDIDATE / LEAN_NOT_RUN / KERNEL_NOT_RUN / AXIOMS_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GodelPickupDilationTransport

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.PickupSparseExceptionalCovariance
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- The Gödel spatial shift by log 2 is literally the logarithmic
source-index doubling map, for positive integer sources only. -/
theorem log_doubled_index (n : ℕ) (hn : 1 ≤ n) :
    Real.log (((2 * n : ℕ) : ℝ)) =
      Real.log (n : ℝ) + Real.log (2 : ℝ) := by
  have hnpos : (0 : ℝ) < (n : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  rw [Nat.cast_mul, Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) hnpos.ne']
  ring

/-- Source-aligned *actual* Gödel spatial metric transport. -/
theorem spatial_doubling_isometry
    (p : Parameters) (n : ℕ) (hn : 1 ≤ n) (v w : Tangent) :
    spatialMetric p (Real.log (((2 * n : ℕ) : ℝ)))
      (shiftTangent (Real.log (2 : ℝ)) v)
      (shiftTangent (Real.log (2 : ℝ)) w) =
    spatialMetric p (Real.log (n : ℝ)) v w := by
  rw [log_doubled_index n hn]
  exact spatialMetric_shift p (Real.log (n : ℝ)) (Real.log (2 : ℝ)) v w

/-- The same genuine two-form is transported. It is not an arithmetic
correlation estimate or a torsion identity. -/
theorem vorticity_doubling_isometry
    (p : Parameters) (n : ℕ) (hn : 1 ≤ n) (v w : Tangent) :
    vorticity p (Real.log (((2 * n : ℕ) : ℝ)))
      (shiftTangent (Real.log (2 : ℝ)) v)
      (shiftTangent (Real.log (2 : ℝ)) w) =
    vorticity p (Real.log (n : ℝ)) v w := by
  rw [log_doubled_index n hn]
  exact vorticity_shift p (Real.log (n : ℝ)) (Real.log (2 : ℝ)) v w

/-- Source response equivariance, including BOTH birth branches. -/
theorem pickupResponse_doubling
    (n : ℕ) (hn : 1 ≤ n) (u : ℝ) :
    pickupResponse (2 * n) (u + Real.log (2 : ℝ)) =
      (Real.sqrt (2 : ℝ))⁻¹ * pickupResponse n u := by
  have hlog := log_doubled_index n hn
  have hsqrt : (Real.sqrt (((2 * n : ℕ) : ℝ)))⁻¹ =
      (Real.sqrt (2 : ℝ))⁻¹ * (Real.sqrt (n : ℝ))⁻¹ := by
    rw [Nat.cast_mul, Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 2)]
    rw [mul_inv_rev]
    ring
  have hexp : Real.exp (-(u + Real.log (2 : ℝ)) / 2) =
      (Real.sqrt (2 : ℝ))⁻¹ * Real.exp (-u / 2) := by
    have he : -(u + Real.log (2 : ℝ)) / 2 =
        -Real.log (2 : ℝ) / 2 + (-u / 2) := by ring
    rw [he, Real.exp_add, pickup_exp_negative_log_half (n := 2) (by norm_num)]
  by_cases hborn : Real.log (n : ℝ) ≤ u
  · have hborn' : Real.log (((2 * n : ℕ) : ℝ)) ≤
        u + Real.log (2 : ℝ) := by rw [hlog]; linarith
    simp only [pickupResponse, if_pos hborn', if_pos hborn]
    rw [hsqrt, hexp]
    ring
  · have hborn' : ¬ Real.log (((2 * n : ℕ) : ℝ)) ≤
        u + Real.log (2 : ℝ) := by rw [hlog]; linarith
    simp only [pickupResponse, if_neg hborn', if_neg hborn]
    ring

/-- Before the birth time, including the birth event itself, the
source response is exactly zero. -/
theorem pickupResponse_zero_to_birth
    (n : ℕ) (hn : 1 ≤ n) (u : ℝ)
    (hu : u ≤ Real.log (n : ℝ)) : pickupResponse n u = 0 := by
  rcases eq_or_lt_of_le hu with heq | hlt
  · rw [heq]
    exact pickupResponse_at_event hn
  · simp [pickupResponse, not_le.mpr hlt]

/-- Fully source-bound response Gram scales by 1/2, with no hidden
endpoint cell: responses at doubled indices vanish up to log 2. -/
theorem pickupResponseGram_doubling
    {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n)
    {T : ℝ} (hT : 0 ≤ T) :
    pickupResponseGram (T + Real.log (2 : ℝ)) (2 * m) (2 * n) =
      (1 / 2 : ℝ) * pickupResponseGram T m n := by
  let c : ℝ := Real.log (2 : ℝ)
  let f : ℝ → ℝ := fun u => pickupResponse (2 * m) u * pickupResponse (2 * n) u
  have hc : 0 ≤ c := (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le
  have hm2 : 1 ≤ 2 * m := by omega
  have hn2 : 1 ≤ 2 * n := by omega
  have hmLog : c ≤ Real.log (((2 * m : ℕ) : ℝ)) := by
    dsimp [c]
    rw [log_doubled_index m hm]
    have hmReal : (1 : ℝ) ≤ (m : ℝ) := by exact_mod_cast hm
    linarith [Real.log_nonneg hmReal]
  have hnLog : c ≤ Real.log (((2 * n : ℕ) : ℝ)) := by
    dsimp [c]
    rw [log_doubled_index n hn]
    have hnReal : (1 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
    linarith [Real.log_nonneg hnReal]
  have hzero : (∫ u in (0 : ℝ)..c, f u) = 0 := by
    calc
      (∫ u in (0 : ℝ)..c, f u) =
          ∫ _u in (0 : ℝ)..c, (0 : ℝ) := by
        apply intervalIntegral.integral_congr_Ioo_of_le hc
        intro u hu
        have hm0 := pickupResponse_zero_to_birth (2 * m) hm2 u
          (hu.2.le.trans hmLog)
        simp [f, hm0]
      _ = 0 := intervalIntegral.integral_zero
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (pickupResponse_product_intervalIntegrable hm2 hn2 0 c)
    (pickupResponse_product_intervalIntegrable hm2 hn2 c (T + c))
  have hshift : (∫ u in (0 : ℝ)..T, f (u + c)) =
      (∫ u in c..(T + c), f u) := by
    simpa [f, c] using (intervalIntegral.integral_comp_add_right
      (a := (0 : ℝ)) (b := T) f c)
  have hsquare : ((Real.sqrt (2 : ℝ))⁻¹) ^ 2 = (1 / 2 : ℝ) := by
    rw [inv_pow, Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)]
    norm_num
  calc
    pickupResponseGram (T + Real.log (2 : ℝ)) (2 * m) (2 * n) =
        (∫ u in (0 : ℝ)..(T + c), f u) := by rfl
    _ = (∫ u in c..(T + c), f u) := by
      rw [← hsplit, hzero]
      ring
    _ = (∫ u in (0 : ℝ)..T, f (u + c)) := hshift.symm
    _ = (∫ u in (0 : ℝ)..T,
          ((Real.sqrt (2 : ℝ))⁻¹) ^ 2 *
            (pickupResponse m u * pickupResponse n u)) := by
      apply intervalIntegral.integral_congr
      intro u _hu
      dsimp [f, c]
      rw [pickupResponse_doubling m hm u, pickupResponse_doubling n hn u]
      ring
    _ = ((Real.sqrt (2 : ℝ))⁻¹) ^ 2 * pickupResponseGram T m n := by
      rw [intervalIntegral.integral_const_mul]
      rfl
    _ = (1 / 2 : ℝ) * pickupResponseGram T m n := by rw [hsquare]

/-- On the genuine odd-odd source, the simultaneous arithmetic sign
product is unchanged.  The only Gram change is the exact factor 1/2. -/
theorem signedGram_doubling_odd
    {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n)
    (hmo : m % 2 = 1) (hno : n % 2 = 1)
    {T : ℝ} (hT : 0 ≤ T) :
    moebiusReal (2 * m) * moebiusReal (2 * n) *
      pickupResponseGram (T + Real.log (2 : ℝ)) (2 * m) (2 * n) =
      (1 / 2 : ℝ) *
        (moebiusReal m * moebiusReal n * pickupResponseGram T m n) := by
  rw [moebiusReal_two_mul_eq_parity m,
      moebiusReal_two_mul_eq_parity n,
      if_pos hmo, if_pos hno,
      pickupResponseGram_doubling hm hn hT]
  ring

/-- The squareful/nonunit branch of simultaneous doubling vanishes,
not a spurious positive contribution or a replacement for the complement. -/
theorem signedGram_doubling_even_left
    {m n : ℕ} (hm : m % 2 = 0) (T : ℝ) :
    moebiusReal (2 * m) * moebiusReal (2 * n) *
      pickupResponseGram T (2 * m) (2 * n) = 0 := by
  rw [moebiusReal_two_mul_eq_parity m, if_neg (by omega : ¬ m % 2 = 1)]
  ring

/-- The sign of the actual source's one-sided doubling atom is nonpositive,
including the nonunit even branch. -/
theorem doubling_pair_density_nonpositive
    (m : ℕ) (hm : 1 ≤ m) (u : ℝ) :
    moebiusReal m * moebiusReal (2 * m) *
      (pickupResponse m u * pickupResponse (2 * m) u) ≤ 0 := by
  have hs := moebius_doubling_product_nonpos m
  have hp : 0 ≤ pickupResponse m u * pickupResponse (2 * m) u := by
    exact mul_nonneg (pickupResponse_nonneg_and_le m hm u).1
      (pickupResponse_nonneg_and_le (2 * m) (by omega) u).1
  exact mul_nonpos_of_nonpos_of_nonneg hs hp

/-- Original Gram nonnegativity follows from the causal responses, not
from the unrelated positive Gödel observer metric. -/
theorem actualGram_nonnegative
    {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n)
    {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ pickupResponseGram T m n := by
  have hf := pickupResponse_product_intervalIntegrable hm hn 0 T
  have hz : IntervalIntegrable (fun _u : ℝ => (0 : ℝ))
      MeasureTheory.volume 0 T := continuous_const.intervalIntegrable 0 T
  have h := intervalIntegral.integral_mono_on hT hz hf
    (fun u _ => mul_nonneg (pickupResponse_nonneg_and_le m hm u).1
      (pickupResponse_nonneg_and_le n hn u).1)
  simpa [pickupResponseGram] using h

/-- One-sided doubling produces an actual negative (or zero) signed
Gram term for all T >= 0. No signed complement is discarded here. -/
theorem doubling_pair_gram_nonpositive
    (m : ℕ) (hm : 1 ≤ m) {T : ℝ} (hT : 0 ≤ T) :
    moebiusReal m * moebiusReal (2 * m) *
      pickupResponseGram T m (2 * m) ≤ 0 := by
  exact mul_nonpos_of_nonpos_of_nonneg
    (moebius_doubling_product_nonpos m)
    (actualGram_nonnegative hm (by omega) hT)

end GRWTSK.NumberTheory.Moebius.GodelPickupDilationTransport
