/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib product integration retains upstream attribution and Apache-2.0 licensing. -/
import GRWTSK.MeasureAndIntegration.TwoArcKernelProduct

/-!
# Integrating the internal coordinates of two directed arcs

The endpoints remain fixed. The returning arc is retained. This does not yet
transport the full cyclic history measure or insert the Wilson observables.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, axioms and interfaces NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.Integration.TwoArcKernelIntegral
open MeasureTheory
open GRWTSK.Analysis.Integration.FiniteKernelChain
open GRWTSK.Analysis.Integration.TwoArcKernelProduct
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (K : C(X × X, ℝ))

/-- Each actual arc weight is integrable; the internal product measure has no duplicated endpoint. -/
theorem integrable_two_weights (p q : ℕ) (x y : X) :
    Integrable (fun uv : (Fin p → X) × (Fin q → X) =>
      weight K p x y uv.1 * weight K q y x uv.2)
      ((Measure.pi (fun _ : Fin p => μ)).prod (Measure.pi (fun _ : Fin q => μ))) :=
  (integrable_weight μ K p x y).mul_prod (integrable_weight μ K q y x)

/-- Both positive-length kernels occur in the actual internal-coordinate integral. -/
theorem integral_two_weights (p q : ℕ) (x y : X) :
    (∫ uv : (Fin p → X) × (Fin q → X), weight K p x y uv.1 * weight K q y x uv.2
      ∂(Measure.pi (fun _ : Fin p => μ)).prod (Measure.pi (fun _ : Fin q => μ))) =
      positivePower μ K p (x,y) * positivePower μ K q (y,x) := by
  rw [integral_prod_mul, integral_weight, integral_weight]

/-- The integrand is the actual cyclic density of the explicitly concatenated history. -/
theorem integral_cyclic_history (p q : ℕ) (x y : X) :
    (∫ uv : (Fin p → X) × (Fin q → X),
      ∏ i, K (history p q x y uv.1 uv.2 i, history p q x y uv.1 uv.2 (i+1))
      ∂(Measure.pi (fun _ : Fin p => μ)).prod (Measure.pi (fun _ : Fin q => μ))) =
      positivePower μ K p (x,y) * positivePower μ K q (y,x) := by
  calc
    _ = ∫ uv : (Fin p → X) × (Fin q → X), weight K p x y uv.1 * weight K q y x uv.2
        ∂(Measure.pi (fun _ : Fin p => μ)).prod (Measure.pi (fun _ : Fin q => μ)) := by
      apply integral_congr_ae
      exact ae_of_all _ (fun uv => cyclic_product_two_arcs K p q x y uv.1 uv.2)
    _ = _ := integral_two_weights μ K p q x y

end GRWTSK.Analysis.Integration.TwoArcKernelIntegral
