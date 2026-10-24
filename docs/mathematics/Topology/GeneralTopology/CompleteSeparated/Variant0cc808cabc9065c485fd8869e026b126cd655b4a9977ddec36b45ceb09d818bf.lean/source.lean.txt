-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsCompleteIsClosed.Variantfee93f12ba66e401279be030147e335379924dffecf28d33530753143ef66f27","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fee93f12ba66e401279be030147e335379924dffecf28d33530753143ef66f27","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsCompleteIsClosed.Variantfee93f12ba66e401279be030147e335379924dffecf28d33530753143ef66f27","mathematical_subject":"Topology.GeneralTopology","original_sha256":"fee93f12ba66e401279be030147e335379924dffecf28d33530753143ef66f27","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/UniformSpace/CompleteSeparated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Topology.UniformSpace.UniformEmbedding

/-!
# Theory of complete separated uniform spaces.

This file is for elementary lemmas that depend on both Cauchy filters and separation.
-/



namespace GRWTSK.Topology.GeneralTopology.IsCompleteIsClosed.Variantfee93f12ba66e401279be030147e335379924dffecf28d33530753143ef66f27

open Filter

open Topology Filter

variable {α β : Type*}

/-- In a separated space, a complete set is closed. -/
theorem IsComplete.isClosed [UniformSpace α] [T0Space α] {s : Set α} (h : IsComplete s) :
    IsClosed s :=
  isClosed_iff_clusterPt.2 fun a ha => by
    let f := 𝓝[s] a
    have : Cauchy f := cauchy_nhds.mono' ha inf_le_left
    rcases h f this inf_le_right with ⟨y, ys, fy⟩
    rwa [(tendsto_nhds_unique' ha inf_le_left fy : a = y)]

theorem IsUniformEmbedding.isClosedEmbedding [UniformSpace α] [UniformSpace β] [CompleteSpace α]
    [T0Space β] {f : α → β} (hf : IsUniformEmbedding f) :
    IsClosedEmbedding f :=
  ⟨hf.isEmbedding, hf.isUniformInducing.isComplete_range.isClosed⟩

@[deprecated (since := "2024-10-30")]
alias IsUniformEmbedding.toIsClosedEmbedding := IsUniformEmbedding.isClosedEmbedding

namespace IsDenseInducing

open Filter

variable [TopologicalSpace α] {β : Type*} [TopologicalSpace β]
variable {γ : Type*} [UniformSpace γ] [CompleteSpace γ] [T0Space γ]

theorem continuous_extend_of_cauchy {e : α → β} {f : α → γ} (de : IsDenseInducing e)
    (h : ∀ b : β, Cauchy (map f (comap e <| 𝓝 b))) : Continuous (de.extend f) :=
  de.continuous_extend fun b => CompleteSpace.complete (h b)

end IsDenseInducing
