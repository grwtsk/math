/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.ResponseBudgetIdentification
import GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap

/-!
# Apply shared waveform geometry to the existing signed packet consumers

The geometry and arithmetic remainders are literal finite sums of actual
packet atoms. Their mixed energy defect reconstructs the exact synthesis norm.
This removes the optional Schur overestimate without dropping tail/error signs.
The already implemented analytic return and finite good-scale cover are reused.
No actual regional subexponential supplier is asserted here.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ResponseWaveformComparison

open GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open HSSCP04.CCCAdapter

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

def packetAtom (model : EulerP04RH.PacketClosure.PacketModel E) (T : ℝ) (i : ℕ) : E :=
  model.coefficients T i • model.vectors T i

/-- Same signed source majorant, before the optional Gram overestimate. -/
def exactJointUpper (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ) (T : ℝ) : ℝ :=
  D.tail (height T) T + ‖∑ i ∈ model.indices T, packetAtom model T i‖ ^ 2 + model.error T

/-- Geometry contributes an independently specified finite waveform. The added
energy defect is explicitly constructed from both families, not assigned freely. -/
def geometricJointUpper (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)
    (S : ℝ → Finset ℕ) (g : ℝ → ℕ → E) (T : ℝ) : ℝ :=
  D.tail (height T) T + ‖∑ i ∈ S T, g T i‖ ^ 2 +
    energyDefect (S T) (model.indices T) (g T) (packetAtom model T) + model.error T

/-- Source-extracted three-part reconstruction creates no approximation loss. -/
theorem geometricJointUpper_eq_exact
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)
    (S : ℝ → Finset ℕ) (g : ℝ → ℕ → E) (T : ℝ) :
    geometricJointUpper model D height S g T = exactJointUpper model D height T := by
  have h := energy_difference_eq (S T) (model.indices T) (g T) (packetAtom model T)
  unfold geometricJointUpper exactJointUpper
  linarith

/-- Exact amount removed from the previous Gram-based upper expression. -/
theorem packetJointUpper_sub_geometric
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)
    (S : ℝ → Finset ℕ) (g : ℝ → ℕ → E) (T : ℝ) :
    packetJointUpper model D height T - geometricJointUpper model D height S g T =
      model.gramConstant T * EulerP04RH.PacketClosure.coefficientBudget model T -
        ‖∑ i ∈ model.indices T, packetAtom model T i‖ ^ 2 := by
  rw [geometricJointUpper_eq_exact]
  unfold packetJointUpper exactJointUpper
  ring

/-- The known Schur theorem prices an optional, nonnegative loss. The exact
geometric expression is never larger than that previous packet upper bound. -/
theorem geometricJointUpper_le_packetJointUpper
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)
    (S : ℝ → Finset ℕ) (g : ℝ → ℕ → E) {T : ℝ} (hT : 0 ≤ T) :
    geometricJointUpper model D height S g T ≤ packetJointUpper model D height T := by
  rw [geometricJointUpper_eq_exact]
  have hgram := EulerP04RH.WeightedGram.synthesis_of_weighted_gram_rows
    (model.indices T) (model.vectors T) (model.coefficients T) (model.weights T)
    (model.positiveWeights T hT) (model.weightedRows T hT)
  unfold exactJointUpper packetJointUpper packetAtom
    EulerP04RH.PacketClosure.coefficientBudget
  linarith

/-- This comparison uses the existing complete source identity and actual return. -/
theorem cross_le_geometricJointUpper
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)
    (S : ℝ → Finset ℕ) (g : ℝ → ℕ → E) {T : ℝ}
    (hT : 0 ≤ T) (hheight : 1 ≤ height T)
    (hreturn : EulerP04RH.signedSettlement D height T ≤
      ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 + model.error T) :
    GRWTSK.RiemannHypothesis.CCC.pickupCross T ≤ geometricJointUpper model D height S g T := by
  rw [geometricJointUpper_eq_exact, cross_eq hT]
  have hsource := D.sourceIdentity T (height T) hT hheight
  dsimp only [EulerP04RH.signedSettlement] at hreturn
  unfold exactJointUpper packetAtom
  linarith

