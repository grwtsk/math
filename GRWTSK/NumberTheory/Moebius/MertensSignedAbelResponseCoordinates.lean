/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
import GRWTSK.Analysis.FiniteSums.ThreeCoordinateReadout
import GRWTSK.Analysis.FiniteSums.ThresholdEnergy

/-!
# Observable response coordinates, threshold budgets, and joint signed errors

The original three-prime operator is unchanged. The existing dyadic/weighted
refinement splits its response energy into the scalar readout and two details.
Only the scalar readout enters the packet. The unsifted/one/two-prime head is
kept in the SAME joint signed error, so cross-channel cancellation is available.
Threshold counting is only a sufficient, separately supplied finite estimate;
no large-values theorem or arithmetic cancellation is imported.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelResponseCoordinates
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.ThreeCoordinateReadout
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeIncidences
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator

/-- Actual response minus the proposed profile; no fitted-smallness premise. -/
def responseError (width : ℕ → ℕ) (j : ℕ) (b : ℕ → ℝ) (v : ℕ) : ℝ :=
  cofactorResponse width j v moebiusReal - b v

def signedResponseError (width : ℕ → ℕ) (j : ℕ) (b : ℕ → ℝ) : ℝ :=
  signedValue (responseError width j b 1) (responseError width j b 2)
    (responseError width j b 3)

theorem signedResponseError_eq_triple_residual (width : ℕ → ℕ) (j : ℕ)
    (b : ℕ → ℝ) :
    signedResponseError width j b = bulkPrefixFunctional width j (threePrimePrefix j) -
      (b 1 - b 2 - b 3) := by
  rw [triple_bulk_eq_three_responses]
  unfold signedResponseError responseError signedValue
  ring

/-- The full norm pays two extra, explicitly invisible, nonnegative detail terms. -/
theorem responseEnergy_eq_readout_add_details (width : ℕ → ℕ) (j : ℕ)
    (b : ℕ → ℝ) :
    responseResidualEnergy width j b = (signedResponseError width j b) ^ 2 / 3 +
      (responseError width j b 2 - responseError width j b 3) ^ 2 / 2 +
      (2 * responseError width j b 1 + responseError width j b 2 +
        responseError width j b 3) ^ 2 / 6 := by
  have he : responseResidualEnergy width j b =
      (responseError width j b 1) ^ 2 + (responseError width j b 2) ^ 2 +
        (responseError width j b 3) ^ 2 := by
    unfold responseResidualEnergy responseError
    rw [show Finset.Icc 1 3 = ({1, 2, 3} : Finset ℕ) by decide]
    norm_num
    <;> ring
  rw [he]
  exact energy_split _ _ _

/-- Two arbitrary profile modifications that the signed source cannot see. -/
def gaugeProfile (b : ℕ → ℝ) (d e : ℝ) (v : ℕ) : ℝ :=
  if v = 1 then b v + d + e else if v = 2 then b v + d
  else if v = 3 then b v + e else b v

theorem signedResponseError_gauge (width : ℕ → ℕ) (j : ℕ) (b : ℕ → ℝ)
    (d e : ℝ) :
    signedResponseError width j (gaugeProfile b d e) = signedResponseError width j b := by
  simp only [signedResponseError, responseError, signedValue, gaugeProfile]
  norm_num
  <;> ring

/-- Reuse the repository's threshold-count theorem on the ACTUAL squared errors. -/
theorem responseEnergy_le_of_threshold_count (width : ℕ → ℕ) (j : ℕ)
    (b : ℕ → ℝ) (V U C : ℝ) (hV : 0 ≤ V) (hU : 0 ≤ U)
    (hmax : ∀ v ∈ Finset.Icc 1 3, (responseError width j b v) ^ 2 ≤ U)
    (hcount : ((GRWTSK.Analysis.ThresholdEnergy.largeSet (Finset.Icc 1 3)
      (fun v => (responseError width j b v) ^ 2) V).card : ℝ) ≤ C) :
    responseResidualEnergy width j b ≤ 3 * V + C * U := by
  have h := GRWTSK.Analysis.ThresholdEnergy.energy_of_count_bound
    (Finset.Icc 1 3) (fun v => (responseError width j b v) ^ 2)
    V U C hV hU hmax hcount
  simpa [responseResidualEnergy, responseError] using h

