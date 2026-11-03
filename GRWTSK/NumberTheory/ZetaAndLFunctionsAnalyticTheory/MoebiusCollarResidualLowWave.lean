/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusTerminalHighSmoothCrossShellCollar
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimeDilationStarCompensation
import GRWTSK.MeasureAndIntegration.GramDiagonalBound
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

/-!
# Original signed collar residual = positive low-wave energy - original diagonal

The source is the EXACT previous terminalInventory/terminalHighCollar/
collarResidualCross and original moebiusReal/pickupResponseGram. No
coefficient, time, mask, cutoff or source is replaced.

Finite Fubini on the actual low inventory makes the only possible
large positive contribution explicit as the original low-wave square
energy. Since the original diagonal is at most 2*T^2, the COMPLETE
signed collar residual has an unconditional polynomial LOWER bound.
Its desired upper all-positive-rate estimate remains RH-strength and
is NOT proved or assumed.

All proof bodies are source candidates. Compilation is user-DEFERRED.
-/

namespace GRWTSK.NumberTheory.Moebius.CollarResidualLowWave

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.PrimeDilationStarCompensation

classical

/-- Exact complement of the original high-smooth collar at ONE fixed
terminal time. No new arithmetic coefficient or support is invented. -/
def lowIndices (B : PrimeBand) (J : ℕ) : Finset ℕ :=
  (terminalInventory J).filter (fun n => n ∉ terminalHighCollar B J)

theorem lowIndices_subset_terminal
    (B : PrimeBand) (J : ℕ) :
    lowIndices B J ⊆ terminalInventory J := by
  unfold lowIndices
  exact Finset.filter_subset _ _

theorem lowIndices_pos
    (B : PrimeBand) (J : ℕ) :
    ∀ n ∈ lowIndices B J, 1 ≤ n := by
  intro n hn
  have hm := lowIndices_subset_terminal B J hn
  exact (Finset.mem_Icc.mp hm).1

/-- The SAME source finite restricted waveform, with Möbius signs. -/
def lowWave (B : PrimeBand) (J : ℕ) (u : ℝ) : ℝ :=
  restrictedWaveform (lowIndices B J) u

/-- Its genuine nonnegative physical-time square energy. -/
def lowEnergy (B : PrimeBand) (J : ℕ) : ℝ :=
  restrictedEnergy (lowIndices B J) (dyadicTime J)

/-- Diagonal of the genuine restricted Gram, with original Möbius zeros. -/
def lowDiagonal (B : PrimeBand) (J : ℕ) : ℝ :=
  ∑ n ∈ lowIndices B J,
    moebiusReal n ^ 2 * pickupResponseGram (dyadicTime J) n n

/-- Same finite off-diagonal source as collarResidualCross but indexed
directly by its exact original low-index inventory. -/
def lowMaskedCross (B : PrimeBand) (A : Finset ℕ)
    (J : ℕ) : ℝ :=
  ∑ m ∈ lowIndices B J, ∑ n ∈ lowIndices B J,
    if m ≠ n ∧ Nat.dist m n ∉ A then
      moebiusReal m * moebiusReal n *
        pickupResponseGram (dyadicTime J) m n
    else 0

/-- Every original off-diagonal low/low source appears exactly once,
including arbitrary gap masks and both ordered orientations. -/
theorem collarResidual_eq_lowMasked
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    collarResidualCross B A J = lowMaskedCross B A J := by
  classical
  unfold collarResidualCross lowMaskedCross lowIndices
  simp only [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro m hm
  by_cases hH : m ∈ terminalHighCollar B J
  · simp [hH]
  · simp [hH, Finset.sum_filter, and_assoc, and_comm, and_left_comm]

/-- Exact restricted physical energy = original complete restricted
Möbius Gram, supplied by the preexisting finite-response theorem. -/
theorem lowEnergy_eq_fullGram
    (B : PrimeBand) (J : ℕ) :
    lowEnergy B J =
      restrictedFullGram (lowIndices B J) (dyadicTime J) := by
  unfold lowEnergy
  exact restrictedEnergy_eq_fullGram
    (lowIndices B J) (dyadicTime J) (lowIndices_pos B J)

/-- The ORIGINAL signed residual is the positive physical low-wave
energy minus its full, untruncated Möbius-square diagonal. -/
theorem collarResidual_eq_lowEnergy_sub_diagonal
    (B : PrimeBand) (J : ℕ) :
    collarResidualCross B ∅ J =
      lowEnergy B J - lowDiagonal B J := by
  let S : Finset ℕ := lowIndices B J
  let T : ℝ := dyadicTime J
  have hsplit :
      restrictedFullGram S T =
        lowDiagonal B J + lowMaskedCross B ∅ J := by
    simpa [restrictedFullGram, lowDiagonal, lowMaskedCross, S, T]
      using complete_gram_split S moebiusReal
        (pickupResponseGram T)
  have henergy := lowEnergy_eq_fullGram B J
  have hsource := collarResidual_eq_lowMasked B ∅ J
  rw [hsource, henergy]
  dsimp [S, T] at hsplit
  linarith

/-- The original dyadic observation time is nonnegative at every J. -/
theorem dyadicTime_nonneg (J : ℕ) :
    0 ≤ dyadicTime J := by
  unfold dyadicTime
  exact mul_nonneg (Nat.cast_nonneg _)
    (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 2))

