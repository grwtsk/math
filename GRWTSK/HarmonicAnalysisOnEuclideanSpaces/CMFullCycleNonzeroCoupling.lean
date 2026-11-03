/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Source proof candidate / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMActualMoebiusRankTwoInteraction
import OAI.AlgebraicGeometry.HodgeConjecture.SurfaceConstructionQ
import OAI.AlgebraicGeometry.HodgeConjecture.TopTrace
import OAI.AlgebraicGeometry.CycleClass.Thom.GeometricTrace
import Mathlib.Tactic

/-!
# Explicit NONZERO geometric source: the true degree-zero full cycle

The prior interaction assumed a chosen actual rational cycle had nonzero
selected Betti realization. In degree zero, the pinned OpenAI source has:

* `SurfaceConstructionQ.CM.fullCycle V`: the genuine whole-variety cycle;
* `fullCycle_class`: its geometric Betti class is the H^0 cup unit;
* `HigherThom.rationalCycleClassMap_eq_geometric`: the original rational
  Thom/Betti cycle-class map agrees with the geometric class map;
* `TopTrace.CM.SurfaceConstruction.rationalUnit_ne_zero`: under the exact
  analytic path-connectedness hypothesis, that unit is nonzero.

The chosen source rational Betti basis is finite. Its coordinate embedding
into the selected ALL-SCALE Hilbert carrier is injective, because different
basis coordinates occupy different scale addresses. Therefore this is a
particular actual, nonzero geometric cycle with a nonzero Hilbert vector,
not an arbitrary `v ≠ 0` assumed to make the interaction nontrivial.

No canonical Hodge polarization, period comparison, RH estimate or physical
wave generator is inferred. The original path-connectedness and finite
rational Betti-dimensionality assumptions are not erased. -/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMFullCycleNonzeroCoupling

open _root_.CategoryTheory _root_.AlgebraicGeometry
open OAI.AlgebraicGeometry
open OAI.AlgebraicGeometry.ComplexPoint
open scoped OAI.AlgebraicGeometry.Hodge.Filtration.ComplexPoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMGeometricCycleHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleResidueHilbertAttachment
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSelectedSignedWaveReturn
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledCausalDefectComparison
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualMoebiusRankTwoInteraction

variable (X : Over (Spec ↧ℂ)) [IsIntegral X.left] [Smooth X.hom]
  [OAI.AlgebraicGeometry.Foundations.ProjectiveSpaceIs.IsProjective X.hom]
  [GrpObj X]
variable [FiniteDimensional ℚ (OriginalBetti X 0)]
variable (d : ℕ) [NeZero d]

local notation "V" => OAI.AlgebraicGeometry.ComplexMultiplication.BundledAbelianBridge.originalIntegralProjectiveVariety X

/-- The literal full projective variety, as a rational cycle of codimension
zero in the ACTUAL geometric cycle source type. -/
def actualFullCycle : ActualRationalCycle X 0 :=
  OAI.AlgebraicGeometry.HodgeConjecture.SurfaceConstructionQ.CM.fullCycle V

/-- The pinned Thom/Betti comparison proves this is the ACTUAL H^0 unit. -/
theorem actualFullCycle_rational_class :
    V.rationalCycleClass 0 (actualFullCycle X) =
      OAI.AlgebraicGeometry.Cycles.Functoriality.UnitCap.cohomologyUnit V := by
  rw [OAI.AlgebraicGeometry.CycleClass.Thom.GeometricTrace.Constructions.HigherThom.rationalCycleClassMap_eq_geometric]
  exact OAI.AlgebraicGeometry.HodgeConjecture.SurfaceConstructionQ.CM.fullCycle_class V

