/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddOutputTrace
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBoundarySignalBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualSummation
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp

set_option autoImplicit false
noncomputable section

/-!
# Signed rows of the bordered odd Weil residual

The coefficient expression uses the prime signal and normalization from
`WeilOddOutputTrace` and the boundary divided difference from Sections 2–4
of the supplied odd pole displacement note. The physical row is the pole-free
core. The only remaining pole contribution is the original sine column times
the auxiliary coordinate. A physical diagonal shift has zero output beyond
the support of the trial reconstruction.

For a high index `m > M`, the odd prime row splits into its two explicit
trace terms and a cubic remainder. The boundary divided difference has the
same structure after adding and subtracting `T/(4*m)` from its high signal.
Expanding the exact pole column gives its contribution to the first trace
and a cubic remainder. This file checks the signed cancellation and the
coefficient formula with the complete boundary series. The row comparison
with the literal source matrix remains a separate step. Independent analytical review and novelty are pending.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddResidualRows

open LowSchur OddOutputTrace OddBoundarySignalBounds OddResidualSummation

def poleScale (T : ℝ) : ℝ := 2 * Real.sqrt T * Real.sinh (T / 2) / Real.pi

def poleNode (T : ℝ) : ℝ := T ^ 2 / (4 * Real.pi ^ 2)

theorem sinePoleCoefficient_eq (T : ℝ) (hT : 0 < T) (m : ℕ) :
    sinePoleCoefficient T m =
      (-1 : ℝ) ^ m * (-poleScale T * (m : ℝ) / ((m : ℝ) ^ 2 + poleNode T)) := by
  have hs := Real.sqrt_pos.2 hT
  have h₁ : (1 : ℝ) / 4 + (Real.pi * (m : ℝ) / T) ^ 2 ≠ 0 := by positivity
  have h₂ : (m : ℝ) ^ 2 + T ^ 2 / (4 * Real.pi ^ 2) ≠ 0 := by positivity
  unfold sinePoleCoefficient frequency poleScale poleNode
  rw [pow_succ]
  field_simp [hT.ne', hs.ne', Real.pi_ne_zero, h₁, h₂]
  ring_nf
  rw [Real.sq_sqrt hT.le]
  ring

/-- Pole-free off-diagonal row with `(-1)^(m+n)` removed. -/
def physicalRow (T : ℝ) (m n : ℕ) : ℝ :=
  -(2 / T) * (m : ℝ) * n * (boundarySignal T n - boundarySignal T m) /
      ((m : ℝ) ^ 2 - (n : ℝ) ^ 2) -
    (2 / Real.pi) * oddPrimeRow T m n

def firstTraceEntry (T : ℝ) (n : ℕ) : ℝ :=
  -(2 / T) * n * boundarySignal T n - (2 / Real.pi) * primeSignal T n

def derivativeWeight (T : ℝ) (m : ℕ) : ℝ :=
  1 / 2 + (2 / Real.pi) * primeSignal T m

theorem abs_derivativeWeight_le (T : ℝ) (m : ℕ) :
    |derivativeWeight T m| ≤ 1 / 2 + primeMass T / Real.pi := by
  unfold derivativeWeight
  calc
    _ ≤ |(1 : ℝ) / 2| + |(2 / Real.pi) * primeSignal T m| := abs_add_le _ _
    _ = 1 / 2 + (2 / Real.pi) * |primeSignal T m| := by
      rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ 2 / Real.pi)]
      norm_num
    _ ≤ 1 / 2 + (2 / Real.pi) * (primeMass T / 2) :=
      add_le_add le_rfl (mul_le_mul_of_nonneg_left (abs_primeSignal_le T m)
        (by positivity : 0 ≤ 2 / Real.pi))
    _ = _ := by ring

/-- Prime and boundary divided-difference remainders, before the high-signal correction. -/
def physicalRowRemainder (T : ℝ) (m n : ℕ) : ℝ :=
  -(2 / T) * (n : ℝ) ^ 3 * (boundarySignal T n - boundarySignal T m) /
      ((m : ℝ) * ((m : ℝ) ^ 2 - (n : ℝ) ^ 2)) -
    (2 / Real.pi) * (n : ℝ) ^ 2 * oddPrimeRow T m n / (m : ℝ) ^ 2

def boundaryCorrection (T : ℝ) (m : ℕ) : ℝ :=
  (2 / T) * (boundarySignal T m - T / (4 * (m : ℝ))) / (m : ℝ)

theorem physicalRow_eq (T : ℝ) (hT : 0 < T) {m n : ℕ} (hmn : n < m) :
    physicalRow T m n = firstTraceEntry T n / (m : ℝ) +
      derivativeWeight T m * n / (m : ℝ) ^ 2 +
      boundaryCorrection T m * n + physicalRowRemainder T m n := by
  have hm : (0 : ℝ) < m := by exact_mod_cast Nat.zero_lt_of_lt hmn
  have hmnR : (n : ℝ) < m := by exact_mod_cast hmn
  have hd : (m : ℝ) ^ 2 - (n : ℝ) ^ 2 ≠ 0 := by
    have hn := Nat.cast_nonneg (α := ℝ) n
    exact ne_of_gt (by nlinarith)
  have hb := odd_boundary_second_split (m : ℝ) (n : ℝ)
    (boundarySignal T m) (boundarySignal T n) hm.ne' hd
  have hp := oddPrimeRow_second_split T (m : ℝ) (n : ℝ) hm.ne' hd
  unfold physicalRow firstTraceEntry derivativeWeight boundaryCorrection physicalRowRemainder
  have he : -(2 / T) * (m : ℝ) * n * (boundarySignal T n - boundarySignal T m) /
      ((m : ℝ) ^ 2 - (n : ℝ) ^ 2) =
      -(2 / T) * ((m : ℝ) * n * (boundarySignal T n - boundarySignal T m) /
        ((m : ℝ) ^ 2 - (n : ℝ) ^ 2)) := by ring
  rw [he, hb]
  nth_rw 1 [hp]
  field_simp [hT.ne', Real.pi_ne_zero, hm.ne', hd]
  ring

def poleRemainder (T : ℝ) (m : ℕ) (a : ℝ) : ℝ :=
  poleScale T * a * poleNode T / ((m : ℝ) * ((m : ℝ) ^ 2 + poleNode T))

