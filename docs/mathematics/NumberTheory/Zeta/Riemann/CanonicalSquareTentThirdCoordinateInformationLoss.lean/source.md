# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebfa664d3b8fb4ecd3f70c3ee6a989c3d14e485f` · SHA-256 `c046a2c69a61818c80d4c805f24eab79ade40f374fede589b75004be74e2dbe5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This standalone module is intentionally not imported by GRWTSK.lean pending
warning-clean compilation, fresh kernel replay, and full transitive axiom audit.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine
import GRWTSK.Logic.InformationLoss.FactorizationFiberCompleteness

/-!
# An actual arithmetic third-coordinate separator for the Bombieri moment fiber

The already-defined corrected stage-2/3/4 canonical-tent coefficient vector
has both Bombieri moments zero but a nonzero third coefficient. Extracting
that exact coefficient supplies a concrete arithmetic readout separating
the corrected vector from zero, rather than leaving separation as an
uninstantiated hypothesis.

This is a source-coordinate observable, not the classical Guinand--Weil
diagonal. It does not prove that the entire three-coordinate augmented map
is injective, and it proves no analytic positivity or Riemann Hypothesis.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss

open GRWTSK.RiemannHypothesis
open GRWTSK.Logic.InformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge

/-- The stage-four coefficient in the same stage-2/3/4 source coordinate
carrier used to define the ordinary and reciprocal Bombieri moments. -/
def thirdCoordinateReadout (u : Combination 2) : ℂ :=
  u (2 : Fin 3)

/-- The third coordinate of the actual source moment correction is precisely
the nonzero two-tent moment determinant cofactor. -/
theorem thirdCoordinateReadout_corrected :
    thirdCoordinateReadout correctedCoordinates = cofactorTwo := by
  simp [thirdCoordinateReadout, correctedCoordinates]

@[simp] theorem thirdCoordinateReadout_zero :
    thirdCoordinateReadout (0 : Combination 2) = 0 := by
  simp [thirdCoordinateReadout]

/-- Unlike an arbitrary separating readout, the source's exact third
coefficient is now proved (in this source candidate) to distinguish the
corrected zero-moment vector from the zero vector. -/
theorem thirdCoordinateReadout_separates :
    thirdCoordinateReadout correctedCoordinates ≠
      thirdCoordinateReadout (0 : Combination 2) := by
  rw [thirdCoordinateReadout_corrected, thirdCoordinateReadout_zero]
  exact cofactorTwo_ne_zero

/-- The actual third arithmetic coordinate cannot be reconstructed solely
from the ordered pair of Bombieri ordinary and reciprocal moments. -/
theorem thirdCoordinateReadout_not_factorsThrough :
    ¬ FactorsThrough bombieriMomentProfile thirdCoordinateReadout :=
  bombieri_not_factorsThrough_generic
    thirdCoordinateReadout thirdCoordinateReadout_separates

/-- Adding this exact arithmetic coordinate to the two-moment profile
separates the corrected witness and zero. This is *not* global injectivity. -/
theorem thirdCoordinateReadout_augmented_separates :
    augmentedProfile bombieriMomentProfile thirdCoordinateReadout
        correctedCoordinates ≠
      augmentedProfile bombieriMomentProfile thirdCoordinateReadout
        (0 : Combination 2) :=
  bombieri_augmented_profile_separates
    thirdCoordinateReadout thirdCoordinateReadout_separates

/-- The actual two-moment profile together with the existing stage-four
coefficient is globally injective on the *three-dimensional source
coefficient space*. This is a local finite algebraic theorem: it does not
identify a classical Weil diagonal or establish density in a test class.

The proof subtracts two coefficient vectors with equal observations,
uses the imported exact cofactor-line kernel characterization, and then
annihilates the remaining scalar using `cofactorTwo_ne_zero`. -/
theorem augmentedThreeMomentProfile_injective :
    Function.Injective
      (augmentedProfile bombieriMomentProfile thirdCoordinateReadout) := by
  intro u v heq
  have hp : bombieriMomentProfile u = bombieriMomentProfile v :=
    congrArg Prod.fst heq
  have hOrd : ordinaryMomentRow u = ordinaryMomentRow v := by
    have h := congrArg Prod.fst hp
    change ordinaryMomentRow u = ordinaryMomentRow v at h
    exact h
  have hRec : reciprocalMomentRow u = reciprocalMomentRow v := by
    have h := congrArg Prod.snd hp
    change reciprocalMomentRow u = reciprocalMomentRow v at h
    exact h
  have hThird : u (2 : Fin 3) = v (2 : Fin 3) := by
    have h := congrArg Prod.snd heq
    change u (2 : Fin 3) = v (2 : Fin 3) at h
    exact h
  have hOrdZero : ordinaryMomentRow (u - v) = 0 := by
    have hsub :
        ordinaryMomentRow (u - v) =
          ordinaryMomentRow u - ordinaryMomentRow v := by
      simp only [ordinaryMomentRow, Pi.sub_apply]
      ring
    rw [hsub, hOrd, sub_self]
  have hRecZero : reciprocalMomentRow (u - v) = 0 := by
    have hsub :
        reciprocalMomentRow (u - v) =
          reciprocalMomentRow u - reciprocalMomentRow v := by
      simp only [reciprocalMomentRow, Pi.sub_apply]
      ring
    rw [hsub, hRec, sub_self]
  obtain ⟨c, hc⟩ :=
    coefficient_line_of_two_moments (u - v) hOrdZero hRecZero
  have hcThird : (0 : ℂ) = c * cofactorTwo := by
    simpa [Pi.sub_apply, correctedCoordinates, hThird] using
      (hc (2 : Fin 3))
  have hcZero : c = 0 := by
    rcases mul_eq_zero.mp hcThird.symm with hc0 | hcof
    · exact hc0
    · exact False.elim (cofactorTwo_ne_zero hcof)
  funext i
  have hi : u i - v i = 0 := by
    simpa only [Pi.sub_apply, hcZero, zero_mul] using (hc i)
  exact sub_eq_zero.mp hi

/-- Consequently *every* readout of the three source coefficients
can be reconstructed from the ordered pair of Bombieri moments plus the
third coefficient by some classical decoder.

This is existence of a total set-theoretic decoder, not a computational,
continuous, bounded, analytic, or Weil-form representation. -/
theorem any_source_readout_factorsThrough_augmentedThreeMoments
    {α : Type*} (readout : Combination 2 → α) :
    FactorsThrough
      (augmentedProfile bombieriMomentProfile thirdCoordinateReadout)
      readout := by
  letI : Nonempty (Combination 2) := ⟨0⟩
  apply (factorsThrough_iff_fiberConstant_of_nonempty_source
    (augmentedProfile bombieriMomentProfile thirdCoordinateReadout)
    readout).2
  intro u v h
  exact congrArg readout (augmentedThreeMomentProfile_injective h)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss
```
