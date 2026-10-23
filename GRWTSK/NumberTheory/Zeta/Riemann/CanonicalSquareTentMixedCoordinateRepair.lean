/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairSufficiency
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine
import Mathlib.Tactic

/-!
# A mixed arithmetic coefficient resolves the two-moment kernel

Unlike a scalar rescaling of the third coordinate, the observable below
combines the first and third coefficients. The exact cofactor line of the
two genuine canonical-tent moment rows proves full-fiber detection whenever
its value on the corrected cofactor vector is nonzero.

The nonvanishing condition is explicit. This is finite-source algebra,
not an independently realized Weil distribution or an RH implication.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateRepair

open GRWTSK.RiemannHypothesis
open GRWTSK.Logic.InformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairSufficiency

/-- A first/third coefficient mixture, not a pure calibration of the third. -/
def mixedCoordinate (weight : ℂ) (u : Combination 2) : ℂ :=
  u (2 : Fin 3) + weight * u (0 : Fin 3)

/-- A nonzero response on the actual cofactor kernel line makes the
mixed coefficient resolve every pair sharing both original moments. -/
theorem mixedCoordinate_detects_moment_fibers
    (weight : ℂ) (hnonzero : cofactorTwo + weight * cofactorZero ≠ 0)
    (u v : Combination 2)
    (hm : bombieriMomentProfile u = bombieriMomentProfile v)
    (ha : mixedCoordinate weight u = mixedCoordinate weight v) :
    u = v := by
  have hordinary : ordinaryMomentRow (u - v) = 0 := by
    have heq : ordinaryMomentRow u = ordinaryMomentRow v :=
      congrArg Prod.fst hm
    have hsub : ordinaryMomentRow (u - v) =
        ordinaryMomentRow u - ordinaryMomentRow v := by
      simp only [ordinaryMomentRow, Pi.sub_apply]
      ring
    rw [hsub, heq, sub_self]
  have hreciprocal : reciprocalMomentRow (u - v) = 0 := by
    have heq : reciprocalMomentRow u = reciprocalMomentRow v :=
      congrArg Prod.snd hm
    have hsub : reciprocalMomentRow (u - v) =
        reciprocalMomentRow u - reciprocalMomentRow v := by
      simp only [reciprocalMomentRow, Pi.sub_apply]
      ring
    rw [hsub, heq, sub_self]
  obtain ⟨c, hc⟩ :=
    coefficient_line_of_two_moments (u - v) hordinary hreciprocal
  have hzero : c * (cofactorTwo + weight * cofactorZero) = 0 := by
    have h2 := hc (2 : Fin 3)
    have h0 := hc (0 : Fin 3)
    simp only [Pi.sub_apply, correctedCoordinates] at h2 h0
    dsimp [mixedCoordinate] at ha
    calc
      c * (cofactorTwo + weight * cofactorZero) =
          (u (2 : Fin 3) - v (2 : Fin 3)) +
            weight * (u (0 : Fin 3) - v (0 : Fin 3)) := by
              rw [h2, h0]
              ring
      _ = 0 := by
        linear_combination ha
  have hc0 : c = 0 := (mul_eq_zero.mp hzero).resolve_right hnonzero
  funext i
  have hi := hc i
  simp only [Pi.sub_apply, hc0, zero_mul] at hi
  exact sub_eq_zero.mp hi

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateRepair
