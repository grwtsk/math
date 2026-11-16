/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveCofinalNegativeWitness

/-!
# Test-dependent stage coverage for the primitive Weil form
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation PrimitiveNegativePersistence

/-- For each admissible mass-bounded test, one covering stage with the
absolute dyadic lower bound suffices. The stage may depend on the test
and its initial window. In the reverse direction a single negative test
would persist at all stages covering a sufficiently enlarged window. -/
theorem smallConductorStages_iff_pointwise_mass_coverage
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) :
    SmallConductorStages χ hp hn ↔
      ∀ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f → energy (liftReal f) ≤ 1 →
        ∃ j : ℕ, T ≤ (j : ℝ) + 1 ∧
          (χ.conductor < conductorFrontier (j + 1) →
            -((1 / 2 : ℝ) ^ j) ≤
              primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal f)) := by
  constructor
  · intro h T f hf hmass
    obtain ⟨j, hj⟩ := exists_nat_ge T
    have hwindow : T ≤ (j : ℝ) + 1 := by linarith
    refine ⟨j, hwindow, fun hsmall => ?_⟩
    have hscale := mul_le_mul_of_nonpos_left hmass (neg_nonpos.mpr
      (pow_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 2) j))
    rw [mul_one] at hscale
    exact hscale.trans (h j hsmall f (admissible_of_window_extension χ hf hwindow))
  · intro hcover j _ f hf
    have hnonneg : 0 ≤
        primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal f) := by
      by_contra hneg
      obtain ⟨g, J, hmass, hlate⟩ :=
        exists_mass_le_one_refutes_all_late_primitive_stages χ hp hn hf (lt_of_not_ge hneg)
      obtain ⟨k, hwindow, hbound⟩ :=
        hcover ((J : ℝ) + 1) g (hlate J le_rfl).1 hmass
      have hJk : J ≤ k := by
        exact_mod_cast (add_le_add_iff_right (1 : ℝ)).mp hwindow
      obtain ⟨_, hnegative, hsmall, _⟩ := hlate k hJk
      exact (not_lt_of_ge (hbound hsmall)) hnegative
    have henergy : 0 ≤ energy (liftReal f) := by
      rw [energy_eq_norm_toLp_sq hf.2.2.2.2.1]
      positivity
    exact (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (by positivity)) henergy).trans hnonneg

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
