/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveWindowCorrelationError

/-! # Rational amplitude and translation bounds for cubic-window codes -/

set_option autoImplicit false

open Set Filter Polynomial
open scoped Polynomial Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

/-- Bound the multiplier in the squared coordinate and its x-derivative. -/
def rationalWindowMultiplierBounds (T : ℚ) : List ℚ → ℚ × ℚ
  | [] => (0, 0)
  | c :: cs =>
    let b := rationalWindowMultiplierBounds T cs
    (|c| + T ^ 2 * b.1, 2 * T * b.1 + T ^ 2 * b.2)

/-- A rational bound on the amplitude of the windowed test. -/
def rationalWindowAmplitudeBound (T : ℚ) (cs : List ℚ) : ℚ :=
  T ^ 7 * (rationalWindowMultiplierBounds T cs).1

/-- A rational global Lipschitz bound for the test including its zero extension. -/
def rationalWindowLipschitzBound (T : ℚ) (cs : List ℚ) : ℚ :=
  7 * T ^ 6 * (rationalWindowMultiplierBounds T cs).1 +
    T ^ 7 * (rationalWindowMultiplierBounds T cs).2

private noncomputable def multiplier (cs : List ℚ) (x : ℝ) : ℝ :=
  (rationalWindowPolynomial cs).aeval (x ^ 2)

private theorem multiplier_differentiable (cs : List ℚ) (x : ℝ) :
    DifferentiableAt ℝ (multiplier cs) x := by
  let p := ((rationalWindowPolynomial cs).map (algebraMap ℚ ℝ)).comp (X ^ 2)
  have hp : multiplier cs = fun t => p.eval t := by
    funext t
    simp only [multiplier, p, eval_comp, eval_pow, eval_X, eval_map, aeval_def]
  rw [hp]
  exact (p.hasDerivAt x).differentiableAt

private theorem multiplier_bounds_cast {T : ℚ} (hT : 0 ≤ T) (cs : List ℚ)
    {x : ℝ} (hx : |x| ≤ (T : ℝ)) :
    |multiplier cs x| ≤ ((rationalWindowMultiplierBounds T cs).1 : ℝ) ∧
    |deriv (multiplier cs) x| ≤ ((rationalWindowMultiplierBounds T cs).2 : ℝ) := by
  have hTr : (0 : ℝ) ≤ T := by exact_mod_cast hT
  have hx2 : x ^ 2 ≤ (T : ℝ) ^ 2 :=
    sq_le_sq.mpr (by simpa only [abs_of_nonneg hTr] using hx)
  induction cs with
  | nil =>
    have h : multiplier [] = fun _ => (0 : ℝ) := by
      funext t
      simp [multiplier, rationalWindowPolynomial]
    simp [h, rationalWindowMultiplierBounds]
  | cons c cs ih =>
    have hv (t : ℝ) : multiplier (c :: cs) t = (c : ℝ) + t ^ 2 * multiplier cs t := by
      simp [multiplier, rationalWindowPolynomial]
    have hder :
        deriv (multiplier (c :: cs)) x =
          2 * x * multiplier cs x + x ^ 2 * deriv (multiplier cs) x := by
      have hs : HasDerivAt (fun t : ℝ => t ^ 2) (2*x) x := by
        simpa [Pi.pow_def] using (hasDerivAt_id x).pow 2
      have hh := (hasDerivAt_const x (c : ℝ)).add
        (hs.mul (multiplier_differentiable cs x).hasDerivAt)
      have heq := hh.deriv
      change deriv (fun t => (c : ℝ) + t ^ 2 * multiplier cs t) x = _ at heq
      rw [← funext hv] at heq
      simpa using heq
    simp only [rationalWindowMultiplierBounds, Rat.cast_add, Rat.cast_abs, Rat.cast_mul,
      Rat.cast_pow, Rat.cast_ofNat]
    constructor
    · rw [hv]
      apply (abs_add_le _ _).trans
      rw [abs_mul, abs_of_nonneg (sq_nonneg x)]
      exact add_le_add (le_refl _) (mul_le_mul hx2 ih.1 (abs_nonneg _) (sq_nonneg _))
    · rw [hder]
      apply (abs_add_le _ _).trans
      simp only [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2),
        abs_of_nonneg (sq_nonneg x)]
      exact add_le_add (mul_le_mul (mul_le_mul_of_nonneg_left hx (by norm_num))
        ih.1 (abs_nonneg _) (by positivity))
        (mul_le_mul hx2 ih.2 (abs_nonneg _) (sq_nonneg _))

