# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Section.Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aecd7642cc186fc8951865f6c0ed2cb2f12615be` · SHA-256 `de992a3f81c76255214f2d53c12f265469d1314611b645480f8f34360387ef74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ExistsOutContinuousLinearMap.Variantbb0ba5e9ddfb0f3e43f98a700c5bf06bf3c70c99d8be09147889ed86a8c38e07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb0ba5e9ddfb0f3e43f98a700c5bf06bf3c70c99d8be09147889ed86a8c38e07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.ExistsOutContinuousLinearMap.Variantbb0ba5e9ddfb0f3e43f98a700c5bf06bf3c70c99d8be09147889ed86a8c38e07","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"bb0ba5e9ddfb0f3e43f98a700c5bf06bf3c70c99d8be09147889ed86a8c38e07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/SeparationQuotient/Section.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.Module.Projective
import Mathlib.LinearAlgebra.Basis.VectorSpace
import Mathlib.Topology.Algebra.SeparationQuotient.Basic
import Mathlib.Topology.Maps.OpenQuotient

/-!
# Algebraic operations on `SeparationQuotient`

In this file we construct a section of the quotient map `E → SeparationQuotient E` as a continuous
linear map `SeparationQuotient E →L[K] E`.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ExistsOutContinuousLinearMap.Variantbb0ba5e9ddfb0f3e43f98a700c5bf06bf3c70c99d8be09147889ed86a8c38e07

open Topology

namespace SeparationQuotient
section VectorSpace

variable (K E : Type*) [DivisionRing K] [AddCommGroup E] [Module K E]
  [TopologicalSpace E] [IsTopologicalAddGroup E] [ContinuousConstSMul K E]

/-- There exists a continuous `K`-linear map from `SeparationQuotient E` to `E`
such that `mk (outCLM x) = x` for all `x`.

Note that continuity of this map comes for free, because `mk` is a topology inducing map.
-/
theorem exists_out_continuousLinearMap :
    ∃ f : SeparationQuotient E →L[K] E, mkCLM K E ∘L f = .id K (SeparationQuotient E) := by
  rcases (mkCLM K E).toLinearMap.exists_rightInverse_of_surjective
    (LinearMap.range_eq_top.mpr surjective_mk) with ⟨f, hf⟩
  replace hf : mk ∘ f = id := congr_arg DFunLike.coe hf
  exact ⟨⟨f, isInducing_mk.continuous_iff.2 (by continuity)⟩, DFunLike.ext' hf⟩

/-- A continuous `K`-linear map from `SeparationQuotient E` to `E`
such that `mk (outCLM x) = x` for all `x`. -/
noncomputable def outCLM : SeparationQuotient E →L[K] E :=
  (exists_out_continuousLinearMap K E).choose

@[simp]
theorem mkCLM_comp_outCLM : mkCLM K E ∘L outCLM K E = .id K (SeparationQuotient E) :=
  (exists_out_continuousLinearMap K E).choose_spec

variable {E} in
@[simp]
theorem mk_outCLM (x : SeparationQuotient E) : mk (outCLM K E x) = x :=
  DFunLike.congr_fun (mkCLM_comp_outCLM K E) x

@[simp]
theorem mk_comp_outCLM : mk ∘ outCLM K E = id := funext (mk_outCLM K)

variable {K} in
theorem postcomp_mkCLM_surjective {L : Type*} [Semiring L] (σ : L →+* K)
    (F : Type*) [AddCommMonoid F] [Module L F] [TopologicalSpace F] :
    Function.Surjective ((mkCLM K E).comp : (F →SL[σ] E) → (F →SL[σ] SeparationQuotient E)) := by
  intro f
  use (outCLM K E).comp f
  rw [← ContinuousLinearMap.comp_assoc, mkCLM_comp_outCLM, ContinuousLinearMap.id_comp]

/-- The `SeparationQuotient.outCLM K E` map is a topological embedding. -/
theorem isEmbedding_outCLM : IsEmbedding (outCLM K E) :=
  Function.LeftInverse.isEmbedding (mk_outCLM K) continuous_mk (map_continuous _)

@[deprecated (since := "2024-10-26")]
alias outCLM_embedding := isEmbedding_outCLM

theorem outCLM_injective : Function.Injective (outCLM K E) :=
  (isEmbedding_outCLM K E).injective

end VectorSpace

section VectorSpaceUniform

variable (K E : Type*) [DivisionRing K] [AddCommGroup E] [Module K E]
    [UniformSpace E] [IsUniformAddGroup E] [ContinuousConstSMul K E]

theorem outCLM_isUniformInducing : IsUniformInducing (outCLM K E) := by
  rw [← isUniformInducing_mk.isUniformInducing_comp_iff, mk_comp_outCLM]
  exact .id

theorem outCLM_isUniformEmbedding : IsUniformEmbedding (outCLM K E) where
  injective := outCLM_injective K E
  toIsUniformInducing := outCLM_isUniformInducing K E

theorem outCLM_uniformContinuous : UniformContinuous (outCLM K E) :=
  (outCLM_isUniformInducing K E).uniformContinuous

end VectorSpaceUniform
end SeparationQuotient
```
