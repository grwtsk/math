/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib sources retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.AsymptoticAnalysis.FixedWidthEnergyBoundEquivalence
import GRWTSK.NumberTheory.Moebius.MertensPrimitive
import GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds
import GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion

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

/-! ## Weaker joint signed budgets, propagated across covered good scales

The existing P04 source identification and subexponential-energy consumer
apply to the older packet model. Keep the signed tail and model error with
the Gram/coefficient product before estimating. Polynomial bounds on each
factor are optional sufficient inputs, not required by these consumers.
Only cumulative pickup energy is used to fill gaps; the signed source and
this upper expression are not assumed monotone. These new compositions are
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

open scoped BigOperators
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion

/-- One complete signed upper expression for the actual cross energy.
The tail and model error retain their signs; neither is replaced by a norm.
The Gram constant and coefficient mass need not have separate growth bounds. -/
def packetJointUpper {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ) (T : ℝ) : ℝ :=
  D.tail (height T) T +
    model.gramConstant T * EulerP04RH.PacketClosure.coefficientBudget model T +
    model.error T

/-- Apply the existing weighted Gram theorem, exact source identity and native
cross-energy identification at one valid scale. No growth estimate is assumed. -/
theorem cross_le_packetJointUpper {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)
    {T : ℝ} (hT : 0 ≤ T) (hheight : 1 ≤ height T)
    (hreturn : EulerP04RH.signedSettlement D height T ≤
      ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 +
        model.error T) :
    GRWTSK.RiemannHypothesis.CCC.pickupCross T ≤ packetJointUpper model D height T := by
  have hgram :
      ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 ≤
        model.gramConstant T * EulerP04RH.PacketClosure.coefficientBudget model T :=
    EulerP04RH.WeightedGram.synthesis_of_weighted_gram_rows
      (model.indices T) (model.vectors T) (model.coefficients T) (model.weights T)
      (model.positiveWeights T hT) (model.weightedRows T hT)
  have hidentity := D.sourceIdentity T (height T) hT hheight
  dsimp only [EulerP04RH.signedSettlement] at hreturn
  rw [cross_eq hT]
  unfold packetJointUpper
  linarith

/-- Growth and source return are required only on this method's scale region.
The comparison is to the complete native cross sum, not a selected sub-sum. -/
theorem cross_subexponentialOn_of_packet_budget {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ) {G : Set ℝ}
    (height_valid : ∀ T : ℝ, T ∈ G → 0 ≤ T → 1 ≤ height T)
    (sourceReturn : ∀ T : ℝ, T ∈ G → 0 ≤ T →
      EulerP04RH.signedSettlement D height T ≤
        ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 +
          model.error T)
    (hbudget : SubexponentialOn (packetJointUpper model D height) G) :
    SubexponentialOn GRWTSK.RiemannHypothesis.CCC.pickupCross G := by
  apply subexponentialOn_mono hbudget
  intro T hG hT
  exact cross_le_packetJointUpper model D height hT
    (height_valid T hG hT) (sourceReturn T hG hT)

