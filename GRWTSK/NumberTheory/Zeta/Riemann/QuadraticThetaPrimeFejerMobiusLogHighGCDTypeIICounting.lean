/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction
import Mathlib.Analysis.PSeries
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Finite divisor counting closes the absolute high-g Type II block

The exact reduced-tuple injection, finite divisor-summatory estimate, and
finite reciprocal-square tail give an unconditional source proof of the exact
absolute high-g Type II supplier with constant 7200.  The complete centered
signed low-g Type I estimate remains open.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FINITE_DIVISOR_SUM_BOUND_SOURCE_PROVED /
EXACT_FEJER_WEIGHT_UNIT_BOUND_SOURCE_PROVED /
ABSOLUTE_HIGH_GCD_TYPE_II_BOUND_SOURCE_PROVED /
SIGNED_LOW_GCD_TYPE_I_BOUND_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy
open GRWTSK.NumberTheory.FiniteDivisorCounting

/-- The elementary reciprocal-square tail and divisor summatory estimate bound
the complete relaxed tuple box. -/
theorem mobiusLogHighGCDReducedDivisorTupleSet_card_cast_le
    {X Y : ℕ}
    (hX : 0 < X)
    (hY : 1 ≤ Y) :
    ((mobiusLogHighGCDReducedDivisorTupleSet X Y).card : ℝ) ≤
      32 * (X : ℝ)^2 / (Y + 1 : ℕ) *
        (1 + Real.log (((4 * X : ℕ) : ℝ)))^2 := by
  rw [mobiusLogHighGCDReducedDivisorTupleSet_card]
  push_cast
  have hlog0 :
      0 ≤ 1 + Real.log (((4 * X : ℕ) : ℝ)) := by
    have : 0 ≤ Real.log (((4 * X : ℕ) : ℝ)) := by
      apply Real.log_nonneg
      exact_mod_cast (by omega : 1 ≤ 4 * X)
    linarith
  have hpoint :
      ∀ g ∈ Finset.Ioo Y (4 * X + 1),
        ((positiveDivisorIncidenceSet (4 * X / g)).card : ℝ)^2 ≤
          (((4 * X : ℕ) : ℝ) / (g : ℝ) *
            (1 + Real.log (((4 * X : ℕ) : ℝ))))^2 := by
    intro g hg
    have hgI := Finset.mem_Ioo.mp hg
    have hg0 : 0 < g := by omega
    have hg_le : g ≤ 4 * X := by omega
    have hB0 : 0 < 4 * X / g := Nat.div_pos hg_le hg0
    have hB : 1 ≤ 4 * X / g := Nat.one_le_iff_ne_zero.mpr hB0.ne'
    have hmass := positiveDivisorIncidenceMass_le hB
    rw [← positiveDivisorIncidenceSet_card_cast] at hmass
    have hcast :
        ((4 * X / g : ℕ) : ℝ) ≤
          ((4 * X : ℕ) : ℝ) / (g : ℝ) :=
      Nat.cast_div_le
    have hlog :
        Real.log ((4 * X / g : ℕ) : ℝ) ≤
          Real.log (((4 * X : ℕ) : ℝ)) := by
      exact Real.log_le_log
        (by exact_mod_cast hB0)
        (by exact_mod_cast (Nat.div_le_self (4 * X) g))
    have hsmallLog0 :
        0 ≤ 1 + Real.log ((4 * X / g : ℕ) : ℝ) := by
      have := Real.log_nonneg
        (show (1 : ℝ) ≤ ((4 * X / g : ℕ) : ℝ) by
          exact_mod_cast hB)
      linarith
    have hprod :
        ((4 * X / g : ℕ) : ℝ) *
            (1 + Real.log ((4 * X / g : ℕ) : ℝ)) ≤
          (((4 * X : ℕ) : ℝ) / (g : ℝ)) *
            (1 + Real.log (((4 * X : ℕ) : ℝ))) := by
      calc
        ((4 * X / g : ℕ) : ℝ) *
            (1 + Real.log ((4 * X / g : ℕ) : ℝ))
          ≤ (((4 * X : ℕ) : ℝ) / (g : ℝ)) *
              (1 + Real.log ((4 * X / g : ℕ) : ℝ)) :=
            mul_le_mul_of_nonneg_right hcast hsmallLog0
        _ ≤ (((4 * X : ℕ) : ℝ) / (g : ℝ)) *
              (1 + Real.log (((4 * X : ℕ) : ℝ))) :=
            mul_le_mul_of_nonneg_left
              (add_le_add_left hlog 1) (by positivity)
    have htotal := hmass.trans hprod
    exact (sq_le_sq₀ (by positivity) (by positivity)).2 htotal
  calc
    (∑ g ∈ Finset.Ioo Y (4 * X + 1),
        ((positiveDivisorIncidenceSet (4 * X / g)).card : ℝ)^2)
      ≤
      ∑ g ∈ Finset.Ioo Y (4 * X + 1),
        ((((4 * X : ℕ) : ℝ) / (g : ℝ)) *
          (1 + Real.log (((4 * X : ℕ) : ℝ))))^2 :=
        Finset.sum_le_sum hpoint
    _ =
      ((((4 * X : ℕ) : ℝ))^2 *
        (1 + Real.log (((4 * X : ℕ) : ℝ)))^2) *
      ∑ g ∈ Finset.Ioo Y (4 * X + 1),
        (((g : ℝ)^2)⁻¹) := by
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro g hg
          have hg0 : (g : ℝ) ≠ 0 := by
            exact_mod_cast (Nat.ne_of_gt (by
              have hgI := Finset.mem_Ioo.mp hg
              omega : 0 < g))
          field_simp [hg0]
          ring
    _ ≤
      ((((4 * X : ℕ) : ℝ))^2 *
        (1 + Real.log (((4 * X : ℕ) : ℝ)))^2) *
      (2 / ((Y + 1 : ℕ) : ℝ)) := by
        exact mul_le_mul_of_nonneg_left
          (Finset.sum_Ioo_inv_sq_le Y (4 * X + 1))
          (by positivity)
    _ =
      32 * (X : ℝ)^2 / (Y + 1 : ℕ) *
        (1 + Real.log (((4 * X : ℕ) : ℝ)))^2 := by
          push_cast
          ring

