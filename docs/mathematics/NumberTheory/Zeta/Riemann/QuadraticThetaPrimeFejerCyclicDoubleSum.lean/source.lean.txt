/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicConvexContraction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Exact finite reindexing of the cyclic double sum from (x,y) to
(x,r=x-y), followed by swapping x and r. -/
theorem cyclicConvolutionDoubleSumReindexing :
    CyclicConvolutionDoubleSumReindexingClaim := by
  intro X N m hreg
  let L := fejerOctavePeriod X
  have hinner :
      ∀ x : ZMod L,
        (∑ y : ZMod L,
          cyclicFejerKernel X N (x - y) *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m y|)
        =
        ∑ r : ZMod L,
          cyclicFejerKernel X N r *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m (x - r)| := by
    intro x
    exact Fintype.sum_equiv (cyclicSubEquiv x) _ _ (by
      intro y
      simp [cyclicSubEquiv])
  calc
    (∑ x : ZMod L,
      ∑ y : ZMod L,
        cyclicFejerKernel X N (x - y) *
          |cyclicSharpPrefixIndicator X m x -
            cyclicSharpPrefixIndicator X m y|)
      =
      ∑ x : ZMod L,
        ∑ r : ZMod L,
          cyclicFejerKernel X N r *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m (x - r)| := by
            apply Finset.sum_congr rfl
            intro x hx
            exact hinner x
    _ =
      ∑ r : ZMod L,
        ∑ x : ZMod L,
          cyclicFejerKernel X N r *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m (x - r)| := by
            rw [Finset.sum_comm]
    _ =
      ∑ r : ZMod L,
        cyclicFejerKernel X N r *
          cyclicSharpTranslationL1 X m r := by
            apply Finset.sum_congr rfl
            intro r hr
            unfold cyclicSharpTranslationL1
            rw [Finset.mul_sum]

/-- The cyclic convex-combination L1 supplier is now source-proved. -/
theorem cyclicConvolutionL1ByTranslation :
    CyclicConvolutionL1ByTranslationClaim :=
  doubleSumReindexing_to_cyclicConvolutionL1
    cyclicConvolutionDoubleSumReindexing

/-- The universal smoothing branch is now reduced to interval translation
cardinality alone. -/
def CyclicIntervalTranslationCountOnlyFrontier : Prop :=
  CyclicSharpTranslationCardinalityClaim

end GRWTSK.RiemannHypothesis
