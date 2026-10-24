# Complete source: GRWTSK.Analysis.MeasureTheory.CompProdEqIff.Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2f5c7ec230e3488b4c5aea26ff43b334cb3b02c` · SHA-256 `7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.Probability.Kernel.Composition.AbsolutelyContinuous

/-!
# Condition for two kernels to be equal almost everywhere

We prove that two finite kernels `κ, η : Kernel α β` are `μ`-a.e. equal for a finite measure `μ` iff
the composition-products `μ ⊗ₘ κ` and `μ ⊗ₘ η` are equal.
The result requires `α` to be countable or `β` to be a countably generated measurable space.

## Main statements

* `compProd_withDensity`: `μ ⊗ₘ (κ.withDensity f) = (μ ⊗ₘ κ).withDensity (fun p ↦ f p.1 p.2)`
* `compProd_eq_iff`: `μ ⊗ₘ κ = μ ⊗ₘ η ↔ κ =ᵐ[μ] η`

-/

open ProbabilityTheory MeasureTheory

open scoped ENNReal

variable {α β : Type*} {mα : MeasurableSpace α} {mβ : MeasurableSpace β}
  {μ : Measure α} {κ : Kernel α β}
  {f : α → β → ℝ≥0∞}

namespace MeasureTheory.Measure

/-- A composition-product of a measure with a kernel defined with `withDensity` is equal to the
`withDensity` of the composition-product. -/
lemma compProd_withDensity [SFinite μ] [IsSFiniteKernel κ] [IsSFiniteKernel (κ.withDensity f)]
    (hf : Measurable (Function.uncurry f)) :
    μ ⊗ₘ (κ.withDensity f) = (μ ⊗ₘ κ).withDensity (fun p ↦ f p.1 p.2) := by
  ext s hs
  rw [compProd_apply hs, withDensity_apply _ hs, ← lintegral_indicator hs,
    lintegral_compProd]
  · congr with a
    rw [Kernel.withDensity_apply' _ hf, ← lintegral_indicator (measurable_prodMk_left hs)]
    rfl
  · exact hf.indicator hs

end MeasureTheory.Measure

namespace ProbabilityTheory.Kernel

variable {η : Kernel α β} [MeasurableSpace.CountableOrCountablyGenerated α β]

lemma ae_eq_of_compProd_eq [IsFiniteMeasure μ] [IsFiniteKernel κ] [IsFiniteKernel η]
    (h : μ ⊗ₘ κ = μ ⊗ₘ η) :
    κ =ᵐ[μ] η := by
  have h_ac : ∀ᵐ a ∂μ, κ a ≪ η a := (Measure.absolutelyContinuous_of_eq h).kernel_of_compProd
  have hκ_eq : ∀ᵐ a ∂μ, κ a = η.withDensity (κ.rnDeriv η) a := by
    filter_upwards [h_ac] with a ha using (Kernel.withDensity_rnDeriv_eq ha).symm
  suffices ∀ᵐ a ∂μ, ∀ᵐ b ∂(η a), κ.rnDeriv η a b = 1 by
    filter_upwards [h_ac, this] with a h_ac h using (rnDeriv_eq_one_iff_eq h_ac).mp h
  refine Measure.ae_ae_of_ae_compProd (p := fun x ↦ κ.rnDeriv η x.1 x.2 = 1) ?_
  refine ae_eq_of_forall_setLIntegral_eq_of_sigmaFinite (by fun_prop) (by fun_prop) fun s hs _ ↦ ?_
  simp only [MeasureTheory.lintegral_const, MeasurableSet.univ, Measure.restrict_apply,
    Set.univ_inter, one_mul]
  calc ∫⁻ x in s, κ.rnDeriv η x.1 x.2 ∂μ ⊗ₘ η
  _ = (μ ⊗ₘ κ) s := by
    rw [Measure.compProd_congr hκ_eq, Measure.compProd_withDensity, withDensity_apply _ hs]
    fun_prop
  _ = (μ ⊗ₘ η) s := by rw [h]

/-- Two finite kernels `κ` and `η` are `μ`-a.e. equal iff the composition-products `μ ⊗ₘ κ`
and `μ ⊗ₘ η` are equal. -/
lemma compProd_eq_iff [IsFiniteMeasure μ] [IsFiniteKernel κ] [IsFiniteKernel η] :
    μ ⊗ₘ κ = μ ⊗ₘ η ↔ κ =ᵐ[μ] η :=
  ⟨Kernel.ae_eq_of_compProd_eq, Measure.compProd_congr⟩

end ProbabilityTheory.Kernel
```
