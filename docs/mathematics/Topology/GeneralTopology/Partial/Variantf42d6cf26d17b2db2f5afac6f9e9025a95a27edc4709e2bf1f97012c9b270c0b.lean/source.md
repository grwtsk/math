# Complete source: GRWTSK.Topology.GeneralTopology.Partial.Variantf42d6cf26d17b2db2f5afac6f9e9025a95a27edc4709e2bf1f97012c9b270c0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f89a2f0cd02e7d5aac8d1022f5226152daa66387` · SHA-256 `c68e9c4dd864746e0c5d3a92c7c8db1f2dc38402fc4334f4c4351b6765d4fcf9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RtendstoNhds.Variantfb911c44b5ecede6252b0088f2afa517b48e6387614016919bfdc291d4a50fe0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb911c44b5ecede6252b0088f2afa517b48e6387614016919bfdc291d4a50fe0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RtendstoNhds.Variantfb911c44b5ecede6252b0088f2afa517b48e6387614016919bfdc291d4a50fe0","mathematical_subject":"Topology.GeneralTopology","original_sha256":"fb911c44b5ecede6252b0088f2afa517b48e6387614016919bfdc291d4a50fe0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Partial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
module

public import Mathlib.Order.Filter.Partial
public import Mathlib.Topology.Neighborhoods

/-!
# Partial functions and topological spaces

In this file we prove properties of `Filter.PTendsto` etc. in topological spaces. We also introduce
`PContinuous`, a version of `Continuous` for partially defined functions.
-/


namespace GRWTSK.Topology.GeneralTopology.RtendstoNhds.Variantfb911c44b5ecede6252b0088f2afa517b48e6387614016919bfdc291d4a50fe0

@[expose] public section


open Filter

open scoped Topology

variable {X Y : Type*} [TopologicalSpace X]

theorem rtendsto_nhds {r : SetRel Y X} {l : Filter Y} {x : X} :
    RTendsto r l (𝓝 x) ↔ ∀ s, IsOpen s → x ∈ s → r.core s ∈ l :=
  all_mem_nhds_filter _ _ (fun _s _t => id) _

theorem rtendsto'_nhds {r : SetRel Y X} {l : Filter Y} {x : X} :
    RTendsto' r l (𝓝 x) ↔ ∀ s, IsOpen s → x ∈ s → r.preimage s ∈ l := by
  rw [rtendsto'_def]
  apply all_mem_nhds_filter
  apply SetRel.preimage_mono

theorem ptendsto_nhds {f : Y →. X} {l : Filter Y} {x : X} :
    PTendsto f l (𝓝 x) ↔ ∀ s, IsOpen s → x ∈ s → f.core s ∈ l :=
  rtendsto_nhds

theorem ptendsto'_nhds {f : Y →. X} {l : Filter Y} {x : X} :
    PTendsto' f l (𝓝 x) ↔ ∀ s, IsOpen s → x ∈ s → f.preimage s ∈ l :=
  rtendsto'_nhds

/-! ### Continuity and partial functions -/


variable [TopologicalSpace Y]

/-- Continuity of a partial function -/
def PContinuous (f : X →. Y) :=
  ∀ s, IsOpen s → IsOpen (f.preimage s)

theorem open_dom_of_pcontinuous {f : X →. Y} (h : PContinuous f) : IsOpen f.Dom := by
  rw [← PFun.preimage_univ]; exact h _ isOpen_univ

theorem pcontinuous_iff' {f : X →. Y} :
    PContinuous f ↔ ∀ {x y} (_ : y ∈ f x), PTendsto' f (𝓝 x) (𝓝 y) := by
  constructor
  · intro h x y h'
    simp only [ptendsto'_def, mem_nhds_iff]
    rintro s ⟨t, tsubs, opent, yt⟩
    exact ⟨f.preimage t, PFun.preimage_mono _ tsubs, h _ opent, ⟨y, yt, h'⟩⟩
  intro hf s os
  rw [isOpen_iff_nhds]
  rintro x ⟨y, ys, fxy⟩ t
  rw [mem_principal]
  intro (h : f.preimage s ⊆ t)
  grw [← h]
  have h' : ∀ s ∈ 𝓝 y, f.preimage s ∈ 𝓝 x := by
    intro s hs
    have : PTendsto' f (𝓝 x) (𝓝 y) := hf fxy
    rw [ptendsto'_def] at this
    exact this s hs
  change f.preimage s ∈ 𝓝 x
  apply h'
  rw [mem_nhds_iff]
  exact ⟨s, Set.Subset.refl _, os, ys⟩

theorem continuousWithinAt_iff_ptendsto_res (f : X → Y) {x : X} {s : Set X} :
    ContinuousWithinAt f s x ↔ PTendsto (PFun.res f s) (𝓝 x) (𝓝 (f x)) :=
  tendsto_iff_ptendsto _ _ _ _
```
