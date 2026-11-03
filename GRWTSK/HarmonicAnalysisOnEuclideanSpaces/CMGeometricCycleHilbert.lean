/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Exact external source: openai/math@4eaee87548250b2682affda7d05d947c05554bae
Local sources: existing GRWTSK residue-circle wave Hilbert port and OAI's genuine
rational Thom/Betti cycle-class realization. No public root import or axiom.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleWaveHilbertFormalization
import GRWTSK.Geometry.HodgeConjectureCMAbelianVarieties
import OAI.AlgebraicGeometry.ComplexMultiplication.Reference.GeometricAlgebraicity
import OAI.AlgebraicGeometry.ComplexMultiplication.Reference.EvenHodgeClasses
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.Tactic

/-!
# Genuine CM cycle classes in a complete positive Hilbert coordinate fiber

Use the ACTUAL geometric rational cycle map, obtained from supported Thom
classes of irreducible subvarieties, and the actual original Betti comparison.
The CM theorem supplies a cycle witness for each chosen rational Hodge class.
A basis of the same Betti cohomology gives an explicit finitely supported
complex coordinate vector in the complete l2 Hilbert sum. This basis is
selected data, not a canonical Hodge polarization or an analytic isometry.

The complex closed span of the resulting cycle images is the positive-metric
algebraic carrier. Its orthogonal complement retains ALL other Hilbert states;
no claim is made that those other states are nonalgebraic rational Hodge
classes on the selected CM variety.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMGeometricCycleHilbert

open _root_.CategoryTheory _root_.AlgebraicGeometry
open OAI.AlgebraicGeometry
open OAI.AlgebraicGeometry.ComplexPoint
open scoped OAI.AlgebraicGeometry.Hodge.Filtration.ComplexPoint

universe u

variable {ι : Type u} [DecidableEq ι]
variable (X : Over (Spec ↧ℂ)) [IsIntegral X.left] [Smooth X.hom]
  [OAI.AlgebraicGeometry.Foundations.ProjectiveSpaceIs.IsProjective X.hom]
  [GrpObj X]

local notation "V" => OAI.AlgebraicGeometry.ComplexMultiplication.BundledAbelianBridge.originalIntegralProjectiveVariety X

/-- One genuine rational algebraic cycle on the selected original variety. -/
abbrev ActualRationalCycle (p : ℕ) :=
  CycleClass.Geometric.DimensionCycles.RationalDimensionCycle (V) p

/-- The chosen ORIGINAL rational Betti cohomology, not a finite graph proxy. -/
abbrev OriginalBetti (p : ℕ) := H^(2 * p)(X; ℚ)

/-- An actual cycle's Betti class, using the sourced Thom/Betti map and the
specific comparison equivalence into the original OpenAI CM-Hodge target. -/
def actualCycleBetti (p : ℕ) (z : ActualRationalCycle X p) :
    OriginalBetti X p :=
  (OAI.AlgebraicGeometry.ComplexMultiplication.Reference.EvenHodgeClasses.originalEvenBettiBridge X p)
    ((V).rationalCycleClass p z)

/-- An actual positive-metric complete Hilbert fiber indexed by the selected
rational Betti basis. The index type need not be finite: each cohomology class
has FINITELY supported rational basis coordinates and hence an l2 image. -/
abbrev CoordinateHilbert (ι : Type u) := lp (fun _ : ι => ℂ) 2

/-- Construct the nonzero rational-to-complex coordinate realization, rather
than injecting an arbitrary supplied property into the Hilbert port.
Finsupp.sum makes square-summability structural and retains each coordinate. -/
def bettiCoordinateHilbert
    (p : ℕ) (basis : Basis ι ℚ (OriginalBetti X p))
    (a : OriginalBetti X p) : CoordinateHilbert ι :=
  (basis.repr a).sum (fun i coefficient =>
    (coefficient : ℂ) •
      lp.single (E := fun _ : ι => ℂ) 2 i (1 : ℂ))

