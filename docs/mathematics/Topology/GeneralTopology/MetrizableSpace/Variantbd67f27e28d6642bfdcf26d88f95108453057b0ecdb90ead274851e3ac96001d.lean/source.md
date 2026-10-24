# Complete source: GRWTSK.Topology.GeneralTopology.MetrizableSpace.Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `196b5909015716ce90be19ecaf83e4de4fc08142` · SHA-256 `5da8d8d3f20dc3814f1467d8b88c3792cd58502e2fa06a9083128b3311106224`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsG.Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsG.Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb","mathematical_subject":"Topology.GeneralTopology","original_sha256":"20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/GDelta/MetrizableSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Yury Kudryashov, Aaron Liu
-/
import Mathlib.Topology.MetricSpace.HausdorffDistance
import Mathlib.Topology.Metrizable.Basic
import Mathlib.Topology.Separation.GDelta

/-!
# `Gδ` sets and metrizable spaces

## Main results
We prove that metrizable spaces are T6.
We prove that the continuity set of a function from a topological space to a metrizable space is a
Gδ set.

-/


namespace GRWTSK.Topology.GeneralTopology.IsG.Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb

variable {X : Type*} [TopologicalSpace X]
open TopologicalSpace Metric Set

section Metrizable

instance (priority := 100) [PseudoMetrizableSpace X] : NormalSpace X where
  normal s t hs ht hst := by
    let _ := pseudoMetrizableSpacePseudoMetric X
    by_cases hee : s = ∅ ∨ t = ∅
    · obtain rfl | rfl := hee <;> simp
    simp only [not_or, ← ne_eq, ← nonempty_iff_ne_empty] at hee
    obtain ⟨hse, hte⟩ := hee
    let g (p : X) := infDist p t - infDist p s
    have hg : Continuous g := by fun_prop
    refine ⟨g ⁻¹' (Ioi 0), g ⁻¹' (Iio 0), isOpen_Ioi.preimage hg, isOpen_Iio.preimage hg,
      fun x hx ↦ ?_, fun x hx ↦ ?_, Ioi_disjoint_Iio_same.preimage g⟩
    · simp [g, infDist_zero_of_mem hx,
        (ht.notMem_iff_infDist_pos hte).mp (hst.notMem_of_mem_left hx)]
    · simp [g, infDist_zero_of_mem hx,
        (hs.notMem_iff_infDist_pos hse).mp (hst.notMem_of_mem_right hx)]

instance (priority := 500) [PseudoMetrizableSpace X] : PerfectlyNormalSpace X where
  closed_gdelta s hs := by
    let _ := pseudoMetrizableSpacePseudoMetric X
    rcases (@uniformity_hasBasis_open X _).exists_antitone_subbasis with ⟨U, hUo, hU, -⟩
    rw [← hs.closure_eq, ← hU.biInter_biUnion_ball]
    refine .biInter (to_countable _) fun n _ => IsOpen.isGδ ?_
    exact isOpen_biUnion fun x _ => UniformSpace.isOpen_ball _ (hUo _).2

instance (priority := 100) [MetrizableSpace X] : T4Space X where

instance (priority := 500) [MetrizableSpace X] : T6Space X where

end Metrizable

section ContinuousAt
variable {Y : Type*} [TopologicalSpace Y]

theorem IsGδ.setOf_continuousAt [PseudoMetrizableSpace Y] (f : X → Y) :
    IsGδ { x | ContinuousAt f x } := by
  let _ := pseudoMetrizableSpacePseudoMetric Y
  obtain ⟨U, _, hU⟩ := (@uniformity_hasBasis_open_symmetric Y _).exists_antitone_subbasis
  simp only [Uniform.continuousAt_iff_prod, nhds_prod_eq]
  simp only [(nhds_basis_opens _).prod_self.tendsto_iff hU.toHasBasis,
    forall_prop_of_true, setOf_forall]
  refine .iInter fun k ↦ IsOpen.isGδ <| isOpen_iff_mem_nhds.2 fun x ↦ ?_
  rintro ⟨s, ⟨hsx, hso⟩, hsU⟩
  filter_upwards [IsOpen.mem_nhds hso hsx] with _ hy using ⟨s, ⟨hy, hso⟩, hsU⟩

end ContinuousAt
```
