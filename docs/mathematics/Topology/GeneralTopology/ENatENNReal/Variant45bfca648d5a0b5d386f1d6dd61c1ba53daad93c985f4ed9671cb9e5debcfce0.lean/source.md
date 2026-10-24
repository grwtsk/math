# Complete source: GRWTSK.Topology.GeneralTopology.ENatENNReal.Variant45bfca648d5a0b5d386f1d6dd61c1ba53daad93c985f4ed9671cb9e5debcfce0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9082100fb4f8e692f066e9e6c670f0852625ae00` · SHA-256 `266d43738552b12d746e433e71029a94e068accee61d76c3d9f4922fe1283c5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
