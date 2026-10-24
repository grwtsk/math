-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Int.Variant2027072b5b95e7f4e0c776f1970ff614949f51d3e1532465debf9eb8990f3ec9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2027072b5b95e7f4e0c776f1970ff614949f51d3e1532465debf9eb8990f3ec9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Int.Variant2027072b5b95e7f4e0c776f1970ff614949f51d3e1532465debf9eb8990f3ec9","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"2027072b5b95e7f4e0c776f1970ff614949f51d3e1532465debf9eb8990f3ec9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Group/Int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Algebra.Group.Int.Defs
import Mathlib.Algebra.Order.Monoid.Defs

/-!
# The integers form a linear ordered group

This file contains the instance necessary to show that the integers are a linear ordered
additive group.

See note [foundational algebra order theory].
-/

-- We should need only a minimal development of sets in order to get here.

namespace GRWTSK.Algebra.UniversalAlgebra.Int.Variant2027072b5b95e7f4e0c776f1970ff614949f51d3e1532465debf9eb8990f3ec9

assert_not_exists Set.Subsingleton Ring

instance Int.instIsOrderedAddMonoid : IsOrderedAddMonoid ℤ where
  add_le_add_left _ _ := Int.add_le_add_left
