/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Codex relay: 7094492a-a3c3-43f7-93ec-e2ca7450b069.
Verified arithmetic-kernel base: 86ce684f9252d0f204291074353d524c7aa52859.
-/
import GRWTSK.NumberTheory.Moebius.TruncatedMobiusLogConvolutionKernel
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Divisor-log row without output truncation. -/
def mobiusLogDivisorRow (a : ℕ → ℝ) (n : ℕ) : ℝ :=
  ∑ r ∈ n.divisors, a r * Real.log (n / r : ℕ)

theorem truncated_eq_mobiusLogDivisorRow
    {M n : ℕ} (hnpos : 1 ≤ n) (hnM : n ≤ M) (a : ℕ → ℝ) :
    truncatedMobiusLogConvolution M a n = mobiusLogDivisorRow a n := by
  exact truncatedMobiusLogConvolution_eq_divisorSum hnpos hnM a

/-- Every proper divisor r of 2d other than d lies strictly below d. -/
theorem divisor_two_mul_lt_of_ne
    {d r : ℕ}
    (hd : 1 ≤ d)
    (hrdvd : r ∣ 2 * d)
    (hrne2d : r ≠ 2 * d)
    (hrned : r ≠ d) :
    r < d := by
  obtain ⟨k, hk⟩ := hrdvd
  have hk0 : k ≠ 0 := by
    intro hzero
    rw [hzero, Nat.mul_zero] at hk
    omega
  have hk1 : k ≠ 1 := by
    intro hone
    rw [hone, Nat.mul_one] at hk
    exact hrne2d hk.symm
  have hk2 : 2 ≤ k := by omega
  have hmul : r * 2 ≤ r * k := Nat.mul_le_mul_left r hk2
  omega

/-- Triangular row identity: if all lower coefficients vanish, row 2d is
exactly a(d)*log 2. The coefficient at 2d is killed by log 1. -/
theorem mobiusLogDivisorRow_two_mul_eq
    {a : ℕ → ℝ} {d : ℕ}
    (hd : 1 ≤ d)
    (hlower : ∀ r, 1 ≤ r → r < d → a r = 0) :
    mobiusLogDivisorRow a (2 * d) = a d * Real.log 2 := by
  unfold mobiusLogDivisorRow
  rw [Finset.sum_eq_single d]
  · rw [Nat.mul_div_cancel 2 (by omega : 0 < d)]
    norm_num
  · intro r hr hrne
    have hrdvd : r ∣ 2 * d := Nat.dvd_of_mem_divisors hr
    by_cases hr2d : r = 2 * d
    · subst r
      simp
    · have hrlt : r < d :=
        divisor_two_mul_lt_of_ne hd hrdvd hr2d hrne
      have hrpos : 1 ≤ r := Nat.pos_of_mem_divisors hr
      simp [hlower r hrpos hrlt]
  · intro hdnot
    exact (hdnot (Nat.mem_divisors.mpr ⟨⟨2, Nat.mul_comm 2 d⟩, by omega⟩)).elim

/-- Algebraic reconstruction from rows through 2N: zero divisor-log output on
1..2N forces the first N input coefficients to vanish. No support restriction
is imposed above N. -/
theorem mobiusLog_rows_two_mul_reconstruct_zero
    {N : ℕ} (a : ℕ → ℝ)
    (hrows : ∀ n, 1 ≤ n → n ≤ 2 * N → mobiusLogDivisorRow a n = 0) :
    ∀ d, 1 ≤ d → d ≤ N → a d = 0 := by
  intro d
  induction d using Nat.strong_induction_on with
  | h d ih =>
      intro hd hdN
      have hlower : ∀ r, 1 ≤ r → r < d → a r = 0 := by
        intro r hr hrlt
        exact ih r hrlt hr (by omega)
      have hrow : mobiusLogDivisorRow a (2 * d) = 0 :=
        hrows (2 * d) (by omega) (by nlinarith)
      rw [mobiusLogDivisorRow_two_mul_eq hd hlower] at hrow
      have hlog2 : Real.log 2 ≠ 0 := by positivity
      exact (mul_eq_zero.mp hrow).resolve_right hlog2

/-- Exact injectivity threshold for arbitrary packets: equality of truncated
outputs through 2N recovers equality of the first N input coefficients. -/
theorem truncatedMobiusLogConvolution_twoN_reconstruct
    {N : ℕ} (a b : ℕ → ℝ)
    (hout :
      ∀ n, 1 ≤ n → n ≤ 2 * N →
        truncatedMobiusLogConvolution (2 * N) a n =
          truncatedMobiusLogConvolution (2 * N) b n) :
    ∀ d, 1 ≤ d → d ≤ N → a d = b d := by
  let c : ℕ → ℝ := fun d => a d - b d
  have hcrows :
      ∀ n, 1 ≤ n → n ≤ 2 * N → mobiusLogDivisorRow c n = 0 := by
    intro n hn hn2N
    have h := hout n hn hn2N
    rw [truncated_eq_mobiusLogDivisorRow hn hn2N,
      truncated_eq_mobiusLogDivisorRow hn hn2N] at h
    unfold mobiusLogDivisorRow c
    simp_rw [sub_mul]
    rw [Finset.sum_sub_distrib]
    unfold mobiusLogDivisorRow at h
    linarith
  intro d hd hdN
  have hc := mobiusLog_rows_two_mul_reconstruct_zero c hcrows d hd hdN
  dsimp [c] at hc
  linarith

/-- Explicit recursive reconstruction residual at coefficient d from row 2d.
This records the lower-divisor correction rather than hiding it in an inverse
operator. -/
def mobiusLogReconstructionResidual
    (a : ℕ → ℝ) (d : ℕ) : ℝ :=
  mobiusLogDivisorRow a (2 * d) -
    ∑ r ∈ (2 * d).divisors.filter (fun r => r < d),
      a r * Real.log ((2 * d) / r : ℕ)

/-- At a stage where all lower coefficients have been reconstructed exactly,
the residual is the diagonal coefficient a(d)*log 2. -/
theorem mobiusLogReconstructionResidual_eq_diagonal
    {a : ℕ → ℝ} {d : ℕ}
    (hd : 1 ≤ d)
    (hlower : ∀ r, 1 ≤ r → r < d → a r = 0) :
    mobiusLogReconstructionResidual a d = a d * Real.log 2 := by
  unfold mobiusLogReconstructionResidual
  rw [mobiusLogDivisorRow_two_mul_eq hd hlower]
  have hz :
      (∑ r ∈ (2 * d).divisors.filter (fun r => r < d),
        a r * Real.log ((2 * d) / r : ℕ)) = 0 := by
    apply Finset.sum_eq_zero
    intro r hr
    have hr' := Finset.mem_filter.mp hr
    have hrpos : 1 ≤ r := Nat.pos_of_mem_divisors hr'.1
    simp [hlower r hrpos hr'.2]
  rw [hz]
  ring

end GRWTSK.RiemannHypothesis

#print axioms GRWTSK.RiemannHypothesis.mobiusLog_rows_two_mul_reconstruct_zero
#print axioms GRWTSK.RiemannHypothesis.truncatedMobiusLogConvolution_twoN_reconstruct
#print axioms GRWTSK.RiemannHypothesis.mobiusLogReconstructionResidual_eq_diagonal