/-- The chosen basis coordinates are preserved pointwise by the actual
finitely-supported Hilbert embedding. This is its fidelity requirement. -/
theorem bettiCoordinateHilbert_apply
    (p : ℕ) (basis : Basis ι ℚ (OriginalBetti X p))
    (a : OriginalBetti X p) (i : ι) :
    bettiCoordinateHilbert X p basis a i = ((basis.repr a i : ℚ) : ℂ) := by
  classical
  simp [bettiCoordinateHilbert, Finsupp.sum, lp.single_apply,
    Finset.sum_ite_eq']

/-- No rational Betti class is identified with a different one by its
complete complex Hilbert coordinate vector. -/
theorem bettiCoordinateHilbert_injective
    (p : ℕ) (basis : Basis ι ℚ (OriginalBetti X p)) :
    Function.Injective (bettiCoordinateHilbert X p basis) := by
  intro a b hab
  apply basis.repr.injective
  apply Finsupp.ext
  intro i
  have hi := congrArg (fun v : CoordinateHilbert ι => v i) hab
  rw [bettiCoordinateHilbert_apply, bettiCoordinateHilbert_apply] at hi
  exact_mod_cast hi

/-- The geometric cycle-to-Hilbert image is computed from the actual cycle
class; no abstract or unrelated cycleClass function is supplied. -/
def actualCycleHilbert
    (p : ℕ) (basis : Basis ι ℚ (OriginalBetti X p))
    (z : ActualRationalCycle X p) : CoordinateHilbert ι :=
  bettiCoordinateHilbert X p basis (actualCycleBetti X p z)

/-- EXACT set of genuinely realized source cycles. -/
def actualCycleImages
    (p : ℕ) (basis : Basis ι ℚ (OriginalBetti X p)) :
    Set (CoordinateHilbert ι) :=
  Set.range (actualCycleHilbert X p basis)

/-- The complete Hilbert algebraic carrier and its separate orthogonal
complement reuse the already written positive-metric Hilbert projection. -/
def actualCycleCarrier
    (p : ℕ) (basis : Basis ι ℚ (OriginalBetti X p)) :
    ClosedSubmodule ℂ (CoordinateHilbert ι) :=
  algebraicClosedSpan (actualCycleImages X p basis)

/-- Concrete OpenAI CM witness, at the same variety and degree. The returned
cycle is a genuine finite rational combination of original closed supports. -/
theorem cm_hodge_has_original_cycle
    (p : ℕ)
    (hCM : OAI.AlgebraicGeometry.ComplexMultiplication.Definitions.HasComplexMultiplication X)
    (a : OriginalBetti X p) (ha : a ∈ Hdg^p(X; ℚ)) :
    ∃ z : ActualRationalCycle X p, actualCycleBetti X p z = a := by
  obtain ⟨z, hz⟩ :=
    OAI.AlgebraicGeometry.ComplexMultiplication.Reference.GeometricAlgebraicity.originalHodgeClass_nativeThomAlgebraic
      X hCM p a ha
  refine ⟨z, ?_⟩
  change
    (OAI.AlgebraicGeometry.ComplexMultiplication.Reference.EvenHodgeClasses.originalEvenBettiBridge X p)
      ((V).rationalCycleClass p z) = a
  rw [hz]
  exact (OAI.AlgebraicGeometry.ComplexMultiplication.Reference.EvenHodgeClasses.originalEvenBettiBridge X p).apply_symm_apply a

/-- Every original CM Hodge class is in the ACTUAL cycle-image set after
explicit basis-coordinate realization, with no abstract coverage premise. -/
theorem cm_hodge_in_actual_cycle_images
    (p : ℕ) (basis : Basis ι ℚ (OriginalBetti X p))
    (hCM : OAI.AlgebraicGeometry.ComplexMultiplication.Definitions.HasComplexMultiplication X)
    (a : OriginalBetti X p) (ha : a ∈ Hdg^p(X; ℚ)) :
    bettiCoordinateHilbert X p basis a ∈ actualCycleImages X p basis := by
  obtain ⟨z, hz⟩ := cm_hodge_has_original_cycle X p hCM a ha
  refine ⟨z, ?_⟩
  exact congrArg (bettiCoordinateHilbert X p basis) hz

/-- An ORIGINAL rational CM Hodge class has zero nonalgebraic Hilbert
residual relative to its genuine geometric cycle-class image. -/
theorem cm_hodge_residual_zero
    (p : ℕ) (basis : Basis ι ℚ (OriginalBetti X p))
    (hCM : OAI.AlgebraicGeometry.ComplexMultiplication.Definitions.HasComplexMultiplication X)
    (a : OriginalBetti X p) (ha : a ∈ Hdg^p(X; ℚ)) :
    residualProjection (actualCycleImages X p basis)
      (bettiCoordinateHilbert X p basis a) = 0 := by
  let S : Set (CoordinateHilbert ι) := actualCycleImages X p basis
  have hsource : bettiCoordinateHilbert X p basis a ∈ S :=
    cm_hodge_in_actual_cycle_images X p basis hCM a ha
  have hspan : bettiCoordinateHilbert X p basis a ∈
      Submodule.span ℂ S := Submodule.subset_span hsource
  have hcarrier : bettiCoordinateHilbert X p basis a ∈
      (algebraicClosedSpan S : Submodule ℂ (CoordinateHilbert ι)) := by
    change bettiCoordinateHilbert X p basis a ∈
      (Submodule.span ℂ S).topologicalClosure
    exact Submodule.le_topologicalClosure _ hspan
  have hproject : algebraicProjection S (bettiCoordinateHilbert X p basis a) =
      bettiCoordinateHilbert X p basis a :=
    ((algebraicClosedSpan S : Submodule ℂ (CoordinateHilbert ι)).starProjection_eq_self_iff).mpr
      hcarrier
  have hreturn := complete_reconstruction S (bettiCoordinateHilbert X p basis a)
  rw [hproject] at hreturn
  have hzero : bettiCoordinateHilbert X p basis a +
      residualProjection S (bettiCoordinateHilbert X p basis a) =
      bettiCoordinateHilbert X p basis a + 0 := by
    simpa using hreturn
  exact add_left_cancel hzero

/-- The result is COMPLETE for every Hilbert vector, not only for geometric
Hodge vectors: positive energy is split by the actual closed cycle span. -/
theorem all_hilbert_vectors_preserved
    (p : ℕ) (basis : Basis ι ℚ (OriginalBetti X p))
    (x : CoordinateHilbert ι) :
    algebraicProjection (actualCycleImages X p basis) x +
      residualProjection (actualCycleImages X p basis) x = x :=
  complete_reconstruction _ x

theorem actual_cycle_energy_budget
    (p : ℕ) (basis : Basis ι ℚ (OriginalBetti X p))
    (x : CoordinateHilbert ι) :
    ‖x‖ ^ 2 =
      ‖algebraicProjection (actualCycleImages X p basis) x‖ ^ 2 +
      ‖residualProjection (actualCycleImages X p basis) x‖ ^ 2 :=
  complete_energy_split _ x

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMGeometricCycleHilbert
