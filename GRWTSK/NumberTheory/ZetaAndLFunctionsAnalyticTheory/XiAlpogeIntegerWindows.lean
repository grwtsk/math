/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Integer sampling on a three-halves power window

At an integer start, the floor of a real point stays inside the window.
Consequently a one-sided local comparison for a real observation, together
with an integer bound on every member of the same window, transfers the
bound to the entire real window with explicit exponent slack. A separate
rounding lemma exhibits the weaker power window always retained when the
original real start has to be rounded **up**. Rounding down instead retains the
same exponent when the single new sample can be paid for by a left-edge bound.
-/

namespace GRWTSK.XiAlpogeIntegerWindows

/-- Square-root-free integer endpoint comparison for a three-halves window. -/
theorem mem_window_iff (M n : ℕ) :
    n ^ 2 ≤ M ^ 3 ↔ (n : ℝ) ≤ (M : ℝ) ^ (3/2 : ℝ) := by
  have he : ((M : ℝ) ^ (3/2 : ℝ)) ^ 2 = (M : ℝ) ^ 3 := by
    rw [← Real.rpow_mul_natCast (Nat.cast_nonneg M)]
    norm_num
  have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  have hm : 0 ≤ (M : ℝ) ^ (3/2 : ℝ) := Real.rpow_nonneg (Nat.cast_nonneg M) _
  rw [← sq_le_sq₀ hn hm, he]
  exact_mod_cast Iff.rfl

/-- The floor is in the very same window and no further than one from the sample. -/
theorem floor_in_window {M : ℕ} {x : ℝ} (hMx : (M : ℝ) ≤ x)
    (hx : x ≤ (M : ℝ) ^ (3/2 : ℝ)) :
    M ≤ ⌊x⌋₊ ∧ ⌊x⌋₊ ^ 2 ≤ M ^ 3 ∧ (⌊x⌋₊ : ℝ) ≤ x ∧ x < (⌊x⌋₊ : ℝ) + 1 := by
  have hf := Nat.floor_le ((Nat.cast_nonneg M).trans hMx)
  exact ⟨Nat.le_floor hMx, (mem_window_iff _ _).mpr (hf.trans hx), hf,
    Nat.lt_floor_add_one x⟩

/-- A cofinal family of integer windows feeds full real windows. A one-sided
rounding error is charged against the stated power allowance. -/
theorem real_windows_of_integer_windows
    (G E : ℝ → ℝ) {theta eta : ℝ} (htheta : 0 ≤ theta) {M0 : ℕ}
    (hint : ∀ L : ℕ, ∃ M ≥ L, ∀ n : ℕ, M ≤ n → n^2 ≤ M^3 → G n ≤ (n : ℝ)^theta)
    (hlocal : ∀ n : ℕ, M0 ≤ n → ∀ x : ℝ, (n : ℝ) ≤ x → x < (n : ℝ)+1 →
      G x ≤ G n + E x)
    (habsorb : ∀ x : ℝ, (M0 : ℝ) ≤ x → E x ≤ x^(theta+eta) - x^theta) :
    ∀ y : ℝ, ∃ M : ℕ, y ≤ (M : ℝ) ∧
      ∀ x : ℝ, (M : ℝ) ≤ x → x ≤ (M : ℝ)^(3/2 : ℝ) → G x ≤ x^(theta+eta) := by
  intro y
  obtain ⟨M, hM, hgrid⟩ := hint (max ⌈y⌉₊ M0)
  have hstart : M0 ≤ M := (Nat.le_max_right _ _).trans hM
  have habove : ⌈y⌉₊ ≤ M := (Nat.le_max_left _ _).trans hM
  refine ⟨M, (Nat.le_ceil y).trans (by exact_mod_cast habove), ?_⟩
  intro x hMx hx
  obtain ⟨hMn, hend, hnx, hxn⟩ := floor_in_window hMx hx
  have hl := hlocal ⌊x⌋₊ (hstart.trans hMn) x hnx hxn
  have hi := hgrid ⌊x⌋₊ hMn hend
  have hp := Real.rpow_le_rpow (Nat.cast_nonneg ⌊x⌋₊) hnx htheta
  have he := habsorb x ((show (M0 : ℝ) ≤ M by exact_mod_cast hstart).trans hMx)
  linarith

/-- Rounding a real start upward gives an integer start at no extra cost if
the retained power is reduced from 3/2 to 4/3. -/
theorem rounded_start_endpoint {Y : ℝ} (hY : 4096 ≤ Y) :
    (⌈Y⌉₊ : ℝ)^(4/3 : ℝ) ≤ Y^(3/2 : ℝ) := by
  have hy : 1 ≤ Y := by linarith
  have hy0 : 0 ≤ Y := by linarith
  have hm : (⌈Y⌉₊ : ℝ) ≤ 2*Y := by linarith [Nat.ceil_lt_add_one hy0]
  have hcoef : (2 : ℝ)^(4/3 : ℝ) ≤ 4 := by
    have h := Real.rpow_le_rpow_of_exponent_le (x := (2 : ℝ)) (by norm_num)
      (show (4/3 : ℝ) ≤ 2 by norm_num)
    norm_num at h ⊢
    exact h
  have hy6 : (4 : ℝ) ≤ Y^(1/6 : ℝ) := by
    apply (Real.rpow_le_rpow_iff (by norm_num) (Real.rpow_nonneg hy0 _) (by norm_num : 0 < (6 : ℝ))).mp
    rw [← Real.rpow_mul hy0]
    norm_num
    exact hY
  calc
    _ ≤ (2*Y)^(4/3 : ℝ) := Real.rpow_le_rpow (Nat.cast_nonneg _) hm (by norm_num)
    _ = (2 : ℝ)^(4/3 : ℝ) * Y^(4/3 : ℝ) := Real.mul_rpow (by norm_num) hy0
    _ ≤ Y^(1/6 : ℝ)*Y^(4/3 : ℝ) :=
      mul_le_mul_of_nonneg_right (hcoef.trans hy6) (Real.rpow_nonneg hy0 _)
    _ = Y^(3/2 : ℝ) := by rw [← Real.rpow_add (by linarith : 0 < Y)]; norm_num

/-- Every cofinal family of full real 3/2-windows gives cofinal pure integer
4/3-windows on exactly the same property, with no observation errors. -/
theorem integer_windows_of_real_windows (P : ℝ → Prop)
    (h : ∀ y : ℝ, ∃ Y ≥ y, ∀ x : ℝ, Y ≤ x → x ≤ Y^(3/2 : ℝ) → P x) :
    ∀ L : ℕ, ∃ M ≥ L, ∀ n : ℕ, M ≤ n → n^3 ≤ M^4 → P n := by
  intro L
  obtain ⟨Y, hY, hwin⟩ := h (max 4096 (L : ℝ))
  have hy := (le_max_left _ _).trans hY
  have hl := (le_max_right _ _).trans hY
  have hc := Nat.le_ceil Y
  refine ⟨⌈Y⌉₊, ?_, ?_⟩
  · exact_mod_cast hl.trans hc
  · intro n hn hp
    apply hwin
    · exact hc.trans (by exact_mod_cast hn)
    · refine le_trans ?_ (rounded_start_endpoint hy)
      apply (Real.rpow_le_rpow_iff (Nat.cast_nonneg _) (Real.rpow_nonneg (Nat.cast_nonneg _) _)
        (by norm_num : (0 : ℝ) < 3)).mp
      rw [← Real.rpow_mul (Nat.cast_nonneg _)]
      norm_num
      exact_mod_cast hp