/-- The natural-square-root cutoff produces the exact three-halves power. -/
theorem square_div_natSqrtSucc_le_rpow_threeHalves
    {X : ℕ}
    (hX : 0 < X) :
    (X : ℝ)^2 / ((Nat.sqrt X + 1 : ℕ) : ℝ) ≤
      Real.rpow (X : ℝ) ((3 : ℝ) / 2) := by
  have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
  have hsqrt :
      Real.sqrt (X : ℝ) ≤ ((Nat.sqrt X + 1 : ℕ) : ℝ) := by
    exact Real.real_sqrt_le_nat_sqrt_succ
  have hsqrt0 : 0 < Real.sqrt (X : ℝ) :=
    Real.sqrt_pos.2 hXr
  calc
    (X : ℝ)^2 / ((Nat.sqrt X + 1 : ℕ) : ℝ)
      ≤ (X : ℝ)^2 / Real.sqrt (X : ℝ) :=
        div_le_div_of_nonneg_left (sq_nonneg _) hsqrt0 hsqrt
    _ = Real.rpow (X : ℝ) ((3 : ℝ) / 2) := by
      rw [Real.sqrt_eq_rpow, ← Real.rpow_two,
        ← Real.rpow_sub hXr]
      congr 1
      ring

/-- At the square-root split, the relaxed tuple box is already at the exact
`X^(3/2)` scale. -/
theorem mobiusLogHighGCDReducedDivisorTupleSet_sqrt_card_cast_le
    {X : ℕ}
    (hX : 0 < X) :
    ((mobiusLogHighGCDReducedDivisorTupleSet X (Nat.sqrt X)).card : ℝ) ≤
      32 * Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
        (1 + Real.log (((4 * X : ℕ) : ℝ)))^2 := by
  have hY : 1 ≤ Nat.sqrt X :=
    Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt (Nat.sqrt_pos.2 hX))
  have hraw :=
    mobiusLogHighGCDReducedDivisorTupleSet_card_cast_le hX hY
  calc
    ((mobiusLogHighGCDReducedDivisorTupleSet X (Nat.sqrt X)).card : ℝ)
      ≤
      32 * (X : ℝ)^2 / (Nat.sqrt X + 1 : ℕ) *
        (1 + Real.log (((4 * X : ℕ) : ℝ)))^2 := hraw
    _ ≤
      32 * Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
        (1 + Real.log (((4 * X : ℕ) : ℝ)))^2 := by
          exact mul_le_mul_of_nonneg_right
            (mul_le_mul_of_nonneg_left
              (square_div_natSqrtSucc_le_rpow_threeHalves hX)
              (by norm_num))
            (sq_nonneg _)

