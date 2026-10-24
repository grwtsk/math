# Complete source: GRWTSK.Topology.GeneralTopology.Metrizable.Variantf588d509cfa00f25b9aa2d34625b609ca59e9edd041d5fb125b528e5c32b1117

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2040ec0ae69debdd585804d7d3392e889621889` · SHA-256 `6fdbab4fe056ee8a623232ff6778727a143094ac0b16ca84a80c0077ed2e189e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ManifoldMetrizableSpace.Varianta2ea4cb8e09e91b6f12779e8c3b84377ca1d2f27c939e4f42a69f560ee49950e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2ea4cb8e09e91b6f12779e8c3b84377ca1d2f27c939e4f42a69f560ee49950e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ManifoldMetrizableSpace.Varianta2ea4cb8e09e91b6f12779e8c3b84377ca1d2f27c939e4f42a69f560ee49950e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a2ea4cb8e09e91b6f12779e8c3b84377ca1d2f27c939e4f42a69f560ee49950e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Manifold/Metrizable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.Geometry.Manifold.IsManifold.Basic
import Mathlib.Topology.Compactness.Paracompact
import Mathlib.Topology.Metrizable.Urysohn

/-!
# Metrizability of a σ-compact manifold

In this file we show that a σ-compact Hausdorff topological manifold over a finite dimensional real
vector space is metrizable.
-/



namespace GRWTSK.Topology.GeneralTopology.ManifoldMetrizableSpace.Varianta2ea4cb8e09e91b6f12779e8c3b84377ca1d2f27c939e4f42a69f560ee49950e

open TopologicalSpace

/-- A σ-compact Hausdorff topological manifold over a finite dimensional real vector space is
metrizable. -/
theorem Manifold.metrizableSpace {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [FiniteDimensional ℝ E] {H : Type*} [TopologicalSpace H] (I : ModelWithCorners ℝ E H)
    (M : Type*) [TopologicalSpace M] [ChartedSpace H M] [SigmaCompactSpace M] [T2Space M] :
    MetrizableSpace M := by
  haveI := I.locallyCompactSpace; haveI := ChartedSpace.locallyCompactSpace H M
  haveI := I.secondCountableTopology
  haveI := ChartedSpace.secondCountable_of_sigmaCompact H M
  exact metrizableSpace_of_t3_secondCountable M
@[deprecated (since := "2024-11-11")] alias ManifoldWithCorners.metrizableSpace :=
  Manifold.metrizableSpace
```
