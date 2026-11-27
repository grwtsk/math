/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Data.Nat.Find
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity

/-!
# Fourth-power samples inside a finite integer window

Clipping the consecutive fourth powers at the endpoints of the window
preserves a uniform square-root bound on squared spacing divided by the
left abscissa. This is the scale in the secant estimate for the zeta ramp.
-/

namespace GRWTSK.XiAlpogeFourthPowerMesh

private theorem fourth_bracket (n : ℕ) (hn : 0 < n) :
    ∃ k : ℕ, 0 < k ∧ k^4 ≤ n ∧ n < (k+1)^4 := by
  have hex : ∃ j : ℕ, n < (j+1)^4 :=
    ⟨n,(Nat.lt_succ_self n).trans_le (Nat.le_pow (by decide))⟩
  let k := Nat.find hex
  have hu : n < (k+1)^4 := Nat.find_spec hex
  have hk : 0 < k := by
    by_contra! h
    have : k = 0 := by omega
    simp [this] at hu
    omega
  refine ⟨k,hk,?_,hu⟩
  have h := Nat.find_min hex (m := k-1) (show k-1 < k by omega)
  simpa [show k-1+1=k by omega] using Nat.le_of_not_gt h

/-- For any integer n of a positive integer window, bracket it by boundary
points or fourth powers. The ratio and squared gap bounds are uniform. -/
theorem exists_clipped_fourth (M H n : ℕ) (hM : 0 < M) (hMn : M ≤ n) (hnH : n ≤ H) :
    ∃ k u v : ℕ, 0 < k ∧ M ≤ u ∧ u ≤ n ∧ n ≤ v ∧ v ≤ H ∧
      (u = M ∨ u = k^4) ∧ (v = H ∨ v = (k+1)^4) ∧ v ≤ 16*u ∧
      ((v:ℝ)-(u:ℝ))^2 ≤ 225*(u:ℝ)*Real.sqrt (n:ℝ) := by
  obtain ⟨k,hk,hkn,hnk⟩ := fourth_bracket n (hM.trans_le hMn)
  let u := max M (k^4)
  let v := min H ((k+1)^4)
  have hu : u ≤ n := max_le hMn hkn
  have hv : n ≤ v := le_min hnH hnk.le
  have hlu : k^4 ≤ u := le_max_right _ _
  have hvk : v ≤ (k+1)^4 := min_le_right _ _
  have hratio : (k+1)^4 ≤ 16*k^4 := by
    calc
      _ ≤ (2*k)^4 := Nat.pow_le_pow_left (by omega) 4
      _ = _ := by ring
  refine ⟨k,u,v,hk,le_max_left _ _,hu,hv,min_le_left _ _,?_,?_,
    (hvk.trans hratio).trans (Nat.mul_le_mul_left _ hlu),?_⟩
  · exact max_choice _ _
  · exact min_choice _ _
  have hkR : (1:ℝ) ≤ k := by exact_mod_cast hk
  have h₁ : (k:ℝ) ≤ (k:ℝ)^2 := by nlinarith [mul_nonneg (sub_nonneg.mpr hkR) (Nat.cast_nonneg (α := ℝ) k)]
  have h₂ : (k:ℝ)^2 ≤ (k:ℝ)^3 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hkR) (sq_nonneg (k:ℝ))]
  have huR : (k:ℝ)^4 ≤ (u:ℝ) := by exact_mod_cast hlu
  have hvR : (v:ℝ) ≤ ((k:ℝ)+1)^4 := by exact_mod_cast hvk
  have hnR : (k:ℝ)^4 ≤ (n:ℝ) := by exact_mod_cast hkn
  have hup : (v:ℝ)-(u:ℝ) ≤ 15*(k:ℝ)^3 := by nlinarith
  have hnn : 0 ≤ (v:ℝ)-(u:ℝ) := sub_nonneg.mpr (by exact_mod_cast hu.trans hv)
  have hs : (k:ℝ)^2 ≤ Real.sqrt (n:ℝ) := by
    apply Real.le_sqrt_of_sq_le
    convert hnR using 1
    ring
  calc
    _ ≤ (15*(k:ℝ)^3)^2 := by gcongr
    _ = 225*((k:ℝ)^4*(k:ℝ)^2) := by ring
    _ ≤ 225*((u:ℝ)*Real.sqrt (n:ℝ)) := by gcongr
    _ = _ := by ring

end GRWTSK.XiAlpogeFourthPowerMesh
