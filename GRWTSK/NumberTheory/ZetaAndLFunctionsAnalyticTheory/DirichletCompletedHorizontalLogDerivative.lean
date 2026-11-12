/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.SpecialFunctions.GammaLogDerivativeBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletHorizontalLogDerivative

/-!
# The actual completed source on both horizontal boundaries

MSC2020: 11M06, 11M26, 11M41, 33B15.
The gamma magnitude is derived from the original Gamma function. Its exact
parity shift and chain factor are retained. The continued-source product is
used on a neighborhood of the nonreal point, not as an equality at a pole.
The same original-source height sequence now bounds the entire completed
logarithmic derivative, with no growth, gamma, or derivative supplier premise.

Mathlib's `completedLFunction` has the gamma factor but no extra N^(s/2).
Thus no conductor half-log is inserted into this product identity. The genuine
functional equation, inverse-character arithmetic return and both zeta poles
are unchanged. Finite rectangular residues, Fourier inversion, compensated
archimedean evaluation and the final infinite explicit formula remain separate.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED. Refs math#1801.
No arithmetic positivity or RH/GRH conclusion is asserted.
-/

set_option autoImplicit false
noncomputable section
open Set Filter
open scoped Topology
open GRWTSK.SpecialFunctions.GammaLogDerivativeBounds

namespace GRWTSK.NumberTheory.WeilNegativeWitness

variable {N : ℕ} [NeZero N]

/-- Both genuine gamma parities are differentiable at every nonreal point. -/
theorem differentiableAt_gammaFactor_of_nonreal (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hi : s.im ≠ 0) :
    DifferentiableAt ℂ (DirichletCharacter.gammaFactor chi) s := by
  classical
  by_cases he : chi.Even
  · simpa only [DirichletCharacter.gammaFactor, he, if_true] using
      differentiableAt_GammaR_of_nonreal hi
  · simp only [DirichletCharacter.gammaFactor, he, if_false]
    exact (differentiableAt_GammaR_of_nonreal (s := s + 1) (by simpa using hi)).comp s
      (differentiableAt_id.add_const (1 : ℂ))

/-- Full complex-norm estimate with a universal constant for BOTH parities. -/
theorem norm_logDeriv_gammaFactor_le_horizontal_strip (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hl : -1 ≤ s.re) (hu : s.re ≤ 2) (hi : 2 ≤ |s.im|) :
    ‖logDeriv (DirichletCharacter.gammaFactor chi) s‖ ≤
      gammaRLogDerivativeConstant * (1 + |s.im|) := by
  classical
  have him : s.im ≠ 0 := by intro h; simp [h] at hi
  by_cases he : chi.Even
  · simpa only [DirichletCharacter.gammaFactor, he, if_true] using
      norm_logDeriv_GammaR_le_horizontal_strip hl (by linarith) hi
  · have htrans : logDeriv (fun w : ℂ => Complex.Gammaℝ (w + 1)) s =
        logDeriv Complex.Gammaℝ (s + 1) := by
      change logDeriv (Complex.Gammaℝ ∘ fun w : ℂ => w + 1) s = _
      rw [logDeriv_comp (differentiableAt_GammaR_of_nonreal (s := s + 1) (by simpa using him))
        (differentiableAt_id.add_const (1 : ℂ)),
        ((hasDerivAt_id s).add_const (1 : ℂ)).deriv, mul_one]
    simp only [DirichletCharacter.gammaFactor, he, if_false, htrans]
    simpa using norm_logDeriv_GammaR_le_horizontal_strip (s := s + 1)
      (by simp only [Complex.add_re, Complex.one_re]; linarith)
      (by simp only [Complex.add_re, Complex.one_re]; linarith) (by simpa using hi)

/-- Exact return to the actual completed function. Nonvanishing is proved for
both product factors before logarithmic differentiation on a neighborhood. -/
theorem logDeriv_completedLFunction_of_nonreal (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hi : s.im ≠ 0)
    (hn : DirichletCharacter.completedLFunction chi s ≠ 0) :
    logDeriv (DirichletCharacter.completedLFunction chi) s =
      logDeriv (DirichletCharacter.LFunction chi) s +
        logDeriv (DirichletCharacter.gammaFactor chi) s := by
  have hs1 : s ≠ 1 := by intro h; apply hi; simp [h]
  have hL : DirichletCharacter.LFunction chi s ≠ 0 := by
    intro hz
    apply hn
    rw [completedLFunction_eq_mul_of_nonreal chi hi, hz, zero_mul]
  have hG := gammaFactor_ne_zero_of_nonreal chi hi
  have hneighborhood : {w : ℂ | w.im ≠ 0} ∈ 𝓝 s :=
    (isOpen_ne Complex.continuous_im continuous_const).mem_nhds hi
  have he : DirichletCharacter.completedLFunction chi =ᶠ[𝓝 s]
      fun w => DirichletCharacter.LFunction chi w * DirichletCharacter.gammaFactor chi w := by
    filter_upwards [hneighborhood] with w hw
    exact completedLFunction_eq_mul_of_nonreal chi hw
  calc
    _ = logDeriv (fun w => DirichletCharacter.LFunction chi w *
        DirichletCharacter.gammaFactor chi w) s := by
      rw [logDeriv_apply, logDeriv_apply, he.deriv_eq, completedLFunction_eq_mul_of_nonreal chi hi]
    _ = _ := logDeriv_fun_mul s hL hG
      (chi.differentiableAt_LFunction s (.inl hs1))
      (differentiableAt_gammaFactor_of_nonreal chi hi)

