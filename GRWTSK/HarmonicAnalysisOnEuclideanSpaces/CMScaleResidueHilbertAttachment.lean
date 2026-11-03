/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

This file puts the ACTUAL original Betti-cohomology cycle classes into the
EXISTING scalar AllScaleHilbert carrier. An explicit finite-dimensionality
instance is required. Its chosen coordinate placement is not a canonical
metric/Hodge/wave comparison or an Lp regularity theorem.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMGeometricCycleHilbert
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleWaveHilbert
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
import Mathlib.Tactic

/-!
# Concrete injection of geometric CM classes into the selected scale–residue l2

Choose the finite rational basis of the SAME original degree-2p Betti
cohomology. Place its i-th coordinate at scale j=i and residue zero of the
EXISTING ScaleResidueIndex. This is an explicit injection of basis labels;
no arbitrary port map, zero map or implicit identification is supplied.

The finite-dimensionality hypothesis must be justified at each actual
geometric source. It is not provided by the CM algebraicity theorem alone.
No assertion is made that this coordinate insertion intertwines a periodic
wave, Hodge Laplacian, Chern connection, or canonical polarization.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleResidueHilbertAttachment

open _root_.CategoryTheory _root_.AlgebraicGeometry
open OAI.AlgebraicGeometry
open OAI.AlgebraicGeometry.ComplexPoint
open scoped OAI.AlgebraicGeometry.Hodge.Filtration.ComplexPoint
open CMGeometricCycleHilbert

variable (X : Over (Spec ↧ℂ)) [IsIntegral X.left] [Smooth X.hom]
  [OAI.AlgebraicGeometry.Foundations.ProjectiveSpaceIs.IsProjective X.hom]
  [GrpObj X]
variable (p : ℕ)
variable [FiniteDimensional ℚ (OriginalBetti X p)]
variable (scaleModulus : ℕ → ℕ)

/-- Literal finite basis index of the actual source Betti module. -/
abbrev BettiFinIndex := Fin (Module.finrank ℚ (OriginalBetti X p))

/-- Canonical CHOSEN rational basis of the original source cohomology. -/
noncomputable def bettiFinBasis : Basis (BettiFinIndex X p) ℚ (OriginalBetti X p) :=
  Module.finBasis ℚ (OriginalBetti X p)

/-- A finite source coordinate is placed at its OWN scale j=i and original
residue zero. The original carrier also has all other coordinates. -/
def basisStageIndex (i : BettiFinIndex X p) :
    ScaleResidueIndex scaleModulus :=
  ⟨i.val, (0 : ZMod (scaleModulus i.val))⟩

/-- Different rational basis coordinates cannot collide in scale-residue
space, even if the moduli are different. -/
theorem basisStageIndex_injective :
    Function.Injective (basisStageIndex X p scaleModulus) := by
  intro i j hij
  apply Fin.ext
  exact congrArg Sigma.fst hij

/-- Actual original Betti cohomology in the SPECIFIC preexisting complete
all-scale Hilbert carrier. The map uses the real source Betti basis and
finite sums of the standard complex single-coordinate l2 vectors. -/
def originalBettiToSelectedHilbert (a : OriginalBetti X p) :
    AllScaleHilbert scaleModulus :=
  ((bettiFinBasis X p).repr a).sum (fun i coefficient =>
    (coefficient : ℂ) •
      lp.single (E := fun _ : ScaleResidueIndex scaleModulus => ℂ) 2
        (basisStageIndex X p scaleModulus i) (1 : ℂ))

/-- The actual geometric cycle class is mapped into the existing all-scale
Hilbert space; the cycle provenance is not dropped. -/
def originalCycleToSelectedHilbert
    (z : ActualRationalCycle X p) : AllScaleHilbert scaleModulus :=
  originalBettiToSelectedHilbert X p scaleModulus
    (actualCycleBetti X p z)

/-- Closed span of the EXACT original geometric cycle images, embedded in
the selected full all-scale space. -/
def actualSelectedCycleImages : Set (AllScaleHilbert scaleModulus) :=
  Set.range (originalCycleToSelectedHilbert X p scaleModulus)

def actualSelectedAlgebraicCarrier : ClosedSubmodule ℂ (AllScaleHilbert scaleModulus) :=
  algebraicClosedSpan (actualSelectedCycleImages X p scaleModulus)

/-- Original CM Hodge algebraicity now has a concrete Hilbert-space return
in the SAME AllScaleHilbert used by the residue-wave program. -/
theorem cm_hodge_in_selected_cycle_image
    (hCM : OAI.AlgebraicGeometry.ComplexMultiplication.Definitions.HasComplexMultiplication X)
    (a : OriginalBetti X p) (ha : a ∈ Hdg^p(X; ℚ)) :
    originalBettiToSelectedHilbert X p scaleModulus a ∈
      actualSelectedCycleImages X p scaleModulus := by
  obtain ⟨z, hz⟩ := cm_hodge_has_original_cycle X p hCM a ha
  refine ⟨z, ?_⟩
  exact congrArg (originalBettiToSelectedHilbert X p scaleModulus) hz

/-- Under the explicit finite-dimensionality instance, every actual CM
Hodge class has ZERO algebraic-complement residual in the selected space. -/
theorem cm_hodge_selected_residual_zero
    (hCM : OAI.AlgebraicGeometry.ComplexMultiplication.Definitions.HasComplexMultiplication X)
    (a : OriginalBetti X p) (ha : a ∈ Hdg^p(X; ℚ)) :
    residualProjection (actualSelectedCycleImages X p scaleModulus)
      (originalBettiToSelectedHilbert X p scaleModulus a) = 0 := by
  let S : Set (AllScaleHilbert scaleModulus) :=
    actualSelectedCycleImages X p scaleModulus
  have hsource : originalBettiToSelectedHilbert X p scaleModulus a ∈ S :=
    cm_hodge_in_selected_cycle_image X p scaleModulus hCM a ha
  have hspan : originalBettiToSelectedHilbert X p scaleModulus a ∈
      Submodule.span ℂ S := Submodule.subset_span hsource
  have hcarrier : originalBettiToSelectedHilbert X p scaleModulus a ∈
      (algebraicClosedSpan S : Submodule ℂ (AllScaleHilbert scaleModulus)) := by
    change originalBettiToSelectedHilbert X p scaleModulus a ∈
      (Submodule.span ℂ S).topologicalClosure
    exact Submodule.le_topologicalClosure _ hspan
  have hproject : algebraicProjection S (originalBettiToSelectedHilbert X p scaleModulus a) =
      originalBettiToSelectedHilbert X p scaleModulus a :=
    ((algebraicClosedSpan S : Submodule ℂ (AllScaleHilbert scaleModulus)).starProjection_eq_self_iff).mpr
      hcarrier
  have hreturn := complete_reconstruction S
    (originalBettiToSelectedHilbert X p scaleModulus a)
  rw [hproject] at hreturn
  have hzero : originalBettiToSelectedHilbert X p scaleModulus a +
      residualProjection S (originalBettiToSelectedHilbert X p scaleModulus a) =
      originalBettiToSelectedHilbert X p scaleModulus a + 0 := by
    simpa using hreturn
  exact add_left_cancel hzero

/-- Every old Hilbert vector is retained, including arithmetic wave
contributions OUTSIDE the geometric CM-cycle sector. -/
theorem entire_selected_hilbert_reconstructs (x : AllScaleHilbert scaleModulus) :
    algebraicProjection (actualSelectedCycleImages X p scaleModulus) x +
      residualProjection (actualSelectedCycleImages X p scaleModulus) x = x :=
  complete_reconstruction _ x

theorem entire_selected_hilbert_energy (x : AllScaleHilbert scaleModulus) :
    ‖x‖ ^ 2 =
      ‖algebraicProjection (actualSelectedCycleImages X p scaleModulus) x‖ ^ 2 +
        ‖residualProjection (actualSelectedCycleImages X p scaleModulus) x‖ ^ 2 :=
  complete_energy_split _ x

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleResidueHilbertAttachment
