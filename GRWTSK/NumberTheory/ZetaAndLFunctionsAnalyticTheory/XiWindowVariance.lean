import Mathlib.Tactic

/-! Real parts of the first three contour moments and the transverse
second moment. Merging two windows increases their combined centered energy. -/

namespace GRWTSK.XiWindowVariance

structure Moments where
  mass : ℝ
  first : ℝ
  second : ℝ

def centered (v : Moments) (x : ℝ) := v.second - 2*x*v.first + x^2*v.mass

def determinant (v : Moments) := v.mass*v.second-v.first^2

noncomputable def energy (v : Moments) := v.second-v.first^2/v.mass

theorem complete_square (v : Moments) (x : ℝ) :
    v.mass * centered v x = determinant v + (v.mass*x-v.first)^2 := by
  unfold centered determinant
  ring

theorem determinant_nonneg_iff {v : Moments} (h : 0 < v.mass) :
    0 ≤ determinant v ↔ ∀ x, 0 ≤ centered v x := by
  constructor
  · intro hd x
    have hb := complete_square v x
    have : 0 ≤ v.mass * centered v x := by nlinarith [sq_nonneg (v.mass*x-v.first)]
    exact nonneg_of_mul_nonneg_right this h
  · intro hc
    have hb := complete_square v (v.first/v.mass)
    have hx : v.mass*(v.first/v.mass)=v.first := by field_simp
    rw [hx, sub_self, zero_pow (by decide), add_zero] at hb
    exact hb ▸ mul_nonneg h.le (hc _)

def merge (v u : Moments) : Moments :=
  ⟨v.mass+u.mass, v.first+u.first, v.second+u.second⟩

theorem merge_energy {v u : Moments} (hv : 0 < v.mass) (hu : 0 < u.mass) :
    energy (merge v u) - energy v - energy u =
      (v.mass*u.mass/(v.mass+u.mass))*(v.first/v.mass-u.first/u.mass)^2 := by
  unfold energy merge
  dsimp
  field_simp [hv.ne', hu.ne', (add_pos hv hu).ne']
  <;> ring

theorem midpoint_square_le {a b x : ℝ} (hl : a ≤ x) (hr : x ≤ b) :
    (x-(a+b)/2)^2 ≤ (b-a)^2/4 := by
  nlinarith [mul_nonneg (sub_nonneg.mpr hl) (sub_nonneg.mpr hr)]

noncomputable def stats {ι : Type*} (s : Finset ι) (w x y : ι → ℝ) : Moments :=
  ⟨∑ i ∈ s, w i, ∑ i ∈ s, w i*x i, ∑ i ∈ s, w i*((x i)^2-(y i)^2)⟩

theorem stats_centered {ι : Type*} (s : Finset ι) (w x y : ι → ℝ) (c : ℝ) :
    centered (stats s w x y) c = ∑ i ∈ s, w i*((x i-c)^2-(y i)^2) := by
  simp only [centered, stats, Finset.mul_sum, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  ring

end GRWTSK.XiWindowVariance