theorem poleColumn_eq (T : ℝ) (hT : 0 < T) {m : ℕ} (hm : 0 < m) (a : ℝ) :
    sinePoleCoefficient T m * a =
      (-1 : ℝ) ^ m * (-poleScale T * a / (m : ℝ) + poleRemainder T m a) := by
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hnode : 0 ≤ poleNode T := by unfold poleNode; positivity
  have hd : (m : ℝ) ^ 2 + poleNode T ≠ 0 := by positivity
  rw [sinePoleCoefficient_eq T hT]
  unfold poleRemainder
  field_simp [hmR.ne', hd]
  ring

theorem abs_poleRemainder_le (T : ℝ) (hT : 0 < T) {m : ℕ} (hm : 0 < m) (a : ℝ) :
    |poleRemainder T m a| ≤ poleScale T * |a| * poleNode T / (m : ℝ) ^ 3 := by
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hscale : 0 ≤ poleScale T := by unfold poleScale; positivity
  have hnode : 0 ≤ poleNode T := by unfold poleNode; positivity
  have hd : 0 ≤ (m : ℝ) * ((m : ℝ) ^ 2 + poleNode T) := by positivity
  unfold poleRemainder
  rw [abs_div, abs_mul, abs_mul, abs_of_nonneg hscale, abs_of_nonneg hnode, abs_of_nonneg hd]
  apply div_le_div_of_nonneg_left (by positivity) (by positivity)
  calc
    (m : ℝ) ^ 3 = (m : ℝ) * (m : ℝ) ^ 2 := by ring
    _ ≤ _ := mul_le_mul_of_nonneg_left (le_add_of_nonneg_right hnode) hmR.le

def firstTrace (M : ℕ) (T : ℝ) (x : ℕ → ℝ) (a : ℝ) : ℝ :=
  (∑ n ∈ Finset.Icc 1 M, (-1 : ℝ) ^ n * x n * firstTraceEntry T n) - poleScale T * a

def remoteRemainder (M : ℕ) (T : ℝ) (x : ℕ → ℝ) (a : ℝ) (m : ℕ) : ℝ :=
  (∑ n ∈ Finset.Icc 1 M, (-1 : ℝ) ^ n * x n * physicalRowRemainder T m n) +
    boundaryCorrection T m * derivativeTrace M x + poleRemainder T m a

/-- Exact coefficient expression for the augmented trial output beyond the trial support. -/
def augmentedRemoteRow (M : ℕ) (T : ℝ) (x : ℕ → ℝ) (a : ℝ) (m : ℕ) : ℝ :=
  (-1 : ℝ) ^ m *
    (∑ n ∈ Finset.Icc 1 M, (-1 : ℝ) ^ n * x n * physicalRow T m n) +
    sinePoleCoefficient T m * a

theorem augmentedRemoteRow_eq (M : ℕ) (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ) (a : ℝ)
    {m : ℕ} (hm : M < m) :
    augmentedRemoteRow M T x a m = (-1 : ℝ) ^ m *
      (firstTrace M T x a / (m : ℝ) +
        derivativeWeight T m * derivativeTrace M x / (m : ℝ) ^ 2 +
        remoteRemainder M T x a m) := by
  have hsum :
      (∑ n ∈ Finset.Icc 1 M, (-1 : ℝ) ^ n * x n * physicalRow T m n) =
      ∑ n ∈ Finset.Icc 1 M,
        (((-1 : ℝ) ^ n * x n * firstTraceEntry T n / (m : ℝ) +
          derivativeWeight T m / (m : ℝ) ^ 2 * ((-1 : ℝ) ^ n * (n : ℝ) * x n)) +
          (boundaryCorrection T m * ((-1 : ℝ) ^ n * (n : ℝ) * x n) +
            (-1 : ℝ) ^ n * x n * physicalRowRemainder T m n)) := by
    apply Finset.sum_congr rfl
    intro n hn
    rw [physicalRow_eq T hT ((Finset.mem_Icc.mp hn).2.trans_lt hm)]
    ring
  unfold augmentedRemoteRow firstTrace remoteRemainder derivativeTrace
  rw [hsum, poleColumn_eq T hT (Nat.zero_lt_of_lt hm)]
  simp only [Finset.sum_add_distrib, ← Finset.mul_sum, div_eq_mul_inv, ← Finset.sum_mul]
  ring

/-- Sum every remote row of the coefficient expression. The cubic envelope
and its quadratic allowance must be supplied for the given reconstruction. -/
theorem augmentedRemoteRow_tail_bound {M L J : ℕ} (hML : M ≤ L) (hL : 0 < L)
    (hLJ : L ≤ J) (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ) (a H allowance s : ℝ) (hs : 0 < s)
    (hError : ∀ m, L < m → |remoteRemainder M T x a m| ≤ H / (m : ℝ) ^ 3)
    (hBudget : H ^ 2 ≤ allowance) :
    Summable (fun n : ℕ => (augmentedRemoteRow M T x a (L + 1 + n)) ^ 2) ∧
      (∑' n : ℕ, (augmentedRemoteRow M T x a (L + 1 + n)) ^ 2) ≤
        (1 + s) *
          ((∑ n ∈ Finset.range (J - L),
            (leadingRow (firstTrace M T x a) (derivativeTrace M x)
              (derivativeWeight T) (L + 1 + n)) ^ 2) +
            2 * (firstTrace M T x a) ^ 2 / (J : ℝ) +
            2 * (1 / 2 + primeMass T / Real.pi) ^ 2 * (derivativeTrace M x) ^ 2 /
              (3 * (J : ℝ) ^ 3)) +
          (1 + s⁻¹) * allowance / (5 * (L : ℝ) ^ 5) := by
  apply remoteResidual_tail_bound hL hLJ (augmentedRemoteRow M T x a)
    (derivativeWeight T) (fun m => (-1 : ℝ) ^ m * remoteRemainder M T x a m)
    (firstTrace M T x a) (derivativeTrace M x) H (1 / 2 + primeMass T / Real.pi)
    allowance s hs
  · exact fun m _ => abs_derivativeWeight_le T m
  · intro m hm
    simpa only [abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul] using hError m hm
  · intro m hm
    rw [augmentedRemoteRow_eq M T hT x a (hML.trans_lt hm), leadingRow, mul_add]
  · exact hBudget

end GRWTSK.NumberTheory.WeilQuadraticForm.OddResidualRows