/-- Nonnegativity is earned from the exact interval integral
of the square, without an abstract positivity assumption. -/
theorem lowEnergy_nonneg (B : PrimeBand) (J : ℕ) :
    0 ≤ lowEnergy B J := by
  unfold lowEnergy restrictedEnergy
  apply intervalIntegral.integral_nonneg_of_forall (dyadicTime_nonneg J)
  intro u
  exact sq_nonneg (restrictedWaveform (lowIndices B J) u)

/-- The restricted diagonal is a SUBSUM of the already paid full
original diagonal. In particular, no missing source index is charged. -/
theorem lowDiagonal_le_fullDiagonal (B : PrimeBand) (J : ℕ) :
    lowDiagonal B J ≤ pickupDiagonal (dyadicTime J) := by
  have hsub : lowIndices B J ⊆ endpointIndex (dyadicTime J) :=
    lowIndices_subset_terminal B J
  have hnonneg (n : ℕ) :
      0 ≤ moebiusReal n ^ 2 *
        pickupResponseGram (dyadicTime J) n n :=
    mul_nonneg (sq_nonneg _) (pickupResponseGram_self_nonneg
      (dyadicTime_nonneg J) n)
  calc
    lowDiagonal B J =
      ∑ n ∈ lowIndices B J,
        moebiusReal n ^ 2 *
          pickupResponseGram (dyadicTime J) n n := rfl
    _ ≤ ∑ n ∈ endpointIndex (dyadicTime J),
        moebiusReal n ^ 2 *
          pickupResponseGram (dyadicTime J) n n := by
      apply Finset.sum_le_sum_of_subset_of_nonneg hsub
      intro n hn hnot
      exact hnonneg n
    _ = pickupDiagonal (dyadicTime J) := by
      simp [pickupDiagonal, endpointIndex]

/-- Unconditional LOWER bound for the COMPLETE original signed
collar residual. The UPPER all-rate bound is the unresolved RH
arithmetic frontier and is not inferred from this inequality. -/
theorem collarResidual_ge_neg_two_dyadicTime_sq
    (B : PrimeBand) (J : ℕ) :
    -(2 * (dyadicTime J) ^ 2) ≤ collarResidualCross B ∅ J := by
  have hE := lowEnergy_nonneg B J
  have hD := lowDiagonal_le_fullDiagonal B J
  have hquadratic :=
    (pickupDiagonal_quadratic_bound (dyadicTime_nonneg J)).2
  rw [collarResidual_eq_lowEnergy_sub_diagonal]
  linarith

/-- One-sided original source upper in terms of the genuine TOTAL
positive square energy and the absolute incident packet.
The latter has a separate paper all-rate estimate, not a Lean axiom. -/
theorem collarResidual_le_originalEnergy_add_incident_abs
    (B : PrimeBand) (J : ℕ) :
    collarResidualCross B ∅ J ≤
      pickupEnergy (dyadicTime J) +
        |collarIncidentCross B ∅ J| := by
  have hidentity :=
    pickupEnergy_eq_diagonal_add_cross (dyadicTime_nonneg J)
  have hdiag := (pickupDiagonal_quadratic_bound
    (dyadicTime_nonneg J)).1
  have hcross := pickupCross_eq_collar_incident_add_residual B J
  linarith [le_abs_self (collarIncidentCross B ∅ J)]

/-- Full signed source magnitude is paid by the actual global square
energy, the original diagonal, and the separately defined collar
incident packet. The preceding LOWER bound does not make the
upper (RH-strength) energy small. -/
theorem collarResidual_abs_le_energy_diag_incident
    (B : PrimeBand) (J : ℕ) :
    |collarResidualCross B ∅ J| ≤
      pickupEnergy (dyadicTime J) +
        pickupDiagonal (dyadicTime J) +
          |collarIncidentCross B ∅ J| := by
  have hE : 0 ≤ pickupEnergy (dyadicTime J) :=
    pickupEnergy_nonneg (dyadicTime_nonneg J)
  have hD : 0 ≤ pickupDiagonal (dyadicTime J) :=
    (pickupDiagonal_quadratic_bound (dyadicTime_nonneg J)).1
  have hidentity :=
    pickupEnergy_eq_diagonal_add_cross (dyadicTime_nonneg J)
  have hpartition := pickupCross_eq_collar_incident_add_residual B J
  have ha := le_abs_self (collarIncidentCross B ∅ J)
  have hb := neg_le_abs (collarIncidentCross B ∅ J)
  apply abs_le.mpr
  constructor <;> linarith

end GRWTSK.NumberTheory.Moebius.CollarResidualLowWave
