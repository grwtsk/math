# Complete source: GRWTSK.Analysis.ComplexAnalysis.BigOperators.Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02af83a94a767ae66829f90ce9cd640c9fbfca95` · SHA-256 `a6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Buzzard, Mario Carneiro
-/
import Mathlib.Algebra.BigOperators.Balance
import Mathlib.Data.Complex.Basic

/-!
# Finite sums and products of complex numbers
-/

open Fintype
open scoped BigOperators

namespace Complex

variable {α : Type*} (s : Finset α)

@[simp, norm_cast]
theorem ofReal_prod (f : α → ℝ) : ((∏ i ∈ s, f i : ℝ) : ℂ) = ∏ i ∈ s, (f i : ℂ) :=
  map_prod ofRealHom _ _

@[simp, norm_cast]
theorem ofReal_sum (f : α → ℝ) : ((∑ i ∈ s, f i : ℝ) : ℂ) = ∑ i ∈ s, (f i : ℂ) :=
  map_sum ofRealHom _ _

@[simp, norm_cast]
lemma ofReal_expect (f : α → ℝ) : (𝔼 i ∈ s, f i : ℝ) = 𝔼 i ∈ s, (f i : ℂ) :=
  map_expect ofRealHom ..

@[simp, norm_cast]
lemma ofReal_balance [Fintype α] (f : α → ℝ) (a : α) :
    ((balance f a : ℝ) : ℂ) = balance ((↑) ∘ f) a := by simp [balance]

@[simp] lemma ofReal_comp_balance {ι : Type*} [Fintype ι] (f : ι → ℝ) :
    ofReal ∘ balance f = balance (ofReal ∘ f : ι → ℂ) := funext <| ofReal_balance _

@[simp]
theorem re_sum (f : α → ℂ) : (∑ i ∈ s, f i).re = ∑ i ∈ s, (f i).re :=
  map_sum reAddGroupHom f s

@[simp]
lemma re_expect (f : α → ℂ) : (𝔼 i ∈ s, f i).re = 𝔼 i ∈ s, (f i).re :=
  map_expect (LinearMap.mk reAddGroupHom.toAddHom (by simp)) f s

@[simp]
lemma re_balance [Fintype α] (f : α → ℂ) (a : α) : re (balance f a) = balance (re ∘ f) a := by
  simp [balance]

@[simp] lemma re_comp_balance {ι : Type*} [Fintype ι] (f : ι → ℂ) :
    re ∘ balance f = balance (re ∘ f) := funext <| re_balance _

@[simp]
theorem im_sum (f : α → ℂ) : (∑ i ∈ s, f i).im = ∑ i ∈ s, (f i).im :=
  map_sum imAddGroupHom f s

@[simp]
lemma im_expect (f : α → ℂ) : (𝔼 i ∈ s, f i).im = 𝔼 i ∈ s, (f i).im :=
  map_expect (LinearMap.mk imAddGroupHom.toAddHom (by simp)) f s

@[simp]
lemma im_balance [Fintype α] (f : α → ℂ) (a : α) : im (balance f a) = balance (im ∘ f) a := by
  simp [balance]

@[simp] lemma im_comp_balance {ι : Type*} [Fintype ι] (f : ι → ℂ) :
    im ∘ balance f = balance (im ∘ f) := funext <| im_balance _

end Complex
```
