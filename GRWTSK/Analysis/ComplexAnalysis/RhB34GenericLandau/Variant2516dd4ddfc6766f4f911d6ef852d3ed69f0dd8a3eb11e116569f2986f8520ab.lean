import FormalResearch.MathematicalTooling.Laplace.Continuation

#print axioms FormalResearch.MathematicalTooling.Laplace.Positivity.not_analyticAt_laplace_of_finite_abscissa
#print axioms FormalResearch.MathematicalTooling.Laplace.Continuation.integrable_positive_of_continuation
#print axioms FormalResearch.MathematicalTooling.Laplace.Continuation.order_nonneg_of_continuation

example
    {Ω : Type*} [MeasurableSpace Ω] {μ : Measure Ω} {X : Ω → ℝ}
    (hXm : AEMeasurable X μ)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hconv : ∀ t : ℝ, 1 < t →
      Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (F : ℂ → ℂ)
    (hF : MeromorphicOn F {s : ℂ | 0 < s.re})
    (hreal : ∀ t : ℝ, 0 < t → AnalyticAt ℂ F (t : ℂ))
    (hinit : ∀ s : ℂ, 1 < s.re →
      F s =
        FormalResearch.MathematicalTooling.Laplace.Continuation.transform X μ s)
    (s : ℂ) (hs : 0 < s.re) :
    0 ≤ meromorphicOrderAt F s :=
  FormalResearch.MathematicalTooling.Laplace.Continuation.order_nonneg_of_continuation
    hXm hX hconv F hF hreal hinit s hs
