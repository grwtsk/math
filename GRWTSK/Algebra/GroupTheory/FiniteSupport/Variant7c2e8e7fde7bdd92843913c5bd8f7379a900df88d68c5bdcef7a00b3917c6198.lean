-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MulSupportAlongFiberFiniteOfFinite.Variantb0b6cee4ce34f921a22f51ad639308ef8c73986b5233e86d447c61b80b3e0f39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0b6cee4ce34f921a22f51ad639308ef8c73986b5233e86d447c61b80b3e0f39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MulSupportAlongFiberFiniteOfFinite.Variantb0b6cee4ce34f921a22f51ad639308ef8c73986b5233e86d447c61b80b3e0f39","mathematical_subject":"Algebra.Groups","original_sha256":"b0b6cee4ce34f921a22f51ad639308ef8c73986b5233e86d447c61b80b3e0f39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/FiniteSupport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Algebra.Group.Support
import Mathlib.Data.Set.Finite.Basic

/-!
# Finiteness of support
-/


namespace GRWTSK.Algebra.GroupTheory.MulSupportAlongFiberFiniteOfFinite.Variantb0b6cee4ce34f921a22f51ad639308ef8c73986b5233e86d447c61b80b3e0f39

namespace Function
variable {α β γ : Type*} [One γ]

@[to_additive (attr := simp)]
lemma mulSupport_along_fiber_finite_of_finite (f : α × β → γ) (a : α) (h : (mulSupport f).Finite) :
    (mulSupport fun b ↦ f (a, b)).Finite :=
  (h.image Prod.snd).subset (mulSupport_along_fiber_subset f a)

end Function
