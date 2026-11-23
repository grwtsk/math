/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Tactic

/-! # The exact capacity of the three-site odd Frobenius orbit -/
namespace GRWTSK.NumberTheory.AlpogeOddOrbitCapacity

def totals (p a b c : ℝ) : Set ℝ :=
  {v | ∃ x y z : ℝ, 0 ≤ x ∧ 0 ≤ y ∧ 0 ≤ z ∧
    p*x+z ≤ a ∧ p*y+x ≤ b ∧ p*z+y ≤ c ∧ x+y+z=v}

theorem rotate (p a b c : ℝ) : totals p b c a = totals p a b c := by
  ext v
  constructor
  · rintro ⟨x,y,z,hx,hy,hz,ha,hb,hc,hv⟩
    exact ⟨z,x,y,hz,hx,hy,hc,ha,hb,by linarith⟩
  · rintro ⟨x,y,z,hx,hy,hz,ha,hb,hc,hv⟩
    exact ⟨y,z,x,hy,hz,hx,hb,hc,ha,by linarith⟩

theorem uniform_upper {p a b c v : ℝ} (hp : 1 < p) (h : v ∈ totals p a b c) :
    v ≤ (a+b+c)/(p+1) := by
  obtain ⟨x,y,z,_,_,_,hx,hy,hz,rfl⟩ := h
  apply (le_div_iff₀ (by linarith : 0 < p+1)).2
  linarith

theorem star_upper {p a b c v : ℝ} (hp : 1 < p) (h : v ∈ totals p a b c) :
    v ≤ b+c/p := by
  obtain ⟨x,y,z,_,hy,_,_,h₁,h₂,rfl⟩ := h
  have hpos : 0 < p := by linarith
  have h₃ := (le_div_iff₀ hpos).2 (show z*p ≤ c by linarith)
  nlinarith [mul_nonneg (sub_nonneg.mpr hp.le) hy]

theorem star_attains {p a b c : ℝ} (hp : 1 < p) (hb : 0 ≤ b) (hc : 0 ≤ c)
    (h : p*b+c/p ≤ a) : IsGreatest (totals p a b c) (b+c/p) := by
  have hpos : 0 < p := by linarith
  refine ⟨⟨b,0,c/p,hb,le_rfl,div_nonneg hc hpos.le,h,by simp,?_,by ring⟩,
    fun _ => star_upper hp⟩
  field_simp <;> simp

theorem balanced_attains {p a b c : ℝ} (hp : 1 < p)
    (ha : a ≤ p*b+c/p) (hb : b ≤ p*c+a/p) (hc : c ≤ p*a+b/p) :
    IsGreatest (totals p a b c) ((a+b+c)/(p+1)) := by
  have hpos : 0 < p := by linarith
  have hd : 0 < p^3+1 := by positivity
  have h₁ := (le_div_iff₀ hpos).1 (show a-p*b ≤ c/p by linarith)
  have h₂ := (le_div_iff₀ hpos).1 (show b-p*c ≤ a/p by linarith)
  have h₃ := (le_div_iff₀ hpos).1 (show c-p*a ≤ b/p by linarith)
  refine ⟨⟨(p^2*a-p*c+b)/(p^3+1),(p^2*b-p*a+c)/(p^3+1),
    (p^2*c-p*b+a)/(p^3+1),div_nonneg (by nlinarith) hd.le,
    div_nonneg (by nlinarith) hd.le,div_nonneg (by nlinarith) hd.le,?_,?_,?_,?_⟩,
    fun _ => uniform_upper hp⟩
  · apply le_of_eq; field_simp; ring
  · apply le_of_eq; field_simp; ring
  · apply le_of_eq; field_simp; ring
  · have : 0 < p+1 := by linarith
    field_simp; ring

/-- The original LP, including all zero-demand and chamber-boundary cases. -/
theorem exact_three (p a b c : ℝ) (hp : 1 < p) (ha : 0 ≤ a) (hb : 0 ≤ b) (hc : 0 ≤ c) :
    sSup (totals p a b c) =
      min ((a+b+c)/(p+1)) (min (b+c/p) (min (c+a/p) (a+b/p))) := by
  have h₁ := star_attains (a := a) hp hb hc
  have h₂ := star_attains (a := b) hp hc ha
  have h₃ := star_attains (a := c) hp ha hb
  rw [rotate] at h₂
  rw [rotate p b c a, rotate] at h₃
  have h (v : ℝ) (hv : v ∈ totals p a b c) :
      v ≤ min ((a+b+c)/(p+1)) (min (b+c/p) (min (c+a/p) (a+b/p))) := by
    refine le_min (uniform_upper hp hv) (le_min (star_upper hp hv) (le_min ?_ ?_))
    · exact star_upper hp (by rwa [rotate p a b c] : v ∈ totals p b c a)
    · exact star_upper hp (by rwa [rotate p b c a, rotate] : v ∈ totals p c a b)
  by_cases A : p*b+c/p ≤ a
  · rw [(h₁ A).csSup_eq]; exact le_antisymm (h _ (h₁ A).1) ((min_le_right ..).trans (min_le_left ..))
  by_cases B : p*c+a/p ≤ b
  · rw [(h₂ B).csSup_eq]; exact le_antisymm (h _ (h₂ B).1)
      ((min_le_right ..).trans ((min_le_right ..).trans (min_le_left ..)))
  by_cases C : p*a+b/p ≤ c
  · rw [(h₃ C).csSup_eq]; exact le_antisymm (h _ (h₃ C).1)
      ((min_le_right ..).trans ((min_le_right ..).trans (min_le_right ..)))
  have H := balanced_attains hp (le_of_not_ge A) (le_of_not_ge B) (le_of_not_ge C)
  rw [H.csSup_eq]; exact le_antisymm (h _ H.1) (min_le_left ..)

end GRWTSK.NumberTheory.AlpogeOddOrbitCapacity