/-- The exact energy-abscissa endpoint follows without proving polynomial P04.
The affine cover concerns the SAME outer time T as the actual cross energy. -/
theorem packet_good_scales_energyAbscissa_zero {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (height_valid : ∀ T : ℝ, T ∈ G → 0 ≤ T → 1 ≤ height T)
    (sourceReturn : ∀ T : ℝ, T ∈ G → 0 ≤ T →
      EulerP04RH.signedSettlement D height T ≤
        ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 +
          model.error T)
    (hbudget : SubexponentialOn (packetJointUpper model D height) G) :
    GRWTSK.RiemannHypothesis.CCC.pickupEnergyAbscissa = 0 :=
  energyAbscissa_zero_of_cross_good_scales hcover
    (cross_subexponentialOn_of_packet_budget model D height height_valid sourceReturn hbudget)

/-- Canonical RH from a joint signed budget on sufficiently frequent scales.
No separate polynomial tail, error, Gram, or coefficient premise is required. -/
theorem packet_good_scales_implies_literal_RH {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (height_valid : ∀ T : ℝ, T ∈ G → 0 ≤ T → 1 ≤ height T)
    (sourceReturn : ∀ T : ℝ, T ∈ G → 0 ≤ T →
      EulerP04RH.signedSettlement D height T ≤
        ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 +
          model.error T)
    (hbudget : SubexponentialOn (packetJointUpper model D height) G) :
    _root_.RiemannHypothesis :=
  GRWTSK.RiemannHypothesis.CCC.riemannHypothesis_of_pickupEnergyAbscissa_zero
    (packet_good_scales_energyAbscissa_zero model D height hcover
      height_valid sourceReturn hbudget)

/-- All-scale specialization for the existing SignedPacketReturn interface.
Only the complete signed upper expression needs a subexponential budget. -/
theorem packet_joint_subexponential_implies_literal_RH {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)
    (height_valid : ∀ T : ℝ, 0 ≤ T → 1 ≤ height T)
    (sourceReturn : EulerP04RH.PacketClosure.SignedPacketReturn model D height)
    (hbudget : GRWTSK.RiemannHypothesis.CCC.SubexponentialUpper
      (packetJointUpper model D height)) : _root_.RiemannHypothesis :=
  packet_good_scales_implies_literal_RH model D height affineFrequent_nonnegative
    (fun T _ hT => height_valid T hT)
    (fun T _ hT => sourceReturn T hT)
    (on_of_global hbudget (Set.Ici 0))

/-- A fixed finite family of source-matched methods may cover different regions.
The Hilbert spaces, decompositions and internal heights may differ. Each method
controls the SAME complete cross energy only on its own region; only their
union needs affine frequency. No individual method must cover every scale. -/
theorem packet_finite_good_scale_cover_implies_literal_RH {ι : Type*}
    (methods : Finset ι) (E : ι → Type*)
    [∀ i, NormedAddCommGroup (E i)] [∀ i, InnerProductSpace ℂ (E i)]
    (models : (i : ι) → EulerP04RH.PacketClosure.PacketModel (E i))
    (decompositions : ι → EulerP04RH.ExactDecomposition)
    (heights : ι → ℝ → ℝ) (regions : ι → Set ℝ)
    (hcover : AffineFrequent {T | ∃ i ∈ methods, T ∈ regions i})
    (height_valid : ∀ i ∈ methods, ∀ T : ℝ,
      T ∈ regions i → 0 ≤ T → 1 ≤ heights i T)
    (sourceReturn : ∀ i ∈ methods, ∀ T : ℝ, T ∈ regions i → 0 ≤ T →
      EulerP04RH.signedSettlement (decompositions i) (heights i) T ≤
        ‖∑ k ∈ (models i).indices T,
          (models i).coefficients T k • (models i).vectors T k‖ ^ 2 +
            (models i).error T)
    (hbudget : ∀ i ∈ methods,
      SubexponentialOn (packetJointUpper (models i) (decompositions i) (heights i))
        (regions i)) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  apply subexponentialOn_finite_cover methods regions
  intro i hi
  exact cross_subexponentialOn_of_packet_budget (models i) (decompositions i) (heights i)
    (height_valid i hi) (sourceReturn i hi) (hbudget i hi)

end HSSCP04.CCCAdapter
#print axioms HSSCP04.CCCAdapter.cross_eq
#print axioms HSSCP04.CCCAdapter.native_P04_eq_literal_P04
#print axioms HSSCP04.CCCAdapter.HSS_iff_native_P04
#print axioms HSSCP04.CCCAdapter.analyticClosureConstruction
#print axioms HSSCP04.CCCAdapter.transform_route_implies_native_P04
#print axioms HSSCP04.CCCAdapter.transform_route_implies_literal_RH
#print axioms HSSCP04.CCCAdapter.transform_route_implies_fixed_width
#print axioms HSSCP04.CCCAdapter.packet_route_implies_literal_RH
#print axioms HSSCP04.CCCAdapter.cross_le_packetJointUpper
#print axioms HSSCP04.CCCAdapter.cross_subexponentialOn_of_packet_budget
#print axioms HSSCP04.CCCAdapter.packet_good_scales_energyAbscissa_zero
#print axioms HSSCP04.CCCAdapter.packet_good_scales_implies_literal_RH
#print axioms HSSCP04.CCCAdapter.packet_joint_subexponential_implies_literal_RH
#print axioms HSSCP04.CCCAdapter.packet_finite_good_scale_cover_implies_literal_RH