/-- One test-independent sequence works for both edge signs and the entire
sigma interval. No Gamma, growth, separation or log-derivative bound is a premise. -/
theorem exists_horizontal_completedLFunction_logDeriv_bound
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        DirichletCharacter.completedLFunction chi
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0) ∧
      (∀ n (sigma epsilon : ℝ), -1 ≤ sigma → sigma ≤ 2 →
        epsilon = -1 ∨ epsilon = 1 →
        ‖logDeriv (DirichletCharacter.completedLFunction chi)
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ))‖ ≤
            (horizontalLogDerivativeConstant chi + 1 + gammaRLogDerivativeConstant) *
              (1 + T n) ^ 4) := by
  obtain ⟨T, hT, hn, hL⟩ := exists_horizontal_LFunction_logDeriv_bound chi hprim
  refine ⟨T, hT, hn, ?_⟩
  intro n sigma epsilon hl hu he
  let z : ℂ := (sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)
  have hT2 : 2 ≤ T n := by linarith [(hT n).1, Nat.cast_nonneg (α := ℝ) n]
  have heT : |epsilon * T n| = T n := by
    rcases he with rfl | rfl <;> simp [abs_of_nonneg (by linarith : 0 ≤ T n)]
  have hzre : z.re = sigma := by simp [z]
  have hzabs : |z.im| = T n := by simpa [z] using heT
  have him : z.im ≠ 0 := by
    intro h
    rw [h, abs_zero] at hzabs
    linarith
  have hg := norm_logDeriv_gammaFactor_le_horizontal_strip chi (s := z)
    (by rw [hzre]; exact hl) (by rw [hzre]; exact hu) (by rw [hzabs]; exact hT2)
  rw [hzabs] at hg
  have hpower : 1 + T n ≤ (1 + T n) ^ 4 := by
    have h2 : 1 + T n ≤ (1 + T n) ^ 2 := by nlinarith
    have hsq : 0 ≤ (1 + T n) ^ 2 - 1 := by nlinarith
    nlinarith [mul_nonneg hsq (sq_nonneg (1 + T n))]
  change ‖logDeriv (DirichletCharacter.completedLFunction chi) z‖ ≤ _
  rw [logDeriv_completedLFunction_of_nonreal chi him (hn n sigma epsilon he)]
  calc
    _ ≤ ‖logDeriv (DirichletCharacter.LFunction chi) z‖ +
        ‖logDeriv (DirichletCharacter.gammaFactor chi) z‖ := norm_add_le _ _
    _ ≤ (horizontalLogDerivativeConstant chi + 1) * (1 + T n) ^ 4 +
        gammaRLogDerivativeConstant * (1 + T n) := add_le_add (hL n sigma epsilon hl hu he) hg
    _ ≤ (horizontalLogDerivativeConstant chi + 1) * (1 + T n) ^ 4 +
        gammaRLogDerivativeConstant * (1 + T n) ^ 4 :=
      add_le_add_left (mul_le_mul_of_nonneg_left hpower gammaRLogDerivativeConstant_pos.le) _
    _ = _ := by ring

/-- Literal conductor-one completed zeta. Its poles at 0 and 1 are retained;
only the selected nonreal boundaries are estimated. -/
theorem exists_horizontal_completedRiemannZeta_logDeriv_bound :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        completedRiemannZeta
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0) ∧
      (∀ n (sigma epsilon : ℝ), -1 ≤ sigma → sigma ≤ 2 →
        epsilon = -1 ∨ epsilon = 1 →
        ‖logDeriv completedRiemannZeta
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ))‖ ≤
            (horizontalLogDerivativeConstant (1 : DirichletCharacter ℂ 1) + 1 +
              gammaRLogDerivativeConstant) * (1 + T n) ^ 4) := by
  simpa only [DirichletCharacter.completedLFunction_modOne_eq] using
    exists_horizontal_completedLFunction_logDeriv_bound (1 : DirichletCharacter ℂ 1)
      DirichletCharacter.isPrimitive_one_level_one

end GRWTSK.NumberTheory.WeilNegativeWitness
