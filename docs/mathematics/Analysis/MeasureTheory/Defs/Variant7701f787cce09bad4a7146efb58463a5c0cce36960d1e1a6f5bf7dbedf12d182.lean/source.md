# Complete source: GRWTSK.Analysis.MeasureTheory.Defs.Variant7701f787cce09bad4a7146efb58463a5c0cce36960d1e1a6f5bf7dbedf12d182

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2580286670e5ead70a99d1c4ff27826ca24c9b7` · SHA-256 `2a8257072b4690276beb53a3f306c4d7a454bc01351676a3ce3f8dd4c6dde4a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.OuterMeasure.Variante204c876e2ab2ea2272fc0c1c8b3dd1287dc0d3e688fe2246fa0d6acad17ae10","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e204c876e2ab2ea2272fc0c1c8b3dd1287dc0d3e688fe2246fa0d6acad17ae10","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.OuterMeasure.Variante204c876e2ab2ea2272fc0c1c8b3dd1287dc0d3e688fe2246fa0d6acad17ae10","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"e204c876e2ab2ea2272fc0c1c8b3dd1287dc0d3e688fe2246fa0d6acad17ae10","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/OuterMeasure/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Yury Kudryashov
-/
module

public import Mathlib.Topology.Algebra.InfiniteSum.Defs
public import Mathlib.Topology.Order.Real

/-!
# Definitions of an outer measure and the corresponding `FunLike` class

In this file we define `MeasureTheory.OuterMeasure α`
to be the type of outer measures on `α`.

An outer measure is a function `μ : Set α → ℝ≥0∞`,
from the powerset of a type to the extended nonnegative real numbers
that satisfies the following conditions:
1. `μ ∅ = 0`;
2. `μ` is monotone;
3. `μ` is countably subadditive. This means that the outer measure of a countable union
   is at most the sum of the outer measure on the individual sets.

Note that we do not need `α` to be measurable to define an outer measure.

We also define a typeclass `MeasureTheory.OuterMeasureClass`.

## References

<https://en.wikipedia.org/wiki/Outer_measure>

## Tags

outer measure
-/


namespace GRWTSK.Analysis.MeasureTheory.OuterMeasure.Variante204c876e2ab2ea2272fc0c1c8b3dd1287dc0d3e688fe2246fa0d6acad17ae10

public section

assert_not_exists Module.Basis IsTopologicalRing UniformSpace

open scoped ENNReal

variable {α : Type*}

namespace MeasureTheory

open scoped Function -- required for scoped `on` notation

/-- An outer measure is a countably subadditive monotone function that sends `∅` to `0`. -/
structure OuterMeasure (α : Type*) where
  /-- Outer measure function. Use automatic coercion instead. -/
  protected measureOf : Set α → ℝ≥0∞
  protected empty : measureOf ∅ = 0
  protected mono : ∀ {s₁ s₂}, s₁ ⊆ s₂ → measureOf s₁ ≤ measureOf s₂
  protected iUnion_nat : ∀ s : ℕ → Set α, Pairwise (Disjoint on s) →
    measureOf (⋃ i, s i) ≤ ∑' i, measureOf (s i)

attribute [gcongr] OuterMeasure.mono

/-- A mixin class saying that elements `μ : F` are outer measures on `α`.

This typeclass is used to unify some API for outer measures and measures. -/
class OuterMeasureClass (F : Type*) (α : outParam Type*) [FunLike F (Set α) ℝ≥0∞] : Prop where
  protected measure_empty (f : F) : f ∅ = 0
  protected measure_mono (f : F) {s t} : s ⊆ t → f s ≤ f t
  protected measure_iUnion_nat_le (f : F) (s : ℕ → Set α) : Pairwise (Disjoint on s) →
    f (⋃ i, s i) ≤ ∑' i, f (s i)

attribute [gcongr] OuterMeasureClass.measure_mono

namespace OuterMeasure

@[macro_inline]
instance : FunLike (OuterMeasure α) (Set α) ℝ≥0∞ where
  coe m := m.measureOf
  coe_injective | ⟨_, _, _, _⟩, ⟨_, _, _, _⟩, rfl => rfl

@[simp] theorem measureOf_eq_coe (m : OuterMeasure α) : m.measureOf = m := rfl
@[simp] theorem coe_mk (m : Set α → ℝ≥0∞) (h₁ h₂ h₃) : OuterMeasure.mk m h₁ h₂ h₃ = m := rfl

instance : OuterMeasureClass (OuterMeasure α) α where
  measure_empty f := f.empty
  measure_mono f := f.mono
  measure_iUnion_nat_le f := f.iUnion_nat

end OuterMeasure

end MeasureTheory
```