/-- Exact aggregate-to-counting bound with the repository's real Fejer
normalization. -/
theorem nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate_le_counting
    {X N m : ℕ}
    (hX : 0 < X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate
        X N m (Nat.sqrt X) ≤
      (Real.log (((4 * X : ℕ) : ℝ)))^2 *
        (mobiusLogHighGCDReducedDivisorTupleSet
          X (Nat.sqrt X)).card := by
  have hY : 1 ≤ Nat.sqrt X :=
    Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt (Nat.sqrt_pos.2 hX))
  rw [nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate_eq_termIndexSum]
  calc
    (∑ x ∈ mobiusLogAbsoluteHighGCDTypeIITermIndexSet X (Nat.sqrt X),
        mobiusLogAbsoluteHighGCDTypeIITermValue X N m x)
      ≤
      ∑ x ∈ mobiusLogAbsoluteHighGCDTypeIITermIndexSet X (Nat.sqrt X),
        (Real.log (((4 * X : ℕ) : ℝ)))^2 := by
          exact Finset.sum_le_sum fun x hx =>
            mobiusLogAbsoluteHighGCDTypeIITermValue_le_log_sq
              hX hY hreg hm0 hm1 hx
    _ =
      (mobiusLogAbsoluteHighGCDTypeIITermIndexSet
        X (Nat.sqrt X)).card *
        (Real.log (((4 * X : ℕ) : ℝ)))^2 := by
          rw [Finset.sum_const, nsmul_eq_mul]
    _ ≤
      (mobiusLogHighGCDReducedDivisorTupleSet
        X (Nat.sqrt X)).card *
        (Real.log (((4 * X : ℕ) : ℝ)))^2 := by
          exact mul_le_mul_of_nonneg_right
            (by exact_mod_cast
              mobiusLogAbsoluteHighGCDTypeIITermIndexSet_card_le hY)
            (sq_nonneg _)
    _ =
      (Real.log (((4 * X : ℕ) : ℝ)))^2 *
        (mobiusLogHighGCDReducedDivisorTupleSet
          X (Nat.sqrt X)).card := by ring

/-- On dyadic scales, `log(4X)` costs at most three copies of `log X`. -/
theorem log_four_mul_dyadicScale_le_three_log_for_typeII
    (j : ℕ) :
    Real.log (((4 * dyadicScale j : ℕ) : ℝ)) ≤
      3 * Real.log (dyadicScale j : ℝ) := by
  rw [log_four_mul_dyadicScale_for_exactCorrelationReadout]
  have hlogFour :
      Real.log (4 : ℝ) = Real.log 2 + Real.log 2 := by
    rw [show (4 : ℝ) = 2 * 2 by norm_num,
      Real.log_mul (by norm_num) (by norm_num)]
  rw [hlogFour]
  linarith [
    log_two_le_log_dyadicScale_for_exactCorrelationReadout j]

