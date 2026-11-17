/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.RealFunctions.OddFunctionC1Factor
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowCutoffError
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveWindowRegularization

/-! # Simultaneous uniform approximation of admitted tests by rational window codes -/

set_option autoImplicit false

open Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

private theorem exists_code_near_regularization
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T η ε : ℝ} (hT : 0 < T) (hη : 0 < η) (hε : 0 < ε)
    {f : ℝ → ℝ} (hf : Admissible χ T f) :
    ∃ cs : List ℚ, ∀ x ∈ Icc (-T) T,
      |rationalWindowTest T cs x - cubicWindowRegularization T η f x| < ε ∧
      |deriv (rationalWindowTest T cs) x - deriv (cubicWindowRegularization T η f) x| < ε := by
  obtain ⟨hs, ho, _⟩ := (admissible_iff_smooth_odd_supported χ hT f).mp hf
  obtain ⟨k, hk, he, hd, hfac, _⟩ := RealFunctions.exists_even_contDiff_one_factor_of_odd hs ho
  let u (x : ℝ) := (T ^ 2 - x ^ 2) ^ 3
  let u' (x : ℝ) := -6 * x * (T ^ 2 - x ^ 2) ^ 2
  let P (x : ℝ) := u x + η ^ 3
  let g (x : ℝ) := k x / P x
  let d (x : ℝ) := (deriv k x * P x - k x * u' x) / (P x) ^ 2
  have hu (x : ℝ) : HasDerivAt u (u' x) x := by
    have h := (((hasDerivAt_const x (T ^ 2)).sub ((hasDerivAt_id x).pow 2)).pow 3)
    convert h using 1
    · rfl
    · norm_num [u']
      ring
  have hP (x : ℝ) (hx : x ∈ Icc (-T) T) : 0 < P x := by
    have hsq : x ^ 2 ≤ T ^ 2 :=
      sq_le_sq.mpr (by simpa [abs_of_pos hT] using abs_le.mpr hx)
    have hn : 0 ≤ T ^ 2 - x ^ 2 := sub_nonneg.mpr hsq
    dsimp [P, u]
    positivity
  have hg : Function.Even g := by
    intro x
    simp only [g, P, u, even_two, Even.neg_pow, he x]
  have hdo : Function.Odd d := by
    intro x
    simp only [d, P, u, u', even_two, Even.neg_pow, hd x, he x]
    ring
  have hgd (x : ℝ) (hx : x ∈ Icc (-T) T) : HasDerivAt g (d x) x :=
    ((hk.differentiable (by norm_num) x).hasDerivAt.div
      ((hu x).add_const (η ^ 3)) (hP x hx).ne')
  have hcP : Continuous P := by dsimp [P, u]; fun_prop
  have hcu' : Continuous u' := by dsimp [u']; fun_prop
  have hdc : ContinuousOn d (Icc (-T) T) :=
    ((hk.continuous_deriv_one.mul hcP).sub (hk.continuous.mul hcu')).continuousOn.div
      (hcP.pow 2).continuousOn (fun x hx => pow_ne_zero _ (hP x hx).ne')
  have hval : cubicWindowRegularization T η f = fun x => x * u x * g x := by
    funext x
    unfold cubicWindowRegularization
    rw [hfac x]
    change (u x / P x) * (x * k x) = x * u x * (k x / P x)
    ring
  obtain ⟨cs, hcs⟩ := exists_rationalWindowTest_near_weighted_multiplier χ hT hg hdo
    (fun x hx => (hgd x hx).hasDerivWithinAt) hdc hε
  refine ⟨cs, fun x hx => ?_⟩
  have hder :
      deriv (cubicWindowRegularization T η f) x =
        (((T ^ 2 - x ^ 2) ^ 3 - 6 * x ^ 2 * (T ^ 2 - x ^ 2) ^ 2) * g x +
          x * (T ^ 2 - x ^ 2) ^ 3 * d x) := by
    have h := (((hasDerivAt_id x).mul (hu x)).mul (hgd x hx)).deriv
    rw [hval]
    change deriv ((id * u) * g) x = _
    rw [h]
    dsimp [u, u']
    ring
  rw [hder, congr_fun hval x]
  exact hcs x hx

/-- Every admitted test is uniformly approximable in value and actual
derivative by the original rational cubic-window decoder. -/
theorem admissible_exists_rationalWindowTest_near_with_derivative
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℝ} (hT : 0 < T) {f : ℝ → ℝ} (hf : Admissible χ T f)
    {ε : ℝ} (hε : 0 < ε) :
    ∃ cs : List ℚ, ∀ x ∈ Icc (-T) T,
      |rationalWindowTest T cs x - f x| < ε ∧
      |deriv (rationalWindowTest T cs) x - deriv f x| < ε := by
  obtain ⟨M, hM, hbound⟩ := admissible_cubicWindowRegularization_error χ hT hf
  let η := ε / (2 * (M + 1))
  have hden : 0 < 2 * (M + 1) := by positivity
  have hη : 0 < η := div_pos hε hden
  have hηeq : η * (2 * (M + 1)) = ε := div_mul_cancel₀ _ hden.ne'
  have hMη : M * η ≤ ε / 2 := by linarith
  obtain ⟨cs, hcs⟩ := exists_code_near_regularization χ hT hη
    (show 0 < ε / 2 by positivity) hf
  refine ⟨cs, fun x hx => ⟨?_, ?_⟩⟩
  · have h := abs_sub_le (rationalWindowTest T cs x) (cubicWindowRegularization T η f x) (f x)
    exact h.trans_lt (by linarith [(hcs x hx).1, (hbound η hη x hx).1, hMη])
  · have h := abs_sub_le (deriv (rationalWindowTest T cs) x)
      (deriv (cubicWindowRegularization T η f) x) (deriv f x)
    exact h.trans_lt (by linarith [(hcs x hx).2, (hbound η hη x hx).2, hMη])

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
