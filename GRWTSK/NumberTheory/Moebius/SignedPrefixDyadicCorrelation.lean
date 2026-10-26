/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.DyadicCompensatedCorrelation

/-!
# Signed mixed-prefix Abel transfer at small positive damping

No weighted Mertens mean-square hypothesis is used. The NEW OPEN arithmetic
input is a one-sided subpower upper bound for the actual UNWEIGHTED signed
mixed prefix H. This is a sufficient condition; the cancellation result and
any equivalence to the minimal fixed-damping target remain unproved.

Finite Abel summation cancels the terminal H term against the terminal sample
square exactly. The remaining unweighted diagonal terminal correction is paid
unconditionally by the existing diagonal budget at half damping. Both pieces
have explicit summable dyadic majorants when 0 <= epsilon < sigma.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

def sampleSignedMixedPrefix (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.range N,
    2 * sampleResidue (k + 1) * (sampleResidue (k + 2) - sampleResidue (k + 1))

def sampleUnweightedDiagonal (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.range N, (sampleResidue (k + 2) - sampleResidue (k + 1)) ^ 2

def sampleSignedWeight (σ : ℝ) (n : ℕ) : ℝ :=
  Real.exp (-σ * Real.log (n + 1 : ℕ))

def sampleSignedIncrementSource (n : ℕ) : ℝ :=
  mertensPrefix (n : ℝ) * ((Real.sqrt n)⁻¹ - (Real.sqrt (n + 1 : ℕ))⁻¹)

/-- The open prefix hypothesis concerns a literal triangular signed
Mertens-product sum. The zero source index is retained by the existing source
identity; no independent random-sequence or fixed-shift substitution occurs. -/
theorem sampleSignedMixedPrefix_eq_triangular (N : ℕ) :
    sampleSignedMixedPrefix N =
      ∑ k ∈ Finset.range N,
        2 * (∑ m ∈ Finset.range (k + 1), sampleSignedIncrementSource m) *
          sampleSignedIncrementSource (k + 1) := by
  unfold sampleSignedMixedPrefix
  apply Finset.sum_congr rfl
  intro k _
  have hq : sampleResidue (k + 1) =
      ∑ m ∈ Finset.range (k + 1), sampleSignedIncrementSource m := by
    rw [sampleResidue_eq_criticalEndpointDefect (by omega),
      GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence.criticalEndpointDefect_eq_mertensTransform]
    unfold GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence.criticalMertensTransform
    simp only [sampleSignedIncrementSource, pickupMertensPrefix, mertensPrefix,
      Nat.floor_natCast, GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect.criticalEndpointGap]
  have hd : sampleResidue (k + 2) - sampleResidue (k + 1) =
      sampleSignedIncrementSource (k + 1) := by
    simpa only [sampleSignedIncrementSource, Nat.add_assoc] using sampleResidue_succ_sub (k + 1)
  rw [hd, hq]

/-- Actual Mertens-transform factors, with their signs and original cutoffs.
This does not replace M by an arbitrary bounded or random sequence. -/
theorem sampleSignedMixedPrefix_eq_mertens_bilinear (N : ℕ) :
    sampleSignedMixedPrefix N =
      ∑ k ∈ Finset.range N,
        2 * sampleResidue (k + 1) * mertensPrefix (k + 1 : ℕ) *
          ((Real.sqrt (k + 1 : ℕ))⁻¹ - (Real.sqrt (k + 2 : ℕ))⁻¹) := by
  unfold sampleSignedMixedPrefix
  apply Finset.sum_congr rfl
  intro k _
  rw [show k + 2 = (k + 1) + 1 by omega, sampleResidue_succ_sub]
  ring

theorem sampleResidue_square_eq_signedPrefix_add_diagonal (N : ℕ) :
    sampleResidue (N + 1) ^ 2 =
      sampleSignedMixedPrefix N + sampleUnweightedDiagonal N := by
  rw [sampleResidue_square_telescope]
  simp only [sampleSignedMixedPrefix, sampleUnweightedDiagonal, Finset.sum_add_distrib]

/-- Backward-prefix form of finite Abel summation; its terminal term is kept. -/
theorem sampleBackwardAbel (x w : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, x k * w (k + 1)) =
      (∑ k ∈ Finset.range N, x k) * w N +
        ∑ k ∈ Finset.range N,
          (∑ m ∈ Finset.range k, x m) * (w k - w (k + 1)) := by
  induction N with
  | zero => simp
  | succ N ih =>
      simp only [Finset.sum_range_succ]
      rw [ih]
      ring

/-- The terminal signed prefix cancels EXACTLY, leaving a negative diagonal
correction. No terminal sample square or source endpoint is assumed to vanish. -/
theorem sampleCompensatedCorrelation_signed_abel (σ : ℝ) (N : ℕ) :
    sampleCompensatedCorrelation σ N =
      (∑ k ∈ Finset.range N, sampleSignedMixedPrefix k *
        (sampleSignedWeight σ k - sampleSignedWeight σ (k + 1))) -
      sampleUnweightedDiagonal N * sampleSignedWeight σ N := by
  have hw :
      2 * (∑ k ∈ Finset.range N,
        sampleResidue (k + 1) * (sampleResidue (k + 2) - sampleResidue (k + 1)) *
          Real.exp (-σ * Real.log (k + 2 : ℕ))) =
      ∑ k ∈ Finset.range N,
        (2 * sampleResidue (k + 1) * (sampleResidue (k + 2) - sampleResidue (k + 1))) *
          sampleSignedWeight σ (k + 1) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    simp only [sampleSignedWeight, Nat.add_assoc]
    ring
  unfold sampleCompensatedCorrelation
  rw [hw, sampleResidue_square_eq_signedPrefix_add_diagonal, sampleBackwardAbel]
  change sampleSignedMixedPrefix N * sampleSignedWeight σ N +
      (∑ k ∈ Finset.range N, sampleSignedMixedPrefix k *
        (sampleSignedWeight σ k - sampleSignedWeight σ (k + 1))) -
      (sampleSignedMixedPrefix N + sampleUnweightedDiagonal N) * sampleSignedWeight σ N = _
  ring

theorem sampleSignedWeight_pos (σ : ℝ) (n : ℕ) : 0 < sampleSignedWeight σ n :=
  Real.exp_pos _

theorem sampleSignedWeight_antitone {σ : ℝ} (hσ : 0 ≤ σ) :
    Antitone (sampleSignedWeight σ) := by
  intro a b hab
  unfold sampleSignedWeight
  apply Real.exp_le_exp.mpr
  have hl : Real.log (a + 1 : ℕ) ≤ Real.log (b + 1 : ℕ) :=
    Real.log_le_log (by positivity) (by exact_mod_cast (Nat.add_le_add_right hab 1))
  exact mul_le_mul_of_nonpos_left hl (neg_nonpos.mpr hσ)

theorem sampleSignedWeight_eq_rpow (σ : ℝ) (n : ℕ) :
    sampleSignedWeight σ n = ((n + 1 : ℕ) : ℝ) ^ (-σ) := by
  simp only [sampleSignedWeight, Real.rpow_def_of_pos (by positivity : (0 : ℝ) < (n + 1 : ℕ)),
    mul_comm]

theorem sampleSignedWeight_drop (σ : ℝ) (k : ℕ) :
    sampleSignedWeight σ k - sampleSignedWeight σ (k + 1) =
      exponentialLogDrop σ (k + 1) := rfl

theorem sampleUnweightedDiagonal_nonneg (N : ℕ) : 0 ≤ sampleUnweightedDiagonal N := by
  unfold sampleUnweightedDiagonal
  exact Finset.sum_nonneg (fun _ _ => sq_nonneg _)

/-- What the existing elementary source allowance actually gives. Its
exponent one does not meet epsilon < sigma in the requested sigma <= 1 range. -/
theorem sampleSignedMixedPrefix_le_linear (N : ℕ) :
    sampleSignedMixedPrefix N ≤ ((N + 1 : ℕ) : ℝ) := by
  have hq := sampleResidue_sq_le_nat (n := N + 1) (by omega)
  have hd := sampleUnweightedDiagonal_nonneg N
  have he := sampleResidue_square_eq_signedPrefix_add_diagonal N
  linarith

/-- The unweighted terminal diagonal, after damping, is controlled at EVERY
positive sigma by the ALREADY paid diagonal budget at sigma/2. -/
theorem sampleUnweightedDiagonal_terminal_le_halfBudget {σ : ℝ} (hσ : 0 < σ) (N : ℕ) :
    sampleUnweightedDiagonal N * sampleSignedWeight σ N ≤
      sampleDiagonalBudget (σ / 2) * sampleSignedWeight (σ / 2) N := by
  have ht : 0 < σ / 2 := by positivity
  have hl : sampleUnweightedDiagonal N * sampleSignedWeight (σ / 2) N ≤
      sampleWeightedDiagonal (σ / 2) N := by
    unfold sampleUnweightedDiagonal sampleWeightedDiagonal
    rw [Finset.sum_mul]
    apply Finset.sum_le_sum
    intro k hk
    have hi : k + 1 ≤ N := Nat.succ_le_of_lt (Finset.mem_range.mp hk)
    have hw := sampleSignedWeight_antitone ht.le hi
    simpa only [sampleSignedWeight, Nat.add_assoc] using
      mul_le_mul_of_nonneg_left hw (sq_nonneg (sampleResidue (k + 2) - sampleResidue (k + 1)))
  have heq : sampleSignedWeight σ N =
      sampleSignedWeight (σ / 2) N * sampleSignedWeight (σ / 2) N := by
    unfold sampleSignedWeight
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    _ = (sampleUnweightedDiagonal N * sampleSignedWeight (σ / 2) N) *
        sampleSignedWeight (σ / 2) N := by rw [heq]; ring
    _ ≤ sampleWeightedDiagonal (σ / 2) N * sampleSignedWeight (σ / 2) N :=
      mul_le_mul_of_nonneg_right hl (sampleSignedWeight_pos _ _).le
    _ ≤ _ := mul_le_mul_of_nonneg_right (sampleWeightedDiagonal_le_budget ht N)
      (sampleSignedWeight_pos _ _).le

/-- OPEN signed cancellation supplier: a single constant controls the actual
mixed prefixes at every horizon. No absolute-value bound or Mertens mean square
is assumed. This is stronger than the minimal fixed-damping integral target. -/
def SampleSignedPrefixUpper (ε K : ℝ) : Prop :=
  ∀ N : ℕ, sampleSignedMixedPrefix N ≤ K * (((N + 1 : ℕ) : ℝ) ^ ε)

/-- Transfer of the one-sided signed prefix bound through the positive Abel
weight drop, with no absolute values applied to the arithmetic mixed prefix. -/
theorem sampleSignedAbelTerm_le_power {σ ε K : ℝ} (hσ : 0 < σ) (hK : 0 ≤ K)
    (hs : SampleSignedPrefixUpper ε K) (k : ℕ) :
    sampleSignedMixedPrefix k * (sampleSignedWeight σ k - sampleSignedWeight σ (k + 1)) ≤
      (σ * K) * (((k + 1 : ℕ) : ℝ) ^ (ε - σ - 1)) := by
  have hn : (0 : ℝ) < (k + 1 : ℕ) := by positivity
  rw [sampleSignedWeight_drop]
  calc
    _ ≤ (K * (((k + 1 : ℕ) : ℝ) ^ ε)) * exponentialLogDrop σ (k + 1) :=
      mul_le_mul_of_nonneg_right (hs k) (exponentialLogDrop_nonneg hσ.le _)
    _ ≤ (K * (((k + 1 : ℕ) : ℝ) ^ ε)) *
        (σ * (((k + 1 : ℕ) : ℝ) ^ (-σ - 1))) :=
      mul_le_mul_of_nonneg_left (exponentialLogDrop_le_rpow hσ.le (by omega))
        (mul_nonneg hK (Real.rpow_nonneg (by positivity) _))
    _ = (σ * K) * ((((k + 1 : ℕ) : ℝ) ^ ε) *
        (((k + 1 : ℕ) : ℝ) ^ (-σ - 1))) := by ring
    _ = _ := by rw [← Real.rpow_add hn]; congr 2 <;> ring

theorem sampleSignedDyadicBlock_identity (σ : ℝ) (j : ℕ) :
    sampleDyadicIncrement σ j =
      (∑ k ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)), sampleSignedMixedPrefix k *
        (sampleSignedWeight σ k - sampleSignedWeight σ (k + 1))) +
      sampleUnweightedDiagonal (2 ^ j) * sampleSignedWeight σ (2 ^ j) -
      sampleUnweightedDiagonal (2 ^ (j + 1)) * sampleSignedWeight σ (2 ^ (j + 1)) := by
  have hab : 2 ^ j ≤ 2 ^ (j + 1) :=
    Nat.pow_le_pow_right (by norm_num : 0 < 2) (Nat.le_succ j)
  unfold sampleDyadicIncrement sampleCheckpointIncrement sampleDyadicCheckpoint
  rw [sampleCompensatedCorrelation_signed_abel, sampleCompensatedCorrelation_signed_abel,
    Finset.sum_Ico_eq_sub _ hab]
  ring

