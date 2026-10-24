# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedMonoid.Variant9a808e4ec3abcabfea2de1a0622e7f21fd3bb76a7fcde57ed6b7f634fd4a3ab3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d37000273dc51ac7475297be2082d5a714cc4254` · SHA-256 `99ad69e86420c263ac7bb0c4bb0303a787e0697d967acc6e61ef7f681a70ba13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Multiset.Variantdf6ec6afab7371519a6fe9b6caf312da030cd463718dc4c987a2e5c734b74b43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df6ec6afab7371519a6fe9b6caf312da030cd463718dc4c987a2e5c734b74b43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Multiset.Variantdf6ec6afab7371519a6fe9b6caf312da030cd463718dc4c987a2e5c734b74b43","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"df6ec6afab7371519a6fe9b6caf312da030cd463718dc4c987a2e5c734b74b43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Multiset/OrderedMonoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Order.Group.Multiset
import Mathlib.Algebra.Order.Monoid.Canonical.Defs

/-!
# Multisets as ordered monoids

The `IsOrderedCancelAddMonoid` and `CanonicallyOrderedAdd` instances on `Multiset α`

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Multiset.Variantdf6ec6afab7371519a6fe9b6caf312da030cd463718dc4c987a2e5c734b74b43

variable {α : Type*}

namespace Multiset

open List

instance : IsOrderedCancelAddMonoid (Multiset α) where
  add_le_add_left := fun _ _ => add_le_add_left
  le_of_add_le_add_left := fun _ _ _ => le_of_add_le_add_left

instance : CanonicallyOrderedAdd (Multiset α) where
  le_self_add := le_add_right
  exists_add_of_le h := exists_add_of_le h

end Multiset
```
