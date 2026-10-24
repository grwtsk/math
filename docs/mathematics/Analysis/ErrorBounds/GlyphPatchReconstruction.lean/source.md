# Complete source: GRWTSK.Analysis.ErrorBounds.GlyphPatchReconstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d31527241075e29dffc6ccc6ce20d0ae27bafe4e` · SHA-256 `25ef8b7f6d832c484f6714bc1239b225b674cf32d197c1d380672436d8e6c5e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Geometry.QuadraticBezierContact
import Mathlib.Algebra.Order.BigOperators.Group.Finset

set_option autoImplicit false

open scoped BigOperators

/-!
# Patchwise signed-output error for quadratic glyph reconstruction

A finite quadratic outline may be reconstructed from exact or approximate patches and
Hermite contacts. The terminal consumer is signed: it can represent an oriented contour
readout, winding surrogate, coverage functional, or another scalar observation.

The theorem below does not define winding or prove rasterization correctness. It states the
compositional estimate required by such a consumer: source, patch, contact, and truncation
errors are all retained and charged separately. Exact de Casteljau subdivision contributes
zero source and contact defect; polygonalization and measurement errors must be supplied by
independent certificates.
-/

namespace GRWTSK.Analysis.ErrorBounds.GlyphPatchReconstruction

/-- Separately typed budgets for a finite patch reconstruction. -/
structure Budget (Patch Contact : Type*) where
  source : ℝ
  patch : Patch → ℝ
  contact : Contact → ℝ
  truncation : ℝ

/-- The total budget over the selected patches and contacts. -/
def Budget.total {Patch Contact : Type*} (budget : Budget Patch Contact)
    (patches : Finset Patch) (contacts : Finset Contact) : ℝ :=
  budget.source + (∑ patch ∈ patches, budget.patch patch) +
    (∑ contact ∈ contacts, budget.contact contact) + budget.truncation

/-- Every signed reconstruction discrepancy is bounded by the sum of the independently
certified source, patch, contact, and truncation budgets. -/
theorem signed_output_error_bound
    {Patch Contact : Type*}
    (patches : Finset Patch) (contacts : Finset Contact)
    (actual reconstructed sourceError truncationError : ℝ)
    (patchError : Patch → ℝ) (contactError : Contact → ℝ)
    (budget : Budget Patch Contact)
    (decomposition :
      actual - reconstructed =
        sourceError + (∑ patch ∈ patches, patchError patch) +
          (∑ contact ∈ contacts, contactError contact) + truncationError)
    (sourceBound : |sourceError| ≤ budget.source)
    (patchBound : ∀ patch ∈ patches, |patchError patch| ≤ budget.patch patch)
    (contactBound : ∀ contact ∈ contacts,
      |contactError contact| ≤ budget.contact contact)
    (truncationBound : |truncationError| ≤ budget.truncation) :
    |actual - reconstructed| ≤ budget.total patches contacts := by
  have patchTotal :
      |∑ patch ∈ patches, patchError patch| ≤
        ∑ patch ∈ patches, budget.patch patch := by
    calc
      |∑ patch ∈ patches, patchError patch| ≤
          ∑ patch ∈ patches, |patchError patch| :=
        Finset.abs_sum_le_sum_abs patchError patches
      _ ≤ ∑ patch ∈ patches, budget.patch patch :=
        Finset.sum_le_sum patchBound
  have contactTotal :
      |∑ contact ∈ contacts, contactError contact| ≤
        ∑ contact ∈ contacts, budget.contact contact := by
    calc
      |∑ contact ∈ contacts, contactError contact| ≤
          ∑ contact ∈ contacts, |contactError contact| :=
        Finset.abs_sum_le_sum_abs contactError contacts
      _ ≤ ∑ contact ∈ contacts, budget.contact contact :=
        Finset.sum_le_sum contactBound
  rw [decomposition]
  unfold Budget.total
  calc
    |sourceError + (∑ patch ∈ patches, patchError patch) +
        (∑ contact ∈ contacts, contactError contact) + truncationError|
        ≤ |sourceError + (∑ patch ∈ patches, patchError patch) +
              (∑ contact ∈ contacts, contactError contact)| +
            |truncationError| :=
      abs_add_le _ _
    _ ≤ (|sourceError + (∑ patch ∈ patches, patchError patch)| +
            |∑ contact ∈ contacts, contactError contact|) +
          |truncationError| := by
      gcongr
      exact abs_add_le _ _
    _ ≤ ((|sourceError| + |∑ patch ∈ patches, patchError patch|) +
            |∑ contact ∈ contacts, contactError contact|) +
          |truncationError| := by
      gcongr
      exact abs_add_le _ _
    _ ≤ budget.source + (∑ patch ∈ patches, budget.patch patch) +
          (∑ contact ∈ contacts, budget.contact contact) + budget.truncation := by
      exact add_le_add
        (add_le_add (add_le_add sourceBound patchTotal) contactTotal)
        truncationBound

end GRWTSK.Analysis.ErrorBounds.GlyphPatchReconstruction
```
