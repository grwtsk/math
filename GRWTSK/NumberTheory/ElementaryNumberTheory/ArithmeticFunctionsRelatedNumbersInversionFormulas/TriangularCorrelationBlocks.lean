/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.SignedPrefixDyadicCorrelation

/-!
# Internal and external arithmetic interactions in triangular H

For a <= b, S is the literal signed Mertens-increment sum on [a,b), V is its
increment-square diagonal, T=S^2-V is the internal triangular correlation,
and P=2*Q_(a+1)*S is interaction with the complete earlier source.
The exact identity is H_b-H_a=P+T. The diagonal V<=1/4 is unconditional on
every full or partial dyadic block. Upper bounds for T and P remain OPEN.

The joint all-subprefix local upper bound supplies the global H upper bound
with its geometric constant retained. Separately bounding P and T is only a
sufficient stronger route; cancellation between them must not be presumed.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

def triangularBlockDrift (a b : ℕ) : ℝ :=
  ∑ k ∈ Finset.Ico a b, sampleSignedIncrementSource (k + 1)

def triangularBlockDiagonal (a b : ℕ) : ℝ :=
  ∑ k ∈ Finset.Ico a b, sampleSignedIncrementSource (k + 1) ^ 2

def triangularBlockSelf (a b : ℕ) : ℝ :=
  triangularBlockDrift a b ^ 2 - triangularBlockDiagonal a b

def triangularBlockCross (a b : ℕ) : ℝ :=
  2 * sampleResidue (a + 1) * triangularBlockDrift a b

theorem sampleSignedIncrementSource_eq_step (n : ℕ) :
    sampleSignedIncrementSource n = sampleResidue (n + 1) - sampleResidue n := by
  simpa only [sampleSignedIncrementSource] using (sampleResidue_succ_sub n).symm

theorem triangularBlockDrift_succ {a b : ℕ} (hab : a ≤ b) :
    triangularBlockDrift a (b + 1) =
      triangularBlockDrift a b + sampleSignedIncrementSource (b + 1) := by
  exact Finset.sum_Ico_succ_top hab _

theorem triangularBlockDiagonal_succ {a b : ℕ} (hab : a ≤ b) :
    triangularBlockDiagonal a (b + 1) =
      triangularBlockDiagonal a b + sampleSignedIncrementSource (b + 1) ^ 2 := by
  exact Finset.sum_Ico_succ_top hab _

theorem triangularBlockDrift_eq_sampleDifference {a b : ℕ} (hab : a ≤ b) :
    triangularBlockDrift a b = sampleResidue (b + 1) - sampleResidue (a + 1) := by
  induction b, hab using Nat.le_induction with
  | base => simp [triangularBlockDrift]
  | succ b hab ih =>
      rw [triangularBlockDrift_succ hab, ih, sampleSignedIncrementSource_eq_step]
      simp only [Nat.add_assoc]
      ring

theorem triangularBlockDiagonal_eq_difference {a b : ℕ} (hab : a ≤ b) :
    triangularBlockDiagonal a b = sampleUnweightedDiagonal b - sampleUnweightedDiagonal a := by
  rw [triangularBlockDiagonal, Finset.sum_Ico_eq_sub _ hab]
  simp only [sampleSignedIncrementSource_eq_step, sampleUnweightedDiagonal, Nat.add_assoc]

/-- Both source orientations and the complete pre-block anchor are retained. -/
theorem signedMixedPrefix_block_decomposition {a b : ℕ} (hab : a ≤ b) :
    sampleSignedMixedPrefix b - sampleSignedMixedPrefix a =
      triangularBlockCross a b + triangularBlockSelf a b := by
  have ha := sampleResidue_square_eq_signedPrefix_add_diagonal a
  have hb := sampleResidue_square_eq_signedPrefix_add_diagonal b
  have hv := triangularBlockDiagonal_eq_difference hab
  unfold triangularBlockCross triangularBlockSelf
  simp only [triangularBlockDrift_eq_sampleDifference hab]
  nlinarith

/-- T is the actual within-block triangular sum, not an unsigned square
substituted for the original arithmetic source. -/
theorem triangularBlockSelf_eq_internalCorrelation {a b : ℕ} (hab : a ≤ b) :
    triangularBlockSelf a b =
      ∑ k ∈ Finset.Ico a b,
        2 * triangularBlockDrift a k * sampleSignedIncrementSource (k + 1) := by
  induction b, hab using Nat.le_induction with
  | base => simp [triangularBlockSelf, triangularBlockDrift, triangularBlockDiagonal]
  | succ b hab ih =>
      rw [triangularBlockSelf, triangularBlockDrift_succ hab,
        triangularBlockDiagonal_succ hab, Finset.sum_Ico_succ_top hab, ← ih]
      unfold triangularBlockSelf
      ring

