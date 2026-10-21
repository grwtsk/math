/-
PointwiseHermitianMatrixAndSquare — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a
Organized SHA-256: e22d200e37a9502f4065ce73b089b66b8bab0ec90a11999ae7423f2fff2e23ee
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Three genuine components retain the exact conductor-scaled Gamma factor/digamma profile, nonvanishing critical-line values, unit rotor, complex contraction and the whole canonical eight-field realization record; the exact pointwise Hermitian two-by-two matrix, square formula and nonnegative scalar proof; and the whole eleven-field analytic capability assumption record. Matrix and capability components import only the exact same-source scalar component in addition to all original imports. The capability has an arbitrary carrier/set/maps and three chosen propositions with their proofs, without supplied Hilbert structure or equations identifying those propositions with self-adjointness/domain/square/phase-delay laws. No capability inhabitant is constructed. -/

import DAF.Arithmetic.DirichletCharacterProfile
import DAF.Hilbert.Finite
import Mathlib.Analysis.Calculus.Deriv.Star
import Mathlib.Data.Matrix.Reflection
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Ring

import GRWTSK.Analysis.SpecialFunctions.ClassicalFunctions.GammaFunction.ConductorScaledGammaData.Variante7f57c3fa71731eb.GammaScalarsRotorsAndWholeCanonicalPackage

/-!
# Archimedean Gamma spindle

This module implements the exact special-function scalar data and its exact
finite, pointwise Hermitian `2 × 2` Dirac matrix.  The separate
`AnalyticGammaSpindleCapability` records the additional maximal-domain facts
needed to promote the pointwise construction to an unbounded operator on
`L²(ℝ; ℂ²)`.  No inhabitant of that capability is asserted here.

Two similarly motivated scalars deliberately have different names:

* `gammaSpindleProfile` is the real digamma phase gradient;
* `boundedGammaSymbol` is a generally complex contraction.

The latter is not claimed to be self-adjoint.
-/

noncomputable section

namespace DAF.Arithmetic

open Complex
open scoped ComplexConjugate

/-- Exact pointwise Gamma-spindle Dirac matrix. -/
def GammaSpindleDirac (chi : PrimitiveCharacter) (t : ℝ) :
    Matrix (Fin 2) (Fin 2) ℂ :=
  !![0, (t : ℂ) - Complex.I * gammaSpindleProfile chi t;
     (t : ℂ) + Complex.I * gammaSpindleProfile chi t, 0]

/-- Pointwise Hermiticity.  This is the finite theorem, distinct from
maximal-domain self-adjointness of the analytic multiplication operator. -/
theorem gammaSpindleDirac_selfAdjoint
    (chi : PrimitiveCharacter) (t : ℝ) :
    (GammaSpindleDirac chi t).IsHermitian := by
  rw [Matrix.IsHermitian]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [GammaSpindleDirac, Matrix.conjTranspose_apply]
  all_goals ring

@[simp]
theorem gammaSpindleDirac_characterConjugate
    (chi : PrimitiveCharacter) (t : ℝ) :
    GammaSpindleDirac chi.conjugate t = GammaSpindleDirac chi t :=
  rfl

/-- Exact square of the pointwise spindle Dirac. -/
theorem gammaSpindleDirac_sq
    (chi : PrimitiveCharacter) (t : ℝ) :
    GammaSpindleDirac chi t * GammaSpindleDirac chi t =
      !![((t ^ 2 + (gammaSpindleProfile chi t) ^ 2 : ℝ) : ℂ), 0;
         0, ((t ^ 2 + (gammaSpindleProfile chi t) ^ 2 : ℝ) : ℂ)] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [GammaSpindleDirac, Matrix.mul_apply, Fin.sum_univ_two]
  all_goals
    calc
      _ = (t : ℂ) ^ 2 - (Complex.I * Complex.I) *
          (gammaSpindleProfile chi t : ℂ) ^ 2 := by ring
      _ = _ := by rw [Complex.I_mul_I]; ring

theorem gammaSpindle_square_nonnegative
    (chi : PrimitiveCharacter) (t : ℝ) :
    0 ≤ t ^ 2 + (gammaSpindleProfile chi t) ^ 2 := by
  positivity

end DAF.Arithmetic
