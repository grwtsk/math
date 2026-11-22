/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilResponseSignReturn
import Mathlib.Tactic.Abel

/-!
# Residual correction of the original signed response defect

The exact first variation is represented by the physical load
`h - 2 * (regularization - epsilon) * J v`. A second source trial pays
this variation through the ENTIRE primal residual, leaving a product of
primal/dual errors and an exact signed quadratic remainder. No Galerkin
orthogonality, spectral identification or arithmetic positivity is assumed.

This is a local quadratic specialization of dual-weighted residual analysis,
not a novelty claim. See the adjacent individual provenance record. The
finite-sine consumer uses both complete physical residuals; the quadrature
consumer is `WeilResponseQuadratureCorrection`.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit, certified source evaluation and independent review:
NOT_RUN. The universal response signs and cofinal coverage remain open.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ResponseResidualCorrection

open TranslationCutoffs TranslationEnergyDomain FormDomainDensity
open ClosedSourceBilinear ShiftedSourceSolve ResponseSignReturn
open FiniteSineOperator FiniteSineSolveResidual

/-- The exact derivative load of the unchanged signed quadratic output. -/
def dualLoad (T β ε : ℝ) (h : WindowPhysical T) (v : FormDomain T) :
    WindowPhysical T :=
  h - (2 * (regularization T β - ε)) • windowInput T v

/-- The correction evaluates the complete primal residual on the dual trial. -/
def correctedTrial (T β ε : ℝ) (h : WindowPhysical T) (v w : FormDomain T) : ℝ :=
  trialDefect T β ε h v + residualFunctional T β h v w

/-- Exact quadratic Taylor identity, with the sign of the construction shift. -/
theorem responseDefect_trial_difference (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) (v : FormDomain T) :
    responseDefect T β hT ε h - trialDefect T β ε h v =
      inner ℝ (dualLoad T β ε h v) (windowInput T (weakSolve T β hT h - v)) -
        (regularization T β - ε) * ‖windowInput T (weakSolve T β hT h - v)‖ ^ 2 := by
  have hsum : physicalResponse T β hT h =
      windowInput T v + windowInput T (weakSolve T β hT h - v) := by
    change windowInput T (weakSolve T β hT h) = _
    rw [map_sub]
    abel
  unfold responseDefect trialDefect dualLoad
  rw [hsum, norm_add_sq_real, inner_add_right, inner_sub_left, real_inner_smul_left]
  ring

/-- The first-order error is accounted for, not discarded. -/
theorem responseDefect_remainder (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) (v w : FormDomain T) :
    responseDefect T β hT ε h - correctedTrial T β ε h v w =
      residualFunctional T β (dualLoad T β ε h v) w (weakSolve T β hT h - v) -
        (regularization T β - ε) * ‖windowInput T (weakSolve T β hT h - v)‖ ^ 2 := by
  have ht := responseDefect_trial_difference T β hT ε h v
  have hr : residualFunctional T β h v w =
      coerciveForm T β w (weakSolve T β hT h - v) :=
    (residualFunctional_eq_error T β hT h v w).trans
      (coerciveForm_symmetric T β _ w)
  have hs : residualFunctional T β (dualLoad T β ε h v) w
      (weakSolve T β hT h - v) =
      inner ℝ (dualLoad T β ε h v) (windowInput T (weakSolve T β hT h - v)) -
        coerciveForm T β w (weakSolve T β hT h - v) := rfl
  unfold correctedTrial
  rw [hr, hs]
  linarith

/-- All-domain residual bounds give a signed enclosure. The two endpoint
charges differ: a favorable quadratic term need not be charged twice. -/
theorem responseDefect_bounds (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) (v w : FormDomain T) (η σ : ℝ)
    (hr : ‖residualFunctional T β h v‖ ≤ η)
    (hs : ‖residualFunctional T β (dualLoad T β ε h v) w‖ ≤ σ) :
    correctedTrial T β ε h v w - η * σ -
        max (regularization T β - ε) 0 * η ^ 2 ≤ responseDefect T β hT ε h ∧
      responseDefect T β hT ε h ≤ correctedTrial T β ε h v w + η * σ +
        max (-(regularization T β - ε)) 0 * η ^ 2 := by
  let e := weakSolve T β hT h - v
  let s := residualFunctional T β (dualLoad T β ε h v) w
  let c := regularization T β - ε
  have hη : 0 ≤ η := (norm_nonneg _).trans hr
  have hσ : 0 ≤ σ := (norm_nonneg _).trans hs
  have he : ‖e‖ ≤ η := (error_le_residual T β hT h v).trans hr
  have hJe : ‖windowInput T e‖ ≤ η := (windowInput_norm_le T e).trans he
  have hsq : ‖windowInput T e‖ ^ 2 ≤ η ^ 2 := by
    nlinarith [norm_nonneg (windowInput T e)]
  have hp : |s e| ≤ η * σ := by
    calc
      _ ≤ ‖s‖ * ‖e‖ := by simpa only [Real.norm_eq_abs] using s.le_opNorm e
      _ ≤ σ * η := mul_le_mul hs he (norm_nonneg e) hσ
      _ = _ := mul_comm _ _
  have hpos : c * ‖windowInput T e‖ ^ 2 ≤ max c 0 * η ^ 2 :=
    (mul_le_mul_of_nonneg_right (le_max_left c 0) (sq_nonneg _)).trans
      (mul_le_mul_of_nonneg_left hsq (le_max_right c 0))
  have hneg : (-c) * ‖windowInput T e‖ ^ 2 ≤ max (-c) 0 * η ^ 2 :=
    (mul_le_mul_of_nonneg_right (le_max_left (-c) 0) (sq_nonneg _)).trans
      (mul_le_mul_of_nonneg_left hsq (le_max_right (-c) 0))
  have hid := responseDefect_remainder T β hT ε h v w
  change responseDefect T β hT ε h - correctedTrial T β ε h v w =
    s e - c * ‖windowInput T e‖ ^ 2 at hid
  change correctedTrial T β ε h v w - η * σ - max c 0 * η ^ 2 ≤ _ ∧
    _ ≤ correctedTrial T β ε h v w + η * σ + max (-c) 0 * η ^ 2
  obtain ⟨hpL, hpU⟩ := abs_le.mp hp
  constructor <;> nlinarith

