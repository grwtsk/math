# Complete source: GRWTSK.Algebra.UniversalAlgebra.Star.Variant98ad3bac33e8ecc8a53110bab20c96b53b5b97f62ef6f7c3c32b25e1d00ead8d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc2eb7ce8e7ce0db6fbec6884d64c7717834627a` · SHA-256 `d9267831a1a21a17959918774d4670a42feddf88a0409698f1de0420dcf5cb57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.AddSubmonoidClosureRangeMulSelf.Variant6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.AddSubmonoidClosureRangeMulSelf.Variant6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Group.Abs
import Mathlib.Algebra.Order.Monoid.Submonoid
import Mathlib.Algebra.Order.Ring.Basic
import Mathlib.Algebra.Order.Ring.Int
import Mathlib.Algebra.Order.Star.Basic

/-!
# Star ordered ring structure on `ℤ`

This file shows that `ℤ` is a `StarOrderedRing`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.AddSubmonoidClosureRangeMulSelf.Variant6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532

open AddSubmonoid Set

namespace Int

@[simp] lemma addSubmonoid_closure_range_pow {n : ℕ} (hn : Even n) :
    closure (range fun x : ℤ ↦ x ^ n) = nonneg _ := by
  refine le_antisymm (closure_le.2 <| range_subset_iff.2 hn.pow_nonneg) fun x hx ↦ ?_
  have : x = x.natAbs • 1 ^ n := by simpa [eq_comm (a := x)] using hx
  rw [this]
  exact nsmul_mem (subset_closure <| mem_range_self _) _

@[simp]
lemma addSubmonoid_closure_range_mul_self : closure (range fun x : ℤ ↦ x * x) = nonneg _ := by
  simpa only [sq] using addSubmonoid_closure_range_pow even_two

instance instStarOrderedRing : StarOrderedRing ℤ where
  le_iff a b := by simp [eq_comm, le_iff_exists_nonneg_add (a := a)]

end Int
```
