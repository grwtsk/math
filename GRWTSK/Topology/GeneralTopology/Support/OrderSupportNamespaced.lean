-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.HasCompactMulSupportSup.Variant0d0d65bce2fef08e653758b66429affd9bef49e6919e4b11ac1261875d894e88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d0d65bce2fef08e653758b66429affd9bef49e6919e4b11ac1261875d894e88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.HasCompactMulSupportSup.Variant0d0d65bce2fef08e653758b66429affd9bef49e6919e4b11ac1261875d894e88","mathematical_subject":"Topology.GeneralTopology","original_sha256":"0d0d65bce2fef08e653758b66429affd9bef49e6919e4b11ac1261875d894e88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Order/Support.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yoh Tanimoto. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yoh Tanimoto
-/
import Mathlib.Algebra.Order.Group.Indicator
import Mathlib.Topology.Algebra.Support

/-!
# The topological support of sup and inf of functions

In a topological space `X` and a space `M` with `Sup` structure, for `f g : X → M` with compact
support, we show that `f ⊔ g` has compact support. Similarly, in `β` with `Inf` structure, `f ⊓ g`
has compact support if so do `f` and `g`.

-/


namespace GRWTSK.Topology.GeneralTopology.HasCompactMulSupportSup.Variant0d0d65bce2fef08e653758b66429affd9bef49e6919e4b11ac1261875d894e88

variable {X M : Type*} [TopologicalSpace X] [One M]

section SemilatticeSup

variable [SemilatticeSup M]

@[to_additive]
theorem HasCompactMulSupport.sup {f g : X → M} (hf : HasCompactMulSupport f)
    (hg : HasCompactMulSupport g) :  HasCompactMulSupport (f ⊔ g) := by
  apply IsCompact.of_isClosed_subset (IsCompact.union hf hg) (isClosed_mulTSupport _)
  rw [mulTSupport, mulTSupport, mulTSupport, ← closure_union]
  apply closure_mono
  exact Function.mulSupport_sup f g

end SemilatticeSup

section SemilatticeInf

variable [SemilatticeInf M]

@[to_additive]
theorem HasCompactMulSupport.inf {f g : X → M} (hf : HasCompactMulSupport f)
    (hg : HasCompactMulSupport g) :  HasCompactMulSupport (f ⊓ g) := by
  apply IsCompact.of_isClosed_subset (IsCompact.union hf hg) (isClosed_mulTSupport _)
  rw [mulTSupport, mulTSupport, mulTSupport, ← closure_union]
  apply closure_mono
  exact Function.mulSupport_inf f g

end SemilatticeInf
