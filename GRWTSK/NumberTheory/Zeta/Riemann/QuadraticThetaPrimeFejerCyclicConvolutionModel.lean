/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicStepCorrection
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Arithmetic representative for a residue modulo 4X: residue zero represents
the endpoint 4X, and every other residue uses its canonical value. -/
def octaveRepresentative
    (X : ℕ)
    (z : ZMod (fejerOctavePeriod X)) : ℕ :=
  if z.val = 0 then fejerOctavePeriod X else z.val

/-- In the nondegenerate octave, the cyclic representative lies in [1,4X]. -/
theorem octaveRepresentative_mem
    {X : ℕ}
    (hX : 0 < X)
    (z : ZMod (fejerOctavePeriod X)) :
    1 ≤ octaveRepresentative X z ∧
      octaveRepresentative X z ≤ fejerOctavePeriod X := by
  unfold octaveRepresentative
  split_ifs with hz
  · constructor
    · unfold fejerOctavePeriod
      omega
    · exact le_rfl
  · have hvalLt := z.val_lt
    constructor
    · omega
    · omega

/-- Exact cyclic sharp-prefix indicator. -/
def cyclicSharpPrefixIndicator
    (X m : ℕ)
    (z : ZMod (fejerOctavePeriod X)) : ℝ :=
  if 2 * X < octaveRepresentative X z ∧
      octaveRepresentative X z ≤ m
  then 1
  else 0

/-- Period-4X Fejer kernel on the cyclic group. -/
def cyclicFejerKernel
    (X N : ℕ)
    (z : ZMod (fejerOctavePeriod X)) : ℝ :=
  signedSampledTriangularKernelAtPeriod
    (fejerOctavePeriod X) N (z.val : ℤ)

/-- Cyclic convolution of the Fejer kernel with the sharp prefix indicator. -/
def cyclicFejerSmoothedPrefix
    (X N m : ℕ)
    (x : ZMod (fejerOctavePeriod X)) : ℝ :=
  ∑ y : ZMod (fejerOctavePeriod X),
    cyclicFejerKernel X N (x - y) *
      cyclicSharpPrefixIndicator X m y

/-- Full-cycle L1 distance between the sharp prefix and its cyclic smoothing. -/
def cyclicFejerSharpStepL1Error
    (X N m : ℕ) : ℝ :=
  ∑ x : ZMod (fejerOctavePeriod X),
    |cyclicSharpPrefixIndicator X m x -
      cyclicFejerSmoothedPrefix X N m x|

/-- Source-faithfulness bridge still needed: the previously defined arithmetic
prefix weight on the octave is the restriction of the exact cyclic convolution. -/
def ArithmeticPrefixWeightEqualsCyclicConvolutionClaim : Prop :=
  ∀ X N m n : ℕ,
    NonAliasingFejerCutoffRegime X N →
    2 * X < n → n ≤ 4 * X →
    2 * X ≤ m → m ≤ 4 * X →
      nonAliasingFejerPrefixWeight X N m n =
        cyclicFejerSmoothedPrefix X N m
          (n : ZMod (fejerOctavePeriod X))

/-- Once the arithmetic/cyclic identification is supplied, the octave L1 error
is bounded by the full-cycle L1 error because the octave is a subset of the
period. -/
def OctaveL1LeCyclicL1Claim : Prop :=
  ArithmeticPrefixWeightEqualsCyclicConvolutionClaim →
  ∀ X N m : ℕ,
    NonAliasingFejerCutoffRegime X N →
    2 * X ≤ m → m ≤ 4 * X →
      nonAliasingFejerSharpStepL1Error X N m ≤
        cyclicFejerSharpStepL1Error X N m

/-- Translation error of the cyclic sharp indicator by one residue. -/
def cyclicSharpTranslationL1
    (X m : ℕ)
    (r : ZMod (fejerOctavePeriod X)) : ℝ :=
  ∑ x : ZMod (fejerOctavePeriod X),
    |cyclicSharpPrefixIndicator X m x -
      cyclicSharpPrefixIndicator X m (x - r)|

/-- Universal convex-combination reduction: a nonnegative mass-one kernel
bounds the cyclic smoothing error by the kernel average of translation errors. -/
def CyclicConvolutionL1ByTranslationClaim : Prop :=
  ∀ X N m : ℕ,
    NonAliasingFejerCutoffRegime X N →
      cyclicFejerSharpStepL1Error X N m ≤
        ∑ r : ZMod (fejerOctavePeriod X),
          cyclicFejerKernel X N r *
            cyclicSharpTranslationL1 X m r

/-- Pure interval-counting frontier.  A residue of cyclic distance d can change
at most 2d values of a cyclic interval indicator. -/
def CyclicSharpTranslationCardinalityClaim : Prop :=
  ∀ X m : ℕ,
    0 < X →
    2 * X ≤ m → m ≤ 4 * X →
    ∀ r : ZMod (fejerOctavePeriod X),
      cyclicSharpTranslationL1 X m r ≤
        2 * (min r.val
          (fejerOctavePeriod X - r.val) : ℕ)

/-- Final cyclic combinatorial packet. -/
structure CyclicSharpStepContractionData where
  arithmeticRestriction : ArithmeticPrefixWeightEqualsCyclicConvolutionClaim
  octaveRestriction : OctaveL1LeCyclicL1Claim
  convolutionReduction : CyclicConvolutionL1ByTranslationClaim
  translationCount : CyclicSharpTranslationCardinalityClaim

end GRWTSK.RiemannHypothesis
