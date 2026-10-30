import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.AdaptiveCanonicalTentCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CanonicalSquareTentFiniteUniformTail

set_option autoImplicit false

/-!
# Exact transport between the two canonical square-tent finite heads

Copyright (c) 2026 grwtsk contributors. MIT.

The existing finite-test uniformity uses the *complete* trivial-zero correction
and truncates the nontrivial divisor. The adaptive four-channel certificate
instead truncates both families. Their difference is exactly the signed
trivial-zero prefix defect, not a new remainder or a replacement source.

No all-scale grid, good-scale transfer, endpoint quadrature or analytic RH
return is reconstructed here. The pickup energy observable and the canonical
square-tent prime-power observable remain distinct.

SOURCE_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN / AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveCanonicalTentTransport

open scoped BigOperators
open GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveCanonicalTentCertificate
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CountedTentTail
open GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries
open GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection
open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.RiemannHypothesis.TrivialZeroResidues

noncomputable section

/-- The finite adaptive head differs from the previously formalized complete
trivial-correction head by exactly one *signed* prefix correction. -/
theorem finiteHead_eq_existingHead_add_prefix_defect
    (f : CanonicalSquareTentTest) (K N : ℕ) :
    finiteSquareTentHead (testStage f) (zeroHeightCutoff K) N =
      finiteSpectralValue K f +
        ((correctionPrefix N (squareCenter (testStage f))
          (squareRadius (testStage f)) -
          rationalTentCorrection (squareCenter (testStage f))
            (squareRadius (testStage f)) : ℝ) : ℂ) := by
  rw [show (∑ k ∈ Finset.range N,
      -tentKernel (squareCenter (testStage f))
        (squareRadius (testStage f)) (trivialPoint k)) =
      (correctionPrefix N (squareCenter (testStage f))
        (squareRadius (testStage f)) : ℂ) from
      finite_trivial_coefficients N (squareCenter (testStage f))
        (squareRadius (testStage f))
        (squareRadius_pos (testStage f))
        (square_tent_domain (testStage f) (testStage_ge_two f))]
  unfold finiteSquareTentHead finiteSpectralValue
  push_cast
  ring

/-- Both source-specific finite heads approximate the same literal arithmetic
square-tent value, with the new trivial tail paid in addition to the already
proved canonical nontrivial tail. -/
theorem existingHead_to_adaptive_bound
    (f : CanonicalSquareTentTest) (K N : ℕ) :
    ‖(squareTentMangoldt (testStage f) : ℂ) -
      finiteSquareTentHead (testStage f) (zeroHeightCutoff K) N‖ ≤
      lowerDefect K f +
      squareTrivialBudget (testStage f) *
        (1 / (testStage f : ℝ) ^ 4) ^ N := by
  simpa only [lowerDefect] using
    norm_source_sub_finiteHead_le (testStage f) (testStage_ge_two f)
      (zeroHeightCutoff K) (zeroHeightCutoff_ge_two K) N

end
end GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveCanonicalTentTransport
