/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalZetaCenterRefinement

set_option autoImplicit false

/-!
# Verified joint rational center data supplies the maintained Newton test

The center is fixed once. The Newton data is CONSTRUCTED from the verified
value, slope and their complete returned errors; no externally assigned
center-enclosure proof or smaller error can be substituted. Cauchy and Newton
radii remain distinct. A passing concrete zero packet and sharp global count
are not supplied here. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.VerifiedRationalNewtonCenter

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open RationalZetaCenterEvaluation CanonicalZeroDivisor

/-- Literal source binding, not equality of approximate displayed coordinates. -/
def newtonData (c : QComplex) (radius : ℚ) (inverse : QComplex) (out : CenterState) :
    RationalNewtonWitness.Data where
  center := c
  radius := radius
  inverse := inverse
  value := out.value.value
  valueError := out.value.error
  slope := out.slope.value
  slopeError := out.slope.error

/-- Arithmetic source verification and contraction acceptance are BOTH required. -/
def verifyZero (N chart : ℕ) (positive : Bool) (c : QComplex) (p : Plan N)
    (valueTol slopeTol radius : ℚ) (inverse : QComplex) (claimed : CenterState) : Bool :=
  RationalZetaCenterEvaluation.verify N c p valueTol slopeTol claimed &&
    RationalNewtonWitness.verify chart positive (newtonData c radius inverse claimed)

theorem centerEnclosures_of_verified (N : ℕ) (c : QComplex) (p : Plan N)
    (valueTol slopeTol radius : ℚ) (inverse : QComplex) (out : CenterState)
    (hv : RationalZetaCenterEvaluation.verify N c p valueTol slopeTol out = true) :
    RationalNewtonWitness.CenterEnclosures (newtonData c radius inverse out) :=
  (RationalZetaCenterEvaluation.verify_sound N c p valueTol slopeTol out hv).1

/-- No zeta enclosure, local-root or disk-derivative premise remains.
The theorem says nothing about zeros outside this one certified disk. -/
theorem exists_zero_of_verify (N chart : ℕ) (positive : Bool) (c : QComplex) (p : Plan N)
    (valueTol slopeTol radius : ℚ) (inverse : QComplex) (out : CenterState)
    (hv : verifyZero N chart positive c p valueTol slopeTol radius inverse out = true) :
    ∃ z : ZeroPoint, ‖z.1 - QComplex.embed c‖ ≤ (radius : ℝ) ∧
      deriv riemannZeta z.1 ≠ 0 ∧
      ∀ w : ZeroPoint, ‖w.1 - QComplex.embed c‖ ≤ (radius : ℝ) → w = z := by
  have h := Bool.and_eq_true_iff.mp hv
  have hc := centerEnclosures_of_verified N c p valueTol slopeTol radius inverse out h.1
  obtain ⟨z, hz, _, hd, hu⟩ := RationalNewtonWitness.exists_zero chart positive
    (newtonData c radius inverse out) h.2 hc
  exact ⟨z, hz, hd, hu⟩

end GRWTSK.RiemannHypothesis.VerifiedRationalNewtonCenter
