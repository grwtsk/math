/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.ThreePhaseEllipsoidOrbit
import Mathlib.Analysis.Complex.Norm
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Constructed three-phase positive-Gram ellipsoid

The preceding three-phase ellipsoid interface retained an abstract
`PositiveGramEllipsoidWitness`: it required an actual real quadratic form whose
value is the source observation

`positiveGram z = 3 * ‖mean z‖^2 + residualEnergy z`.

This module constructs that form.  It uses the six real coordinate functionals
of `Phase3 = Fin 3 → ℂ`, squares them with Mathlib's `QuadraticMap.sq`, and sums
the resulting quadratic forms.  A direct source identity proves that this
coordinate form is exactly `positiveGram`, not merely a comparable norm.

The same identity proves positive definiteness.  Hence every positive radius
produces a full-dimensional `QuadraticEllipsoid Phase3`, and the abstract orbit
witness from `ThreePhaseEllipsoidOrbit` can be discharged from a literal
positive-Gram bound.

Comparison boundary:

* the primary construction is the six-real-coordinate sum of squares;
* the source comparison is the coherent/residual Pythagorean identity;
* the residual chart still has the coupled metric
  `‖a‖^2 + ‖b‖^2 + ‖a+b‖^2`, so raw uncoupled coordinates remain invalid;
* this supplies no John/Loewner optimality, arithmetic source comparison,
  Navier--Stokes defect estimate, endpoint bound or RH consequence.

The independent analytic derivations and hostile cases are recorded in
`documentation/mathematics/_support/reviews/three-phase-residual-analytic-closure.md`.

SOURCE_PROOF_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN /
TRANSITIVE AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.ThreePhaseEllipsoidOrbit

open scoped BigOperators
open GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoherentResidual
open GRWTSK.Algebra.LinearAlgebra.ThreePhaseResidualCircleAction
open GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.TypedEllipsoidAtlas

/-! ## Six exact real coordinate functionals -/

/-- Real part of one source coordinate, as a real-linear functional. -/
def coordinateRe (j : Fin 3) : Phase3 →ₗ[ℝ] ℝ where
  toFun z := (z j).re
  map_add' z w := by simp
  map_smul' r z := by simp [Complex.smul_re]

/-- Imaginary part of one source coordinate, as a real-linear functional. -/
def coordinateIm (j : Fin 3) : Phase3 →ₗ[ℝ] ℝ where
  toFun z := (z j).im
  map_add' z w := by simp
  map_smul' r z := by simp [Complex.smul_im]

/-- The squared Euclidean norm of one complex coordinate, represented as a
real quadratic form rather than an untyped numerical observation. -/
def coordinateNormSqForm (j : Fin 3) : QuadraticForm ℝ Phase3 :=
  (QuadraticMap.sq (R := ℝ)).comp (coordinateRe j) +
    (QuadraticMap.sq (R := ℝ)).comp (coordinateIm j)

@[simp]
theorem coordinateNormSqForm_apply (j : Fin 3) (z : Phase3) :
    coordinateNormSqForm j z = ‖z j‖ ^ 2 := by
  change (z j).re * (z j).re + (z j).im * (z j).im = ‖z j‖ ^ 2
  rw [Complex.sq_norm, Complex.normSq_apply]

/-- The actual ambient quadratic form: one real and one imaginary square for
each of the three source coordinates. -/
def positiveGramQuadraticForm : QuadraticForm ℝ Phase3 :=
  ∑ j : Fin 3, coordinateNormSqForm j

@[simp]
theorem positiveGramQuadraticForm_apply_coordinateSum (z : Phase3) :
    positiveGramQuadraticForm z = ∑ j : Fin 3, ‖z j‖ ^ 2 := by
  simp [positiveGramQuadraticForm]

/-! ## Exact return to the coherent/residual source -/

/-- Orthogonal Pythagorean identity for the exact source split.  This is the
comparison theorem that licenses use of the coordinate quadratic form as the
`positiveGram` source observation. -/
theorem positiveGram_eq_coordinateNormSq (z : Phase3) :
    positiveGram z = ∑ j : Fin 3, ‖z j‖ ^ 2 := by
  simp [positiveGram, residualEnergy, Fin.sum_univ_three, mean, residual,
    Complex.sq_norm, Complex.normSq_apply] <;> ring

/-- The constructed quadratic form evaluates to the original source
observation at every point. -/
@[simp]
theorem positiveGramQuadraticForm_apply (z : Phase3) :
    positiveGramQuadraticForm z = positiveGram z := by
  rw [positiveGramQuadraticForm_apply_coordinateSum,
    ← positiveGram_eq_coordinateNormSq]

