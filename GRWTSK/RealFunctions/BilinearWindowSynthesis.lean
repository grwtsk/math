/- Copyright (c) 2026 grwtsk. MIT.
Mathlib retains its upstream attribution and Apache-2.0 license. -/
import Mathlib.Tactic
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-!
# Exact finite phase separation in multiplicative short windows

Independent finite implementation of the window and additive-character
conventions inspected in openai/math, TwoPoint/Fourier/MinorArcRamareWindow
and MinorArcBilinearWindow. No upstream analytic theorem is imported.
The exclusive cofactor cutoff, positive dilation, shifted origin, every
Fourier coefficient and the coefficient-mass cost remain explicit.
No finite phase representation is presumed to approximate an arithmetic input.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis
open scoped BigOperators

/-- Exclusive cofactor cutoff, identical to the inspected upstream convention. -/
def windowInterval (M A k H : ℕ) : Finset ℕ :=
  Finset.Ico (k / A + 1) (min M ((k + H) / A + 1))

theorem mem_windowInterval (M A k H m : ℕ) (hA : 0 < A) :
    m ∈ windowInterval M A k H ↔ m < M ∧ k < A * m ∧ A * m ≤ k + H := by
  have hlo : k / A < m ↔ k < A * m := by
    simpa only [Nat.mul_comm] using (Nat.div_lt_iff_lt_mul hA : k / A < m ↔ k < m * A)
  have hhi : m ≤ (k + H) / A ↔ A * m ≤ k + H := by
    simpa only [Nat.mul_comm] using
      (Nat.le_div_iff_mul_le hA : m ≤ (k + H) / A ↔ m * A ≤ k + H)
  simp only [windowInterval, Finset.mem_Ico, lt_min_iff]
  omega

theorem windowInterval_subset_range (M A k H : ℕ) :
    windowInterval M A k H ⊆ Finset.range M := by
  intro m hm
  exact Finset.mem_range.mpr ((Finset.mem_Ico.mp hm).2.trans_le (min_le_left _ _))

/-- A source quotient window with sufficient exclusive cutoff, including empty intervals. -/
theorem windowInterval_eq_filtered (M p h N : ℕ) (hp : 0 < p)
    (hM : (N + h) / p < M) :
    windowInterval M p h N =
      (Finset.Icc 1 ((N + h) / p)).filter (fun m => h < p * m) := by
  ext m
  rw [mem_windowInterval M p h N m hp]
  simp only [Finset.mem_filter, Finset.mem_Icc]
  have hdiv : m ≤ (N + h) / p ↔ p * m ≤ N + h := by
    simpa only [Nat.mul_comm] using
      (Nat.le_div_iff_mul_le hp : m ≤ (N + h) / p ↔ m * p ≤ N + h)
  constructor
  · rintro ⟨hmM, hmlo, hmhi⟩
    have hmpos : 1 ≤ m := by
      by_contra hz
      have : m = 0 := by omega
      simp [this] at hmlo
    exact ⟨⟨hmpos, hdiv.mpr (by omega)⟩, hmlo⟩
  · rintro ⟨⟨_, hmhi⟩, hmlo⟩
    exact ⟨hmhi.trans_lt hM, hmlo, by have := hdiv.mp hmhi; omega⟩

/-- e(alpha*n), with the exact real-cast convention of the inspected upstream source. -/
def phase (α : ℝ) (n : ℕ) : ℂ :=
  Complex.exp (((2 * Real.pi * α * (n : ℝ) : ℝ) : ℂ) * Complex.I)

@[simp] theorem norm_phase (α : ℝ) (n : ℕ) : ‖phase α n‖ = 1 := by
  simp [phase, Complex.norm_exp]

/-- The lower window guard pays for natural subtraction; it is not erased. -/
theorem phase_mul_sub (α : ℝ) (A m k : ℕ) (hk : k ≤ A * m) :
    phase α (A * m - k) = phase (-α) k * phase (α * (A : ℝ)) m := by
  unfold phase
  rw [← Complex.exp_add]
  congr 1
  simp only [Nat.cast_sub hk, Nat.cast_mul]
  push_cast
  ring