theorem sampleDyadicPower_normalization (α : ℝ) (j : ℕ) :
    (((2 ^ j : ℕ) : ℝ) ^ α) = ((2 : ℝ) ^ α) ^ j := by
  rw [Nat.cast_pow, Nat.cast_ofNat,
    ← Real.rpow_natCast_mul (by norm_num : (0 : ℝ) ≤ 2),
    mul_comm (j : ℝ) α, Real.rpow_mul_natCast (by norm_num : (0 : ℝ) ≤ 2)]

def sampleSignedDyadicBudget (σ ε K : ℝ) (j : ℕ) : ℝ :=
  (σ * K) * ((2 : ℝ) ^ (ε - σ)) ^ j +
    sampleDiagonalBudget (σ / 2) * ((2 : ℝ) ^ (-(σ / 2))) ^ j

/-- Direct signed-prefix route, applicable in particular to 0 < sigma <= 1.
The signed arithmetic hypothesis hs is NOT discharged by this theorem. -/
theorem sampleDyadicIncrement_le_signedPrefixBudget {σ ε K : ℝ}
    (hσ : 0 < σ) (hK : 0 ≤ K) (hεσ : ε < σ)
    (hs : SampleSignedPrefixUpper ε K) (j : ℕ) :
    sampleDyadicIncrement σ j ≤ sampleSignedDyadicBudget σ ε K j := by
  have hbulk := sum_dyadicBlock_le_power_majorant
    (fun k => sampleSignedMixedPrefix k *
      (sampleSignedWeight σ k - sampleSignedWeight σ (k + 1)))
    (mul_nonneg hσ.le hK) (show ε - σ - 1 ≤ 0 by linarith)
    (sampleSignedAbelTerm_le_power hσ hK hs) j
  have hterminal := sampleUnweightedDiagonal_terminal_le_halfBudget hσ (2 ^ j)
  have ha : (0 : ℝ) < (2 ^ j : ℕ) := by positivity
  have hw : sampleSignedWeight (σ / 2) (2 ^ j) ≤
      (((2 ^ j : ℕ) : ℝ) ^ (-(σ / 2))) := by
    rw [sampleSignedWeight_eq_rpow]
    exact Real.rpow_le_rpow_of_nonpos ha
      (by exact_mod_cast (Nat.le_succ (2 ^ j))) (by linarith)
  have hterminal' := hterminal.trans
    (mul_le_mul_of_nonneg_left hw (sampleDiagonalBudget_nonneg _))
  have hlast : 0 ≤ sampleUnweightedDiagonal (2 ^ (j + 1)) *
      sampleSignedWeight σ (2 ^ (j + 1)) :=
    mul_nonneg (sampleUnweightedDiagonal_nonneg _) (sampleSignedWeight_pos _ _).le
  rw [show ε - σ - 1 + 1 = ε - σ by ring,
    sampleDyadicPower_normalization] at hbulk
  rw [sampleDyadicPower_normalization] at hterminal'
  rw [sampleSignedDyadicBlock_identity]
  unfold sampleSignedDyadicBudget
  linarith

