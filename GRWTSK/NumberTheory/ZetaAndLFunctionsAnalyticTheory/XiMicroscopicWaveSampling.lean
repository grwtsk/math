/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-! Shift filters for a finite head of the Bessel-smoothed arithmetic wave. -/
namespace GRWTSK.XiMicroscopicWaveSampling

/-- Apply the product of the shift-minus-node factors to a sampled wave. -/
noncomputable def shiftFilter : List ℂ → (ℕ → ℂ) → ℕ → ℂ
  | [], wave, k => wave k
  | u :: rest, wave, k =>
    shiftFilter rest wave (k + 1) - u * shiftFilter rest wave k

/-- Exact action on a finite exponential sum, with arbitrary complex nodes and amplitudes. -/
theorem shiftFilter_modes {ι : Type*} (s : Finset ι) (w z : ι → ℂ)
    (nodes : List ℂ) (n : ℕ) :
    shiftFilter nodes (fun k => ∑ i ∈ s, w i * z i ^ k) n =
      ∑ i ∈ s, (w i * z i ^ n) * (nodes.map (fun u => z i - u)).prod := by
  induction nodes generalizing n with
  | nil => simp [shiftFilter]
  | cons u rest ih =>
    rw [shiftFilter, ih, ih, Finset.mul_sum, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro i _
    simp only [pow_succ, List.map_cons, List.prod_cons]
    ring

/-- Noise and sample bounds propagate over exactly length+1 consecutive samples. -/
theorem shiftFilter_bound (nodes : List ℂ) (wave : ℕ → ℂ) (n : ℕ) (M : ℝ)
    (h : ∀ k ≤ nodes.length, ‖wave (n + k)‖ ≤ M) :
    ‖shiftFilter nodes wave n‖ ≤ (nodes.map (fun u => 1 + ‖u‖)).prod * M := by
  induction nodes generalizing n with
  | nil => simpa [shiftFilter] using h 0 (by simp)
  | cons u rest ih =>
    have h0 : ∀ k ≤ rest.length, ‖wave (n + k)‖ ≤ M := by
      intro k hk
      exact h k (by simp; omega)
    have h1 : ∀ k ≤ rest.length, ‖wave ((n+1) + k)‖ ≤ M := by
      intro k hk
      simpa [Nat.add_assoc, Nat.add_comm 1 k] using h (k+1) (by simp; omega)
    rw [shiftFilter]
    calc
      _ ≤ ‖shiftFilter rest wave (n+1)‖ + ‖u * shiftFilter rest wave n‖ :=
        norm_sub_le _ _
      _ ≤ _ := by
        rw [norm_mul, List.map_cons, List.prod_cons, add_mul, one_mul, add_mul, mul_assoc]
        exact add_le_add (ih (n+1) h1) (mul_le_mul_of_nonneg_left (ih n h0) (norm_nonneg _))

/-- The measured window bounds one mode without separation assumptions among the others. -/
theorem mode_le_window {ι : Type*} (s : Finset ι) (w z : ι → ℂ) (anchor : ι)
    (ha : anchor ∈ s) (nodes : List ℂ)
    (hkill : ∀ i ∈ s, i ≠ anchor → z i ∈ nodes)
    (wave : ℕ → ℂ) (n : ℕ) (M error : ℝ)
    (hsamples : ∀ k ≤ nodes.length, ‖wave (n + k)‖ ≤ M)
    (htail : ∀ k ≤ nodes.length, ‖(∑ i ∈ s, w i * z i ^ (n + k)) - wave (n + k)‖ ≤ error) :
    ‖(w anchor * z anchor ^ n) * (nodes.map (fun u => z anchor - u)).prod‖ ≤
      (nodes.map (fun u => 1 + ‖u‖)).prod * (M + error) := by
  have hh : ∀ k ≤ nodes.length, ‖∑ i ∈ s, w i * z i ^ (n + k)‖ ≤ M + error := by
    intro k hk
    calc
      _ ≤ ‖(∑ i ∈ s, w i * z i ^ (n + k)) - wave (n + k)‖ + ‖wave (n + k)‖ :=
        norm_le_norm_sub_add _ _
      _ ≤ _ := by linarith [htail k hk, hsamples k hk]
  have hb := shiftFilter_bound nodes (fun k => ∑ i ∈ s, w i * z i ^ k) n (M + error) hh
  rw [shiftFilter_modes, Finset.sum_eq_single anchor] at hb
  · exact hb
  · intro i hi hia
    have hzero : (0 : ℂ) ∈ nodes.map (fun u => z i - u) :=
      List.mem_map.mpr ⟨z i, hkill i hi hia, sub_self _⟩
    simp [List.prod_eq_zero hzero]
  · exact fun h => (h ha).elim

end GRWTSK.XiMicroscopicWaveSampling
