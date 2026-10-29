/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.SequencesSeriesSummability.ConvergenceAndDivergenceOfInfiniteLimitingProcesses.GoodScaleSubexponential
import Mathlib.Tactic

/-!
# Fixed arithmetic grids and one-sided all-positive-rate bounds

Coverage is constructed, not an arithmetic premise. An eventual sequence
bound and an all-index bound are equivalent: the finite initial segment is
paid by its explicit positive-part sum. No monotonicity or nonnegativity of
the observed function is assumed. The grid step is fixed before the rate.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential

open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

def time (q : ℝ) (j : ℕ) : ℝ := (j : ℝ) * q

def scales (q : ℝ) : Set ℝ := Set.range (time q)

theorem time_nonnegative {q : ℝ} (hq : 0 ≤ q) (j : ℕ) : 0 ≤ time q j :=
  mul_nonneg (Nat.cast_nonneg j) hq

theorem time_monotone {q : ℝ} (hq : 0 ≤ q) : Monotone (time q) := by
  intro i j hij
  exact mul_le_mul_of_nonneg_right (by exact_mod_cast hij) hq

/-- A specified next grid point has overshoot at most one fixed step. -/
theorem next_time {q : ℝ} (hq : 0 < q) {T : ℝ} (hT : 0 ≤ T) :
    T ≤ time q (⌊T / q⌋₊ + 1) ∧ time q (⌊T / q⌋₊ + 1) ≤ T + q := by
  have hlo := Nat.lt_floor_add_one (T / q)
  have hhi := Nat.floor_le (div_nonneg hT hq.le)
  have hlo' : T < ((⌊T / q⌋₊ : ℝ) + 1) * q := (div_lt_iff₀ hq).mp hlo
  have hhi' : (⌊T / q⌋₊ : ℝ) * q ≤ T := (le_div_iff₀ hq).mp hhi
  simp only [time, Nat.cast_add, Nat.cast_one]
  constructor <;> nlinarith

/-- Explicit coverage constants: a=1, b=q, T0=0. -/
theorem affineFrequent_scales {q : ℝ} (hq : 0 < q) : AffineFrequent (scales q) := by
  refine ⟨1, q, 0, le_rfl, hq.le, le_rfl, ?_⟩
  intro T hT
  obtain ⟨hlo, hhi⟩ := next_time hq hT
  exact ⟨time q (⌊T / q⌋₊ + 1), ⟨⌊T / q⌋₊ + 1, rfl⟩,
    hlo, by simpa only [one_mul] using hhi⟩

/-- One-sided bounds; f may be negative. The constant may depend on the rate. -/
def AllGridUpper (f : ℝ → ℝ) (q : ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ, f (time q j) ≤ C * Real.exp (ε * time q j)

/-- The initial index may also depend on the rate, but not on the tested index. -/
def EventualGridUpper (f : ℝ → ℝ) (q : ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
    ∀ j : ℕ, j₀ ≤ j → f (time q j) ≤ C * Real.exp (ε * time q j)

def initialAllowance (f : ℝ → ℝ) (q : ℝ) (j₀ : ℕ) : ℝ :=
  ∑ j ∈ Finset.range j₀, max 0 (f (time q j))

theorem initialAllowance_nonnegative (f : ℝ → ℝ) (q : ℝ) (j₀ : ℕ) :
    0 ≤ initialAllowance f q j₀ :=
  Finset.sum_nonneg (fun _ _ => le_max_left _ _)

theorem le_initialAllowance (f : ℝ → ℝ) (q : ℝ) {j j₀ : ℕ} (hj : j < j₀) :
    f (time q j) ≤ initialAllowance f q j₀ := by
  exact (le_max_right 0 (f (time q j))).trans
    (Finset.single_le_sum (fun k _ => le_max_left 0 (f (time q k)))
      (Finset.mem_range.mpr hj))

/-- Absorb only finitely many values, without any arithmetic growth assumption. -/
theorem allGridUpper_of_eventual {f : ℝ → ℝ} {q : ℝ} (hq : 0 ≤ q)
    (h : EventualGridUpper f q) : AllGridUpper f q := by
  intro ε hε
  obtain ⟨C, hC, j₀, hb⟩ := h ε hε
  let A := initialAllowance f q j₀
  have hA : 0 ≤ A := initialAllowance_nonnegative f q j₀
  refine ⟨C + A, add_nonneg hC hA, ?_⟩
  intro j
  have he : 1 ≤ Real.exp (ε * time q j) :=
    Real.one_le_exp_iff.mpr (mul_nonneg hε.le (time_nonnegative hq j))
  by_cases hj : j₀ ≤ j
  · exact (hb j hj).trans (mul_le_mul_of_nonneg_right
      (le_add_of_nonneg_right hA) (Real.exp_pos _).le)
  · have hf : f (time q j) ≤ A := le_initialAllowance f q (lt_of_not_ge hj)
    calc
      f (time q j) ≤ A := hf
      _ ≤ C + A := le_add_of_nonneg_left hC
      _ ≤ (C + A) * Real.exp (ε * time q j) :=
        le_mul_of_one_le_right (add_nonneg hC hA) he

theorem allGridUpper_iff_eventual {f : ℝ → ℝ} {q : ℝ} (hq : 0 ≤ q) :
    AllGridUpper f q ↔ EventualGridUpper f q := by
  constructor
  · intro h ε hε
    obtain ⟨C, hC, hb⟩ := h ε hε
    exact ⟨C, hC, 0, fun j _ => hb j⟩
  · exact allGridUpper_of_eventual hq

/-- The existing real-time definition is exactly the sequence obligation. -/
theorem allGridUpper_iff_subexponentialOn {f : ℝ → ℝ} {q : ℝ} (hq : 0 < q) :
    AllGridUpper f q ↔ SubexponentialOn f (scales q) := by
  constructor
  · intro h ε hε
    obtain ⟨C, hC, hb⟩ := h ε hε
    refine ⟨C, 0, hC, le_rfl, ?_⟩
    rintro T ⟨j, rfl⟩ _
    exact hb j
  · intro h
    apply allGridUpper_of_eventual hq.le
    intro ε hε
    obtain ⟨C, R, hC, hR, hb⟩ := h ε hε
    refine ⟨C, hC, ⌊R / q⌋₊ + 1, ?_⟩
    intro j hj
    have hRj : R ≤ time q j :=
      (next_time hq hR).1.trans (time_monotone hq.le hj)
    exact hb (time q j) ⟨j, rfl⟩ hRj

end GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential
