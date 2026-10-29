-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Metrizable.Variant6ad7d23c98e56ba3902272356d4d523393d336f9d280f5b11093e4f7070851f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ad7d23c98e56ba3902272356d4d523393d336f9d280f5b11093e4f7070851f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Metrizable.Variant6ad7d23c98e56ba3902272356d4d523393d336f9d280f5b11093e4f7070851f3","mathematical_subject":"Topology.GeneralTopology","original_sha256":"6ad7d23c98e56ba3902272356d4d523393d336f9d280f5b11093e4f7070851f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Metrizable/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Topology.Metrizable.Basic
import Mathlib.Topology.Order.MonotoneContinuity
import Mathlib.Topology.Order.Real

/-!
# `ENNReal` is metrizable

## Implementation details

This file currently only contains results on `ENNReal` but is named `Real.lean`
to make it clear we can accept more `(E)(NN)Real` results.
-/


namespace GRWTSK.Topology.GeneralTopology.Metrizable.Variant6ad7d23c98e56ba3902272356d4d523393d336f9d280f5b11093e4f7070851f3

namespace ENNReal

open NNReal TopologicalSpace

instance : MetrizableSpace ENNReal :=
  orderIsoUnitIntervalBirational.toHomeomorph.isEmbedding.metrizableSpace

end ENNReal
