# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.ConditionalExpectation.Variante8eb3590280b0a24bfe3c8843f19385d4fe5a4924cdd306561a2ced7f41892f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ece2926ed46eb887d1bdb48c7dd7a39644ded79` · SHA-256 `e8eb3590280b0a24bfe3c8843f19385d4fe5a4924cdd306561a2ced7f41892f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kexing Ying. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kexing Ying
-/
import Mathlib.Probability.Notation
import Mathlib.Probability.Independence.Basic
import Mathlib.MeasureTheory.Function.ConditionalExpectation.Basic

/-!

# Probabilistic properties of the conditional expectation

This file contains some properties about the conditional expectation which does not belong in
the main conditional expectation file.

## Main result

* `MeasureTheory.condExp_indep_eq`: If `m₁, m₂` are independent σ-algebras and `f` is an
  `m₁`-measurable function, then `𝔼[f | m₂] = 𝔼[f]` almost everywhere.

-/


open TopologicalSpace Filter

open scoped NNReal ENNReal MeasureTheory ProbabilityTheory

namespace MeasureTheory

open ProbabilityTheory

variable {Ω E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
  {m₁ m₂ m : MeasurableSpace Ω} {μ : Measure Ω} {f : Ω → E}

/-- If `m₁, m₂` are independent σ-algebras and `f` is `m₁`-measurable, then `𝔼[f | m₂] = 𝔼[f]`
almost everywhere. -/
theorem condExp_indep_eq (hle₁ : m₁ ≤ m) (hle₂ : m₂ ≤ m) [SigmaFinite (μ.trim hle₂)]
    (hf : StronglyMeasurable[m₁] f) (hindp : Indep m₁ m₂ μ) : μ[f|m₂] =ᵐ[μ] fun _ => μ[f] := by
  by_cases hfint : Integrable f μ
  swap; · rw [condExp_of_not_integrable hfint, integral_undef hfint]; rfl
  refine (ae_eq_condExp_of_forall_setIntegral_eq hle₂ hfint
    (fun s _ hs ↦ integrableOn_const hs.ne) (fun s hms hs => ?_)
      stronglyMeasurable_const.aestronglyMeasurable).symm
  rw [setIntegral_const]
  rw [← memLp_one_iff_integrable] at hfint
  refine MemLp.induction_stronglyMeasurable hle₁ ENNReal.one_ne_top _ ?_ ?_ ?_ ?_ hfint ?_
  · exact ⟨f, hf, EventuallyEq.rfl⟩
  · intro c t hmt _
    rw [Indep_iff] at hindp
    rw [integral_indicator (hle₁ _ hmt), setIntegral_const, smul_smul, measureReal_def,
      measureReal_def, ← ENNReal.toReal_mul,
      mul_comm, ← hindp _ _ hmt hms, setIntegral_indicator (hle₁ _ hmt), setIntegral_const,
      Set.inter_comm, measureReal_def]
  · intro u v _ huint hvint hu hv hu_eq hv_eq
    rw [memLp_one_iff_integrable] at huint hvint
    rw [integral_add' huint hvint, smul_add, hu_eq, hv_eq,
      integral_add' huint.integrableOn hvint.integrableOn]
  · have heq₁ : (fun f : lpMeas E ℝ m₁ 1 μ => ∫ x, (f : Ω → E) x ∂μ) =
        (fun f : Lp E 1 μ => ∫ x, f x ∂μ) ∘ Submodule.subtypeL _ := by
      refine funext fun f => integral_congr_ae ?_
      simp_rw [Submodule.coe_subtypeL', Submodule.coe_subtype]; norm_cast
    have heq₂ : (fun f : lpMeas E ℝ m₁ 1 μ => ∫ x in s, (f : Ω → E) x ∂μ) =
        (fun f : Lp E 1 μ => ∫ x in s, f x ∂μ) ∘ Submodule.subtypeL _ := by
      refine funext fun f => integral_congr_ae (ae_restrict_of_ae ?_)
      simp_rw [Submodule.coe_subtypeL', Submodule.coe_subtype]
      exact Eventually.of_forall fun _ => (by trivial)
    refine isClosed_eq (Continuous.const_smul ?_ _) ?_
    · rw [heq₁]
      exact continuous_integral.comp (ContinuousLinearMap.continuous _)
    · rw [heq₂]
      exact (continuous_setIntegral _).comp (ContinuousLinearMap.continuous _)
  · intro u v huv _ hueq
    rwa [← integral_congr_ae huv, ←
      (setIntegral_congr_ae (hle₂ _ hms) _ : ∫ x in s, u x ∂μ = ∫ x in s, v x ∂μ)]
    filter_upwards [huv] with x hx _ using hx

@[deprecated (since := "2025-01-21")] alias condexp_indep_eq := condExp_indep_eq

end MeasureTheory
```
