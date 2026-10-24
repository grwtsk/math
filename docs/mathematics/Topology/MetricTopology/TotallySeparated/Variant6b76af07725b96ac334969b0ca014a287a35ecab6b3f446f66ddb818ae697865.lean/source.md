# Complete source: GRWTSK.Topology.MetricTopology.TotallySeparated.Variant6b76af07725b96ac334969b0ca014a287a35ecab6b3f446f66ddb818ae697865

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49e40540f7e234d12fd8c4a125f407b478f7c1f9` · SHA-256 `346c37f9c209a7d41e507c3338645a9be36478229bc55f11614965c2952005d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.TotallyDisconnected.Variant6d9097f9b04463647059137067cf8f4a199f1c658d2fed627b08900d03c12d1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d9097f9b04463647059137067cf8f4a199f1c658d2fed627b08900d03c12d1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.TotallyDisconnected.Variant6d9097f9b04463647059137067cf8f4a199f1c658d2fed627b08900d03c12d1e","mathematical_subject":"Topology.MetricSpaces","original_sha256":"6d9097f9b04463647059137067cf8f4a199f1c658d2fed627b08900d03c12d1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/MetricSpace/Ultra/TotallySeparated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky, David Loeffler
-/
import Mathlib.Topology.Connected.TotallyDisconnected
import Mathlib.Topology.MetricSpace.Defs
import Mathlib.Topology.MetricSpace.Ultra.Basic

/-!
# Ultrametric spaces are totally separated

In a metric space with an ultrametric, the space is totally separated, hence totally disconnected.

## Tags

ultrametric, nonarchimedean, totally separated, totally disconnected
-/

namespace GRWTSK.Topology.MetricTopology.TotallyDisconnected.Variant6d9097f9b04463647059137067cf8f4a199f1c658d2fed627b08900d03c12d1e

open Metric IsUltrametricDist

instance {X : Type*} [MetricSpace X] [IsUltrametricDist X] : TotallySeparatedSpace X :=
  totallySeparatedSpace_iff_exists_isClopen.mpr fun x y h ↦ by
    obtain ⟨r, hr, hr'⟩ := exists_between (dist_pos.mpr h)
    refine ⟨_, IsUltrametricDist.isClopen_ball x r, ?_, ?_⟩
    · simp only [mem_ball, dist_self, hr]
    · simp only [Set.mem_compl, mem_ball, dist_comm, not_lt, hr'.le]

example {X : Type*} [MetricSpace X] [IsUltrametricDist X] : TotallyDisconnectedSpace X :=
  inferInstance
```
