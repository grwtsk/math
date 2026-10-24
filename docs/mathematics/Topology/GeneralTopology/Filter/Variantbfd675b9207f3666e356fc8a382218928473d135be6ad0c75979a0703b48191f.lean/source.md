# Complete source: GRWTSK.Topology.GeneralTopology.Filter.Variantbfd675b9207f3666e356fc8a382218928473d135be6ad0c75979a0703b48191f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `508e9d4696768ccbbf178d3ade8ff96cad4aed61` · SHA-256 `886001522fdf03b0648c212f9189e3064e6b5968e59bd4d526ec43390796cbf6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoNhdsAtTop.Variant2d012657c0aa9f5abb64c9aa35e0aa8be80737a3117b51b4b4f6a584edb70691","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d012657c0aa9f5abb64c9aa35e0aa8be80737a3117b51b4b4f6a584edb70691","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoNhdsAtTop.Variant2d012657c0aa9f5abb64c9aa35e0aa8be80737a3117b51b4b4f6a584edb70691","mathematical_subject":"Topology.GeneralTopology","original_sha256":"2d012657c0aa9f5abb64c9aa35e0aa8be80737a3117b51b4b4f6a584edb70691","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Order/Filter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Topology.Filter
public import Mathlib.Topology.Order.Basic

/-!
# Topology on filters of a space with order topology

In this file we prove that `𝓝 (f x)` tends to `𝓝 Filter.atTop` provided that `f` tends to
`Filter.atTop`, and similarly for `Filter.atBot`.
-/


namespace GRWTSK.Topology.GeneralTopology.TendstoNhdsAtTop.Variant2d012657c0aa9f5abb64c9aa35e0aa8be80737a3117b51b4b4f6a584edb70691

public section


open scoped Topology

namespace Filter

variable {α X : Type*} [TopologicalSpace X] [PartialOrder X] [OrderTopology X]

protected theorem tendsto_nhds_atTop [NoMaxOrder X] : Tendsto 𝓝 (atTop : Filter X) (𝓝 atTop) :=
  Filter.tendsto_nhds_atTop_iff.2 fun x => (eventually_gt_atTop x).mono fun _ => le_mem_nhds

protected theorem tendsto_nhds_atBot [NoMinOrder X] : Tendsto 𝓝 (atBot : Filter X) (𝓝 atBot) :=
  @Filter.tendsto_nhds_atTop Xᵒᵈ _ _ _ _

theorem Tendsto.nhds_atTop [NoMaxOrder X] {f : α → X} {l : Filter α} (h : Tendsto f l atTop) :
    Tendsto (𝓝 ∘ f) l (𝓝 atTop) :=
  Filter.tendsto_nhds_atTop.comp h

theorem Tendsto.nhds_atBot [NoMinOrder X] {f : α → X} {l : Filter α} (h : Tendsto f l atBot) :
    Tendsto (𝓝 ∘ f) l (𝓝 atBot) :=
  @Tendsto.nhds_atTop α Xᵒᵈ _ _ _ _ _ _ h

end Filter
```
