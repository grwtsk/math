/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.RectangleKernelIntegral
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRectangleRegularization
import Mathlib.Data.Finset.Sum

/-!
# Finite Weil rectangles: the actual completed arithmetic source

MSC2020: 11M41, 11M06, 30E20. This consumes the maintained whole-rectangle
regularization and its zero remainder integral. All zeros are still indexed by
`CriticalStripZero`, `heightWindow` and the original `zeroMultiplicity`.
The two additional finite slots have coefficients -W(0), -W(1) exactly when
N=1; their locations are literally 0 and 1. No N^(s/2) is introduced.

SOURCE_PROOF_CANDIDATE; elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. This finite formula is not yet the infinite Weil
explicit formula, its inverse-character arithmetic adapter, or a sign theorem.
-/

set_option autoImplicit false
noncomputable section

open Set MeasureTheory
open scoped Topology BigOperators
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.Analysis.ComplexAnalysis.RectangleKernelIntegral
open GRWTSK.Analysis.ComplexAnalysis.FinitePrincipalPartCircle

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

variable {N : ℕ} [NeZero N]

private theorem residue_identity_of_regularization (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (T : ℝ) (hT : 0 < T) (W G : ℂ → ℂ)
    (hG : AnalyticOnNhd ℂ G (weilRectangle T))
    (hG0 : boundaryIntegral (-1) 2 (-T) T G = 0)
    (he : ∀ s : ℂ, s ∉ weilSingularSet chi hprim T →
      W s * logDeriv (DirichletCharacter.completedLFunction chi) s = G s +
        (∑ rho ∈ heightWindow chi hprim T,
          (zeroMultiplicity chi rho : ℂ) * W rho.1 / (s - rho.1)) -
        (if N = 1 then W 0 / s + W 1 / (s - 1) else 0)) :
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
      boundaryIntegral (-1) 2 (-T) T
        (fun s => W s * logDeriv (DirichletCharacter.completedLFunction chi) s) =
      (∑ rho ∈ heightWindow chi hprim T, (zeroMultiplicity chi rho : ℂ) * W rho.1) -
        (if N = 1 then W 0 + W 1 else 0) := by
  classical
  let S : Finset (CriticalStripZero chi ⊕ ℕ) :=
    (heightWindow chi hprim T).disjSum {0, 1}
  let a : CriticalStripZero chi ⊕ ℕ → ℂ := Sum.elim (fun rho => rho.1) (fun n => n)
  let c : CriticalStripZero chi ⊕ ℕ → ℂ := Sum.elim
    (fun rho => (zeroMultiplicity chi rho : ℂ) * W rho.1)
    (fun n => if N = 1 then -W (n : ℂ) else 0)
  have ha : ∀ j ∈ S, -1 < (a j).re ∧ (a j).re < 2 ∧
      -T < (a j).im ∧ (a j).im < T := by
    intro j hj
    rcases j with rho | n
    · have hm : rho ∈ heightWindow chi hprim T := by simpa [S] using hj
      have ht := abs_lt.mp ((mem_heightWindow chi hprim T rho).mp hm)
      exact ⟨by dsimp [a]; linarith [rho.2.2.1],
        by dsimp [a]; linarith [rho.2.2.2], ht.1, ht.2⟩
    · have hn : n = 0 ∨ n = 1 := by simpa [S] using hj
      rcases hn with rfl | rfl <;> norm_num [a] <;> constructor <;> linarith
  have hp (s : ℂ) : (∑ j ∈ S, c j / (s - a j)) =
      (∑ rho ∈ heightWindow chi hprim T,
        (zeroMultiplicity chi rho : ℂ) * W rho.1 / (s - rho.1)) -
        (if N = 1 then W 0 / s + W 1 / (s - 1) else 0) := by
    simp only [S, Finset.sum_disjSum, a, c, Sum.elim_inl, Sum.elim_inr]
    by_cases hN : N = 1 <;> simp [hN, sub_eq_add_neg, neg_div] <;> ring
  have hc : (∑ j ∈ S, c j) =
      (∑ rho ∈ heightWindow chi hprim T, (zeroMultiplicity chi rho : ℂ) * W rho.1) -
        (if N = 1 then W 0 + W 1 else 0) := by
    simp only [S, Finset.sum_disjSum, c, Sum.elim_inl, Sum.elim_inr]
    by_cases hN : N = 1 <;> simp [hN, sub_eq_add_neg] <;> ring
  have hbound (s : ℂ) (hs : s.re = -1 ∨ s.re = 2 ∨ s.im = -T ∨ s.im = T) :
      s ∉ weilSingularSet chi hprim T := by
    apply weil_boundary_not_mem_singularSet chi hprim T hT
    rcases hs with h | h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr (by rw [h, abs_neg, abs_of_pos hT]))
    · exact Or.inr (Or.inr (by rw [h, abs_of_pos hT]))
  have hGC : ContinuousOn G (Icc (-1 : ℝ) 2 ×ℂ Icc (-T) T) := by
    intro s hs
    exact (hG s hs).continuousAt.continuousWithinAt
  have hres := boundaryIntegral_finite_expansion S a c (-1) 2 (-T) T
    (by norm_num) (by linarith)
    (fun s => W s * logDeriv (DirichletCharacter.completedLFunction chi) s) G hGC hG0 ha
    (by intro s hs; rw [hp]; simpa only [add_sub_assoc] using he s (hbound s hs))
  rw [hres, ← mul_assoc, inv_mul_cancel₀ (show 2 * (Real.pi : ℂ) * Complex.I ≠ 0 from
    period_ne_zero), one_mul, hc]