/-- A symmetric second-order allowance, valid for every real epsilon. -/
theorem responseDefect_error_le (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) (v w : FormDomain T) (η σ : ℝ)
    (hr : ‖residualFunctional T β h v‖ ≤ η)
    (hs : ‖residualFunctional T β (dualLoad T β ε h v) w‖ ≤ σ) :
    |responseDefect T β hT ε h - correctedTrial T β ε h v w| ≤
      η * σ + |regularization T β - ε| * η ^ 2 := by
  obtain ⟨hL, hU⟩ := responseDefect_bounds T β hT ε h v w η σ hr hs
  have hp : max (regularization T β - ε) 0 ≤ |regularization T β - ε| :=
    max_le (le_abs_self _) (abs_nonneg _)
  have hn : max (-(regularization T β - ε)) 0 ≤ |regularization T β - ε| :=
    max_le (neg_le_abs _) (abs_nonneg _)
  have hp' := mul_le_mul_of_nonneg_right hp (sq_nonneg η)
  have hn' := mul_le_mul_of_nonneg_right hn (sq_nonneg η)
  exact abs_le.mpr ⟨by nlinarith, by nlinarith⟩

/-- With an exact dual response the remainder has a known sign. -/
theorem responseDefect_exactDual (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) (v : FormDomain T) :
    responseDefect T β hT ε h -
        correctedTrial T β ε h v (weakSolve T β hT (dualLoad T β ε h v)) =
      -(regularization T β - ε) * ‖windowInput T (weakSolve T β hT h - v)‖ ^ 2 := by
  rw [responseDefect_remainder, residualFunctional_eq_error T β hT, sub_self, map_zero]
  simp

/-- Literal finite-sine correction, using the unchanged minimizing pole port. -/
def finiteCorrectedTrial {M K : ℕ} (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) (a : Fin M → ℝ) (b : Fin K → ℝ) : ℝ :=
  trialDefect T β ε h (finiteLift T hT a) +
    inner ℝ (physicalResidual T hT β h a) (finiteInput T b)

theorem correctedTrial_finite {M K : ℕ} (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) (a : Fin M → ℝ) (b : Fin K → ℝ) :
    correctedTrial T β ε h (finiteLift T hT a) (finiteLift T hT b) =
      finiteCorrectedTrial T β hT ε h a b := by
  unfold correctedTrial finiteCorrectedTrial
  rw [residualFunctional_eq_physical, finiteLift_windowInput]

/-- Each physical residual is complete. The dual load uses the actual primal
trial, not an unknown exact response or a different arithmetic source. -/
theorem finite_responseDefect_bounds {M K : ℕ} (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) (a : Fin M → ℝ) (b : Fin K → ℝ) (η σ : ℝ)
    (hr : ‖physicalResidual T hT β h a‖ ≤ η)
    (hs : ‖physicalResidual T hT β (dualLoad T β ε h (finiteLift T hT a)) b‖ ≤ σ) :
    finiteCorrectedTrial T β hT ε h a b - η * σ -
        max (regularization T β - ε) 0 * η ^ 2 ≤ responseDefect T β hT ε h ∧
      responseDefect T β hT ε h ≤ finiteCorrectedTrial T β hT ε h a b + η * σ +
        max (-(regularization T β - ε)) 0 * η ^ 2 := by
  simpa only [correctedTrial_finite] using
    responseDefect_bounds T β hT ε h (finiteLift T hT a) (finiteLift T hT b) η σ
      ((residualFunctional_norm_le_physical T hT β h a).trans hr)
      ((residualFunctional_norm_le_physical T hT β
        (dualLoad T β ε h (finiteLift T hT a)) b).trans hs)

/-- Scalar rounding is separate from both source residual norms. -/
theorem finite_lower_of_observation {M K : ℕ} (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) (a : Fin M → ℝ) (b : Fin K → ℝ)
    (η σ observed rounding : ℝ)
    (hr : ‖physicalResidual T hT β h a‖ ≤ η)
    (hs : ‖physicalResidual T hT β (dualLoad T β ε h (finiteLift T hT a)) b‖ ≤ σ)
    (hobs : |finiteCorrectedTrial T β hT ε h a b - observed| ≤ rounding) :
    observed - rounding - η * σ - max (regularization T β - ε) 0 * η ^ 2 ≤
      responseDefect T β hT ε h := by
  have hL := (finite_responseDefect_bounds T β hT ε h a b η σ hr hs).1
  have ho := (abs_le.mp hobs).1
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ResponseResidualCorrection
