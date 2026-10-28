/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
import GRWTSK.NumberTheory.Moebius.ResponseBudgetIdentification
import GRWTSK.NumberTheory.Moebius.CenteredSieveRecovery

/-!
# One source, signed certificates, and the explicit dyadic completion problem

Compose the existing endpoint, curve, prime-credit and weighted-Gram packet
comparisons by minimum. Their negative contributions are not subtracted twice.
All packet source-return guards remain visible. The full endpoint/prime/sieve
identities retain the actual signed curvature. A complete certificate differs
from the endpoint source by at most 1/4, with no new arithmetic error budget.

The final theorems consume an explicit all-positive-rate arithmetic estimate;
this file does NOT construct that estimate or assert unconditional RH. Centered
variance identities remain available through the actual imported source; they
are not identified with pickupCross without their separate source comparison.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupSignedCertificate

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.NumberTheory.Moebius.PickupRefinementCriterion
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.CenteredSieveRecovery
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticChord
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open HSSCP04.CCCAdapter

/-- Prescribed signed arithmetic correction, not an adjustable remainder. -/
def curvatureCorrection (T : ℝ) : ℝ :=
  ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
    coefficient2 (k + 1) * curvatureMass (eventCut T k) (eventCut T (k + 1))

theorem endpoint_eq_cross_add_curvature {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T = pickupCross T + curvatureCorrection T := by
  have h : endpointSum T - pickupCross T = curvatureCorrection T :=
    endpointSum_signed_defect hT
  linarith

theorem curvature_abs_le_quarter {T : ℝ} (hT : 0 ≤ T) :
    |curvatureCorrection T| ≤ 1 / 4 := by
  have h : curvatureCorrection T = endpointSum T - pickupCross T :=
    (endpointSum_signed_defect hT).symm
  rw [h]
  exact endpointSum_error hT

/-- Both signed arithmetic channels and the entire complement are retained. -/
theorem endpoint_eq_unpaired_sub_credit_add_curvature {T : ℝ} (hT : 0 ≤ T)
    (P : Finset ℕ) (hp : ∀ p ∈ P, p.Prime) :
    endpointSum T = unpairedCross T P - primePairCredit T P + curvatureCorrection T := by
  rw [endpoint_eq_cross_add_curvature hT, cross_eq_unpaired_sub_credit hT P hp]

/-- A changing sieve returns exactly the same source, with zero sieve transport loss. -/
theorem endpoint_eq_sievedCross_add_curvature {T : ℝ} (hT : 0 ≤ T)
    (P : Finset ℕ) (hp : ∀ p ∈ P, p.Prime) :
    endpointSum T = sievedCross P T + curvatureCorrection T := by
  rw [sievedCross_eq P hp]
  exact endpoint_eq_cross_add_curvature hT

section Packet

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable (model : EulerP04RH.PacketClosure.PacketModel E)
variable (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)

/-- Four actual source certificates. The packet tail and error retain their signs. -/
def jointUpper (T : ℝ) (depth : ℕ → ℕ) (primes : Finset ℕ) : ℝ :=
  min (endpointHybridUpper T depth primes) (packetJointUpper model D height T)

theorem jointUpper_le_endpoint (T : ℝ) (depth : ℕ → ℕ) (primes : Finset ℕ) :
    jointUpper model D height T depth primes ≤ endpointSum T + 1 / 4 := by
  calc
    jointUpper model D height T depth primes ≤ endpointHybridUpper T depth primes :=
      min_le_left _ _
    _ ≤ endpointSum T + 1 / 4 := min_le_left _ _

theorem jointUpper_le_curve (T : ℝ) (depth : ℕ → ℕ) (primes : Finset ℕ) :
    jointUpper model D height T depth primes ≤ canonicalUpper T depth := by
  calc
    jointUpper model D height T depth primes ≤ endpointHybridUpper T depth primes :=
      min_le_left _ _
    _ ≤ hybridUpper T depth primes := min_le_right _ _
    _ ≤ canonicalUpper T depth := min_le_left _ _

theorem jointUpper_le_prime (T : ℝ) (depth : ℕ → ℕ) (primes : Finset ℕ) :
    jointUpper model D height T depth primes ≤ signedUpper T primes := by
  calc
    jointUpper model D height T depth primes ≤ endpointHybridUpper T depth primes :=
      min_le_left _ _
    _ ≤ hybridUpper T depth primes := min_le_right _ _
    _ ≤ signedUpper T primes := min_le_right _ _

theorem jointUpper_le_packet (T : ℝ) (depth : ℕ → ℕ) (primes : Finset ℕ) :
    jointUpper model D height T depth primes ≤ packetJointUpper model D height T :=
  min_le_right _ _

/-- The existing Gram theorem and exact native/literal return are applied here. -/
theorem cross_le_jointUpper {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ) (hp : ∀ p ∈ primes, p.Prime)
    (hheight : 1 ≤ height T)
    (hreturn : EulerP04RH.signedSettlement D height T ≤
      ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 + model.error T) :
    pickupCross T ≤ jointUpper model D height T depth primes :=
  le_min (cross_le_endpointHybridUpper hT depth primes hp)
    (cross_le_packetJointUpper model D height hT hheight hreturn)

/-- No second subtraction of prime credit; refine two existing upper certificates. -/
theorem jointUpper_refinement_le {T : ℝ} (hT : 0 ≤ T)
    (d e : ℕ → ℕ) (hde : ∀ k < ⌊Real.exp T⌋₊, d k ≤ e k)
    {P Q : Finset ℕ} (hPQ : P ⊆ Q) :
    jointUpper model D height T e Q ≤ jointUpper model D height T d P := by
  exact min_le_min
    (min_le_min le_rfl (hybridUpper_refinement_le hT d e hde hPQ)) le_rfl

/-- The complete combined allowance stays within the already paid quarter-unit. -/
theorem jointUpper_endpoint_error {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ) (hp : ∀ p ∈ primes, p.Prime)
    (hheight : 1 ≤ height T)
    (hreturn : EulerP04RH.signedSettlement D height T ≤
      ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 + model.error T) :
    |endpointSum T - jointUpper model D height T depth primes| ≤ 1 / 4 := by
  have hlo := cross_le_jointUpper model D height hT depth primes hp hheight hreturn
  have hhi := jointUpper_le_endpoint model D height T depth primes
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [abs_le]
  constructor <;> linarith

/-- Also price the complete upper-certificate slack relative to the unchanged cross sum. -/
theorem jointUpper_cross_slack {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ) (hp : ∀ p ∈ primes, p.Prime)
    (hheight : 1 ≤ height T)
    (hreturn : EulerP04RH.signedSettlement D height T ≤
      ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 + model.error T) :
    0 ≤ jointUpper model D height T depth primes - pickupCross T ∧
      jointUpper model D height T depth primes - pickupCross T ≤ 1 / 2 := by
  have hlo := cross_le_jointUpper model D height hT depth primes hp hheight hreturn
  have hhi := jointUpper_le_endpoint model D height T depth primes
  have he := (abs_le.mp (endpointSum_error hT)).2
  constructor <;> linarith

/-- Zero-loss source matching is preserved before taking the combined bound. -/
theorem sievedCross_le_jointUpper {T : ℝ} (hT : 0 ≤ T)
    (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (depth : ℕ → ℕ) (primes : Finset ℕ) (hp : ∀ p ∈ primes, p.Prime)
    (hheight : 1 ≤ height T)
    (hreturn : EulerP04RH.signedSettlement D height T ≤
      ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 + model.error T) :
    sievedCross P T ≤ jointUpper model D height T depth primes := by
  rw [sievedCross_eq P hP]
  exact cross_le_jointUpper model D height hT depth primes hp hheight hreturn

/-- Exact equivalence of the intrinsic signed growth obligations on a fixed region.
This proves transport, not either side of the equivalence. -/
theorem joint_subexponential_iff_endpoint
    (depth : ℝ → ℕ → ℕ) (primes : ℝ → Finset ℕ) {G : Set ℝ}
    (hp : ∀ T ∈ G, 0 ≤ T → ∀ p ∈ primes T, p.Prime)
    (hheight : ∀ T ∈ G, 0 ≤ T → 1 ≤ height T)
    (hreturn : ∀ T ∈ G, 0 ≤ T → EulerP04RH.signedSettlement D height T ≤
      ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 + model.error T) :
    SubexponentialOn (fun T => jointUpper model D height T (depth T) (primes T)) G ↔
      SubexponentialOn endpointSum G := by
  constructor
  · intro h
    apply endpoint_subexponential_iff.mpr
    exact subexponentialOn_mono h (fun T hG hT =>
      cross_le_jointUpper model D height hT (depth T) (primes T)
        (hp T hG hT) (hheight T hG hT) (hreturn T hG hT))
  · intro h
    exact subexponentialOn_mono (add_global h quarter_subexponential)
      (fun T _ _ => jointUpper_le_endpoint model D height T (depth T) (primes T))

theorem riemannHypothesis_of_joint_good_scales
    (depth : ℝ → ℕ → ℕ) (primes : ℝ → Finset ℕ) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hp : ∀ T ∈ G, 0 ≤ T → ∀ p ∈ primes T, p.Prime)
    (hheight : ∀ T ∈ G, 0 ≤ T → 1 ≤ height T)
    (hreturn : ∀ T ∈ G, 0 ≤ T → EulerP04RH.signedSettlement D height T ≤
      ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 + model.error T)
    (hbudget : SubexponentialOn
      (fun T => jointUpper model D height T (depth T) (primes T)) G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_endpoint_good_scales hcover
    ((joint_subexponential_iff_endpoint model D height depth primes hp hheight hreturn).mp hbudget)

/-- Explicit arithmetic statement on the fixed grid, with every positive exponent. -/
def DyadicJointBound (depth : ℕ → ℕ → ℕ) (primes : ℕ → Finset ℕ) : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
    jointUpper model D height (dyadicTime j) (depth j) (primes j) ≤
      C * (2 : ℝ) ^ (δ * (j : ℝ))

/-- Both directions cost only +1/4 in the rate-dependent constant. -/
theorem dyadicJointBound_iff_endpoint
    (depth : ℕ → ℕ → ℕ) (primes : ℕ → Finset ℕ)
    (hp : ∀ j, ∀ p ∈ primes j, p.Prime)
    (hheight : ∀ j, 1 ≤ height (dyadicTime j))
    (hreturn : ∀ j, EulerP04RH.signedSettlement D height (dyadicTime j) ≤
      ‖∑ i ∈ model.indices (dyadicTime j),
        model.coefficients (dyadicTime j) i • model.vectors (dyadicTime j) i‖ ^ 2 +
        model.error (dyadicTime j)) :
    DyadicJointBound model D height depth primes ↔ DyadicEndpointBound := by
  constructor
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C + 1 / 4, by linarith, ?_⟩
    intro j
    have he := (abs_le.mp (jointUpper_endpoint_error model D height
      (dyadicTime_nonnegative j) (depth j) (primes j) (hp j) (hheight j) (hreturn j))).2
    have hexp : 1 ≤ (2 : ℝ) ^ (δ * (j : ℝ)) := by
      rw [← dyadic_rate]
      exact Real.one_le_exp_iff.mpr (mul_nonneg hδ.le (dyadicTime_nonnegative j))
    have hbj := hb j
    nlinarith
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C + 1 / 4, by linarith, ?_⟩
    intro j
    have he := jointUpper_le_endpoint model D height (dyadicTime j) (depth j) (primes j)
    have hexp : 1 ≤ (2 : ℝ) ^ (δ * (j : ℝ)) := by
      rw [← dyadic_rate]
      exact Real.one_le_exp_iff.mpr (mul_nonneg hδ.le (dyadicTime_nonnegative j))
    have hbj := hb j
    nlinarith

theorem riemannHypothesis_of_dyadic_joint
    (depth : ℕ → ℕ → ℕ) (primes : ℕ → Finset ℕ)
    (hp : ∀ j, ∀ p ∈ primes j, p.Prime)
    (hheight : ∀ j, 1 ≤ height (dyadicTime j))
    (hreturn : ∀ j, EulerP04RH.signedSettlement D height (dyadicTime j) ≤
      ‖∑ i ∈ model.indices (dyadicTime j),
        model.coefficients (dyadicTime j) i • model.vectors (dyadicTime j) i‖ ^ 2 +
        model.error (dyadicTime j))
    (hbudget : DyadicJointBound model D height depth primes) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_dyadicBirthBound (dyadicBirthBound_iff_endpoint.mpr
    ((dyadicJointBound_iff_endpoint model D height depth primes hp hheight hreturn).mp hbudget))

/-- Optional endpoint observations are priced in physical time, not cell count. -/
def observedJointUpper (T : ℝ) (depth : ℕ → ℕ) (primes : Finset ℕ)
    (left right : ℕ → ℝ) (ε : ℝ) : ℝ :=
  min (observedEndpointSum T left right + (T * ε + 1 / 4))
    (jointUpper model D height T depth primes)

theorem cross_le_observedJointUpper {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ) (hp : ∀ p ∈ primes, p.Prime)
    (hheight : 1 ≤ height T)
    (hreturn : EulerP04RH.signedSettlement D height T ≤
      ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 + model.error T)
    (left right : ℕ → ℝ) (ε : ℝ)
    (hleft : ∀ k < ⌊Real.exp T⌋₊,
      |left k - polynomial (k + 1) (node (eventCut T k))| ≤ ε)
    (hright : ∀ k < ⌊Real.exp T⌋₊,
      |right k - polynomial (k + 1) (node (eventCut T (k + 1)))| ≤ ε) :
    pickupCross T ≤ observedJointUpper model D height T depth primes left right ε := by
  apply le_min ?_ (cross_le_jointUpper model D height hT depth primes hp hheight hreturn)
  have h := (abs_le.mp (observedEndpointSum_error hT left right ε hleft hright)).1
  linarith

end Packet

/-- A fixed finite family may use different Hilbert spaces and internal heights.
Only the union of regions must cover; all complete signed budgets remain explicit. -/
theorem riemannHypothesis_of_joint_finite_cover {ι : Type*}
    (methods : Finset ι) (E : ι → Type*)
    [∀ i, NormedAddCommGroup (E i)] [∀ i, InnerProductSpace ℂ (E i)]
    (models : (i : ι) → EulerP04RH.PacketClosure.PacketModel (E i))
    (decompositions : ι → EulerP04RH.ExactDecomposition)
    (heights : ι → ℝ → ℝ) (regions : ι → Set ℝ)
    (depth : ι → ℝ → ℕ → ℕ) (primes : ι → ℝ → Finset ℕ)
    (hcover : AffineFrequent {T | ∃ i ∈ methods, T ∈ regions i})
    (hp : ∀ i ∈ methods, ∀ T ∈ regions i, 0 ≤ T → ∀ p ∈ primes i T, p.Prime)
    (hheight : ∀ i ∈ methods, ∀ T ∈ regions i, 0 ≤ T → 1 ≤ heights i T)
    (hreturn : ∀ i ∈ methods, ∀ T ∈ regions i, 0 ≤ T →
      EulerP04RH.signedSettlement (decompositions i) (heights i) T ≤
        ‖∑ k ∈ (models i).indices T,
          (models i).coefficients T k • (models i).vectors T k‖ ^ 2 + (models i).error T)
    (hbudget : ∀ i ∈ methods, SubexponentialOn
      (fun T => jointUpper (models i) (decompositions i) (heights i) T
        (depth i T) (primes i T)) (regions i)) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_endpoint_good_scales hcover
  apply subexponentialOn_finite_cover methods regions
  intro i hi
  exact (joint_subexponential_iff_endpoint (models i) (decompositions i) (heights i)
    (depth i) (primes i) (hp i hi) (hheight i hi) (hreturn i hi)).mp (hbudget i hi)

end GRWTSK.NumberTheory.Moebius.PickupSignedCertificate
