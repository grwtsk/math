open MeasureTheory FourierTransform Filter Complex
open CandidateRealizationScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality HalfLineExponential HalfLineExtension
open scoped Topology

example (F : ℂ → ℂ) (ξ : ℝ) :
    angularFrequency F ξ = F (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) := rfl

example (F : ℂ → ℂ) (x : ℝ) :
    boundaryInverse F x = (𝓕⁻ (angularFrequency F)) x :=
  boundaryInverse_eq_fourierInv F x

variable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ) (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1)

example : Integrable (angularFrequency (candidate X ε h)) ∧
    MemLp (angularFrequency (candidate X ε h)) 2 :=
  candidate_frequency_admission X hX ε h hε hh hh1

example : fullBoundaryVector X hX ε h hε hh hh1 =
    (𝓕⁻ ((candidate_frequency_admission X hX ε h hε hh hh1).2.toLp
      (angularFrequency (candidate X ε h))) : FullH) := rfl

example : fullBoundaryVector X hX ε h hε hh hh1 =ᵐ[volume]
    boundaryInverse (candidate X ε h) := fullBoundaryVector_ae X hX ε h hε hh hh1

example : MemLp (boundaryInverse (candidate X ε h)) 2 volume :=
  candidate_boundaryInverse_memLp X hX ε h hε hh hh1

example : Continuous (boundaryInverse (candidate X ε h)) :=
  candidate_boundaryInverse_continuous X hX ε h hε hh hh1

example : ‖fullBoundaryVector X hX ε h hε hh hh1‖ ^ 2 =
    (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖candidate X ε h ((t : ℂ) * I)‖ ^ 2 :=
  fullBoundaryVector_norm_sq X hX ε h hε hh hh1

example : controller X hX ε h hε hh hh1 =
    (restriction (fullBoundaryVector X hX ε h hε hh hh1) : H) := rfl

example : controller X hX ε h hε hh hh1 =ᵐ[halfLineMeasure]
    boundaryInverse (candidate X ε h) := controller_ae X hX ε h hε hh hh1

example : zeroExtension (controller X hX ε h hε hh hh1) =
    fullBoundaryVector X hX ε h hε hh hh1 :=
  zeroExtension_controller X hX ε h hε hh hh1

example : ‖controller X hX ε h hε hh hh1‖ ^ 2 =
    (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖candidate X ε h ((t : ℂ) * I)‖ ^ 2 :=
  controller_norm_sq X hX ε h hε hh hh1
