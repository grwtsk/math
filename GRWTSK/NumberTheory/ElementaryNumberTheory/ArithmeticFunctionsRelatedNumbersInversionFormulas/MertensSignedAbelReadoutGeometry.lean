/- Copyright (c) 2026 grwtsk. MIT.
Imported results retain their upstream attribution and licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelTripleOperator
import GRWTSK.RealFunctions.ThreeCoordinateReadout

/-!
# Exact readout geometry for the actual three-cofactor responses

Only the direction (1,-1,-1) enters the source packet. The orthogonal residual
is not an arithmetic error for that readout. This module proves the exact
slack, minimum-energy representative, reconstruction with two extra coordinates,
and a direct signed-error consumer. No arithmetic bound is supplied.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelReadoutGeometry

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeIncidences
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator

def signedReadout (b : ℕ → ℝ) : ℝ := b 1 - b 2 - b 3

def threeEnergy (b : ℕ → ℝ) : ℝ := b 1 ^ 2 + b 2 ^ 2 + b 3 ^ 2

/-- Values outside the three read coordinates are zero by convention. -/
def readoutProjection (b : ℕ → ℝ) (v : ℕ) : ℝ :=
  if v = 1 then signedReadout b / 3
  else if v = 2 ∨ v = 3 then -signedReadout b / 3 else 0

def responseProfile (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) (v : ℕ) : ℝ :=
  cofactorResponse width j v f

theorem threeEnergy_nonneg (b : ℕ → ℝ) : 0 ≤ threeEnergy b := by
  unfold threeEnergy
  positivity

theorem signedReadout_sub (a b : ℕ → ℝ) :
    signedReadout (fun v => a v - b v) = signedReadout a - signedReadout b := by
  unfold signedReadout
  ring

/-- Exact slack in the earlier three-coordinate Cauchy bound. -/
theorem readout_slack_identity (b : ℕ → ℝ) :
    3 * threeEnergy b - signedReadout b ^ 2 =
      (b 1 + b 2) ^ 2 + (b 1 + b 3) ^ 2 + (b 2 - b 3) ^ 2 := by
  unfold threeEnergy signedReadout
  ring

theorem projection_preserves_readout (b : ℕ → ℝ) :
    signedReadout (readoutProjection b) = signedReadout b := by
  simpa [signedReadout, readoutProjection,
    GRWTSK.Analysis.FiniteSums.ThreeCoordinateReadout.signedValue] using
    GRWTSK.Analysis.FiniteSums.ThreeCoordinateReadout.projected_value (signedReadout b)

theorem projection_energy (b : ℕ → ℝ) :
    threeEnergy (readoutProjection b) = signedReadout b ^ 2 / 3 := by
  simpa [threeEnergy, readoutProjection] using
    GRWTSK.Analysis.FiniteSums.ThreeCoordinateReadout.projected_energy (signedReadout b)

/-- The existing dyadic and unequal-cell variance decomposition applies to these exact coordinates. -/
theorem energy_eq_existing_refinement_details (b : ℕ → ℝ) :
    threeEnergy b = signedReadout b ^ 2 / 3 +
      (b 2 - b 3) ^ 2 / 2 + (2 * b 1 + b 2 + b 3) ^ 2 / 6 :=
  GRWTSK.Analysis.FiniteSums.ThreeCoordinateReadout.energy_split (b 1) (b 2) (b 3)

theorem projection_idempotent (b : ℕ → ℝ) :
    readoutProjection (readoutProjection b) = readoutProjection b := by
  funext v
  change (if v = 1 then signedReadout (readoutProjection b) / 3
    else if v = 2 ∨ v = 3 then -signedReadout (readoutProjection b) / 3 else 0) = _
  rw [projection_preserves_readout] <;> rfl

/-- This is a genuine Pythagorean identity, not a cancellation hypothesis. -/
theorem energy_split (b : ℕ → ℝ) :
    threeEnergy b = threeEnergy (readoutProjection b) +
      threeEnergy (fun v => b v - readoutProjection b v) := by
  simp [threeEnergy, readoutProjection, signedReadout]
  <;> ring

theorem projection_minimizes_energy (a b : ℕ → ℝ)
    (h : signedReadout a = signedReadout b) :
    threeEnergy (readoutProjection b) ≤ threeEnergy a := by
  have he := energy_split a
  have hn := threeEnergy_nonneg (fun v => a v - readoutProjection a v)
  rw [projection_energy, h] at he
  rw [projection_energy]
  linarith

/-- The discarded component is exactly invisible to the signed source readout. -/
theorem readout_residual_zero (b : ℕ → ℝ) :
    signedReadout (fun v => b v - readoutProjection b v) = 0 := by
  rw [signedReadout_sub, projection_preserves_readout, sub_self]

/-- Three-coordinate recovery needs the two discarded coordinates as well. -/
def recoverProfile (s a b : ℝ) (v : ℕ) : ℝ :=
  if v = 1 then s + a + b else if v = 2 then a else if v = 3 then b else 0

theorem recoverProfile_on_three (b : ℕ → ℝ) (v : ℕ)
    (hv : v = 1 ∨ v = 2 ∨ v = 3) :
    recoverProfile (signedReadout b) (b 2) (b 3) v = b v := by
  rcases hv with rfl | rfl | rfl <;> simp [recoverProfile, signedReadout] <;> ring

/-- Information loss occurs already on the actual three read coordinates. -/
theorem readout_collision :
    signedReadout (recoverProfile 0 1 0) = signedReadout (recoverProfile 0 0 0) ∧
      recoverProfile 0 1 0 2 ≠ recoverProfile 0 0 0 2 := by
  norm_num [signedReadout, recoverProfile]

theorem triple_eq_actual_readout (width : ℕ → ℕ) (j : ℕ) :
    bulkPrefixFunctional width j (threePrimePrefix j) =
      signedReadout (responseProfile width j moebiusReal) :=
  triple_bulk_eq_three_responses width j

/-- Minimum energy needed to represent the same signed response residual. -/
theorem projected_residual_energy (width : ℕ → ℕ) (j : ℕ) (b : ℕ → ℝ) :
    threeEnergy (readoutProjection (fun v => responseProfile width j moebiusReal v - b v)) =
      (bulkPrefixFunctional width j (threePrimePrefix j) - signedReadout b) ^ 2 / 3 := by
  rw [projection_energy, signedReadout_sub, ← triple_eq_actual_readout]

/-- Direct readout control is sufficient; no bound on invisible coordinates is needed. -/
theorem abs_packet_sub_readout_model_le (j : ℕ) (b : ℕ → ℝ) {ε : ℝ}
    (he : |signedReadout (responseProfile sqrtWidth j moebiusReal) - signedReadout b| ≤ ε) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      (headPacket sqrtWidth j - signedReadout b / 6)| ≤ 2 + ε / 6 := by
  have hbulk : |bulkPacket sqrtWidth j -
      (headPacket sqrtWidth j - signedReadout b / 6)| ≤ ε / 6 := by
    rw [bulk_eq_head_sub_triple, triple_eq_actual_readout]
    have hid : headPacket sqrtWidth j -
        (1 / 6 : ℝ) * signedReadout (responseProfile sqrtWidth j moebiusReal) -
        (headPacket sqrtWidth j - signedReadout b / 6) =
      -(signedReadout (responseProfile sqrtWidth j moebiusReal) - signedReadout b) / 6 := by ring
    rw [hid, abs_div, abs_neg]
    simpa only [abs_of_pos (by norm_num : (0 : ℝ) < 6)] using
      div_le_div_of_nonneg_right he (by norm_num : (0 : ℝ) ≤ 6)
  calc
    _ = |(weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j) +
        (bulkPacket sqrtWidth j - (headPacket sqrtWidth j - signedReadout b / 6))| := by
      congr 1
      ring
    _ ≤ |weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j| +
        |bulkPacket sqrtWidth j - (headPacket sqrtWidth j - signedReadout b / 6)| := abs_add _ _
    _ ≤ 2 + ε / 6 := add_le_add (abs_packet_sub_sqrt_bulk_le_two j) hbulk

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelReadoutGeometry
