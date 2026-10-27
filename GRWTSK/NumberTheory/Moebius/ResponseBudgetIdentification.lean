/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib sources retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.AsymptoticAnalysis.FixedWidthEnergyBoundEquivalence
import GRWTSK.NumberTheory.Moebius.MertensPrimitive
import GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds

/-! Exact adapter to the existing grwtsk/math CCC arithmetic proposition.
The response, integer inventory, coefficients, complete Gram and both ordered
cross sums are identified. Icc/set integrals and ordered interval integrals
are compared only on nonnegative horizons. No pickup growth bound is supplied.

The existing source-proved analytic return also discharges the older explicit
`EulerP04RH.AnalyticClosureConstruction` argument. Its proof is propagated to
the transform and signed-packet consumers below. The actual source return,
height, tail, Gram, coefficient and error budgets remain unchanged hypotheses.
This is application of existing proofs, not a new analytic estimate. The new
compositions are SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
noncomputable section
open MeasureTheory Set
namespace HSSCP04.CCCAdapter

lemma response_eq (n : ℕ) (u : ℝ) : GRWTSK.RiemannHypothesis.CCC.pickupResponse n u = PPNCP04.atom n u := rfl
lemma coefficient_eq (n : ℕ) : GRWTSK.RiemannHypothesis.CCC.moebiusReal n = PPNCP04.realMoebius n := rfl

lemma response_gram_eq {T : ℝ} (hT : 0 ≤ T) (m n : ℕ) :
    GRWTSK.RiemannHypothesis.CCC.pickupResponseGram T m n = PPNCP04.gram T m n := by
  unfold GRWTSK.RiemannHypothesis.CCC.pickupResponseGram PPNCP04.gram
  rw [intervalIntegral.integral_of_le hT, ← integral_Icc_eq_integral_Ioc]
  rfl

lemma diagonal_eq {T : ℝ} (hT : 0 ≤ T) :
    GRWTSK.RiemannHypothesis.CCC.pickupDiagonal T = PPNCP04.diagonal T := by
  simp only [GRWTSK.RiemannHypothesis.CCC.pickupDiagonal,PPNCP04.diagonal,PPNCP04.integerInventory,
    coefficient_eq,response_gram_eq hT]

lemma complete_gram_eq_energy {T : ℝ} (hT : 0 ≤ T) :
    GRWTSK.RiemannHypothesis.CCC.pickupFullGram T = PPNCP04.energy T := by
  rw [PPNCP04.energy_eq_complete_double]
  simp only [GRWTSK.RiemannHypothesis.CCC.pickupFullGram,PPNCP04.integerInventory,
    coefficient_eq,response_gram_eq hT]

/-- The native conditional ordered sum and the new erased ordered sum coincide.
The proof uses their exact complete signed Gram identities, not absolute values. -/
theorem cross_eq {T : ℝ} (hT : 0 ≤ T) :
    GRWTSK.RiemannHypothesis.CCC.pickupCross T = PPNCP04.crossEnergy T := by
  have hn := GRWTSK.RiemannHypothesis.CCC.pickup_full_gram_split T
  rw [complete_gram_eq_energy hT,diagonal_eq hT] at hn
  linarith [PPNCP04.energy_eq_diagonal_add_cross T]

/-- Exactly the existing native P04 proposition, with unchanged real quantifiers. -/
theorem native_P04_iff_literal_P04 : GRWTSK.RiemannHypothesis.CCC.PickupCrossPoly ↔ PPNCP04.P04 := by
  constructor
  · rintro ⟨C,q,hC,hq,hbound⟩
    refine ⟨C,q,hC,hq,?_⟩
    intro T hT
    rw [← cross_eq hT]
    exact hbound T hT
  · rintro ⟨C,q,hC,hq,hbound⟩
    refine ⟨C,q,hC,hq,?_⟩
    intro T hT
    rw [cross_eq hT]
    exact hbound T hT

