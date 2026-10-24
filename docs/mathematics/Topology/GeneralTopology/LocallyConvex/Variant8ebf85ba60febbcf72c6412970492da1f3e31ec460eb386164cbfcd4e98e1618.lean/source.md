# Complete source: GRWTSK.Topology.GeneralTopology.LocallyConvex.Variant8ebf85ba60febbcf72c6412970492da1f3e31ec460eb386164cbfcd4e98e1618

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `705ed2f5d85581406e87151b03cc1829f5be04ad` · SHA-256 `07384e0f51674b0a935f61ac545019b49b609e2dd56e74eee1e7cfb056beb335`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Algebra.Variantc2ba33b523dc45774a3cbedc8fdb9b48c0a5a7c23f851197536d31f6b4587887","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2ba33b523dc45774a3cbedc8fdb9b48c0a5a7c23f851197536d31f6b4587887","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Algebra.Variantc2ba33b523dc45774a3cbedc8fdb9b48c0a5a7c23f851197536d31f6b4587887","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c2ba33b523dc45774a3cbedc8fdb9b48c0a5a7c23f851197536d31f6b4587887","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/ContinuousMap/LocallyConvex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.ContinuousMap.Algebra
import Mathlib.Topology.Algebra.Module.LocallyConvex

/-!
# The space of continuous maps is a locally convex space

In this file we prove that the space of continuous maps from a topological space
to a locally convex topological vector space is a locally convex topological vector space.
-/


namespace GRWTSK.Topology.GeneralTopology.Algebra.Variantc2ba33b523dc45774a3cbedc8fdb9b48c0a5a7c23f851197536d31f6b4587887

open scoped Topology

instance ContinuousMap.instLocallyConvexSpace {X 𝕜 E : Type*}
    [TopologicalSpace X]
    [Semiring 𝕜] [PartialOrder 𝕜]
    [AddCommGroup E] [Module 𝕜 E] [TopologicalSpace E] [LocallyConvexSpace 𝕜 E]
    [IsTopologicalAddGroup E] [ContinuousConstSMul 𝕜 E] :
    LocallyConvexSpace 𝕜 C(X, E) :=
  .ofBasisZero _ _ _ _ (LocallyConvexSpace.convex_basis_zero 𝕜 E).nhds_continuousMapConst <| by
    rintro ⟨K, U⟩ ⟨hK, hU₀, hUc⟩ f hf g hg a b ha hb hab x hx
    exact hUc (hf hx) (hg hx) ha hb hab
```
