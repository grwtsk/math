# Complete source: GRWTSK.Topology.GeneralTopology.OpenCover.Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f933ff43508b20349c63881605a31a25f6f1333` · SHA-256 `0ebfeb0a835d9a85f6212d9012f97e93d36f02ea48287d9cca58cfc78f840d8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsOpenCover.Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsOpenCover.Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Sets/OpenCover.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/

import Mathlib.Topology.Sets.Opens

/-!
# Open covers

We define `IsOpenCover` as a predicate on indexed families of open sets in a topological space `X`,
asserting that their union is `X`. This is an example of a declaration whose name is actually
longer than its content; but giving it a name serves as a way of standardizing API.
-/


namespace GRWTSK.Topology.GeneralTopology.IsOpenCover.Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570

open Set Topology

namespace TopologicalSpace

/-- An indexed family of open sets whose union is `X`. -/
def IsOpenCover {ι X : Type*} [TopologicalSpace X] (u : ι → Opens X) : Prop :=
  iSup u = ⊤

variable {ι κ X Y : Type*} [TopologicalSpace X] {u : ι → Opens X}
  [TopologicalSpace Y] {v : κ → Opens Y}

namespace IsOpenCover

lemma mk (h : iSup u = ⊤) : IsOpenCover u := h

lemma of_sets {v : ι → Set X} (h_open : ∀ i, IsOpen (v i)) (h_iUnion : ⋃ i, v i = univ) :
    IsOpenCover (fun i ↦ ⟨v i, h_open i⟩) := by
  simp [IsOpenCover, h_iUnion]

lemma iSup_eq_top (hu : IsOpenCover u) : ⨆ i, u i = ⊤ := hu

lemma iSup_set_eq_univ (hu : IsOpenCover u) : ⋃ i, (u i : Set X) = univ := by
  simpa [← SetLike.coe_set_eq] using hu.iSup_eq_top

/-- Pullback of a covering of `Y` by a continuous map `X → Y`, giving a covering of `X` with the
same index type. -/
lemma comap (hv : IsOpenCover v) (f : C(X, Y)) : IsOpenCover fun k ↦ (v k).comap f :=
  by simp [IsOpenCover, ← preimage_iUnion, hv.iSup_set_eq_univ]

lemma exists_mem (hu : IsOpenCover u) (a : X) : ∃ i, a ∈ u i := by
  simpa [← hu.iSup_set_eq_univ] using mem_univ a

lemma exists_mem_nhds (hu : IsOpenCover u) (a : X) : ∃ i, (u i : Set X) ∈ 𝓝 a :=
  match hu.exists_mem a with | ⟨i, hi⟩ => ⟨i, (u i).isOpen.mem_nhds hi⟩

lemma iUnion_inter (hu : IsOpenCover u) (s : Set X) :
    ⋃ i, s ∩ u i = s := by
  simp [← inter_iUnion, hu.iSup_set_eq_univ]

lemma isTopologicalBasis (hu : IsOpenCover u)
    {B : ∀ i, Set (Set (u i))} (hB : ∀ i, IsTopologicalBasis (B i)) :
    IsTopologicalBasis (⋃ i, (Subtype.val '' ·) '' B i) :=
  isTopologicalBasis_of_cover (fun i ↦ (u i).2) hu.iSup_set_eq_univ hB

end IsOpenCover

end TopologicalSpace
```
