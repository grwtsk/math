/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleIndex

set_option autoImplicit false

/-!
# Rectangle divisor controls, not numerical zeta certificates

All decisions and proof scripts remain unexecuted. Polynomial examples are
synthetic; none is asserted to be a zeta zero or a target-contour evaluation.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.RectangleDivisorControls

open scoped unitInterval BigOperators Topology
open Set ContinuousMap
open GRWTSK.Analysis.Complex
open ClosedCurveFactorIndex RectangleFactorIndex ExponentialLoopIndex

noncomputable section

def unitRectangle : Rectangle := ⟨-1,1,-1,1,by norm_num,by norm_num⟩

theorem zero_interior : (0 : ℂ) ∈ unitRectangle.interior := by
  norm_num [unitRectangle, Rectangle.interior]

theorem linear_index_one : index (unitRectangle.factor 0) (unitRectangle.factor_closed 0)
    (unitRectangle.factor_nonzero zero_interior) = 1 :=
  unitRectangle.factor_index_one zero_interior

/-- One DISTINCT location of order three contributes THREE, not one. -/
theorem cubic_index_three :
    index ((unitRectangle.factor 0)^3)
      (pow_closed _ (unitRectangle.factor_closed 0) 3)
      (pow_nonzero _ (unitRectangle.factor_nonzero zero_interior) 3) = 3 := by
  rw [index_pow, linear_index_one]
  norm_num

/-- Reversal is a signed operation; natAbs would erase this control. -/
theorem reversed_linear_index :
    winding (LoopIndexOperations.reverseLoop (lift (unitRectangle.factor 0)
      (unitRectangle.factor_nonzero zero_interior)))
      (LoopIndexOperations.reverseLoop_closed _
        (lift_closed _ (unitRectangle.factor_closed 0) _)) = -1 := by
  rw [LoopIndexOperations.winding_reverse]
  change -index (unitRectangle.factor 0) _ _ = -1
  rw [linear_index_one]

/-- Boundary nonvanishing does not make a remainder nonzero inside. -/
theorem boundary_only_is_insufficient :
    (∀ t, unitRectangle.factor 0 t ≠ 0) ∧ (fun z : ℂ => z) 0 = 0 :=
  ⟨unitRectangle.factor_nonzero zero_interior,rfl⟩

theorem boundary_root_not_interior :
    (⟨-1,0⟩ : ℂ) ∈ unitRectangle.boundary ∧ (⟨-1,0⟩ : ℂ) ∉ unitRectangle.interior := by
  norm_num [unitRectangle, Rectangle.boundary, Rectangle.box, Rectangle.interior]

/-- A synthetic double zero exercises the actual normal-form construction. -/
theorem double_root_has_extended_quotient :
    ∃ q : ℂ → ℂ, AnalyticOnNhd ℂ q unitRectangle.box ∧
      (∀ w ∈ unitRectangle.box, q w ≠ 0) ∧
      (∀ w ∈ unitRectangle.box, w^2 = q w *
        FiniteLinearRemoval.product (fun _ : Fin 1 => (0 : ℂ)) (fun _ => 2) w) := by
  obtain ⟨q,hq,hn,he,_⟩ := FiniteLinearRemoval.exists_quotient
    (fun _ : Fin 1 => (0 : ℂ)) (fun _ => 2) (fun w : ℂ => w^2) unitRectangle.box
    (fun i j _ => Subsingleton.elim i j) (fun _ => by norm_num)
    (fun _ => by norm_num [unitRectangle, Rectangle.box])
    (fun w _ => by fun_prop)
    (fun _ => ⟨fun _ => 1, analyticAt_const, one_ne_zero,
      Filter.Eventually.of_forall (fun w => by simp)⟩)
    (by intro w _ hw; exact ⟨0, (pow_eq_zero hw)⟩)
  exact ⟨q,hq,hn,he⟩

/-- Raw totalized division is NOT the removable extension. -/
theorem raw_quotient_at_removed_point :
    (0 : ℂ)^2/(0 : ℂ)^2 = 0 ∧ (1 : ℂ) ≠ 0 := by norm_num

theorem missing_factor_leaves_zero :
    (0 : ℂ)^2 = (0 : ℂ)*(0 : ℂ) ∧ (fun z : ℂ => z) 0 = 0 := by norm_num

/-- A nonvanishing entire multiplier contributes zero without a chosen log. -/
theorem exponential_multiplier_index_zero :
    index (unitRectangle.image Complex.exp Complex.continuous_exp.continuousOn)
      (unitRectangle.image_closed _ _)
      (unitRectangle.image_nonzero _ (fun w _ => Complex.exp_ne_zero w)) = 0 :=
  unitRectangle.zero_free_index Complex.continuous_exp.continuousOn
    (fun w _ => Complex.exp_ne_zero w)

/-- Distinct full points with equal height are allowed; duplicate locations are not. -/
theorem full_location_control :
    (⟨-1/2,0⟩ : ℂ) ≠ ⟨1/2,0⟩ ∧
      ¬ Function.Injective (fun _ : Fin 2 => (0 : ℂ)) := by
  constructor
  · intro h; have := congrArg Complex.re h; norm_num at this
  · intro h; have he : (0 : Fin 2) = 1 := h rfl
    norm_num at he

/-- One lies on the old rectangle bottom but the normalized source is nonzero. -/
theorem removed_pole_not_counted :
    CriticalStripHeightDescent.poleNormalizedZeta (1 : ℂ) = 1 ∧
      analyticOrderAt CriticalStripHeightDescent.poleNormalizedZeta (1 : ℂ) = 0 :=
  ⟨by simp, PoleNormalizedContourBounds.order_at_one⟩

/-- Endpoint-preserving timing and reversed traversal are different premises. -/
theorem reversal_not_endpoint_preserving : LoopIndexOperations.reverseTime 0 ≠ (0 : I) := by simp

end
end GRWTSK.RiemannHypothesis.Checks.RectangleDivisorControls
