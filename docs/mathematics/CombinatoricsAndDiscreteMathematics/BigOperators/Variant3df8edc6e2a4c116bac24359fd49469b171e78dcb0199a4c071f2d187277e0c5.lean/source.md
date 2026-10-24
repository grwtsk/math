# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7e6af20a8b1f839271b00865776b992e5541cbb` · SHA-256 `873365d24273fc8a4e2382ac3f25eda485a056a87d8c0ff6a52974b1b1382afc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CastListSum.Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CastListSum.Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Rat/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Data.Rat.Cast.CharZero
import Mathlib.Algebra.BigOperators.Group.Finset.Defs

/-! # Casting lemmas for rational numbers involving sums and products
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CastListSum.Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965

variable {ι α : Type*}

namespace Rat

section WithDivRing

variable [DivisionRing α] [CharZero α]

@[simp, norm_cast]
theorem cast_list_sum (s : List ℚ) : (↑s.sum : α) = (s.map (↑)).sum :=
  map_list_sum (Rat.castHom α) _

@[simp, norm_cast]
theorem cast_multiset_sum (s : Multiset ℚ) : (↑s.sum : α) = (s.map (↑)).sum :=
  map_multiset_sum (Rat.castHom α) _

@[simp, norm_cast]
theorem cast_sum (s : Finset ι) (f : ι → ℚ) : ∑ i ∈ s, f i = ∑ i ∈ s, (f i : α) :=
  map_sum (Rat.castHom α) _ s

@[simp, norm_cast]
theorem cast_list_prod (s : List ℚ) : (↑s.prod : α) = (s.map (↑)).prod :=
  map_list_prod (Rat.castHom α) _

end WithDivRing

section Field

variable [Field α] [CharZero α]

@[simp, norm_cast]
theorem cast_multiset_prod (s : Multiset ℚ) : (↑s.prod : α) = (s.map (↑)).prod :=
  map_multiset_prod (Rat.castHom α) _

@[simp, norm_cast]
theorem cast_prod (s : Finset ι) (f : ι → ℚ) : ∏ i ∈ s, f i = ∏ i ∈ s, (f i : α) :=
  map_prod (Rat.castHom α) _ _

end Field

end Rat
```
