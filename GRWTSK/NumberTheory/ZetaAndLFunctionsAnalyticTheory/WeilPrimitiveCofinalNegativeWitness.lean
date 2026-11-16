/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveNegativePersistence
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveWitnessNormalization

/-!
# Persistent negative tests at the actual dyadic stage margins
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open OddRootProjection SourcePrimeCorrelation PrimitiveNegativePersistence

/-- One actual negative test supplies a single mass-bounded test that
violates every sufficiently late stage. Its arithmetic value is constant
once the window contains its support, while the stage margin tends to zero. -/
theorem exists_mass_le_one_refutes_all_late_primitive_stages
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) {T : ℝ} {f : ℝ → ℝ}
    (hf : Admissible χ T f)
    (hnegative : primitiveArithmeticValue χ hp hn T (liftReal f) < 0) :
    ∃ (g : ℝ → ℝ) (J : ℕ), energy (liftReal g) ≤ 1 ∧
      ∀ j : ℕ, J ≤ j →
        Admissible χ ((j : ℝ) + 1) g ∧
        primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal g) <
          -((1 / 2 : ℝ) ^ j) ∧
        χ.conductor < conductorFrontier (j + 1) ∧
        ¬ PrimitiveStageLower χ hp hn j := by
  obtain ⟨c, hc, hg, hmass, _, hvalue⟩ :=
    exists_positive_rescaling_mass_le_one χ hp hn hf
  let g : ℝ → ℝ := fun t => c * f t
  change Admissible χ T g at hg
  have hgnegative : primitiveArithmeticValue χ hp hn T (liftReal g) < 0 := by
    change primitiveArithmeticValue χ hp hn T (liftReal (fun t => c * f t)) < 0
    rw [hvalue]
    exact mul_neg_of_pos_of_neg (pow_pos hc 2) hnegative
  obtain ⟨N, hN⟩ := exists_nat_ge T
  obtain ⟨K, hK⟩ := exists_pow_lt_of_lt_one (neg_pos.mpr hgnegative)
    (by norm_num : (1 / 2 : ℝ) < 1)
  refine ⟨g, max N K, hmass, ?_⟩
  intro j hj
  have hNj : N ≤ j := (le_max_left N K).trans hj
  have hKj : K ≤ j := (le_max_right N K).trans hj
  have hTj : T ≤ (j : ℝ) + 1 := by
    have hcast : (N : ℝ) ≤ (j : ℝ) := by exact_mod_cast hNj
    linarith
  have hbound := pow_le_pow_of_le_one (by norm_num : (0 : ℝ) ≤ 1 / 2)
    (by norm_num : (1 : ℝ) / 2 ≤ 1) hKj
  have hstageAdmissible := admissible_of_window_extension χ hg hTj
  have hqneg : primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal g) <
      -((1 / 2 : ℝ) ^ j) := by
    rw [← primitiveArithmeticValue_eq_of_window_extension χ hp hn hg.2.2.2.2.2.1 hTj]
    linarith
  have hstrict := hqneg.trans_le (neg_nonpos.mpr (by positivity))
  refine ⟨hstageAdmissible, hqneg, ?_, ?_⟩
  · by_contra hfrontier
    have hnonnegative := primitiveArithmeticValue_nonneg_of_frontier χ hp hn (j + 1)
      hstageAdmissible.2.2.2.2.1 hstageAdmissible.2.2.2.2.2.2 (le_of_not_gt hfrontier)
    exact (not_lt_of_ge (by simpa only [Nat.cast_add, Nat.cast_one] using hnonnegative)) hstrict
  · intro hstage
    have hscale := mul_le_mul_of_nonpos_left hmass (neg_nonpos.mpr
      (pow_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 2) j))
    rw [mul_one] at hscale
    exact (not_lt_of_ge (hscale.trans (hstage g hstageAdmissible))) hqneg

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
