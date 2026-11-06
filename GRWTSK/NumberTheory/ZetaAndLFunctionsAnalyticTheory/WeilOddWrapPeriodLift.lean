import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWrapEnergy
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPeriodicTranslationParseval
import Mathlib.MeasureTheory.Constructions.Polish.Basic

/-!
# Circle lift of the odd one-sided wrap comparison

Local attribution is to grwtsk contributors.

The centered lift is Mathlib's actual `AddCircle.liftIoc` at left endpoint
`-T` and period `2*T`. For a displacement from zero through one period,
the two branches of the wrap provide representatives of the translated
circle point in the same half-open interval. Passing to the closed-window
integral changes only a null endpoint. The endpoints of the displacement
range are included.

For larger displacements, the representative in `[0,2*T)` has the same
circle image. Its wrapped energy is bounded using the separated-support
identity for the original whole-line displacement. Thus the factor-two
inequality holds for every nonnegative real displacement with the existing
almost-everywhere support hypothesis.

Complexification identifies this very same jump integral with the interval
energy in `WeilPeriodicTranslationParseval`, retaining the factor
`(2*T)⁻¹` from Haar probability normalization. The resulting Fourier
series also makes the jump energy measurable in the displacement.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set AddCircle

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddWrapPeriodLift

open OddWrapEnergy

private theorem period_pos (T : ℝ) (hT : 0 < T) : 0 < 2 * T := by positivity

/-- The actual centered half-open lift to the additive circle of period two T. -/
def centeredLift {B : Type*} (T : ℝ) (hT : 0 < T) (f : ℝ → B) : AddCircle (2 * T) → B :=
  letI : Fact (0 < 2 * T) := ⟨period_pos T hT⟩
  liftIoc (2 * T) (-T) f

/-- The unnormalized Lebesgue jump energy of the actual circle translation. -/
def periodicJumpEnergy (T : ℝ) (hT : 0 < T) (r : ℝ) (f : ℝ → ℝ) : ℝ :=
  ∫ t in Icc (-T) T, (centeredLift T hT f
    ((t : AddCircle (2 * T)) + (r : AddCircle (2 * T))) - f t) ^ 2

theorem periodicJumpEnergy_nonneg (T : ℝ) (hT : 0 < T) (r : ℝ) (f : ℝ → ℝ) :
    0 ≤ periodicJumpEnergy T hT r f :=
  integral_nonneg (fun _ ↦ sq_nonneg _)

private theorem centeredLift_coe_apply {B : Type*} (T : ℝ) (hT : 0 < T) (f : ℝ → B)
    {t : ℝ} (ht : t ∈ Ioc (-T) T) :
    centeredLift T hT f (t : AddCircle (2 * T)) = f t := by
  let : Fact (0 < 2 * T) := ⟨period_pos T hT⟩
  apply liftIoc_coe_apply
  rwa [show -T + 2 * T = T by ring]

/-- The circle translation agrees pointwise with the reduced wrap on its fundamental interval. -/
theorem centeredLift_translate_eq_wrapShift (T : ℝ) (hT : 0 < T) (s : ℝ)
    (hs : 0 ≤ s) (hst : s ≤ 2 * T) (f : ℝ → ℝ) {t : ℝ} (ht : t ∈ Ioc (-T) T) :
    centeredLift T hT f ((t : AddCircle (2 * T)) + (s : AddCircle (2 * T))) =
      wrapShift T s f t := by
  by_cases h : t + s ≤ T
  · rw [wrapShift, ite_eq_left h, ← AddCircle.coe_add]
    apply centeredLift_coe_apply T hT f
    exact ⟨by linarith [ht.1], h⟩
  · have hrep : ((t + s - 2 * T : ℝ) : AddCircle (2 * T)) =
        (t : AddCircle (2 * T)) + (s : AddCircle (2 * T)) := by
      rw [AddCircle.coe_sub, AddCircle.coe_period, sub_zero, AddCircle.coe_add]
    rw [wrapShift, ite_eq_right h, ← hrep]
    apply centeredLift_coe_apply T hT f
    exact ⟨by linarith, by linarith [ht.2]⟩

theorem periodicJumpEnergy_eq_wrapEnergy (T : ℝ) (hT : 0 < T) (s : ℝ)
    (hs : 0 ≤ s) (hst : s ≤ 2 * T) (f : ℝ → ℝ) :
    periodicJumpEnergy T hT s f = wrapEnergy T s f := by
  unfold periodicJumpEnergy wrapEnergy wrapShiftSquare
  simp only [integral_Icc_eq_integral_Ioc]
  apply setIntegral_congr_fun measurableSet_Ioc
  intro t ht
  dsimp only
  rw [centeredLift_translate_eq_wrapShift T hT s hs hst f ht]

/-- Use the representative in the half-open interval from zero to one period. -/
def reducedDisplacement (T : ℝ) (hT : 0 < T) (r : ℝ) : ℝ :=
  toIcoMod (period_pos T hT) 0 r

theorem reducedDisplacement_mem (T : ℝ) (hT : 0 < T) (r : ℝ) :
    reducedDisplacement T hT r ∈ Ico 0 (2 * T) :=
  toIcoMod_mem_Ico' (period_pos T hT) r

