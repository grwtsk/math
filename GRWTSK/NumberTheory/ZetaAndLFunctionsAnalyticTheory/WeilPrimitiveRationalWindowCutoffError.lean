/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowCodes

/-! # Transfer of multiplier errors through the primitive cubic window -/

set_option autoImplicit false

open Set Polynomial
open scoped Polynomial

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

private noncomputable def weight (T x : ℝ) : ℝ := x * (T ^ 2 - x ^ 2) ^ 3

private noncomputable def weightDeriv (T x : ℝ) : ℝ :=
  (T ^ 2 - x ^ 2) ^ 3 - 6 * x ^ 2 * (T ^ 2 - x ^ 2) ^ 2

private theorem hasDerivAt_weight (T x : ℝ) :
    HasDerivAt (weight T) (weightDeriv T x) x := by
  have h := (hasDerivAt_id x).mul
    (((hasDerivAt_const x (T ^ 2)).sub ((hasDerivAt_id x).pow 2)).pow 3)
  convert h using 1
  · rfl
  · simp [weightDeriv]
    ring

private theorem cutoff_bounds {T x : ℝ} (hT : 0 < T) (hx : x ∈ Icc (-T) T) :
    |weight T x| ≤ T ^ 7 ∧ |weightDeriv T x| ≤ 7 * T ^ 6 := by
  have hs : x ^ 2 ≤ T ^ 2 := sq_le_sq.mpr (by simpa [abs_of_pos hT] using abs_le.mpr hx)
  have hnonneg : 0 ≤ T ^ 2 - x ^ 2 := sub_nonneg.mpr hs
  have hgap : T ^ 2 - x ^ 2 ≤ T ^ 2 := sub_le_self _ (sq_nonneg _)
  have h3 : (T ^ 2 - x ^ 2) ^ 3 ≤ (T ^ 2) ^ 3 := pow_le_pow_left₀ hnonneg hgap _
  have h2 : (T ^ 2 - x ^ 2) ^ 2 ≤ (T ^ 2) ^ 2 := pow_le_pow_left₀ hnonneg hgap _
  constructor
  · rw [weight, abs_mul, abs_of_nonneg (pow_nonneg hnonneg _)]
    calc
      _ ≤ T * (T ^ 2) ^ 3 := mul_le_mul (abs_le.mpr hx) h3 (by positivity) hT.le
      _ = _ := by ring
  · have hb : 6 * x ^ 2 * (T ^ 2 - x ^ 2) ^ 2 ≤ 6 * T ^ 2 * (T ^ 2) ^ 2 := by
      gcongr
    rw [weightDeriv, abs_le]
    constructor <;> nlinarith [pow_nonneg hnonneg 3,
      show 0 ≤ 6 * x ^ 2 * (T ^ 2 - x ^ 2) ^ 2 by positivity]

/-- At a positive original window, a C¹ even multiplier and its odd derivative
witness admit simultaneous value and derivative approximation by the native
cutoff tests. The target on the window is the multiplier times the cubic weight. -/
theorem exists_rationalWindowTest_near_weighted_multiplier
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℝ} (hT : 0 < T) {g d : ℝ → ℝ}
    (hg : Function.Even g) (hd : Function.Odd d)
    (hder : ∀ x ∈ Icc (-T) T, HasDerivWithinAt g (d x) (Icc (-T) T) x)
    (hc : ContinuousOn d (Icc (-T) T)) {ε : ℝ} (hε : 0 < ε) :
    ∃ cs : List ℚ, ∀ x ∈ Icc (-T) T,
      |rationalWindowTest T cs x - x * (T ^ 2 - x ^ 2) ^ 3 * g x| < ε ∧
      |deriv (rationalWindowTest T cs) x -
        (((T ^ 2 - x ^ 2) ^ 3 - 6 * x ^ 2 * (T ^ 2 - x ^ 2) ^ 2) * g x +
          x * (T ^ 2 - x ^ 2) ^ 3 * d x)| < ε := by
  let K := 1 + 7 * T ^ 6 + T ^ 7
  have hK : 0 < K := by dsimp [K]; positivity
  let δ := ε / K
  have hδ : 0 < δ := div_pos hε hK
  have hδK : δ * K = ε := div_mul_cancel₀ _ hK.ne'
  obtain ⟨cs, hcs⟩ := exists_rationalWindowCode_near_even_with_derivative
    hT.le hg hd hder hc hδ
  let p := ((rationalWindowPolynomial cs).map (algebraMap ℚ ℝ)).comp (X ^ 2)
  have hp (x : ℝ) : p.eval x = (rationalWindowPolynomial cs).aeval (x ^ 2) := by
    simp only [p, eval_comp, eval_pow, eval_X, aeval_def, eval_map]
  have hval (x : ℝ) (hx : x ∈ Icc (-T) T) :
      rationalWindowTest T cs x = weight T x * p.eval x := by
    have hs : x ^ 2 ≤ T ^ 2 := sq_le_sq.mpr (by simpa [abs_of_pos hT] using abs_le.mpr hx)
    rw [rationalWindowTest, hp, max_eq_left (sub_nonneg.mpr hs), weight]
    ring
  have hdif : Differentiable ℝ (rationalWindowTest T cs) :=
    (rationalWindowTest_admissible χ hT cs).2.1.differentiable (by norm_num)
  have huniq := uniqueDiffOn_Icc (show -T < T by linarith)
  have hactual (x : ℝ) (hx : x ∈ Icc (-T) T) :
      deriv (rationalWindowTest T cs) x =
        weightDeriv T x * p.eval x + weight T x * p.derivative.eval x := by
    have h := ((hasDerivAt_weight T x).mul (p.hasDerivAt x)).hasDerivWithinAt (s := Icc (-T) T)
    have hglobal := (hdif x).hasDerivAt.hasDerivWithinAt (s := Icc (-T) T)
    exact (hglobal.derivWithin (huniq x hx)).symm.trans
      ((h.congr hval (hval x hx)).derivWithin (huniq x hx))
  refine ⟨cs, fun x hx => ?_⟩
  have hv : |p.eval x - g x| ≤ δ := by rw [hp]; exact (hcs x hx).1.le
  have hdv : |p.derivative.eval x - d x| ≤ δ := (hcs x hx).2.le
  have hw := cutoff_bounds hT hx
  have hterr : (7 * T ^ 6 + T ^ 7) * δ < ε := by dsimp [K] at hδK; nlinarith
  have hverr : T ^ 7 * δ < ε := by
    apply (mul_le_mul_of_nonneg_right _ hδ.le).trans_lt hterr
    linarith [pow_nonneg hT.le 6]
  change |rationalWindowTest T cs x - weight T x * g x| < ε ∧
    |deriv (rationalWindowTest T cs) x - (weightDeriv T x * g x + weight T x * d x)| < ε
  constructor
  · rw [hval x hx, ← mul_sub, abs_mul]
    exact (mul_le_mul hw.1 hv (abs_nonneg _) (by positivity)).trans_lt hverr
  · rw [hactual x hx, add_sub_add_comm, ← mul_sub, ← mul_sub]
    refine (abs_add_le _ _).trans_lt ?_
    rw [abs_mul, abs_mul]
    calc
      _ ≤ 7 * T ^ 6 * δ + T ^ 7 * δ :=
        add_le_add (mul_le_mul hw.2 hv (abs_nonneg _) (by positivity))
          (mul_le_mul hw.1 hdv (abs_nonneg _) (by positivity))
      _ < ε := by rw [← add_mul]; exact hterr

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
