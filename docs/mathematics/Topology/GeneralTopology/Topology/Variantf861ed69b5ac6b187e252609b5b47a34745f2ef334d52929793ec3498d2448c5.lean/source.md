# Complete source: GRWTSK.Topology.GeneralTopology.Topology.Variantf861ed69b5ac6b187e252609b5b47a34745f2ef334d52929793ec3498d2448c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e30bdbc26dd1723e34e3c3536cdf0a5ae41ff8f` · SHA-256 `7f2eacffa4893863501ff461b06edbaafb224e028d55245299f4bc651e95b0a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsFixedPtOfTendstoIterate.Variant852237162baa99af1e489c18a916d16b54cc741ae8cbb22d972dd262ab9e0765","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"852237162baa99af1e489c18a916d16b54cc741ae8cbb22d972dd262ab9e0765","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsFixedPtOfTendstoIterate.Variant852237162baa99af1e489c18a916d16b54cc741ae8cbb22d972dd262ab9e0765","mathematical_subject":"Topology.GeneralTopology","original_sha256":"852237162baa99af1e489c18a916d16b54cc741ae8cbb22d972dd262ab9e0765","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Dynamics/FixedPoints/Topology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Johannes Hölzl
-/
module

public import Mathlib.Topology.Separation.Hausdorff
public import Mathlib.Dynamics.FixedPoints.Defs

/-!
# Topological properties of fixed points

Currently this file contains two lemmas:

- `isFixedPt_of_tendsto_iterate`: if `f^n(x) → y` and `f` is continuous at `y`, then `f y = y`;
- `isClosed_fixedPoints`: the set of fixed points of a continuous map is a closed set.

## TODO

fixed points, iterates
-/


namespace GRWTSK.Topology.GeneralTopology.IsFixedPtOfTendstoIterate.Variant852237162baa99af1e489c18a916d16b54cc741ae8cbb22d972dd262ab9e0765

public section


variable {α : Type*} [TopologicalSpace α] [T2Space α] {f : α → α}

open Function Filter

open scoped Topology

/-- If the iterates `f^[n] x` converge to `y` and `f` is continuous at `y`,
then `y` is a fixed point for `f`. -/
theorem isFixedPt_of_tendsto_iterate {x y : α} (hy : Tendsto (fun n => f^[n] x) atTop (𝓝 y))
    (hf : ContinuousAt f y) : IsFixedPt f y := by
  refine tendsto_nhds_unique ((tendsto_add_atTop_iff_nat 1).1 ?_) hy
  simp only [iterate_succ' f]
  exact hf.tendsto.comp hy

/-- The set of fixed points of a continuous map is a closed set. -/
theorem isClosed_fixedPoints (hf : Continuous f) : IsClosed (fixedPoints f) :=
  isClosed_eq hf continuous_id
```
