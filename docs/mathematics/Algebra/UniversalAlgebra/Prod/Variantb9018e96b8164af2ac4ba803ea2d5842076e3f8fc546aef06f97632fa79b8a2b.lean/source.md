# Complete source: GRWTSK.Algebra.UniversalAlgebra.Prod.Variantb9018e96b8164af2ac4ba803ea2d5842076e3f8fc546aef06f97632fa79b8a2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d40e6dbcd4c6f23f844f3cf4bb26a90e6f3d8154` · SHA-256 `1b6598222cd50237118b7d9be454e1643c27bc48e47b32bbb7dbe8bf0042ccea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Star.Variant78496575cd9c281080a8081a32c9583dd789e8f7c585d06098831995f219edd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78496575cd9c281080a8081a32c9583dd789e8f7c585d06098831995f219edd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Star.Variant78496575cd9c281080a8081a32c9583dd789e8f7c585d06098831995f219edd0","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"78496575cd9c281080a8081a32c9583dd789e8f7c585d06098831995f219edd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Star/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Star.Prod
import Mathlib.Algebra.Ring.Prod

/-!
# Products of star-ordered rings
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Star.Variant78496575cd9c281080a8081a32c9583dd789e8f7c585d06098831995f219edd0

variable {α β : Type*}

open AddSubmonoid in
instance Prod.instStarOrderedRing
    [NonUnitalSemiring α] [NonUnitalSemiring β] [PartialOrder α] [PartialOrder β]
    [StarRing α] [StarRing β] [StarOrderedRing α] [StarOrderedRing β] :
    StarOrderedRing (α × β) where
  le_iff := Prod.forall.2 fun xa xy => Prod.forall.2 fun ya yb => by
    have :
        closure (Set.range fun s : α × β ↦ star s * s) =
          (closure <| Set.range fun s : α ↦ star s * s).prod
          (closure <| Set.range fun s : β ↦ star s * s) := by
      rw [← closure_prod (Set.mem_range.2 ⟨0, by simp⟩) (Set.mem_range.2 ⟨0, by simp⟩),
        Set.prod_range_range_eq]
      simp_rw [Prod.mul_def, Prod.star_def]
    simp only [mk_le_mk, Prod.exists, mk_add_mk, mk.injEq, StarOrderedRing.le_iff, this,
      AddSubmonoid.mem_prod, exists_and_exists_comm, and_and_and_comm]
```
