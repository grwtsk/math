import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaCentering
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedBetaKernel

/-! # Finite source-weighted Abel transfer of the exact centered beta prefix -/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateWeightedBetaAbel

open MeasureTheory Set ArithmeticFunction
open EstimateBetaCentering EstimateWeightedBetaKernel

noncomputable section

/-- The signed divisor discrepancy remains a finite real sum with separate quotient casts. -/
def discrepancyPrefix (U L : ℕ) (x : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * floorDiscrepancy L ⌊x⌋₊ d

/-- Exact anchored centered coefficient; the prefix begins strictly above L. -/
def anchoredCenteredBeta (U L n : ℕ) : ℝ := if L < n then centeredBeta U n else 0

/-- The anchored prefix has no hidden unit atom or lower-boundary contribution. -/
theorem anchored_prefix_eq_interval (U L r : ℕ) :
    (∑ n ∈ Finset.Icc 0 r, anchoredCenteredBeta U L n) =
      ∑ n ∈ Finset.Ioc L r, centeredBeta U n := by
  classical
  unfold anchoredCenteredBeta
  rw [← Finset.sum_filter]
  congr 1
  ext n
  simp only [Finset.mem_filter, Finset.mem_Icc, Finset.mem_Ioc]
  omega

/-- Exact signed finite floor-discrepancy prefix at every real point above the anchor. -/
theorem anchored_prefix_eq_discrepancy (U L : ℕ) (x : ℝ) (hU : 1 ≤ U)
    (hUL : U ≤ L) (hLx : (L : ℝ) ≤ x) :
    (∑ n ∈ Finset.Icc 0 ⌊x⌋₊, anchoredCenteredBeta U L n) = -discrepancyPrefix U L x := by
  rw [anchored_prefix_eq_interval]
  exact centeredBeta_interval_eq_discrepancy U L _ hU hUL
    ((Nat.le_floor_iff ((Nat.cast_nonneg L).trans hLx)).2 hLx)

/-- Finite interval whose literal weight is used by the source row. -/
def weightedCenteredInterval (A : ℝ) (m U L H : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc L H, centeredBeta U n * rowWeight A m (n : ℝ)

/-- Exact Abelized signed discrepancy object, with the finite upper trace retained. -/
def abelDiscrepancyMoment (A : ℝ) (m U L H : ℕ) : ℝ :=
  -rowWeight A m (H : ℝ) * discrepancyPrefix U L (H : ℝ) +
    ∫ x in Ioc (L : ℝ) (H : ℝ), deriv (rowWeight A m) x * discrepancyPrefix U L x

/-- The source finite Abel formula replaces the prefix by its signed discrepancy first. -/
theorem weightedCenteredInterval_eq_abel (A : ℝ) (m U L H : ℕ) (hA : 1 ≤ A)
    (hm : 1 ≤ m) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    weightedCenteredInterval A m U L H = abelDiscrepancyMoment A m U L H := by
  have hA0 : 0 < A := by linarith
  have hL0 : 0 < (L : ℝ) := by exact_mod_cast (by omega : 0 < L)
  have hi := rowWeight_deriv_integrable A m hA0 hm (L : ℝ) H hL0
  have hd (x : ℝ) (hx : x ∈ Icc (L : ℝ) H) : DifferentiableAt ℝ (rowWeight A m) x :=
    (rowWeight_hasDerivAt A x m hA0 hm (hL0.trans_le hx.1)).differentiableAt
  have h := sum_mul_eq_sub_sub_integral_mul' (anchoredCenteredBeta U L) hLH hd hi
  have hl : (∑ n ∈ Finset.Icc 0 L, anchoredCenteredBeta U L n) = 0 := by
    rw [anchored_prefix_eq_interval, Finset.Ioc_eq_empty_of_le le_rfl, Finset.sum_empty]
  have hh : (∑ n ∈ Finset.Icc 0 H, anchoredCenteredBeta U L n) =
      -discrepancyPrefix U L (H : ℝ) := by
    simpa only [Nat.floor_natCast] using anchored_prefix_eq_discrepancy U L (H : ℝ)
      hU hUL (by exact_mod_cast hLH)
  have hs : (∑ n ∈ Finset.Ioc L H, rowWeight A m (n : ℝ) * anchoredCenteredBeta U L n) =
      weightedCenteredInterval A m U L H := by
    apply Finset.sum_congr rfl
    intro n hn
    simp only [anchoredCenteredBeta, if_pos (Finset.mem_Ioc.mp hn).1]
    ring
  rw [hs, hl, hh, mul_zero, sub_zero] at h
  have he : (∫ x in Ioc (L : ℝ) (H : ℝ), deriv (rowWeight A m) x *
      (∑ n ∈ Finset.Icc 0 ⌊x⌋₊, anchoredCenteredBeta U L n)) =
      -(∫ x in Ioc (L : ℝ) (H : ℝ), deriv (rowWeight A m) x * discrepancyPrefix U L x) := by
    rw [← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    dsimp only
    rw [anchored_prefix_eq_discrepancy U L x hU hUL hx.1.le]
    ring
  rw [he] at h
  unfold abelDiscrepancyMoment
  linarith

end
end EstimateWeightedBetaAbel
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