/-- Below one exceptional coordinate there are no above-threshold coordinates. -/
theorem response_largeSet_empty_of_subunit (width : ℕ → ℕ) (j : ℕ)
    (b : ℕ → ℝ) (V : ℝ)
    (h : ((GRWTSK.Analysis.ThresholdEnergy.largeSet (Finset.Icc 1 3)
      (fun v => (responseError width j b v) ^ 2) V).card : ℝ) < 1) :
    GRWTSK.Analysis.ThresholdEnergy.largeSet (Finset.Icc 1 3)
      (fun v => (responseError width j b v) ^ 2) V = ∅ :=
  GRWTSK.Analysis.ThresholdEnergy.empty_of_subunit _ _ _ h

/-- A model for the complete bulk; H models the unchanged signed head. -/
def modelPacket (H : ℝ) (b : ℕ → ℝ) : ℝ :=
  H - (1 / 6 : ℝ) * (b 1 - b 2 - b 3)

/-- Head and triple errors are combined BEFORE taking an upper bound or norm. -/
def jointError (width : ℕ → ℕ) (j : ℕ) (H : ℝ) (b : ℕ → ℝ) : ℝ :=
  headPacket width j - H - (1 / 6 : ℝ) * signedResponseError width j b

theorem bulk_eq_model_add_jointError (width : ℕ → ℕ) (j : ℕ)
    (H : ℝ) (b : ℕ → ℝ) :
    bulkPacket width j = modelPacket H b + jointError width j H b := by
  rw [bulk_eq_head_sub_triple]
  unfold modelPacket jointError
  rw [signedResponseError_eq_triple_residual]
  ring

/-- One-sided return needs only the one-sided joint error, not a response norm. -/
theorem full_packet_le_model_add_jointError (j : ℕ) (H : ℝ) (b : ℕ → ℝ) :
    weightedMertensDyadicSignedAbelDepthPacket j ≤
      modelPacket H b + jointError sqrtWidth j H b + 2 := by
  have he := (abs_le.mp (abs_packet_sub_sqrt_bulk_le_two j)).2
  rw [bulk_eq_model_add_jointError sqrtWidth j H b] at he
  linarith

/-- Absolute comparison, with the inherited boundary loss and the exact joint residual. -/
theorem abs_full_packet_sub_model_le (j : ℕ) (H : ℝ) (b : ℕ → ℝ)
    {E : ℝ} (he : |jointError sqrtWidth j H b| ≤ E) :
    |weightedMertensDyadicSignedAbelDepthPacket j - modelPacket H b| ≤ 2 + E := by
  have hid : weightedMertensDyadicSignedAbelDepthPacket j - modelPacket H b =
      (weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j) +
        jointError sqrtWidth j H b := by
    rw [bulk_eq_model_add_jointError sqrtWidth j H b]
    ring
  rw [hid]
  exact (abs_add _ _).trans (add_le_add (abs_packet_sub_sqrt_bulk_le_two j) he)

/-- The weaker scalar-error supplier replaces the previous full-response-energy supplier. -/
theorem abs_full_packet_sub_profile_le_of_signed (j : ℕ) (b : ℕ → ℝ)
    {ε : ℝ} (he : |signedResponseError sqrtWidth j b| ≤ ε) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      modelPacket (headPacket sqrtWidth j) b| ≤ 2 + ε / 6 := by
  apply abs_full_packet_sub_model_le
  unfold jointError
  simp only [sub_self, zero_sub, abs_neg, abs_mul]
  norm_num
  nlinarith

/-- Both model and JOINT signed error remain independently supplied arithmetic inputs. -/
theorem riemannHypothesis_of_model_and_joint_budgets
    (H : ℕ → ℝ) (b : ℕ → ℕ → ℝ)
    (hmodel : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      modelPacket (H j) (b j) ≤ C * (((2 ^ j : ℕ) : ℝ) ^ δ))
    (herror : ∀ δ : ℝ, 0 < δ → ∃ D : ℝ, 0 ≤ D ∧ ∀ j : ℕ,
      jointError sqrtWidth j (H j) (b j) ≤ D * (((2 ^ j : ℕ) : ℝ) ^ δ)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_sqrt_bulk_budget
  intro δ hδ
  obtain ⟨C, hC, hc⟩ := hmodel δ hδ
  obtain ⟨D, hD, hd⟩ := herror δ hδ
  refine ⟨C + D, add_nonneg hC hD, ?_⟩
  intro j
  rw [bulk_eq_model_add_jointError sqrtWidth j (H j) (b j)]
  simpa only [add_mul] using add_le_add (hc j) (hd j)

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelResponseCoordinates
