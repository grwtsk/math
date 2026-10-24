-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousToENNReal.Variant70ff94d03c076eb5b74c99dee2eb0e1fd3d82574031631c0fea2f0504e05ddfb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70ff94d03c076eb5b74c99dee2eb0e1fd3d82574031631c0fea2f0504e05ddfb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousToENNReal.Variant70ff94d03c076eb5b74c99dee2eb0e1fd3d82574031631c0fea2f0504e05ddfb","mathematical_subject":"Topology.GeneralTopology","original_sha256":"70ff94d03c076eb5b74c99dee2eb0e1fd3d82574031631c0fea2f0504e05ddfb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Instances/ENNReal/ENatENNReal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Weiyi Wang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Weiyi Wang
-/
module

public import Mathlib.Basic.Real.ENatENNReal
public import Mathlib.Topology.Instances.ENat
import Mathlib.Algebra.Order.Floor.Extended
public import Mathlib.Algebra.Order.Module.Field
public import Mathlib.Data.EReal.Operations
public import Mathlib.Topology.Algebra.InfiniteSum.Order
public import Mathlib.Topology.MetricSpace.Bounded
public import Mathlib.Topology.Order.Real

/-!
# Topology lemma for `ENat.toENNReal`

This file shows `ENat.toENNReal` is a closed embedding.
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousToENNReal.Variant70ff94d03c076eb5b74c99dee2eb0e1fd3d82574031631c0fea2f0504e05ddfb

public section

namespace ENat

@[continuity]
theorem continuous_toENNReal : Continuous toENNReal := by
  refine OrderTopology.continuous_iff.mpr fun a ↦ ⟨?_, ?_⟩
  · simpa using isOpen_Ioi
  · simpa using isOpen_Iio

theorem isClosedEmbedding_toENNReal : Topology.IsClosedEmbedding toENNReal :=
  continuous_toENNReal.isClosedEmbedding toENNReal_strictMono.injective

end ENat
