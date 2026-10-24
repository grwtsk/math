# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Countable.Variantb4bebe7024ba75b019580e2ef19a67776a581658ac76e8ccb0b4c3cfecb0195f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc909642dc668f29253ad3f220dd7d4e9452dcf7` · SHA-256 `b4bebe7024ba75b019580e2ef19a67776a581658ac76e8ccb0b4c3cfecb0195f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
module

public import Mathlib.Probability.Decision.Risk.Defs

public import Mathlib.Probability.Kernel.Composition.CompNotation

/-!
# Risk in countable spaces

In countable spaces, we can write integrals as sums, hence we can write the average or Bayes risk
with sums instead of integrals.

-/

public section

open MeasureTheory
open scoped ENNReal NNReal

namespace ProbabilityTheory

variable {Θ 𝓧 𝓨 : Type*}
  {mΘ : MeasurableSpace Θ} {m𝓧 : MeasurableSpace 𝓧} {m𝓨 : MeasurableSpace 𝓨}
  {ℓ : Θ → 𝓨 → ℝ≥0∞} {P : Kernel Θ 𝓧} {κ : Kernel 𝓧 𝓨} {π : Measure Θ}

lemma avgRisk_countable [Countable Θ] [MeasurableSingletonClass Θ] :
    avgRisk ℓ P κ π = ∑' θ, (∫⁻ y, ℓ θ y ∂((κ ∘ₖ P) θ)) * π {θ} := by
  simp [avgRisk, lintegral_countable']

lemma avgRisk_fintype [Fintype Θ] [MeasurableSingletonClass Θ] :
    avgRisk ℓ P κ π = ∑ θ, (∫⁻ y, ℓ θ y ∂((κ ∘ₖ P) θ)) * π {θ} := by
  simp [avgRisk, lintegral_fintype]

lemma avgRisk_countable' [Countable 𝓨] [MeasurableSingletonClass 𝓨] (hℓ : Measurable ℓ) :
    avgRisk ℓ P κ π = ∑' y, ∫⁻ θ, ℓ θ y * (κ ∘ₘ P θ) {y} ∂π := by
  simp only [avgRisk, lintegral_countable']
  rw [lintegral_tsum]
  · rfl
  · refine fun y ↦ Measurable.aemeasurable ?_
    exact Measurable.mul (by fun_prop) ((κ ∘ₖ P).measurable_coe (measurableSet_singleton y))

lemma avgRisk_fintype' [Fintype 𝓨] [MeasurableSingletonClass 𝓨] (hℓ : Measurable ℓ) :
    avgRisk ℓ P κ π = ∑ y, ∫⁻ θ, ℓ θ y * (κ ∘ₘ P θ) {y} ∂π := by
  rw [avgRisk_countable' hℓ, tsum_fintype]

lemma bayesRisk_countable [Countable Θ] [MeasurableSingletonClass Θ] :
    bayesRisk ℓ P π
      = ⨅ (κ : Kernel 𝓧 𝓨) (_ : IsMarkovKernel κ), ∑' θ, (∫⁻ y, ℓ θ y ∂((κ ∘ₖ P) θ)) * π {θ} := by
  simp [bayesRisk, avgRisk_countable]

lemma bayesRisk_fintype [Fintype Θ] [MeasurableSingletonClass Θ] :
    bayesRisk ℓ P π
      = ⨅ (κ : Kernel 𝓧 𝓨) (_ : IsMarkovKernel κ), ∑ θ, (∫⁻ y, ℓ θ y ∂((κ ∘ₖ P) θ)) * π {θ} := by
  simp [bayesRisk, avgRisk_fintype]

lemma bayesRisk_countable' [Countable 𝓨] [MeasurableSingletonClass 𝓨] (hℓ : Measurable ℓ) :
    bayesRisk ℓ P π
      = ⨅ (κ : Kernel 𝓧 𝓨) (_ : IsMarkovKernel κ), ∑' y, ∫⁻ θ, ℓ θ y * (κ ∘ₘ P θ) {y} ∂π := by
  simp [bayesRisk, avgRisk_countable' hℓ]

lemma bayesRisk_fintype' [Fintype 𝓨] [MeasurableSingletonClass 𝓨] (hℓ : Measurable ℓ) :
    bayesRisk ℓ P π
      = ⨅ (κ : Kernel 𝓧 𝓨) (_ : IsMarkovKernel κ), ∑ y, ∫⁻ θ, ℓ θ y * (κ ∘ₘ P θ) {y} ∂π := by
  simp [bayesRisk, avgRisk_fintype' hℓ]

section Const

lemma avgRisk_const_of_countable [Countable 𝓨] [MeasurableSingletonClass 𝓨]
    (hℓ : Measurable ℓ) (μ : Measure 𝓧) (κ : Kernel 𝓧 𝓨) (π : Measure Θ) :
    avgRisk ℓ (Kernel.const Θ μ) κ π = ∑' y, ∫⁻ θ, ℓ θ y * (κ ∘ₘ μ) {y} ∂π := by
  simp [avgRisk_countable' hℓ]

lemma avgRisk_const_of_fintype [Fintype 𝓨] [MeasurableSingletonClass 𝓨]
    (hℓ : Measurable ℓ) (μ : Measure 𝓧) (κ : Kernel 𝓧 𝓨) (π : Measure Θ) :
    avgRisk ℓ (Kernel.const Θ μ) κ π = ∑ y, ∫⁻ θ, ℓ θ y * (κ ∘ₘ μ) {y} ∂π := by
  simp [avgRisk_fintype' hℓ]

end Const

end ProbabilityTheory
```