theorem native_P04_eq_literal_P04 : GRWTSK.RiemannHypothesis.CCC.PickupCrossPoly = PPNCP04.P04 :=
  propext native_P04_iff_literal_P04

theorem HSS_iff_native_P04 {b : ℝ} (hb : 0 < b) : HSSCP04.HSS b ↔ GRWTSK.RiemannHypothesis.CCC.PickupCrossPoly :=
  (HSSCP04.HSS_iff_P04 hb).trans native_P04_iff_literal_P04.symm

theorem native_P04_implies_literal_RH (h : GRWTSK.RiemannHypothesis.CCC.PickupCrossPoly) :
    _root_.RiemannHypothesis :=
  EulerP04RH.LaplaceEnergy.literal_RH_of_P04 (native_P04_iff_literal_P04.mp h)

/-! ## Reuse the existing analytic closure in older signed-source consumers -/

/-- The old analytic input has an actual proof in the maintained source.
No new arithmetic hypothesis is needed to construct this implication. -/
theorem analyticClosureConstruction : EulerP04RH.AnalyticClosureConstruction :=
  EulerP04RH.LaplaceEnergy.literal_RH_of_P04

/-- The exact same P04 proposition transfers to the native CCC predicate.
This does not construct a transform decomposition or its arithmetic budgets. -/
theorem transform_route_implies_native_P04
    (route : EulerP04RH.TransformRouteConstruction) :
    GRWTSK.RiemannHypothesis.CCC.PickupCrossPoly :=
  native_P04_iff_literal_P04.mpr (EulerP04RH.transform_route_implies_P04 route)

/-- Remove only the obsolete extra analytic argument of the older consumer. -/
theorem transform_route_implies_literal_RH
    (route : EulerP04RH.TransformRouteConstruction) : _root_.RiemannHypothesis :=
  EulerP04RH.assembled_route_implies_literal_RH route analyticClosureConstruction

/-- A source-bound transform budget also supplies every fixed positive-width
energy consumer. The width is fixed before choosing its uniform constants. -/
theorem transform_route_implies_fixed_width {b : ℝ} (hb : 0 < b)
    (route : EulerP04RH.TransformRouteConstruction) : HSSCP04.HSS b :=
  HSSCP04.P04_implies_HSS hb (EulerP04RH.transform_route_implies_P04 route)

/-- Propagate the existing packet return through the already supplied analytic
closure. Every source, height, tail, Gram, coefficient and error premise is kept. -/
theorem packet_route_implies_literal_RH {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)
    (height_valid : ∀ T : ℝ, 0 ≤ T → 1 ≤ height T)
    (tailBudget : EulerP04RH.RightLineTailBound D height)
    (sourceReturn : EulerP04RH.PacketClosure.SignedPacketReturn model D height)
    (gramBudget : PPNCP04.PolynomialBound model.gramConstant)
    (coeffBudget : PPNCP04.PolynomialBound (EulerP04RH.PacketClosure.coefficientBudget model))
    (errorBudget : PPNCP04.PolynomialBound model.error) : _root_.RiemannHypothesis :=
  EulerP04RH.LaplaceEnergy.literal_RH_of_P04
    (EulerP04RH.PacketClosure.packet_route_implies_literal_P04
      model D height height_valid tailBudget sourceReturn gramBudget coeffBudget errorBudget)

end HSSCP04.CCCAdapter
#print axioms HSSCP04.CCCAdapter.cross_eq
#print axioms HSSCP04.CCCAdapter.native_P04_eq_literal_P04
#print axioms HSSCP04.CCCAdapter.HSS_iff_native_P04
#print axioms HSSCP04.CCCAdapter.analyticClosureConstruction
#print axioms HSSCP04.CCCAdapter.transform_route_implies_native_P04
#print axioms HSSCP04.CCCAdapter.transform_route_implies_literal_RH
#print axioms HSSCP04.CCCAdapter.transform_route_implies_fixed_width
#print axioms HSSCP04.CCCAdapter.packet_route_implies_literal_RH