/-- The genuine original Betti source class is nonzero; no invented cycle
witness is supplied. This uses the ACTUAL analytic connectedness hypothesis. -/
theorem actualFullCycle_betti_ne_zero
    [PathConnectedSpace V.analyticSpace] :
    actualCycleBetti X 0 (actualFullCycle X) ≠ 0 := by
  intro hzero
  have hb : V.rationalCycleClass 0 (actualFullCycle X) = 0 := by
    apply (OAI.AlgebraicGeometry.ComplexMultiplication.Reference.EvenHodgeClasses.originalEvenBettiBridge X 0).injective
    simpa [actualCycleBetti] using hzero
  rw [actualFullCycle_rational_class X] at hb
  exact (OAI.AlgebraicGeometry.HodgeConjecture.TopTrace.CM.SurfaceConstruction.rationalUnit_ne_zero V) hb

/-- The original selected finite rational-basis map actually returns each
original rational Betti coordinate at its distinct scale address. -/
theorem originalBetti_selected_at_basis
    (a : OriginalBetti X 0) (i : BettiFinIndex X 0) :
    originalBettiToSelectedHilbert X 0 (squareProfile d) a
      (basisStageIndex X 0 (squareProfile d) i) =
      ((bettiFinBasis X 0).repr a i : ℂ) := by
  classical
  simp [originalBettiToSelectedHilbert, Finsupp.sum, lp.single_apply,
    basisStageIndex_injective, Finset.sum_ite_eq']

/-- The CHOSEN finite-dimensional rational Betti-to-selected-l2 map is
injective, not merely a function named realization. The type changes from
rational Betti cohomology to a complete complex Hilbert space. -/
theorem originalBetti_selected_injective :
    Function.Injective
      (originalBettiToSelectedHilbert X 0 (squareProfile d)) := by
  intro a b hab
  apply (bettiFinBasis X 0).repr.injective
  apply Finsupp.ext
  intro i
  have hi := congrArg (fun v : AllScaleHilbert (squareProfile d) =>
    v (basisStageIndex X 0 (squareProfile d) i)) hab
  rw [originalBetti_selected_at_basis, originalBetti_selected_at_basis] at hi
  exact_mod_cast hi

/-- Now the **specific whole-variety algebraic source** has a nonzero
selected all-scale Hilbert realization. No arbitrary geometric nonzero
hypothesis remains: the actual `H^0` unit supplies it. -/
theorem actualFullCycle_selected_nonzero
    [PathConnectedSpace V.analyticSpace] :
    actualCMVector d X 0 (actualFullCycle X) ≠ 0 := by
  have hsource := actualFullCycle_betti_ne_zero X
  have hz : originalBettiToSelectedHilbert X 0 (squareProfile d)
      (actualCycleBetti X 0 (actualFullCycle X)) ≠ 0 := by
    intro heq
    have h0 : originalBettiToSelectedHilbert X 0 (squareProfile d)
        (0 : OriginalBetti X 0) = 0 := by
      simp [originalBettiToSelectedHilbert]
    have hs : actualCycleBetti X 0 (actualFullCycle X) = 0 :=
      originalBetti_selected_injective X d (heq.trans h0.symm)
    exact hsource hs
  exact hz

/-- With the pinned analytic connectedness and finite-dimensional Betti
hypotheses, BOTH actual compressed CM/Mobius defects have norm one in EVERY
finite inventory and at EVERY observation time, using this explicit nonzero
geometric cycle rather than a hypothetical witness. -/
theorem actualFullCycle_genuine_defects_norm_one
    [PathConnectedSpace V.analyticSpace]
    (j : ℕ) (s t u : ℝ) :
    ‖(jointQ d X 0 j).comp
        ((interactingComparison d X 0 (actualFullCycle X) j s t u).comp
          (jointP d X 0 j))‖ = 1 ∧
    ‖(jointP d X 0 j).comp
        ((interactingComparison d X 0 (actualFullCycle X) j s t u).comp
          (jointQ d X 0 j))‖ = 1 := by
  have hz := actualFullCycle_selected_nonzero X d
  exact ⟨interactingComparison_QWP_opNorm_one d X 0 (actualFullCycle X) j s t u hz,
    interactingComparison_PWQ_opNorm_one d X 0 (actualFullCycle X) j s t u hz⟩

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMFullCycleNonzeroCoupling
