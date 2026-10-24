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
