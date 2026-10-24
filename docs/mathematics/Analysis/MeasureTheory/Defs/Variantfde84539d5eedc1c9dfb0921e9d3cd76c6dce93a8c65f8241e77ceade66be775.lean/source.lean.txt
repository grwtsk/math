-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.VectorMeasure.Variant569027875dd5acb89536b9342034750dda4d51445b847f220ee8a92a0cb1fcf1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"569027875dd5acb89536b9342034750dda4d51445b847f220ee8a92a0cb1fcf1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.VectorMeasure.Variant569027875dd5acb89536b9342034750dda4d51445b847f220ee8a92a0cb1fcf1","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"569027875dd5acb89536b9342034750dda4d51445b847f220ee8a92a0cb1fcf1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/VectorMeasure/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kexing Ying. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kexing Ying
-/
module

public import Mathlib.MeasureTheory.MeasurableSpace.Defs
public import Mathlib.Topology.Algebra.InfiniteSum.Defs
public import Mathlib.Topology.MetricSpace.Pseudo.Defs

/-!

# Vector-valued measures

This file defines vector-valued measures, which are σ-additive functions from a set to an
additive monoid `M` such that it maps the empty set and non-measurable sets to zero. In the case
that `M = ℝ`, we called the vector measure a signed measure and write `SignedMeasure α`.
Similarly, when `M = ℂ`, we call the measure a complex measure and write `ComplexMeasure α`
(defined in `MeasureTheory/Measure/Complex`).

## Main definitions

* `MeasureTheory.VectorMeasure` is a vector-valued, σ-additive function that maps the empty
  and non-measurable sets to zero.
* `MeasureTheory.SignedMeasure` is a real-valued vector measure.

## Implementation notes

We require all non-measurable sets to be mapped to zero in order for the extensionality lemma
to only compare the underlying functions for measurable sets.

We use `HasSum` instead of `tsum` in the definition of vector measures in comparison to `Measure`
since this provides summability.

## Tags

vector measure, signed measure, complex measure
-/


namespace GRWTSK.Analysis.MeasureTheory.VectorMeasure.Variant569027875dd5acb89536b9342034750dda4d51445b847f220ee8a92a0cb1fcf1

public section

open scoped Function -- required for scoped `on` notation
namespace MeasureTheory

variable {α : Type*} {m : MeasurableSpace α}

/-- A vector measure on a measurable space `α` is a σ-additive `M`-valued function (for some `M`
an additive monoid) such that the empty set and non-measurable sets are mapped to zero. -/
structure VectorMeasure (α : Type*) [MeasurableSpace α] (M : Type*) [AddCommMonoid M]
    [TopologicalSpace M] where
  /-- The measure of sets -/
  measureOf' : Set α → M
  /-- The empty set has measure zero -/
  empty' : measureOf' ∅ = 0
  /-- Non-measurable sets have measure zero -/
  not_measurable' ⦃i : Set α⦄ : ¬MeasurableSet i → measureOf' i = 0
  /-- The measure is σ-additive -/
  m_iUnion' ⦃f : ℕ → Set α⦄ : (∀ i, MeasurableSet (f i)) → Pairwise (Disjoint on f) →
    HasSum (fun i => measureOf' (f i)) (measureOf' (⋃ i, f i))

/-- A `SignedMeasure` is an `ℝ`-vector measure. -/
abbrev SignedMeasure (α : Type*) [MeasurableSpace α] :=
  VectorMeasure α ℝ

namespace VectorMeasure

section

variable {M : Type*} [AddCommMonoid M] [TopologicalSpace M]

@[macro_inline]
instance : FunLike (VectorMeasure α M) (Set α) M where
  coe := VectorMeasure.measureOf'
  coe_injective v w h := by
    cases v; cases w; congr

@[simp]
theorem coe_mk (v : Set α → M) (h₁) (h₂) (h₃) : (mk v h₁ h₂ h₃ : VectorMeasure α M) = v := rfl

initialize_simps_projections VectorMeasure (measureOf' → apply)

end

end VectorMeasure

end MeasureTheory