private theorem on_window_bounds {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℚ} (hT : 0 < T) (cs : List ℚ) {x : ℝ}
    (hx : x ∈ Icc (-(T : ℝ)) (T : ℝ)) :
    |rationalWindowTest T cs x| ≤ (rationalWindowAmplitudeBound T cs : ℝ) ∧
    |deriv (rationalWindowTest T cs) x| ≤ (rationalWindowLipschitzBound T cs : ℝ) := by
  let R := (T : ℝ)
  have hR : 0 < R := by
    change 0 < (T : ℝ)
    exact_mod_cast hT
  have hxR : |x| ≤ R := abs_le.mpr hx
  have hsq : x ^ 2 ≤ R ^ 2 :=
    sq_le_sq.mpr (by simpa only [abs_of_nonneg hR.le] using hxR)
  let W (t : ℝ) := t * (R ^ 2 - t ^ 2) ^ 3
  let DW := (R ^ 2 - x ^ 2) ^ 3 - 6 * x ^ 2 * (R ^ 2 - x ^ 2) ^ 2
  have hW : HasDerivAt W DW x := by
    have h := (hasDerivAt_id x).mul
      (((hasDerivAt_const x (R ^ 2)).sub ((hasDerivAt_id x).pow 2)).pow 3)
    convert h using 1
    · rfl
    · simp [DW]
      ring
  have hv (t : ℝ) (ht : t ∈ Icc (-R) R) :
      rationalWindowTest R cs t = W t * multiplier cs t := by
    have hq : t ^ 2 ≤ R ^ 2 :=
      sq_le_sq.mpr (by simpa only [abs_of_nonneg hR.le] using abs_le.mpr ht)
    simp only [rationalWindowTest, W, multiplier, max_eq_left (sub_nonneg.mpr hq)]
    ring
  have hdiff := (rationalWindowTest_admissible χ hR cs).2.1.differentiable (by norm_num)
  have hud := uniqueDiffOn_Icc (show -R < R by linarith)
  have hder :
      deriv (rationalWindowTest R cs) x =
        DW * multiplier cs x + W x * deriv (multiplier cs) x := by
    have ha := (hdiff x).hasDerivAt.hasDerivWithinAt (s := Icc (-R) R)
    have hb := (hW.mul (multiplier_differentiable cs x).hasDerivAt).hasDerivWithinAt (s := Icc (-R) R)
    exact (ha.derivWithin (hud x hx)).symm.trans
      ((hb.congr hv (hv x hx)).derivWithin (hud x hx))
  have hn : 0 ≤ R ^ 2 - x ^ 2 := sub_nonneg.mpr hsq
  have hb : R ^ 2 - x ^ 2 ≤ R ^ 2 := sub_le_self _ (sq_nonneg _)
  have h3 : (R ^ 2 - x ^ 2) ^ 3 ≤ (R ^ 2) ^ 3 := pow_le_pow_left₀ hn hb _
  have h2 : (R ^ 2 - x ^ 2) ^ 2 ≤ (R ^ 2) ^ 2 := pow_le_pow_left₀ hn hb _
  have hwb : |W x| ≤ R ^ 7 := by
    dsimp only [W]
    rw [abs_mul, abs_of_nonneg (pow_nonneg hn _)]
    calc
      _ ≤ R * (R ^ 2) ^ 3 := mul_le_mul hxR h3 (by positivity) hR.le
      _ = _ := by ring
  have hdwb : |DW| ≤ 7 * R ^ 6 := by
    have hc : 6 * x ^ 2 * (R ^ 2 - x ^ 2) ^ 2 ≤ 6 * R ^ 2 * (R ^ 2) ^ 2 := by gcongr
    dsimp only [DW]
    rw [abs_le]
    constructor <;> nlinarith [pow_nonneg hn 3,
      show 0 ≤ 6 * x ^ 2 * (R ^ 2 - x ^ 2) ^ 2 by positivity]
  obtain ⟨hmc, hmd⟩ := multiplier_bounds_cast hT.le cs hxR
  simp only [rationalWindowAmplitudeBound, rationalWindowLipschitzBound, Rat.cast_mul,
    Rat.cast_add, Rat.cast_pow, Rat.cast_ofNat]
  constructor
  · rw [hv x hx, abs_mul]
    exact mul_le_mul hwb hmc (abs_nonneg _) (by positivity)
  · rw [hder]
    apply (abs_add_le _ _).trans
    rw [abs_mul, abs_mul]
    exact add_le_add (mul_le_mul hdwb hmc (abs_nonneg _) (by positivity))
      (mul_le_mul hwb hmd (abs_nonneg _) (by positivity))

/-- The rational bounds certify amplitude on the original window and
translation differences on the whole line. -/
theorem rationalWindowTest_bounds {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℚ} (hT : 0 < T) (cs : List ℚ) :
    let B := (rationalWindowAmplitudeBound T cs : ℝ)
    let L := (rationalWindowLipschitzBound T cs : ℝ)
    0 ≤ B ∧ 0 ≤ L ∧
      (∀ x ∈ Icc (-(T : ℝ)) (T : ℝ), |rationalWindowTest T cs x| ≤ B) ∧
      (∀ x y, |rationalWindowTest T cs x - rationalWindowTest T cs y| ≤ L * |x - y|) := by
  have hR : (0 : ℝ) < T := by exact_mod_cast hT
  have hzero : (0 : ℝ) ∈ Icc (-(T : ℝ)) (T : ℝ) := ⟨by linarith, hR.le⟩
  obtain ⟨hB, hL⟩ := on_window_bounds χ hT cs hzero
  refine ⟨(abs_nonneg _).trans hB, (abs_nonneg _).trans hL,
    fun x hx => (on_window_bounds χ hT cs hx).1, fun x y => ?_⟩
  have ha := rationalWindowTest_admissible χ hR cs
  have hs := ((admissible_iff_smooth_odd_supported χ hR _).mp ha).2.2
  have hd := ha.2.1.differentiable (by norm_num)
  have hb (z : ℝ) (_ : z ∈ (univ : Set ℝ)) :
      ‖deriv (rationalWindowTest T cs) z‖ ≤ (rationalWindowLipschitzBound T cs : ℝ) := by
    rw [Real.norm_eq_abs]
    by_cases hz : z ∈ Icc (-(T : ℝ)) (T : ℝ)
    · exact (on_window_bounds χ hT cs hz).2
    have he : rationalWindowTest T cs =ᶠ[𝓝 z] fun _ => (0 : ℝ) :=
      (isClosed_Icc.isOpen_compl.eventually_mem hz).mono hs
    rw [((hasDerivAt_const z (0 : ℝ)).congr_of_eventuallyEq he).deriv, abs_zero]
    exact (abs_nonneg _).trans hL
  simpa only [Real.norm_eq_abs] using
    convex_univ.norm_image_sub_le_of_norm_deriv_le (fun z _ => hd z) hb
      (mem_univ y) (mem_univ x)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