/-- The two logarithmic envelopes from term size and divisor counting fit into
`225 * log(X)^4`. -/
theorem typeII_log_envelope_le
    (j : ℕ) :
    (Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 *
        (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 ≤
      225 * (Real.log (dyadicScale j : ℝ))^4 := by
  have hL0 : 0 ≤ Real.log (dyadicScale j : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast
      one_le_dyadicScale_for_boundaryMinimalFejerSchedule j
  have h4log0 :
      0 ≤ Real.log (((4 * dyadicScale j : ℕ) : ℝ)) := by
    apply Real.log_nonneg
    exact_mod_cast (by
      have hX := dyadicScale_pos_for_boundaryMinimalFejerSchedule j
      omega : 1 ≤ 4 * dyadicScale j)
  have h1log0 :
      0 ≤ 1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)) := by
    linarith
  have hsquare1 :
      (Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 ≤
        (3 * Real.log (dyadicScale j : ℝ))^2 :=
    (sq_le_sq₀ h4log0 (by positivity)).2
      (log_four_mul_dyadicScale_le_three_log_for_typeII j)
  have hsquare2 :
      (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 ≤
        (5 * Real.log (dyadicScale j : ℝ))^2 :=
    (sq_le_sq₀ h1log0 (by positivity)).2
      (one_add_log_four_mul_dyadicScale_le_five_log j)
  calc
    (Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 *
        (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2
      ≤
      (3 * Real.log (dyadicScale j : ℝ))^2 *
        (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 :=
          mul_le_mul_of_nonneg_right hsquare1 (sq_nonneg _)
    _ ≤
      (3 * Real.log (dyadicScale j : ℝ))^2 *
        (5 * Real.log (dyadicScale j : ℝ))^2 :=
          mul_le_mul_of_nonneg_left hsquare2 (sq_nonneg _)
    _ = 225 * (Real.log (dyadicScale j : ℝ))^4 := by ring

/-- Actual target-scale estimate for the exact absolute high-g Type II
aggregate. -/
theorem sevenEighths_absoluteHighGCDTypeII_le_exactTarget
    (j m : ℕ)
    (hm0 : 2 * dyadicScale j ≤ m)
    (hm1 : m ≤ 4 * dyadicScale j) :
    nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m
        (sevenEighthsMobiusLogTypeITypeIICutoff
          (dyadicScale j)) ≤
      7200 *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^4 := by
  have hcount :=
    nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate_le_counting
      (dyadicScale_pos_for_boundaryMinimalFejerSchedule j)
      (sevenEighthsBoundaryMinimalFejerCutoff_nonaliasing j)
      hm0 hm1
  have hcard :=
    mobiusLogHighGCDReducedDivisorTupleSet_sqrt_card_cast_le
      (dyadicScale_pos_for_boundaryMinimalFejerSchedule j)
  have hlog0 :
      0 ≤ Real.log (((4 * dyadicScale j : ℕ) : ℝ)) := by
    apply Real.log_nonneg
    exact_mod_cast (by
      have hX := dyadicScale_pos_for_boundaryMinimalFejerSchedule j
      omega : 1 ≤ 4 * dyadicScale j)
  calc
    nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m
        (sevenEighthsMobiusLogTypeITypeIICutoff
          (dyadicScale j))
      ≤
      (Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 *
        (mobiusLogHighGCDReducedDivisorTupleSet
          (dyadicScale j) (Nat.sqrt (dyadicScale j))).card := by
            simpa [sevenEighthsMobiusLogTypeITypeIICutoff] using hcount
    _ ≤
      (Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 *
        (32 * Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
          (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2) := by
            exact mul_le_mul_of_nonneg_left hcard (sq_nonneg _)
    _ =
      32 * Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        ((Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 *
          (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2) := by ring
    _ ≤
      32 * Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (225 * (Real.log (dyadicScale j : ℝ))^4) := by
          exact mul_le_mul_of_nonneg_left
            (typeII_log_envelope_le j)
            (by positivity)
    _ =
      7200 *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^4 := by ring

/-- The exact absolute high-g Type II supplier is now source-proved
unconditionally; the graded premise is not used. -/
theorem sevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound :
    SevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound := by
  intro hgraded
  refine ⟨7200, by norm_num, 0, ?_⟩
  intro j hj m hm0 hm1
  exact sevenEighths_absoluteHighGCDTypeII_le_exactTarget j m hm0 hm1

/-- With Type II closed, the complete squarefree-gcd supplier now requires only
the genuinely signed low-g Type I estimate. -/
theorem signedLowGCDTypeIBound_to_squarefreeGCDBound
    (hI : SevenEighthsBoundaryMinimalSignedLowGCDTypeIBound) :
    SevenEighthsBoundaryMinimalMobiusLogSquarefreeGCDBound :=
  signedTypeI_absoluteTypeII_to_squarefreeGCDBound
    hI sevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound

/-- The remaining signed Type I theorem reaches the existing partial-prime
discrepancy target through the closed Type II estimate. -/
theorem signedLowGCDTypeIBound_to_partialDiscrepancy
    (hI : SevenEighthsBoundaryMinimalSignedLowGCDTypeIBound)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  mobiusLogSquarefreeGCDBound_to_partialDiscrepancy
    (signedLowGCDTypeIBound_to_squarefreeGCDBound hI)
    hgraded


end GRWTSK.RiemannHypothesis
