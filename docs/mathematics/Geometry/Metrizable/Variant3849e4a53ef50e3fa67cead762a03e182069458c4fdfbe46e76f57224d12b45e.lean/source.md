# Complete source: GRWTSK.Geometry.Metrizable.Variant3849e4a53ef50e3fa67cead762a03e182069458c4fdfbe46e76f57224d12b45e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1cabecf02750c4e06acce5ad13f76fc342c1530` · SHA-256 `24699d33fe8e535549f903f65b7bf9e565a4f91d219d391cc8a99aa7e7f6ac9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ManifoldWithCornersMetrizableSpace.Variant5f30ab4f7a3e1b50d8fa4ff55f2b5aab4f6ea6218e1a2caee00f7e7634cdf709","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f30ab4f7a3e1b50d8fa4ff55f2b5aab4f6ea6218e1a2caee00f7e7634cdf709","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ManifoldWithCornersMetrizableSpace.Variant5f30ab4f7a3e1b50d8fa4ff55f2b5aab4f6ea6218e1a2caee00f7e7634cdf709","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"5f30ab4f7a3e1b50d8fa4ff55f2b5aab4f6ea6218e1a2caee00f7e7634cdf709","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Geometry/Manifold/Metrizable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Geometry.Manifold.SmoothManifoldWithCorners
import Mathlib.Topology.Paracompact
import Mathlib.Topology.MetricSpace.Metrizable


namespace GRWTSK.Geometry.ManifoldWithCornersMetrizableSpace.Variant5f30ab4f7a3e1b50d8fa4ff55f2b5aab4f6ea6218e1a2caee00f7e7634cdf709

#align_import geometry.manifold.metrizable from "leanprover-community/mathlib"@"d1bd9c5df2867c1cb463bc6364446d57bdd9f7f1"

/-!
# Metrizability of a σ-compact manifold

In this file we show that a σ-compact Hausdorff topological manifold over a finite dimensional real
vector space is metrizable.
-/


open TopologicalSpace

/-- A σ-compact Hausdorff topological manifold over a finite dimensional real vector space is
metrizable. -/
theorem ManifoldWithCorners.metrizableSpace {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [FiniteDimensional ℝ E] {H : Type*} [TopologicalSpace H] (I : ModelWithCorners ℝ E H)
    (M : Type*) [TopologicalSpace M] [ChartedSpace H M] [SigmaCompactSpace M] [T2Space M] :
    MetrizableSpace M := by
  haveI := I.locallyCompactSpace; haveI := ChartedSpace.locallyCompactSpace H M
  haveI : NormalSpace M := normal_of_paracompact_t2
  haveI := I.secondCountableTopology
  haveI := ChartedSpace.secondCountable_of_sigma_compact H M
  exact metrizableSpace_of_t3_second_countable M
#align manifold_with_corners.metrizable_space ManifoldWithCorners.metrizableSpace
```