theorem reducedDisplacement_coe (T : ℝ) (hT : 0 < T) (r : ℝ) :
    (reducedDisplacement T hT r : AddCircle (2 * T)) = (r : AddCircle (2 * T)) := by
  have h := congrArg (fun x : ℝ ↦ (x : AddCircle (2 * T)))
    (toIcoMod_add_toIcoDiv_zsmul (period_pos T hT) 0 r)
  simpa only [reducedDisplacement, AddCircle.coe_add, AddCircle.coe_zsmul, AddCircle.coe_period,
    smul_zero, add_zero] using h

theorem periodicJumpEnergy_eq_reduced (T : ℝ) (hT : 0 < T) (r : ℝ) (f : ℝ → ℝ) :
    periodicJumpEnergy T hT r f = periodicJumpEnergy T hT (reducedDisplacement T hT r) f := by
  unfold periodicJumpEnergy
  simp only [reducedDisplacement_coe]

/-- Every nonnegative periodic jump is bounded by twice the actual whole-line jump. -/
theorem periodicJumpEnergy_le_two_zeroShiftEnergy (T : ℝ) (hT : 0 < T) (r : ℝ)
    (hr : 0 ≤ r) {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    periodicJumpEnergy T hT r f ≤ 2 * zeroShiftEnergy r f := by
  by_cases hshort : r ≤ 2 * T
  · rw [periodicJumpEnergy_eq_wrapEnergy T hT r hr hshort f]
    exact wrapEnergy_le_two_zeroShiftEnergy_ae T r hr hshort hf hsupport
  · have hs := reducedDisplacement_mem T hT r
    rw [periodicJumpEnergy_eq_reduced T hT r f,
      periodicJumpEnergy_eq_wrapEnergy T hT _ hs.1 hs.2.le f]
    exact wrapEnergy_le_two_zeroShiftEnergy_of_period_le T _ r hs.1 hs.2.le
      (le_of_not_ge hshort) hf hsupport

theorem centeredLift_ofReal (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ) (z : AddCircle (2 * T)) :
    centeredLift T hT (fun t ↦ (f t : ℂ)) z = Complex.ofReal (centeredLift T hT f z) :=
  rfl

/-- The interval and complex formulation used by the exact Parseval theorem. -/
theorem periodicJumpEnergy_eq_interval_complex (T : ℝ) (hT : 0 < T) (r : ℝ) (f : ℝ → ℝ) :
    periodicJumpEnergy T hT r f =
      ∫ t in (-T)..(-T + 2 * T), ‖centeredLift T hT (fun x ↦ (f x : ℂ))
        ((t : AddCircle (2 * T)) + (r : AddCircle (2 * T))) - (f t : ℂ)‖ ^ 2 := by
  rw [show -T + 2 * T = T by ring, intervalIntegral.integral_of_le (by linarith : -T ≤ T),
    ← integral_Icc_eq_integral_Ioc]
  unfold periodicJumpEnergy
  apply setIntegral_congr_fun measurableSet_Icc
  intro t _
  dsimp only
  rw [centeredLift_ofReal, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs, sq_abs]

/-- Parseval for the same real periodic jump energy with the Haar normalization retained. -/
theorem hasSum_periodicJumpEnergy (T : ℝ) (hT : 0 < T) (r : ℝ)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) :
    HasSum (fun n : ℤ ↦ 2 * (1 - Real.cos (2 * Real.pi * (n : ℝ) * r / (2 * T))) *
      ‖fourierCoeffOn (show -T < -T + 2 * T by linarith) (fun t ↦ (f t : ℂ)) n‖ ^ 2)
      ((2 * T)⁻¹ * periodicJumpEnergy T hT r f) := by
  let : Fact (0 < 2 * T) := ⟨period_pos T hT⟩
  have hfC : MemLp (fun t ↦ (f t : ℂ)) 2 (volume.restrict (Ioc (-T) (-T + 2 * T))) :=
    hf.ofReal.restrict _
  rw [periodicJumpEnergy_eq_interval_complex T hT r f]
  exact PeriodicTranslationParseval.hasSum_liftIoc_translation_energy hfC r

/-- The scalar jump energy is measurable in the translation parameter. -/
theorem measurable_periodicJumpEnergy (T : ℝ) (hT : 0 < T) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) : Measurable (fun r ↦ periodicJumpEnergy T hT r f) := by
  let term (n : ℤ) (r : ℝ) : ℝ :=
    2 * (1 - Real.cos (2 * Real.pi * (n : ℝ) * r / (2 * T))) *
      ‖fourierCoeffOn (show -T < -T + 2 * T by linarith) (fun t ↦ (f t : ℂ)) n‖ ^ 2
  have hsum (r : ℝ) : (∑' n, term n r) = (2 * T)⁻¹ * periodicJumpEnergy T hT r f :=
    (hasSum_periodicJumpEnergy T hT r hf).tsum_eq
  have heq : (fun r ↦ periodicJumpEnergy T hT r f) =
      (fun r ↦ (2 * T) * ∑' n, term n r) := by
    funext r
    rw [hsum, ← mul_assoc, mul_inv_cancel₀ (period_pos T hT).ne', one_mul]
  rw [heq]
  refine measurable_const.mul (Measurable.tsum (fun n ↦ ?_))
  unfold term
  fun_prop

end GRWTSK.NumberTheory.WeilQuadraticForm.OddWrapPeriodLift