theorem triangularBlockDiagonal_nonneg (a b : ℕ) : 0 ≤ triangularBlockDiagonal a b := by
  unfold triangularBlockDiagonal
  exact Finset.sum_nonneg (fun _ _ => sq_nonneg _)

/-- A new unconditional local estimate. The same quarter bounds EVERY
partial dyadic block; no Mertens cancellation hypothesis is used. -/
theorem triangularBlockDiagonal_le_quarter {a b : ℕ}
    (ha : 1 ≤ a) (hba : b ≤ 2 * a) : triangularBlockDiagonal a b ≤ 1 / 4 := by
  have hap : (0 : ℝ) < a := by exact_mod_cast (by omega : 0 < a)
  have hcount : b - a ≤ a := by omega
  unfold triangularBlockDiagonal
  calc
    _ ≤ ∑ _k ∈ Finset.Ico a b, (1 / (4 * (a : ℝ)) : ℝ) := by
      apply Finset.sum_le_sum
      intro k hk
      have hak : a ≤ k := (Finset.mem_Ico.mp hk).1
      have hs := sampleResidue_increment_sq_le (n := k + 1) (by omega)
      have hd : 4 * (a : ℝ) ≤ 4 * (((k + 1 : ℕ) : ℝ) + 1) := by
        have hcast : (a : ℝ) ≤ (k : ℝ) := by exact_mod_cast hak
        push_cast
        linarith
      have hi := one_div_le_one_div_of_le (show (0 : ℝ) < 4 * (a : ℝ) by positivity) hd
      have hstep : sampleSignedIncrementSource (k + 1) =
          sampleResidue (k + 2) - sampleResidue (k + 1) := by
        simpa only [Nat.add_assoc] using sampleSignedIncrementSource_eq_step (k + 1)
      rw [hstep]
      exact hs.trans hi
    _ = ((b - a : ℕ) : ℝ) * (1 / (4 * (a : ℝ))) := by simp
    _ ≤ (a : ℝ) * (1 / (4 * (a : ℝ))) :=
      mul_le_mul_of_nonneg_right (by exact_mod_cast hcount) (by positivity)
    _ = 1 / 4 := by field_simp [hap.ne'] <;> ring

theorem triangularBlockSelf_lower {a b : ℕ} (ha : 1 ≤ a) (hba : b ≤ 2 * a) :
    -(1 / 4 : ℝ) ≤ triangularBlockSelf a b := by
  have hd := triangularBlockDiagonal_le_quarter ha hba
  unfold triangularBlockSelf
  nlinarith [sq_nonneg (triangularBlockDrift a b)]

/-- Synthetic scalar hostile control ONLY, not an assertion about the actual
Mertens source: a paid local diagonal and zero internal correlation leave
interaction with an uncontrolled earlier anchor arbitrarily large. -/
theorem scalar_cross_not_controlled_by_local_diagonal (R : ℝ) :
    ∃ A S V : ℝ, 0 ≤ V ∧ V ≤ 1 / 4 ∧ S ^ 2 - V = 0 ∧ R < 2 * A * S := by
  refine ⟨|R| + 1, 1 / 2, 1 / 4, by norm_num, by norm_num, by norm_num, ?_⟩
  have h := le_abs_self R
  nlinarith

/-- OPEN arithmetic local hypothesis. EVERY intermediate endpoint is kept;
completed dyadic blocks alone do not give this all-horizon supplier. -/
def DyadicTriangularLocalUpper (ε K : ℝ) : Prop :=
  ∀ j b : ℕ, 2 ^ j ≤ b → b ≤ 2 ^ (j + 1) →
    triangularBlockCross (2 ^ j) b + triangularBlockSelf (2 ^ j) b ≤
      K * (((2 ^ j : ℕ) : ℝ) ^ ε)

/-- Two smaller sufficient arithmetic estimates. They are not supplied here,
and requiring both can discard beneficial cancellation BETWEEN the two terms. -/
theorem dyadicTriangularLocalUpper_of_separate_bounds {ε A B : ℝ}
    (hcross : ∀ j b : ℕ, 2 ^ j ≤ b → b ≤ 2 ^ (j + 1) →
      triangularBlockCross (2 ^ j) b ≤ A * (((2 ^ j : ℕ) : ℝ) ^ ε))
    (hself : ∀ j b : ℕ, 2 ^ j ≤ b → b ≤ 2 ^ (j + 1) →
      triangularBlockSelf (2 ^ j) b ≤ B * (((2 ^ j : ℕ) : ℝ) ^ ε)) :
    DyadicTriangularLocalUpper ε (A + B) := by
  intro j b hab hba
  have hc := hcross j b hab hba
  have hs := hself j b hab hba
  nlinarith

def triangularDyadicPrice (ε K : ℝ) : ℝ := K / ((2 : ℝ) ^ ε - 1)

theorem triangularDyadicPrice_nonneg {ε K : ℝ} (hε : 0 < ε) (hK : 0 ≤ K) :
    0 ≤ triangularDyadicPrice ε K :=
  div_nonneg hK (sub_nonneg.mpr (Real.one_lt_rpow (by norm_num) hε).le)

theorem triangularDyadicPrice_step {ε K : ℝ} (hε : 0 < ε) :
    triangularDyadicPrice ε K + K = triangularDyadicPrice ε K * (2 : ℝ) ^ ε := by
  have hn : (2 : ℝ) ^ ε - 1 ≠ 0 :=
    ne_of_gt (sub_pos.mpr (Real.one_lt_rpow (by norm_num) hε))
  unfold triangularDyadicPrice
  field_simp [hn] <;> ring

/-- All completed dyadic prefixes follow from the same local arithmetic
supplier. The geometric cost 1/(2^epsilon-1) is explicit. -/
theorem signedMixedPrefix_dyadicEndpoint_of_local {ε K : ℝ}
    (hε : 0 < ε) (hK : 0 ≤ K) (hs : DyadicTriangularLocalUpper ε K) :
    ∀ j : ℕ, sampleSignedMixedPrefix (2 ^ j) ≤
      triangularDyadicPrice ε K * ((2 : ℝ) ^ ε) ^ j := by
  intro j
  induction j with
  | zero =>
      simpa [sampleSignedMixedPrefix, sampleResidue_one] using triangularDyadicPrice_nonneg hε hK
  | succ j ih =>
      have hab : 2 ^ j ≤ 2 ^ (j + 1) :=
        Nat.pow_le_pow_right (by norm_num : 0 < 2) (Nat.le_succ j)
      have hb := hs j (2 ^ (j + 1)) hab le_rfl
      rw [← signedMixedPrefix_block_decomposition hab, sampleDyadicPower_normalization ε j] at hb
      calc
        _ ≤ sampleSignedMixedPrefix (2 ^ j) + K * ((2 : ℝ) ^ ε) ^ j := by linarith
        _ ≤ triangularDyadicPrice ε K * ((2 : ℝ) ^ ε) ^ j +
            K * ((2 : ℝ) ^ ε) ^ j := add_le_add_right ih _
        _ = (triangularDyadicPrice ε K + K) * ((2 : ℝ) ^ ε) ^ j := by ring
        _ = _ := by rw [triangularDyadicPrice_step hε, pow_succ]; ring

/-- The remaining partial octave is controlled explicitly, so no dyadic-only
estimate is silently promoted to the all-horizon H hypothesis. -/
theorem signedPrefixUpper_of_dyadicLocal {ε K : ℝ}
    (hε : 0 < ε) (hK : 0 ≤ K) (hs : DyadicTriangularLocalUpper ε K) :
    SampleSignedPrefixUpper ε (triangularDyadicPrice ε K + K) := by
  intro N
  have hp := triangularDyadicPrice_nonneg hε hK
  have hC : 0 ≤ triangularDyadicPrice ε K + K := add_nonneg hp hK
  by_cases hN : N = 0
  · subst N
    simpa [sampleSignedMixedPrefix] using hC
  have haN : 2 ^ Nat.log 2 N ≤ N := Nat.pow_log_le_self 2 hN
  have hNb : N ≤ 2 ^ (Nat.log 2 N + 1) :=
    (Nat.lt_pow_succ_log_self (b := 2) (by norm_num) N).le
  have hl := hs (Nat.log 2 N) N haN hNb
  rw [← signedMixedPrefix_block_decomposition haN] at hl
  have he := signedMixedPrefix_dyadicEndpoint_of_local hε hK hs (Nat.log 2 N)
  rw [← sampleDyadicPower_normalization ε (Nat.log 2 N)] at he
  have hpow : (((2 ^ Nat.log 2 N : ℕ) : ℝ) ^ ε) ≤ ((N + 1 : ℕ) : ℝ) ^ ε :=
    Real.rpow_le_rpow (by positivity)
      (by exact_mod_cast (haN.trans (Nat.le_succ N))) hε.le
  calc
    _ ≤ (triangularDyadicPrice ε K + K) * (((2 ^ Nat.log 2 N : ℕ) : ℝ) ^ ε) := by
      nlinarith
    _ ≤ _ := mul_le_mul_of_nonneg_left hpow hC

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