/-- Rounding the real start down retains the full 3/2 exponent. Only the new
left endpoint can be outside the given window. The first hypothesis on
powers budgets the change of abscissa and the one-sided observation error
there, and the other integers already satisfy the original estimate. -/
theorem same_power_integer_windows_of_real_windows
    (G E : ℝ → ℝ) {theta eta : ℝ} (heta : 0 ≤ eta) {M0 : ℕ}
    (h : ∀ y : ℝ, ∃ Y ≥ y, ∀ x : ℝ, Y ≤ x → x ≤ Y^(3/2 : ℝ) → G x ≤ x^theta)
    (hlocal : ∀ n : ℕ, M0 ≤ n → ∀ x : ℝ, (n : ℝ) ≤ x → x < (n : ℝ)+1 →
      G n ≤ G x + E x)
    (habsorb : ∀ n : ℕ, M0 ≤ n → ∀ x : ℝ, (n : ℝ) ≤ x → x < (n : ℝ)+1 →
      x^theta + E x ≤ (n : ℝ)^(theta+eta)) :
    ∀ L : ℕ, ∃ M ≥ L, ∀ n : ℕ, M ≤ n → n^2 ≤ M^3 → G n ≤ (n : ℝ)^(theta+eta) := by
  intro L
  let A := max (max L M0) 1
  obtain ⟨Y, hY, hwin⟩ := h (A : ℝ)
  have ha : A ≤ ⌊Y⌋₊ := Nat.le_floor hY
  have hL : L ≤ ⌊Y⌋₊ := ((Nat.le_max_left _ _).trans (Nat.le_max_left _ _)).trans ha
  have h0 : M0 ≤ ⌊Y⌋₊ := ((Nat.le_max_right _ _).trans (Nat.le_max_left _ _)).trans ha
  have h1 : 1 ≤ ⌊Y⌋₊ := (Nat.le_max_right _ _).trans ha
  have hf := Nat.floor_le ((Nat.cast_nonneg A).trans hY)
  have hf' := Nat.lt_floor_add_one Y
  have hY1 : 1 ≤ Y := (show (1 : ℝ) ≤ ⌊Y⌋₊ by exact_mod_cast h1).trans hf
  refine ⟨⌊Y⌋₊, hL, ?_⟩
  intro n hn hend
  rcases eq_or_lt_of_le hn with he | hlt
  · subst n
    have hys : Y ≤ Y^(3/2 : ℝ) := by
      simpa using Real.rpow_le_rpow_of_exponent_le hY1 (by norm_num : (1 : ℝ) ≤ 3/2)
    linarith [hlocal _ h0 _ hf hf', hwin Y le_rfl hys, habsorb _ h0 _ hf hf']
  · have hyN : Y ≤ (n : ℝ) := by
      have hn1 : (⌊Y⌋₊ : ℝ)+1 ≤ n := by exact_mod_cast Nat.succ_le_of_lt hlt
      exact hf'.le.trans hn1
    have hupper := ((mem_window_iff _ _).mp hend).trans
      (Real.rpow_le_rpow (Nat.cast_nonneg _) hf (by norm_num : (0 : ℝ) ≤ 3/2))
    exact (hwin n hyN hupper).trans
      (Real.rpow_le_rpow_of_exponent_le (hY1.trans hyN) (by linarith))

/-- A neighboring sample pays a fixed square-root observation error by any
strict power increment, uniformly on every sufficiently late unit interval. -/
theorem unit_sqrt_absorption {theta eta C : ℝ} (ht : 1/2 ≤ theta) (he : 0 < eta)
    (hC : 0 ≤ C) :
    ∃ M0 : ℕ, 1 ≤ M0 ∧ ∀ n : ℕ, M0 ≤ n → ∀ x : ℝ, (n : ℝ) ≤ x →
      x < (n : ℝ)+1 → x^theta + C*Real.sqrt x ≤ (n : ℝ)^(theta+eta) := by
  obtain ⟨R, hR⟩ := Filter.tendsto_atTop_atTop.mp (tendsto_rpow_atTop he)
    ((1+C)*(2:ℝ)^theta)
  refine ⟨max 1 ⌈R⌉₊, Nat.le_max_left _ _, ?_⟩
  intro n hn x hnx hx
  have h1 : 1 ≤ (n : ℝ) := by exact_mod_cast (Nat.le_max_left 1 ⌈R⌉₊).trans hn
  have hR' : R ≤ (n : ℝ) :=
    (Nat.le_ceil R).trans (by exact_mod_cast (Nat.le_max_right 1 ⌈R⌉₊).trans hn)
  have hs : Real.sqrt x ≤ x^theta := by
    rw [Real.sqrt_eq_rpow]
    exact Real.rpow_le_rpow_of_exponent_le (h1.trans hnx) ht
  have hpow : x^theta ≤ (2:ℝ)^theta * (n:ℝ)^theta := by
    rw [← Real.mul_rpow (by norm_num) (Nat.cast_nonneg _)]
    exact Real.rpow_le_rpow (by linarith) (by linarith) (by linarith)
  calc
    _ ≤ (1+C)*x^theta := by nlinarith [mul_le_mul_of_nonneg_left hs hC]
    _ ≤ (1+C)*((2:ℝ)^theta * (n:ℝ)^theta) :=
      mul_le_mul_of_nonneg_left hpow (by linarith)
    _ = ((1+C)*(2:ℝ)^theta) * (n:ℝ)^theta := by ring
    _ ≤ (n:ℝ)^eta * (n:ℝ)^theta :=
      mul_le_mul_of_nonneg_right (hR _ hR') (Real.rpow_nonneg (Nat.cast_nonneg _) _)
    _ = (n:ℝ)^(theta+eta) := by rw [← Real.rpow_add (by linarith : 0 < (n:ℝ)), add_comm]

end GRWTSK.XiAlpogeIntegerWindows
