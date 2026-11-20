/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.EisensteinTraceIntegerWitness
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.PadicIntegralSubproduct
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.PadicNormValuationBudget

/-!
# Local valuation bounds for the actual trace-product integer

Integral factors and injective trace classification give the required local
norm comparison. The same integer then bounds every selected trace valuation
sum, at every prime. Removing the natural-power scale needs only its norm at
most one, so this finite comparison requires no coprimality assumption. The
arithmetic construction of the trace families and classifiers, and the
deformation-to-trace estimate, remain separate premises.
-/

open scoped BigOperators

namespace GRWTSK.NumberTheory.EisensteinTraceValuationWitness

open EisensteinTraceSeparation EisensteinTraceIntegerWitness
open PadicIntegralSubproduct PadicNormValuationBudget

/-- Integral scaled factors dominate every injectively classified selection
in the p-adic norm. The class readout identifies the actual local traces. -/
theorem norm_int_le_classified_trace_product
    {O S R : Type*} [Fintype O] [Fintype S]
    (q e : ℕ) (hq : q ≠ 0) (z : O → ℂ) (t : S → ℂ)
    (hz : ∀ o, ∃ k : ℕ, 0 < k ∧ z o ^ k = 1)
    (hint : ∀ s, IsIntegral ℤ ((q : ℂ) ^ e * t s))
    (N : ℤ)
    (hN : (N : ℂ) = ∏ o, ∏ s, (q : ℂ) ^ e * (t s - eisensteinTrace q e (z o)))
    (p : ℕ) [Fact p.Prime] (ι : PadicAlgCl p ≃+* ℂ)
    (X : O → Finset R) (tr : O → R → PadicAlgCl p)
    (cl : ∀ o, ↥(X o) → S) (hcl : ∀ o, Function.Injective (cl o))
    (htr : ∀ o (r : ↥(X o)), tr o r = ι.symm (t (cl o r))) :
    ‖(N : PadicAlgCl p)‖ ≤
      ∏ o, ∏ r ∈ X o, ‖tr o r - ι.symm (eisensteinTrace q e (z o))‖ := by
  let f : O → S → ℂ := fun o s =>
    (q : ℂ) ^ e * (t s - eisensteinTrace q e (z o))
  have hf (o : O) (s : S) : IsIntegral ℤ (f o s) := by
    obtain ⟨k, hk, hzk⟩ := hz o
    exact scaled_difference_isIntegral q e k hq hk (z o) (t s) hzk (hint s)
  have hread (o : O) (r : ↥(X o)) :
      ι.symm (f o (cl o r)) =
        (q : PadicAlgCl p) ^ e * (tr o r - ι.symm (eisensteinTrace q e (z o))) := by
    simp only [f, map_mul, map_pow, map_natCast, map_sub, htr]
  calc
    ‖(N : PadicAlgCl p)‖ = ‖ι.symm (∏ o, ∏ s, f o s)‖ := by
      rw [show (∏ o, ∏ s, f o s) = (N : ℂ) from hN.symm, map_intCast]
    _ ≤ ∏ o, ∏ r : ↥(X o), ‖ι.symm (f o (cl o r))‖ :=
      adicNorm_prod_le_prod_of_injective_classes p ι O S R f hf X cl hcl
    _ ≤ ∏ o, ∏ r : ↥(X o), ‖tr o r - ι.symm (eisensteinTrace q e (z o))‖ := by
      apply Finset.prod_le_prod₀
        (fun o _ => Finset.prod_nonneg (fun r _ => norm_nonneg _))
      intro o _
      apply Finset.prod_le_prod₀ (fun r _ => norm_nonneg _)
      intro r _
      rw [hread]
      exact norm_natCast_pow_mul_le p q e _
    _ = ∏ o, ∏ r ∈ X o, ‖tr o r - ι.symm (eisensteinTrace q e (z o))‖ := by
      apply Finset.prod_congr rfl
      intro o _
      exact Finset.prod_coe_sort (X o)
        (fun r : R => ‖tr o r - ι.symm (eisensteinTrace q e (z o))‖)

/-- The literal trace-product integer bounds the valuations of the actual
classified local trace differences, at every prime. -/
theorem classified_trace_valuation_bound
    {O S R : Type*} [Fintype O] [Fintype S]
    (q e : ℕ) (hq : q ≠ 0) (z : O → ℂ) (t : S → ℂ)
    (hz : ∀ o, ∃ k : ℕ, 0 < k ∧ z o ^ k = 1)
    (hint : ∀ s, IsIntegral ℤ ((q : ℂ) ^ e * t s))
    (N : ℤ) (hN0 : N ≠ 0)
    (hN : (N : ℂ) = ∏ o, ∏ s, (q : ℂ) ^ e * (t s - eisensteinTrace q e (z o)))
    (p : ℕ) [Fact p.Prime] (ι : PadicAlgCl p ≃+* ℂ)
    (X : O → Finset R) (tr : O → R → PadicAlgCl p)
    (cl : ∀ o, ↥(X o) → S) (hcl : ∀ o, Function.Injective (cl o))
    (htr : ∀ o (r : ↥(X o)), tr o r = ι.symm (t (cl o r))) :
    ∑ o, ∑ r ∈ X o,
      logValuation p (tr o r - ι.symm (eisensteinTrace q e (z o))) ≤
        (padicValInt p N : ℝ) := by
  exact sum_logValuation_le_padicValInt_of_norm_prod_le p X
    (fun o r => tr o r - ι.symm (eisensteinTrace q e (z o))) N hN0
    (norm_int_le_classified_trace_product q e hq z t hz hint N hN p ι X tr cl hcl htr)

