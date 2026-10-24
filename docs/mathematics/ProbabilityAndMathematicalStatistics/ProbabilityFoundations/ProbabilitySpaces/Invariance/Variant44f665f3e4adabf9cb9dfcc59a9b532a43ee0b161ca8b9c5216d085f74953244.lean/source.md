# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Invariance.Variant44f665f3e4adabf9cb9dfcc59a9b532a43ee0b161ca8b9c5216d085f74953244

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc8df7ff6742d665ee97d32500996dd0c14d5ea2` · SHA-256 `44f665f3e4adabf9cb9dfcc59a9b532a43ee0b161ca8b9c5216d085f74953244`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kexing Ying. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kexing Ying, Matteo Cipollina
-/
module

public import Mathlib.Probability.Kernel.Composition.MeasureComp

/-!
# Invariance of measures along a kernel

We say that a measure `μ` is invariant with respect to a kernel `κ` if its push-forward along the
kernel `μ.bind κ` is the same measure.

## Main definitions

* `ProbabilityTheory.Kernel.Invariant`: invariance of a given measure with respect to a kernel.

-/

@[expose] public section


open MeasureTheory

open scoped MeasureTheory ENNReal ProbabilityTheory

namespace ProbabilityTheory

variable {α : Type*} {mα : MeasurableSpace α}

namespace Kernel

/-! ### Invariant measures of kernels -/

/-- A measure `μ` is invariant with respect to the kernel `κ` if the push-forward measure of `μ`
along `κ` equals `μ`. -/
def Invariant (κ : Kernel α α) (μ : Measure α) : Prop :=
  μ.bind κ = μ

variable {κ η : Kernel α α} {μ : Measure α}

theorem Invariant.def (hκ : Invariant κ μ) : μ.bind κ = μ :=
  hκ

nonrec theorem Invariant.comp_const (hκ : Invariant κ μ) : κ ∘ₖ const α μ = const α μ := by
  rw [comp_const κ μ, hκ.def]

theorem Invariant.comp (hκ : Invariant κ μ) (hη : Invariant η μ) :
    Invariant (κ ∘ₖ η) μ := by
  rcases isEmpty_or_nonempty α with _ | hα
  · exact Subsingleton.elim _ _
  · rw [Invariant, ← Measure.comp_assoc, hη, hκ]

/-! ### Reversibility of kernels -/

/-- Reversibility (detailed balance) of a Markov kernel `κ` w.r.t. a measure `π`:
for all measurable sets `A B`, the mass flowing from `A` to `B` equals that from `B` to `A`. -/
def IsReversible (κ : Kernel α α) (π : Measure α) : Prop :=
  ∀ ⦃A B⦄, MeasurableSet A → MeasurableSet B →
    ∫⁻ x in A, κ x B ∂π = ∫⁻ x in B, κ x A ∂π

/-- A reversible Markov kernel leaves the measure `π` invariant. -/
theorem IsReversible.invariant
    {κ : Kernel α α} [IsMarkovKernel κ] {π : Measure α}
    (h_rev : IsReversible κ π) : Invariant κ π := by
  ext s hs
  calc
    (κ ∘ₘ π) s = ∫⁻ x, κ x s ∂π := by rw [Measure.bind_apply hs (Kernel.aemeasurable _)]
             _ = ∫⁻ x in s, κ x Set.univ ∂π := by simpa [restrict_univ] using (h_rev hs .univ).symm
             _ = π s := by simp

end Kernel

end ProbabilityTheory
```
