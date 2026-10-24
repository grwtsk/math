# Complete source: GRWTSK.Analysis.MeromorphicOrder.Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0baf2728e5113bccfaf0dd54321b9939eb05563` · SHA-256 `0ce44f082bdcc87832416a81745a2f25fb98f2dd0e20f9f8a90e0973630a1ef6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RectangleDivisor.Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RectangleDivisor.Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0f8be735e72b86798936f454/workspace/lib/Surface/Core/ComplexAnalysis/MeromorphicOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ComplexAnalysis.RectangleContour
public import Mathlib.Analysis.Meromorphic.Divisor
import Mathlib.Tactic

/-!
# Meromorphic orders on compact rectangles

This module packages the multiplicity-bearing divisor already supplied by
mathlib and proves that its support on a compact rectangle is finite.  It does
not identify divisor coefficients with contour residues.
-/


namespace GRWTSK.Analysis.RectangleDivisor.Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Set Complex

/-- Integer-valued meromorphic divisor restricted to a closed rectangle. -/
@[expose]
def rectangleDivisor (f : ℂ → ℂ) (z w : ℂ) :
    Function.locallyFinsuppWithin (closedRectangle z w) ℤ :=
  MeromorphicOn.divisor f (closedRectangle z w)

/-- Pointwise divisor coefficients are totalized meromorphic orders. -/
@[surface_adapter, surface_published]
theorem rectangleDivisor_apply
    {f : ℂ → ℂ} {z w s : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    (hs : s ∈ closedRectangle z w) :
    rectangleDivisor f z w s = (meromorphicOrderAt f s).untop₀ := by
  exact MeromorphicOn.divisor_apply hf hs

/-- A compact rectangle meets the zero/pole divisor in only finitely many
points. -/
@[surface_novel, surface_published]
theorem rectangleDivisor_support_finite
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w)) :
    (rectangleDivisor f z w).support.Finite := by
  exact hf.divisor_support_finite_of_subset
    (isCompact_closedRectangle z w) Subset.rfl

/-- Finite support set used by future finite contour bookkeeping. -/
@[expose]
def rectangleDivisorSupportFinset
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : MeromorphicOn f (closedRectangle z w)) : Finset ℂ :=
  (rectangleDivisor_support_finite hf).toFinset

@[surface_adapter, simp]
theorem mem_rectangleDivisorSupportFinset
    {f : ℂ → ℂ} {z w s : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w)) :
    s ∈ rectangleDivisorSupportFinset f z w hf ↔
      rectangleDivisor f z w s ≠ 0 := by
  simp [rectangleDivisorSupportFinset, Function.mem_support]

end

end Surface.Core.ComplexAnalysis
```