/-- The numerical part of the deformation-length assembly, with its
observation-to-trace-valuation supplier kept as an explicit hypothesis. -/
theorem classified_observation_bound
    {O S R : Type*} [Fintype O] [Fintype S]
    (q e : ℕ) (hq : q ≠ 0) (z : O → ℂ) (t : S → ℂ)
    (hz : ∀ o, ∃ k : ℕ, 0 < k ∧ z o ^ k = 1)
    (hint : ∀ s, IsIntegral ℤ ((q : ℂ) ^ e * t s))
    (N : ℤ) (hN0 : N ≠ 0)
    (hN : (N : ℂ) = ∏ o, ∏ s, (q : ℂ) ^ e * (t s - eisensteinTrace q e (z o)))
    (p : ℕ) [Fact p.Prime] (ι : PadicAlgCl p ≃+* ℂ)
    (X : O → Finset R) (tr : O → R → PadicAlgCl p)
    (cl : ∀ o, ↥(X o) → S) (hcl : ∀ o, Function.Injective (cl o))
    (htr : ∀ o (r : ↥(X o)), tr o r = ι.symm (t (cl o r)))
    (c : ℝ) (hc : 0 ≤ c) (a : O → ℝ)
    (ha : ∀ o, a o ≤ c * ∑ r ∈ X o,
      logValuation p (tr o r - ι.symm (eisensteinTrace q e (z o)))) :
    ∑ o, a o ≤ c * (padicValInt p N : ℝ) := by
  exact sum_observation_le_mul_padicValInt p X
    (fun o r => tr o r - ι.symm (eisensteinTrace q e (z o))) N hN0
    (norm_int_le_classified_trace_product q e hq z t hz hint N hN p ι X tr cl hcl htr)
    c hc a ha

/-- One integer is chosen before every prime, field identification and
injectively classified finite selection. The local norm, nonvanishing and
valuation bounds all concern that same literal product. -/
theorem exists_int_trace_product_with_local_bounds
    {O S : Type*} [Fintype O] [Fintype S]
    (q e : ℕ) (hq : 7 ≤ q) (he : 1 ≤ e) (z : O → ℂ) (t : S → ℂ)
    (hz : ∀ o, ∃ k : ℕ, 0 < k ∧ z o ^ k = 1)
    (ht : ∀ s, ‖t s‖ ≤ Real.sqrt q + 2)
    (hint : ∀ s, IsIntegral ℤ ((q : ℂ) ^ e * t s))
    (hzperm : ∀ σ : ℂ ≃+* ℂ, ∃ u : O ≃ O, ∀ o, z (u o) = σ (z o))
    (htperm : ∀ σ : ℂ ≃+* ℂ, ∃ v : S ≃ S, ∀ s, t (v s) = σ (t s)) :
    ∃ N : ℤ,
      (N : ℂ) = ∏ o, ∏ s, (q : ℂ) ^ e * (t s - eisensteinTrace q e (z o)) ∧
      N ≠ 0 ∧
      Real.log |(N : ℝ)| ≤
        Fintype.card O * Fintype.card S * (2 * e * Real.log q + 1) ∧
      ∀ (p : ℕ) [Fact p.Prime] (ι : PadicAlgCl p ≃+* ℂ)
        (R : Type*) (X : O → Finset R) (tr : O → R → PadicAlgCl p)
        (cl : ∀ o, ↥(X o) → S), (∀ o, Function.Injective (cl o)) →
        (∀ o (r : ↥(X o)), tr o r = ι.symm (t (cl o r))) →
        (∀ o, ∀ r ∈ X o, tr o r ≠ ι.symm (eisensteinTrace q e (z o))) ∧
        ‖(N : PadicAlgCl p)‖ ≤
          ∏ o, ∏ r ∈ X o, ‖tr o r - ι.symm (eisensteinTrace q e (z o))‖ ∧
        ∑ o, ∑ r ∈ X o,
          logValuation p (tr o r - ι.symm (eisensteinTrace q e (z o))) ≤
            (padicValInt p N : ℝ) := by
  obtain ⟨N, hN, hN0, hlog⟩ :=
    exists_int_trace_product q e hq he z t hz ht hint hzperm htperm
  refine ⟨N, hN, hN0, hlog, ?_⟩
  intro p hp ι R X tr cl hcl htr
  have hn := norm_int_le_classified_trace_product q e (by omega) z t hz hint
    N hN p ι X tr cl hcl htr
  have hne := selected_ne_zero_of_int_norm_le_prod p X
    (fun o r => tr o r - ι.symm (eisensteinTrace q e (z o))) N hN0 hn
  exact ⟨fun o r hr => sub_ne_zero.mp (hne o r hr), hn,
    sum_logValuation_le_padicValInt_of_norm_prod_le p X
      (fun o r => tr o r - ι.symm (eisensteinTrace q e (z o))) N hN0 hn⟩

end GRWTSK.NumberTheory.EisensteinTraceValuationWitness
