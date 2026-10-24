# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant9a577c9076af2205c829cc2166a169a0a6faf20a8c850f73d9eda4ca42875663

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e29b7c2d5df37e52c97848ded58a3a47b8d5214` · SHA-256 `cba6d2ab960d93b2918e709ffdde86be55f1c0804274b1e93c8e4935e843adf3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Canonical.Variantf8f7db6a5c3039626bb24a245a88f65b150390f5b108d87bb1d740ba1666623a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8f7db6a5c3039626bb24a245a88f65b150390f5b108d87bb1d740ba1666623a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Canonical.Variantf8f7db6a5c3039626bb24a245a88f65b150390f5b108d87bb1d740ba1666623a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f8f7db6a5c3039626bb24a245a88f65b150390f5b108d87bb1d740ba1666623a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Monoid/Canonical/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Monoid.Canonical.Defs
import Mathlib.Data.Finset.Lattice.Fold

/-!
# Extra lemmas about canonically ordered monoids
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Canonical.Variantf8f7db6a5c3039626bb24a245a88f65b150390f5b108d87bb1d740ba1666623a

namespace Finset
variable {ι α : Type*} [AddCommMonoid α] [LinearOrder α] [OrderBot α] [CanonicallyOrderedAdd α]
  {s : Finset ι} {f : ι → α}

@[simp] lemma sup_eq_zero : s.sup f = 0 ↔ ∀ i ∈ s, f i = 0 := by simp [← bot_eq_zero']
@[simp] lemma sup'_eq_zero (hs) : s.sup' hs f = 0 ↔ ∀ i ∈ s, f i = 0 := by simp [sup'_eq_sup]

end Finset
```