theorem sampleSignedDyadicBudget_nonneg {σ K ε : ℝ} (hσ : 0 < σ) (hK : 0 ≤ K) (j : ℕ) :
    0 ≤ sampleSignedDyadicBudget σ ε K j := by
  unfold sampleSignedDyadicBudget
  exact add_nonneg
    (mul_nonneg (mul_nonneg hσ.le hK) (pow_nonneg (Real.rpow_nonneg (by norm_num) _) _))
    (mul_nonneg (sampleDiagonalBudget_nonneg _) (pow_nonneg (Real.rpow_nonneg (by norm_num) _) _))

/-- Canonical small-damping specialization: the two geometric ratios coincide.
The half-exponent signed-prefix cancellation remains an explicit assumption. -/
theorem sampleDyadicIncrement_le_signedHalfPrefix {σ K : ℝ}
    (hσ : 0 < σ) (hK : 0 ≤ K) (hs : SampleSignedPrefixUpper (σ / 2) K) (j : ℕ) :
    sampleDyadicIncrement σ j ≤
      (σ * K + sampleDiagonalBudget (σ / 2)) * ((2 : ℝ) ^ (-(σ / 2))) ^ j := by
  have hb := sampleDyadicIncrement_le_signedPrefixBudget hσ hK
    (show σ / 2 < σ by linarith) hs j
  unfold sampleSignedDyadicBudget at hb
  rw [show σ / 2 - σ = -(σ / 2) by ring] at hb
  nlinarith

