# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RectangleDivisorAvoidance.Variantbb57deb67c892b0ca52ca390cd99f0c8ec16e54504cee93541366615cb62be26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c57a0771ca0f3b82e36754c565ae4c31b21927cf` · SHA-256 `4cd8fc630b34fcbd05486e9c6703d92d303f762b398d8a0117b85a8f92624df8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ExistsHeightAvoidingFinite.Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ExistsHeightAvoidingFinite.Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"d27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:13782afb56735f2a5a3426c2/workspace/lib/Surface/Core/ComplexAnalysis/RectangleDivisorAvoidance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ComplexAnalysis.LogDerivativeResidue
public import Mathlib.Order.Interval.Set.Infinite
import Mathlib.Tactic

/-!
# Rectangle coordinates avoiding a finite divisor

Compact meromorphic divisors have finite support.  Hence horizontal and
vertical contour coordinates can be selected in any nonempty open interval
while avoiding every zero or pole in that support.

These selection lemmas are geometric bookkeeping only.  They do not assert
circle integrability, pole excision, a residue theorem, or a contour shift
through singularities.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ExistsHeightAvoidingFinite.Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Set Complex

/-- Every nonempty real interval contains a height different from the
imaginary coordinate of every point in a prescribed finite complex set. -/
@[surface_novel, surface_published]
theorem exists_height_avoiding_finite
    {S : Set ℂ} (hS : S.Finite) {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b, ∀ z ∈ S, z.im ≠ t := by
  obtain ⟨t, htI, htNot⟩ :=
    (Set.Ioo_infinite hab).exists_notMem_finite (hS.image Complex.im)
  refine ⟨t, htI, ?_⟩
  intro z hz hzt
  exact htNot ⟨z, hz, hzt⟩

/-- Real-coordinate counterpart of `exists_height_avoiding_finite`. -/
@[surface_novel, surface_published]
theorem exists_real_avoiding_finite
    {S : Set ℂ} (hS : S.Finite) {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b, ∀ z ∈ S, z.re ≠ t := by
  obtain ⟨t, htI, htNot⟩ :=
    (Set.Ioo_infinite hab).exists_notMem_finite (hS.image Complex.re)
  refine ⟨t, htI, ?_⟩
  intro z hz hzt
  exact htNot ⟨z, hz, hzt⟩

/-- Select a horizontal contour coordinate avoiding the divisor support on a
compact rectangle. -/
@[surface_novel, surface_published]
theorem exists_height_avoiding_rectangleDivisor
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b,
      ∀ p ∈ rectangleDivisorSupportFinset f z w hf, p.im ≠ t := by
  obtain ⟨t, ht, hav⟩ :=
    exists_height_avoiding_finite (rectangleDivisor_support_finite hf) hab
  refine ⟨t, ht, ?_⟩
  intro p hp
  exact hav p ((mem_rectangleDivisorSupportFinset hf).mp hp)

/-- Select a vertical contour coordinate avoiding the divisor support on a
compact rectangle. -/
@[surface_novel, surface_published]
theorem exists_real_avoiding_rectangleDivisor
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b,
      ∀ p ∈ rectangleDivisorSupportFinset f z w hf, p.re ≠ t := by
  obtain ⟨t, ht, hav⟩ :=
    exists_real_avoiding_finite (rectangleDivisor_support_finite hf) hab
  refine ⟨t, ht, ?_⟩
  intro p hp
  exact hav p ((mem_rectangleDivisorSupportFinset hf).mp hp)

end

end Surface.Core.ComplexAnalysis
```
