open MeasureTheory Filter Complex
open CandidateCausalityScratch
open FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic
open scoped Topology

example (F : ℂ → ℂ) (x : ℝ) : boundaryInverse F x =
    (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, Complex.exp ((x : ℂ) * ((t : ℂ) * Complex.I)) * F ((t : ℂ) * Complex.I) := rfl

example (F : ℂ → ℂ) (hF : ∀ z : ℂ, 0 ≤ z.re → DifferentiableAt ℂ F z)
    (φ : ℝ → ℝ) (hφ : Integrable φ)
    (hb : ∀ σ t : ℝ, 0 ≤ σ → ‖F ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t)
    (htop : Tendsto φ atTop (nhds 0)) (hbot : Tendsto φ atBot (nhds 0))
    (x : ℝ) (hx : x < 0) : boundaryInverse F x = 0 :=
  boundaryInverse_eq_zero_of_neg F hF φ hφ hb htop hbot x hx

example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ) (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ∃ φ : ℝ → ℝ, Integrable φ ∧ Tendsto φ atTop (nhds 0) ∧
      Tendsto φ atBot (nhds 0) ∧
      ∀ σ t : ℝ, 0 ≤ σ → ‖candidate X ε h ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t :=
  candidate_boundary_majorant X hX ε h hε hh hh1

example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ) (hε : 0 < ε)
    (hh : 0 < h) (hh1 : h ≤ 1) (x : ℝ) (hx : x < 0) :
    boundaryInverse (candidate X ε h) x = 0 :=
  candidate_boundaryInverse_eq_zero X hX ε h hε hh hh1 x hx
