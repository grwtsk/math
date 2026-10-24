# Complete source: GRWTSK.Topology.GeneralTopology.Real.Variant081fa0243abae706e60680b21c0a62e1fadfd3bbcba1f4dce27d483daa4e506c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `815e6ed14f0a041dc3bd372f0b4e43066f77f6c0` · SHA-256 `4d8863d78ac80ea077cd29b882c0b372d88fe2592ecccc04bef506c489216a25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