theorem summable_sampleSignedDyadicBudget {σ ε K : ℝ} (hσ : 0 < σ) (hεσ : ε < σ) :
    Summable (sampleSignedDyadicBudget σ ε K) := by
  have hfirst := (summable_geometric_of_lt_one (Real.rpow_nonneg (by norm_num) _)
    (Real.rpow_lt_one_of_one_lt_of_neg (by norm_num) (show ε - σ < 0 by linarith))).mul_left (σ * K)
  have hsecond := (summable_geometric_of_lt_one (Real.rpow_nonneg (by norm_num) _)
    (Real.rpow_lt_one_of_one_lt_of_neg (by norm_num) (show -(σ / 2) < 0 by linarith))).mul_left
      (sampleDiagonalBudget (σ / 2))
  exact hfirst.add hsecond

theorem compensatedCorrelationBound_of_signedPrefixUpper {σ ε K : ℝ}
    (hσ : 0 < σ) (hK : 0 ≤ K) (hεσ : ε < σ) (hs : SampleSignedPrefixUpper ε K) :
    CompensatedCorrelationBound σ :=
  compensatedCorrelationBound_of_summable_checkpoint_budget hσ
    sampleDyadicCheckpoint sampleDyadicCheckpoint_cofinal
    (sampleSignedDyadicBudget σ ε K) (sampleSignedDyadicBudget_nonneg hσ hK)
    (summable_sampleSignedDyadicBudget hσ hεσ)
    (sampleDyadicIncrement_le_signedPrefixBudget hσ hK hεσ hs)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
