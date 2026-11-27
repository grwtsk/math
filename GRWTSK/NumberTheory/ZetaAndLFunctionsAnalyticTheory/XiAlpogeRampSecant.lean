/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeFiniteRampScore
import Mathlib.Analysis.Convex.Deriv

/-!
# Secant upper bounds for the centered von Mangoldt ramp

The uncentered ramp is convex. Adding the quadratic x²/(2a) to the
centered ramp restores convexity on [a,∞) for a positive basepoint a.
This gives an upper bound between observations with an explicit quadratic
cost in their separation.
-/

noncomputable section
namespace GRWTSK.XiAlpogeRampSecant
open ArithmeticFunction XiAlpogeOrdinaryRamp XiAlpogeFiniteRampScore Set

private theorem ramp_summable (x : ℝ) :
    Summable (fun n : ℕ => vonMangoldt n * max (x / n - 1) 0) := by
  apply summable_of_ne_finset_zero (s := Finset.range (⌈x⌉₊+1))
  intro n hn
  have hN : ⌈x⌉₊ < n := by simpa using hn
  have hnpos : 0 < (n:ℝ) := by exact_mod_cast (Nat.zero_le _).trans_lt hN
  have hxn : x ≤ (n:ℝ) := (Nat.le_ceil x).trans (by exact_mod_cast hN.le)
  simp [max_eq_right (sub_nonpos.mpr ((div_le_one hnpos).mpr hxn))]

/-- The uncentered von Mangoldt ramp is convex on the entire real line. -/
theorem mangoldtRamp_convex : ConvexOn ℝ univ mangoldtRamp := by
  refine ⟨convex_univ, ?_⟩
  intro a _ b _ u v hu hv huv
  simp only [smul_eq_mul]
  unfold mangoldtRamp
  rw [← tsum_mul_left, ← tsum_mul_left, ← ((ramp_summable a).mul_left u).tsum_add
    ((ramp_summable b).mul_left v)]
  apply Summable.tsum_le_tsum _ (ramp_summable _) (((ramp_summable a).mul_left u).add
    ((ramp_summable b).mul_left v))
  intro n
  let m := max (a/(n:ℝ)-1) 0
  let k := max (b/(n:ℝ)-1) 0
  have hin : (u*a+v*b)/n-1 = u*(a/n-1)+v*(b/n-1) := by
    calc _ = (u*a+v*b)/n-(u+v) := by rw [huv]
         _ = _ := by ring
  have hmax : max ((u*a+v*b)/n-1) 0 ≤ u*m + v*k := by
    apply max_le
    · rw [hin]
      exact add_le_add (mul_le_mul_of_nonneg_left (le_max_left _ _) hu)
        (mul_le_mul_of_nonneg_left (le_max_left _ _) hv)
    · exact add_nonneg (mul_nonneg hu (le_max_right _ _)) (mul_nonneg hv (le_max_right _ _))
  calc _ ≤ vonMangoldt n*(u*m+v*k) := mul_le_mul_of_nonneg_left hmax vonMangoldt_nonneg
       _ = _ := by dsimp [m,k]; ring

private def quadraticCenter (a x : ℝ) :=
  x^2/(2*a) - x*(Real.log x - 1 - Real.eulerMascheroniConstant)

private theorem quadraticCenter_deriv {a x : ℝ} (ha : 0 < a) (hx : 0 < x) :
    HasDerivAt (quadraticCenter a) (x/a - Real.log x + Real.eulerMascheroniConstant) x := by
  have hd := (((hasDerivAt_id x).pow 2).div_const (2*a)).sub ((hasDerivAt_id x).mul
    (((Real.hasDerivAt_log hx.ne').sub_const 1).sub_const Real.eulerMascheroniConstant))
  convert hd using 1
  · rfl
  · simp
    field_simp
    ring

private theorem quadraticCenter_convex {a : ℝ} (ha : 0 < a) :
    ConvexOn ℝ (Ici a) (quadraticCenter a) := by
  apply convexOn_of_hasDerivWithinAt2_nonneg (f' := fun x => x/a - Real.log x + Real.eulerMascheroniConstant)
    (f'' := fun x => 1/a-1/x) (convex_Ici a)
  · exact fun x hx => (quadraticCenter_deriv ha (ha.trans_le hx)).continuousAt.continuousWithinAt
  · intro x hx
    exact (quadraticCenter_deriv ha (ha.trans_le (interior_subset hx))).hasDerivWithinAt
  · intro x hx
    have hx0 := ha.trans_le (show a ≤ x from interior_subset hx)
    have hd := (((hasDerivAt_id x).div_const a).sub (Real.hasDerivAt_log hx0.ne')).add_const
      Real.eulerMascheroniConstant
    simpa [one_div] using hd.hasDerivWithinAt (s := interior (Ici a))
  · intro x hx
    exact sub_nonneg.mpr (one_div_le_one_div_of_le ha (interior_subset hx))

/-- The actual centered ramp plus its local quadratic correction is convex. -/
theorem centeredRamp_add_quadratic_convex {a : ℝ} (ha : 0 < a) :
    ConvexOn ℝ (Ici a) (fun x => centeredRamp x + x^2/(2*a)) := by
  have h := (mangoldtRamp_convex.subset (subset_univ _) (convex_Ici a)).add (quadraticCenter_convex ha)
  convert h using 1
  funext x
  simp [Pi.add_apply, centeredRamp, quadraticCenter]
  ring

/-- Two observations control the centered ramp everywhere between them. -/
theorem centeredRamp_le_secant {a b x : ℝ} (ha : 0 < a) (hax : a ≤ x) (hxb : x ≤ b) :
    centeredRamp x ≤ max (centeredRamp a) (centeredRamp b) + (b-a)^2/(8*a) := by
  have hab := hax.trans hxb
  rcases eq_or_lt_of_le hab with rfl | hab'
  · obtain rfl := le_antisymm hax hxb
    simp
  let u := (b-x)/(b-a)
  let v := (x-a)/(b-a)
  have hba : 0 < b-a := sub_pos.mpr hab'
  have hu : 0 ≤ u := div_nonneg (sub_nonneg.mpr hxb) hba.le
  have hv : 0 ≤ v := div_nonneg (sub_nonneg.mpr hax) hba.le
  have huv : u+v=1 := by dsimp [u,v]; field_simp; ring
  have hmix : u*a + v*b = x := by dsimp [u,v]; field_simp; ring
  have hc := (centeredRamp_add_quadratic_convex ha).2
    (show a ∈ Ici a from mem_Ici.mpr (le_refl a)) (show b ∈ Ici a from hab) hu hv huv
  simp only [smul_eq_mul, hmix] at hc
  let M := max (centeredRamp a) (centeredRamp b)
  have hM : u * centeredRamp a + v * centeredRamp b ≤ M := by
    calc _ ≤ u*M+v*M := add_le_add (mul_le_mul_of_nonneg_left (le_max_left _ _) hu)
             (mul_le_mul_of_nonneg_left (le_max_right _ _) hv)
         _ = M := by rw [← add_mul, huv, one_mul]
  have hvar : u*(a^2/(2*a)) + v*(b^2/(2*a)) - x^2/(2*a) = (x-a)*(b-x)/(2*a) := by
    dsimp [u,v]
    field_simp
    ring
  have hvar' : (x-a)*(b-x)/(2*a) ≤ (b-a)^2/(8*a) := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
    nlinarith only [mul_nonneg (sq_nonneg (2*x-a-b)) ha.le]
  change centeredRamp x ≤ M + _
  linarith only [hc,hM,hvar,hvar']

end GRWTSK.XiAlpogeRampSecant
