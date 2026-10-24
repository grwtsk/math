# Complete source: GRWTSK.Topology.GeneralTopology.Basic.Variant8af0c31777d3cc184f49b3d4326ed91ac53c0cb9a65d6efc2f6577f56dbcfd47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88b466db4ac5c326e4403096789ae67ec17d1e93` · SHA-256 `9e4df1e9b11ca2288eea2b5716d657fdae43613bb93e2197027167451bfe3279`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Cone.Variantc4c409e1edb346685b18b08565f901071dd7bae0f5de6cf2d66284f7cd8da762","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4c409e1edb346685b18b08565f901071dd7bae0f5de6cf2d66284f7cd8da762","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Cone.Variantc4c409e1edb346685b18b08565f901071dd7bae0f5de6cf2d66284f7cd8da762","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c4c409e1edb346685b18b08565f901071dd7bae0f5de6cf2d66284f7cd8da762","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/Analysis/Convex/Cone/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Analysis.Convex.Cone.Basic


namespace GRWTSK.Topology.GeneralTopology.Cone.Variantc4c409e1edb346685b18b08565f901071dd7bae0f5de6cf2d66284f7cd8da762

variable {𝕜 E : Type*} [AddCommGroup E] [TopologicalSpace E]

namespace ConvexCone
variable [Semifield 𝕜] [LinearOrder 𝕜] [Module 𝕜 E] {s : Set E}

-- TODO: This result generalises to `G`-submodules in the sense of the Zulip thread linked below.

variable [IsStrictOrderedRing 𝕜] [IsTopologicalAddGroup E] in
/-- This is true essentially by `Submodule.span_eq_iUnion_nat`, except that `Submodule` currently
doesn't support that use case. See
https://leanprover.zulipchat.com/#narrow/channel/116395-maths/topic/G-submodules/with/514426583 -/
proof_wanted isOpen_hull (hs : IsOpen s) : IsOpen (hull 𝕜 s : Set E)

end ConvexCone
```