/-- Generic height-avoidance version. Both logarithmic pole contributions have
negative signs. `logDeriv` is applied to the actual repository completion. -/
theorem weil_rectangle_residue_identity (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (T : ℝ) (hT : 0 < T)
    (hheight : ∀ s : ℂ, |s.im| = T → DirichletCharacter.completedLFunction chi s ≠ 0)
    (W : ℂ → ℂ) (hW : AnalyticOnNhd ℂ W univ) :
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
      boundaryIntegral (-1) 2 (-T) T
        (fun s => W s * logDeriv (DirichletCharacter.completedLFunction chi) s) =
      (∑ rho ∈ heightWindow chi hprim T, (zeroMultiplicity chi rho : ℂ) * W rho.1) -
        (if N = 1 then W 0 + W 1 else 0) := by
  obtain ⟨G, hG, he⟩ := exists_weil_rectangle_regularization chi hprim T hheight W hW
  have hG0 : boundaryIntegral (-1) 2 (-T) T G = 0 := by
    simpa only [boundaryIntegral] using
      weil_rectangle_regular_remainder_integral_zero G T (le_of_lt hT) hG
  exact residue_identity_of_regularization chi hprim T hT W G hG hG0 he

/-- The source selects the heights before ALL test functions and support windows.
The result consumes, rather than assumes, the maintained sequence regularizations. -/
theorem exists_primitive_weil_rectangle_residue_identities {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
        ∀ n, (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
          boundaryIntegral (-1) 2 (-T n) (T n)
            (fun s => W s * logDeriv (DirichletCharacter.completedLFunction chi) s) =
          (∑ rho ∈ heightWindow chi hprim (T n),
            (zeroMultiplicity chi rho : ℂ) * W rho.1) -
            (if N = 1 then W 0 + W 1 else 0) := by
  obtain ⟨T, hT, hreg⟩ := exists_primitive_weil_rectangle_regularizations chi hprim
  refine ⟨T, hT, ?_⟩
  intro f A hA hf hs W n
  obtain ⟨G, hG, he, hG0⟩ := hreg f A hA hf hs n
  exact residue_identity_of_regularization chi hprim (T n)
    (by linarith [(hT n).1, Nat.cast_nonneg (α := ℝ) n]) W G hG
    (by simpa only [boundaryIntegral] using hG0) he

/-- Literal conductor-one zeta, including BOTH negative pole terms. -/
theorem completedZeta_weil_rectangle_residue_identity (T : ℝ) (hT : 0 < T)
    (hheight : ∀ s : ℂ, |s.im| = T → completedRiemannZeta s ≠ 0)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) :
    let chi : DirichletCharacter ℂ 1 := 1
    let hprim : chi.IsPrimitive := DirichletCharacter.isPrimitive_one_level_one
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
      boundaryIntegral (-1) 2 (-T) T (fun s => W s * logDeriv completedRiemannZeta s) =
      (∑ rho ∈ heightWindow chi hprim T, (zeroMultiplicity chi rho : ℂ) * W rho.1) -
        (W 0 + W 1) := by
  intro chi hprim W
  obtain ⟨G, hG, he⟩ := completedZeta_weil_rectangle_regularization T hheight f A hA hf hs
  have he' : ∀ s : ℂ, s ∉ weilSingularSet chi hprim T →
      W s * logDeriv (DirichletCharacter.completedLFunction chi) s = G s +
        (∑ rho ∈ heightWindow chi hprim T,
          (zeroMultiplicity chi rho : ℂ) * W rho.1 / (s - rho.1)) -
        (if (1 : ℕ) = 1 then W 0 / s + W 1 / (s - 1) else 0) := by
    simpa only [DirichletCharacter.completedLFunction_modOne_eq, if_true] using he
  have hG0 : boundaryIntegral (-1) 2 (-T) T G = 0 := by
    simpa only [boundaryIntegral] using
      weil_rectangle_regular_remainder_integral_zero G T (le_of_lt hT) hG
  simpa only [DirichletCharacter.completedLFunction_modOne_eq, if_true] using
    residue_identity_of_regularization chi hprim T hT W G hG hG0 he'

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