/-- A nonzero three-phase vector has at least one nonzero source coordinate. -/
theorem exists_nonzero_coordinate {z : Phase3} (hz : z ≠ 0) :
    z 0 ≠ 0 ∨ z 1 ≠ 0 ∨ z 2 ≠ 0 := by
  by_cases h0 : z 0 = 0
  · by_cases h1 : z 1 = 0
    · by_cases h2 : z 2 = 0
      · exfalso
        apply hz
        funext j
        fin_cases j
        · exact h0
        · exact h1
        · exact h2
      · exact Or.inr (Or.inr h2)
    · exact Or.inr (Or.inl h1)
  · exact Or.inl h0

/-- The source quadratic form is positive definite on the complete real
six-dimensional carrier. -/
theorem positiveGramQuadraticForm_posDef :
    positiveGramQuadraticForm.PosDef := by
  intro z hz
  rw [positiveGramQuadraticForm_apply_coordinateSum, Fin.sum_univ_three]
  rcases exists_nonzero_coordinate hz with h0 | h1 | h2
  · have hp : 0 < ‖z 0‖ ^ 2 := pow_pos (norm_pos_iff.mpr h0) 2
    nlinarith [sq_nonneg ‖z 1‖, sq_nonneg ‖z 2‖]
  · have hp : 0 < ‖z 1‖ ^ 2 := pow_pos (norm_pos_iff.mpr h1) 2
    nlinarith [sq_nonneg ‖z 0‖, sq_nonneg ‖z 2‖]
  · have hp : 0 < ‖z 2‖ ^ 2 := pow_pos (norm_pos_iff.mpr h2) 2
    nlinarith [sq_nonneg ‖z 0‖, sq_nonneg ‖z 1‖]

/-! ## Constructed atlas geometry and orbit witness -/

/-- The actual source-Gram ellipsoid at a nonnegative squared radius. -/
def positiveGramGeometry (radiusSq : ℝ) (hradius : 0 ≤ radiusSq) :
    QuadraticEllipsoid Phase3 where
  center := 0
  form := positiveGramQuadraticForm
  radiusSq := radiusSq
  radiusSq_nonnegative := hradius
  form_nonnegative := by
    intro z
    rw [positiveGramQuadraticForm_apply]
    exact positiveGram_nonnegative z

/-- The formerly abstract comparison witness is now constructed. -/
def constructedPositiveGramWitness
    (radiusSq : ℝ) (hradius : 0 ≤ radiusSq) :
    PositiveGramEllipsoidWitness where
  geometry := positiveGramGeometry radiusSq hradius
  center_eq_zero := rfl
  form_eq_positiveGram := positiveGramQuadraticForm_apply

/-- Positive radius gives a full-dimensional ellipsoid in the atlas sense. -/
theorem positiveGramGeometry_isFullDimensional
    (radiusSq : ℝ) (hradius : 0 < radiusSq) :
    (positiveGramGeometry radiusSq hradius.le).IsFullDimensional := by
  exact ⟨positiveGramQuadraticForm_posDef, hradius⟩

/-- Construct the complete orbit witness directly from a source bound. -/
def constructedOrbitWitness
    (radiusSq : ℝ) (hradius : 0 ≤ radiusSq)
    (seed : Phase3) (hseed : positiveGram seed ≤ radiusSq)
    (sourceId constructionId : String) : OrbitWitness where
  gram := constructedPositiveGramWitness radiusSq hradius
  seed := seed
  seed_mem := by
    change seed ∈
      (constructedPositiveGramWitness radiusSq hradius).geometry.carrier
    rw [(constructedPositiveGramWitness radiusSq hradius).carrier_eq_gramSublevel]
    simpa [gramSublevel] using hseed
  sourceId := sourceId
  constructionId := constructionId

/-- The exact source-Gram view no longer needs a caller-supplied quadratic-form
witness; only the source radius bound remains. -/
def constructedSourceGramView
    (radiusSq : ℝ) (hradius : 0 ≤ radiusSq)
    (seed : Phase3) (hseed : positiveGram seed ≤ radiusSq)
    (sourceId constructionId : String) :
    EllipsoidView Phase3 OrbitWitness :=
  sourceGramView
    (constructedOrbitWitness radiusSq hradius seed hseed sourceId constructionId)

/-! ## Residual-chart comparison and hostile control -/

/-- On the exact zero-mean chart, the constructed form retains the coupled
third source coordinate. -/
@[simp]
theorem positiveGramQuadraticForm_residualFromTwo (a b : ℂ) :
    positiveGramQuadraticForm (residualFromTwo a b) =
      residualChartEnergy (a, b) := by
  rw [positiveGramQuadraticForm_apply, positiveGram_residualFromTwo]

/-- The constructed quadratic form cannot be replaced by an uncoupled raw
two-coordinate Euclidean form. -/
theorem positiveGramQuadraticForm_not_uncoupled :
    positiveGramQuadraticForm
      (residualFromTwo (1 : ℂ) (1 : ℂ)) ≠ 2 := by
  rw [positiveGramQuadraticForm_residualFromTwo]
  exact residualChartEnergy_not_uncoupled

end GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.ThreePhaseEllipsoidOrbit
