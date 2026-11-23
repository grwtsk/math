/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Tactic

/-! Quantitative estimates for the phase and modulus of powers of a complex heat rate. -/
namespace GRWTSK.XiHeatSaddleBounds

open Real Set
noncomputable section

def phase (n t g d : ℝ) := 2*n*arctan (d/g)-2*t*g*d

def logRatio (n t a g d : ℝ) :=
  n*log ((g^2+d^2)/a^2)-t*(g^2-d^2-a^2)

theorem arctan_remainder {x : ℝ} (hx : 0 ≤ x) :
    0 ≤ x-arctan x ∧ x-arctan x ≤ x^3/3 := by
  refine ⟨sub_nonneg.mpr (arctan_le_self hx),?_⟩
  let f := fun u : ℝ => arctan u-u+u^3/3
  have hd (u : ℝ) : HasDerivAt f (1/(1+u^2)-1+u^2) u := by
    convert ((hasDerivAt_arctan u).sub (hasDerivAt_id u)).add (((hasDerivAt_id u).pow 3).div_const 3) using 1
    · rfl
    · simp <;> ring
  have mono : Monotone f := monotone_of_deriv_nonneg (fun u => (hd u).differentiableAt)
    (fun u => by rw [(hd u).deriv]; field_simp; nlinarith [sq_nonneg (u^2)])
  have h := mono hx
  simp [f] at h
  linarith

theorem phase_at_saddle {n t s g d : ℝ} (hn : 0 ≤ n) (ht : 0 ≤ t) (hs : 0 ≤ s)
    (hg : 0 < g) (hd : 0 ≤ d) (hu : d ≤ 1/2) (hns : n=t*s^2) :
    |phase n t g d| ≤ t * |g-s| * (1+s/g) + n/(12*g^3) := by
  have hr := arctan_remainder (div_nonneg hd hg.le)
  have hd3 : d^3 ≤ (1/2 : ℝ)^3 := pow_le_pow_left₀ hd hu 3
  have hM : (2*n)*(d/g-arctan (d/g)) ≤ n/(12*g^3) := by
    calc
      _ ≤ (2*n)*((d/g)^3/3) := mul_le_mul_of_nonneg_left hr.2 (by positivity)
      _ = (2*n/3)*d^3/g^3 := by ring
      _ ≤ (2*n/3)*(1/2)^3/g^3 := div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_left hd3 (by positivity)) (by positivity)
      _ = _ := by ring
  have he : phase n t g d = -(2*d*t*(g-s)*(1+s/g)) - (2*n)*(d/g-arctan (d/g)) := by
    unfold phase
    rw [hns]
    field_simp
    ring
  rw [he]
  calc
    _ ≤ |-(2*d*t*(g-s)*(1+s/g))|+|(2*n)*(d/g-arctan (d/g))| := abs_sub _ _
    _ ≤ _ := by
      rw [abs_neg,abs_of_nonneg (mul_nonneg (by positivity) hr.1)]
      simp only [abs_mul,abs_of_nonneg hd,abs_of_nonneg ht,abs_of_nonneg (by positivity : 0 ≤ 1+s/g)]
      norm_num
      nlinarith [mul_le_mul_of_nonneg_right (by linarith : 2*d ≤ 1)
        (mul_nonneg (mul_nonneg ht (abs_nonneg (g-s))) (by positivity : 0 ≤ 1+s/g))]

private theorem log_one_add_lower {y : ℝ} (hy : 0 ≤ y) : y-y^2/2 ≤ log (1+y) := by
  let f := fun x : ℝ => log (1+x)-x+x^2/2
  have hd (x : ℝ) (hx : 0 ≤ x) : HasDerivAt f ((1+x)⁻¹-1+x) x := by
    convert ((((hasDerivAt_id x).const_add 1).log (by linarith : 1+x ≠ 0)).sub
      (hasDerivAt_id x)).add (((hasDerivAt_id x).pow 2).div_const 2) using 1
    · rfl
    · simp [one_div] <;> ring
  have mono : MonotoneOn f (Ici 0) := monotoneOn_of_deriv_nonneg (convex_Ici _)
    (fun x hx => (hd x hx).continuousAt.continuousWithinAt)
    (fun x hx => (hd x (interior_subset hx)).differentiableAt.differentiableWithinAt)
    (fun x hx => by have hh : 0 ≤ x := interior_subset hx
                    rw [(hd x hh).deriv]
                    field_simp
                    nlinarith [sq_nonneg x])
  have h := mono (Set.mem_Ici.mpr (le_refl (0:ℝ))) (Set.mem_Ici.mpr hy) hy
  simp [f] at h
  linarith

private theorem log_split {a g : ℝ} (ha : 0 < a) (hg : 0 < g) (d : ℝ) :
    log ((g^2+d^2)/a^2) = 2*log (g/a)+log (1+(d/g)^2) := by
  have he : (g^2+d^2)/a^2 = (g/a)^2*(1+(d/g)^2) := by field_simp <;> ring
  rw [he,log_mul (by positivity) (by positivity),log_pow]
  norm_num

theorem logRatio_upper {n t a g : ℝ} (ha : 0 < a) (hg : 0 < g) (hn : 0 ≤ n)
    (ht : 0 ≤ t) (hN : n ≤ t*a^2) (hga : a ≤ g ∨ n=t*a^2) (d : ℝ) :
    logRatio n t a g d ≤ -t*(g-a)^2+(n/g^2+t)*d^2 := by
  have hlog := log_le_sub_one_of_pos (div_pos hg ha)
  have hcorr := log_le_sub_one_of_pos (by positivity : 0 < 1+(d/g)^2)
  have hmul : n*(g/a-1) ≤ (t*a^2)*(g/a-1) := by
    rcases hga with h|h
    · exact mul_le_mul_of_nonneg_right hN (sub_nonneg.mpr ((one_le_div ha).mpr h))
    · rw [h]
  unfold logRatio
  rw [log_split ha hg]
  have h1 := mul_le_mul_of_nonneg_left hlog hn
  have h2 := mul_le_mul_of_nonneg_left hcorr hn
  have he : (t*a^2)*(g/a-1)=t*a*(g-a) := by field_simp <;> ring
  rw [he] at hmul
  rw [div_pow] at h2 ⊢
  nlinarith only [h1, h2, hmul, show n*(d^2/g^2)=(n/g^2)*d^2 by ring]

theorem logRatio_lower {n t a g : ℝ} (ha : 0 < a) (hga : a ≤ g)
    (ht : 0 ≤ t) (hns : n=t*a^2) (d : ℝ) : -2*t*(g-a)^2 ≤ logRatio n t a g d := by
  have hg := ha.trans_le hga
  have hy : 0 ≤ g/a-1 := sub_nonneg.mpr ((one_le_div ha).mpr hga)
  have h := log_one_add_lower hy
  rw [show 1+(g/a-1)=g/a by ring] at h
  have hlog := log_nonneg (by nlinarith [sq_nonneg (d/g)] : 1 ≤ 1+(d/g)^2)
  have hlow := mul_le_mul_of_nonneg_left h (by positivity : 0 ≤ 2*(t*a^2))
  have he : 2*(t*a^2)*(g/a-1-(g/a-1)^2/2) = 2*t*a*(g-a)-t*(g-a)^2 := by field_simp <;> ring
  unfold logRatio
  rw [log_split ha hg,hns]
  rw [he] at hlow
  nlinarith [mul_nonneg (by positivity : 0 ≤ t*a^2) hlog,mul_nonneg ht (sq_nonneg d)]

end
end GRWTSK.XiHeatSaddleBounds
