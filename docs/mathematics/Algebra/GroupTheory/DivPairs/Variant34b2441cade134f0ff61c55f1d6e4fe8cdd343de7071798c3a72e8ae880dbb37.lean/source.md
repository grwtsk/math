# Complete source: GRWTSK.Algebra.GroupTheory.DivPairs.Variant34b2441cade134f0ff61c55f1d6e4fe8cdd343de7071798c3a72e8ae880dbb37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce8a2569c72c0e1b526918975668f293a233ae5a` · SHA-256 `05db0a2da86419d4092a372cb4e14d09cc35aff6210174a51580fafac94133cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.DivPairs.Variant54b7fd566932b0df88fddafdce95a6d52fae9200a62c160614eb85bf8dddc640","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"54b7fd566932b0df88fddafdce95a6d52fae9200a62c160614eb85bf8dddc640","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.DivPairs.Variant54b7fd566932b0df88fddafdce95a6d52fae9200a62c160614eb85bf8dddc640","mathematical_subject":"Algebra.Groups","original_sha256":"54b7fd566932b0df88fddafdce95a6d52fae9200a62c160614eb85bf8dddc640","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/MonoidLocalization/DivPairs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies, Michał Mrugała. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Michał Mrugała
-/
import Mathlib.GroupTheory.MonoidLocalization.Basic

/-!
# Submonoid of pairs with quotient in a submonoid

This file defines the submonoid of pairs whose quotient lies in a submonoid of the localization.
-/


namespace GRWTSK.Algebra.GroupTheory.DivPairs.Variant54b7fd566932b0df88fddafdce95a6d52fae9200a62c160614eb85bf8dddc640

variable {M G H : Type*} [CommMonoid M] [CommGroup G] [CommGroup H]
  {f : (⊤ : Submonoid M).LocalizationMap G} {g : (⊤ : Submonoid M).LocalizationMap H}
  {s : Submonoid G} {x : M × M}

namespace Submonoid

variable (f s) in
/-- Given a commutative monoid `M`, a localization map `f` to its Grothendieck group `G` and
a submonoid `s` of `G`, `s.divPairs f` is the submonoid of pairs `(a, b)`
such that `f a / f b ∈ s`. -/
@[to_additive
"Given an additive commutative monoid `M`, a localization map `f` to its Grothendieck group `G` and
a submonoid `s` of `G`, `s.subPairs f` is the submonoid of pairs `(a, b)`
such that `f a - f b ∈ s`."]
def divPairs : Submonoid (M × M) := s.comap <| divMonoidHom.comp <| f.toMap.prodMap f.toMap

@[to_additive (attr := simp)]
lemma mem_divPairs : x ∈ divPairs f s ↔ f.toMap x.1 / f.toMap x.2 ∈ s := .rfl

--TODO(Yaël): make simp once `LocalizationMap.toMonoidHom` is simp nf
variable (f g s) in
@[to_additive]
lemma divPairs_comap :
    divPairs g (.comap (g.mulEquivOfLocalizations f).toMonoidHom s) = divPairs f s := by
  ext; simp

end Submonoid
```