/-- Existing estimates for the old majorant remain usable after the refinement. -/
theorem geometric_budget_of_packet_budget
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)
    (S : ℝ → Finset ℕ) (g : ℝ → ℕ → E) {G : Set ℝ}
    (hbudget : SubexponentialOn (packetJointUpper model D height) G) :
    SubexponentialOn (geometricJointUpper model D height S g) G := by
  apply subexponentialOn_mono hbudget
  intro T _ hT
  exact geometricJointUpper_le_packetJointUpper model D height S g hT

/-- The scalar JOINT expression, not its individual norms, is the sufficient input. -/
theorem cross_subexponentialOn_of_geometric_budget
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)
    (S : ℝ → Finset ℕ) (g : ℝ → ℕ → E) {G : Set ℝ}
    (hheight : ∀ T : ℝ, T ∈ G → 0 ≤ T → 1 ≤ height T)
    (hreturn : ∀ T : ℝ, T ∈ G → 0 ≤ T →
      EulerP04RH.signedSettlement D height T ≤
        ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 + model.error T)
    (hbudget : SubexponentialOn (geometricJointUpper model D height S g) G) :
    SubexponentialOn GRWTSK.RiemannHypothesis.CCC.pickupCross G := by
  apply subexponentialOn_mono hbudget
  intro T hG hT
  exact cross_le_geometricJointUpper model D height S g hT (hheight T hG hT) (hreturn T hG hT)

theorem geometric_good_scales_implies_RH
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)
    (S : ℝ → Finset ℕ) (g : ℝ → ℕ → E) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hheight : ∀ T : ℝ, T ∈ G → 0 ≤ T → 1 ≤ height T)
    (hreturn : ∀ T : ℝ, T ∈ G → 0 ≤ T →
      EulerP04RH.signedSettlement D height T ≤
        ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 + model.error T)
    (hbudget : SubexponentialOn (geometricJointUpper model D height S g) G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_cross_good_scales hcover
    (cross_subexponentialOn_of_geometric_budget model D height S g hheight hreturn hbudget)

/-- Immediate diffusion through the fixed finite regional portfolio. Each method
still compares to the SAME source; only their union needs affine coverage. -/
theorem geometric_finite_cover_implies_RH {ι : Type*}
    (methods : Finset ι) (H : ι → Type*)
    [∀ i, NormedAddCommGroup (H i)] [∀ i, InnerProductSpace ℂ (H i)]
    (models : (i : ι) → EulerP04RH.PacketClosure.PacketModel (H i))
    (D : ι → EulerP04RH.ExactDecomposition) (height : ι → ℝ → ℝ)
    (S : ι → ℝ → Finset ℕ) (g : (i : ι) → ℝ → ℕ → H i) (regions : ι → Set ℝ)
    (hcover : AffineFrequent {T | ∃ i ∈ methods, T ∈ regions i})
    (hheight : ∀ i ∈ methods, ∀ T : ℝ, T ∈ regions i → 0 ≤ T → 1 ≤ height i T)
    (hreturn : ∀ i ∈ methods, ∀ T : ℝ, T ∈ regions i → 0 ≤ T →
      EulerP04RH.signedSettlement (D i) (height i) T ≤
        ‖∑ k ∈ (models i).indices T, (models i).coefficients T k • (models i).vectors T k‖ ^ 2 +
          (models i).error T)
    (hbudget : ∀ i ∈ methods,
      SubexponentialOn (geometricJointUpper (models i) (D i) (height i) (S i) (g i)) (regions i)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  apply subexponentialOn_finite_cover methods regions
  intro i hi
  exact cross_subexponentialOn_of_geometric_budget (models i) (D i) (height i) (S i) (g i)
    (hheight i hi) (hreturn i hi) (hbudget i hi)

end GRWTSK.NumberTheory.Moebius.ResponseWaveformComparison