/-- Prime-first finite bilinear operator; the next theorem exposes upstream summation order. -/
def bilinearWindow (P : Finset ℕ) (M H d : ℕ)
    (a c : ℕ → ℂ) (α : ℝ) (k : ℕ) : ℂ :=
  ∑ p ∈ P, ∑ m ∈ windowInterval M (d * p) k H,
    a m * c p * phase (α * (p : ℝ)) m

/-- An exact formula with the original outer range M and conditional window term. -/
theorem bilinearWindow_upstream_order (P : Finset ℕ) (M H d : ℕ)
    (a c : ℕ → ℂ) (α : ℝ) (k : ℕ) :
    bilinearWindow P M H d a c α k =
      ∑ m ∈ Finset.range M, a m * ∑ p ∈ P,
        if m ∈ windowInterval M (d * p) k H then c p * phase (α * (p : ℝ)) m else 0 := by
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  unfold bilinearWindow
  apply Finset.sum_congr rfl
  intro p _
  have hs : (Finset.range M).filter (fun m => m ∈ windowInterval M (d * p) k H) =
      windowInterval M (d * p) k H := by
    ext m
    simp only [Finset.mem_filter]
    exact ⟨And.right, fun hm => ⟨windowInterval_subset_range M (d * p) k H hm, hm⟩⟩
  rw [← hs, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro m _
  split_ifs <;> ring

/-- The shifted input is not assumed multiplicative or independent of the prime. -/
def shiftedWindow (P : Finset ℕ) (M H d : ℕ)
    (a c f : ℕ → ℂ) (k : ℕ) : ℂ :=
  ∑ p ∈ P, ∑ m ∈ windowInterval M (d * p) k H,
    a m * c p * f (d * p * m - k)

/-- Exact phase separation, including dilation in the frequency and origin phase. -/
theorem shiftedWindow_phase (P : Finset ℕ) (M H d : ℕ)
    (hd : 0 < d) (hP : ∀ p ∈ P, 0 < p) (a c : ℕ → ℂ) (α : ℝ) (k : ℕ) :
    shiftedWindow P M H d a c (phase α) k =
      phase (-α) k * bilinearWindow P M H d a c (α * (d : ℝ)) k := by
  unfold shiftedWindow bilinearWindow
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p hp
  apply Finset.sum_congr rfl
  intro m hm
  have hk := ((mem_windowInterval M (d * p) k H m (Nat.mul_pos hd (hP p hp))).mp hm).2.1.le
  rw [phase_mul_sub α (d * p) m k hk]
  simp only [Nat.cast_mul]
  rw [show α * ((d : ℝ) * (p : ℝ)) = (α * (d : ℝ)) * (p : ℝ) by ring]
  ring

/-- Finite synthesis only; no assertion about approximation quality or Fourier inversion. -/
def phaseSynthesis {ι : Type*} (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ) (n : ℕ) : ℂ :=
  ∑ i ∈ S, b i * phase (α i) n

theorem shiftedWindow_const_mul (P : Finset ℕ) (M H d : ℕ)
    (a c f : ℕ → ℂ) (k : ℕ) (z : ℂ) :
    shiftedWindow P M H d a c (fun n => z * f n) k =
      z * shiftedWindow P M H d a c f k := by
  unfold shiftedWindow
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p _
  apply Finset.sum_congr rfl
  intro m _
  ring

theorem shiftedWindow_sum {ι : Type*} (S : Finset ι) (F : ι → ℕ → ℂ)
    (P : Finset ℕ) (M H d : ℕ) (a c : ℕ → ℂ) (k : ℕ) :
    shiftedWindow P M H d a c (fun n => ∑ i ∈ S, F i n) k =
      ∑ i ∈ S, shiftedWindow P M H d a c (F i) k := by
  unfold shiftedWindow
  simp_rw [Finset.mul_sum]
  calc
    _ = ∑ p ∈ P, ∑ i ∈ S, ∑ m ∈ windowInterval M (d * p) k H,
        a m * c p * F i (d * p * m - k) := by
      apply Finset.sum_congr rfl
      intro p _
      exact Finset.sum_comm
    _ = _ := Finset.sum_comm

/-- An exact finite superposition of the inspected bilinear window, not an operator analogy. -/
theorem shiftedWindow_synthesis {ι : Type*} (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ)
    (P : Finset ℕ) (M H d : ℕ) (hd : 0 < d) (hP : ∀ p ∈ P, 0 < p)
    (a c : ℕ → ℂ) (k : ℕ) :
    shiftedWindow P M H d a c (phaseSynthesis S b α) k =
      ∑ i ∈ S, b i * phase (-α i) k * bilinearWindow P M H d a c (α i * (d : ℝ)) k := by
  unfold phaseSynthesis
  rw [shiftedWindow_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [shiftedWindow_const_mul, shiftedWindow_phase P M H d hd hP]
  ring

/-- Every synthesis coefficient is charged; no major-arc frequency is silently removed. -/
theorem norm_synthesis_le {ι : Type*} (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ)
    (P : Finset ℕ) (M H d : ℕ) (hd : 0 < d) (hP : ∀ p ∈ P, 0 < p)
    (a c : ℕ → ℂ) (k : ℕ) (E : ι → ℝ)
    (hE : ∀ i ∈ S, ‖bilinearWindow P M H d a c (α i * (d : ℝ)) k‖ ≤ E i) :
    ‖shiftedWindow P M H d a c (phaseSynthesis S b α) k‖ ≤
      ∑ i ∈ S, ‖b i‖ * E i := by
  rw [shiftedWindow_synthesis S b α P M H d hd hP]
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro i hi
  simp only [norm_mul, norm_phase, mul_one]
  exact mul_le_mul_of_nonneg_left (hE i hi) (norm_nonneg _)

/-- The exact coefficient mass in a single source window. -/
def windowMass (P : Finset ℕ) (M H d : ℕ) (a c : ℕ → ℂ) (k : ℕ) : ℝ :=
  ∑ p ∈ P, ∑ m ∈ windowInterval M (d * p) k H, ‖a m‖ * ‖c p‖

theorem windowMass_nonneg (P : Finset ℕ) (M H d : ℕ) (a c : ℕ → ℂ) (k : ℕ) :
    0 ≤ windowMass P M H d a c k := by
  unfold windowMass
  exact Finset.sum_nonneg (fun _ _ => Finset.sum_nonneg
    (fun _ _ => mul_nonneg (norm_nonneg _) (norm_nonneg _)))

/-- Approximation error is paid in the actual coefficient measure and ordinary input window. -/
theorem norm_shiftedWindow_le_mass (P : Finset ℕ) (M H d : ℕ)
    (hd : 0 < d) (hP : ∀ p ∈ P, 0 < p) (a c f : ℕ → ℂ) (k : ℕ)
    (ε : ℝ) (hf : ∀ n : ℕ, 1 ≤ n → n ≤ H → ‖f n‖ ≤ ε) :
    ‖shiftedWindow P M H d a c f k‖ ≤ ε * windowMass P M H d a c k := by
  unfold shiftedWindow windowMass
  simp_rw [Finset.mul_sum]
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro p hp
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro m hm
  have hw := (mem_windowInterval M (d * p) k H m (Nat.mul_pos hd (hP p hp))).mp hm
  have hb := hf (d * p * m - k) (by omega) (by omega)
  rw [norm_mul, norm_mul]
  simpa only [mul_comm ε] using
    mul_le_mul_of_nonneg_left hb (mul_nonneg (norm_nonneg _) (norm_nonneg _))

/-- A window-by-window estimate is not an averaged-origin theorem for free. -/
theorem weighted_origins_bound (K : Finset ℕ) (w F : ℕ → ℂ) (R : ℝ)
    (hw : ∀ k ∈ K, ‖w k‖ ≤ R) :
    ‖∑ k ∈ K, w k * F k‖ ≤ R * ∑ k ∈ K, ‖F k‖ := by
  apply (norm_sum_le _ _).trans
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro k hk
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_right (hw k hk) (norm_nonneg _)

end GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis
