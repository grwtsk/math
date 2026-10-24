# Complete source: GRWTSK.Topology.GeneralTopology.Completion.Variantf878a7d079fcd67a14d1dfca600d3970b1d72a3384f8c65c7a44ce4276460484

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf01efd274541299121a72b23c771592ef8027a8` · SHA-256 `c43f623ba220a9ecf91a46188d7f3465af91102efed2e80a21ebfcc33939a966`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Nonarchimedean.Variant39fe36f6d9473c5e2221d17e080339047c1b97ff62cfaf54e7c59ab2b47e5777","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39fe36f6d9473c5e2221d17e080339047c1b97ff62cfaf54e7c59ab2b47e5777","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Nonarchimedean.Variant39fe36f6d9473c5e2221d17e080339047c1b97ff62cfaf54e7c59ab2b47e5777","mathematical_subject":"Topology.GeneralTopology","original_sha256":"39fe36f6d9473c5e2221d17e080339047c1b97ff62cfaf54e7c59ab2b47e5777","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Nonarchimedean/Completion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mitchell Lee. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mitchell Lee
-/
import Mathlib.Topology.Algebra.Nonarchimedean.Basic
import Mathlib.Topology.Algebra.GroupCompletion
import Mathlib.Topology.Algebra.UniformRing

/-!
# The completion of a nonarchimedean additive group

The completion of a nonarchimedean additive group is a nonarchimedean additive group.

The completion of a nonarchimedean ring is a nonarchimedean ring.
-/


namespace GRWTSK.Topology.GeneralTopology.Nonarchimedean.Variant39fe36f6d9473c5e2221d17e080339047c1b97ff62cfaf54e7c59ab2b47e5777

open UniformSpace UniformSpace.Completion AddSubgroup OpenAddSubgroup Topology

/-- The completion of a nonarchimedean additive group is a nonarchimedean additive group. -/
instance {G : Type*} [AddGroup G] [UniformSpace G] [IsUniformAddGroup G]
    [NonarchimedeanAddGroup G] : NonarchimedeanAddGroup (Completion G) where
  is_nonarchimedean := by
    /- Let `U` be a neighborhood of `0` in `Completion G`. We wish to show that `U` contains an open
    additive subgroup of `Completion G`. -/
    intro U hU
    /- Since `Completion G` is regular, there is a closed neighborhood `C` of `0` which is
    contained in `U`. -/
    obtain ⟨C, ⟨hC, C_closed⟩, C_subset_U⟩ := (closed_nhds_basis 0).mem_iff.mp hU
    /- By continuity, the preimage of `C` in `G`, written `toCompl ⁻¹' U'`,
    is a neighborhood of `0`. -/
    have : toCompl ⁻¹' C ∈ 𝓝 0 :=
      continuous_toCompl.continuousAt.preimage_mem_nhds (by rwa [map_zero])
    /- Therefore, since `G` is nonarchimedean, there exists an open subgroup `W` of `G` that is
    contained within `toCompl ⁻¹' C`. -/
    obtain ⟨W, hCW⟩ := NonarchimedeanAddGroup.is_nonarchimedean (toCompl ⁻¹' C) this
    /- Now, let `V = (W.map toCompl).topologicalClosure` be the result of mapping `W` back to
    `Completion G` and taking the topological closure. -/
    let V : Set (Completion G) := (W.map toCompl).topologicalClosure
    /- We claim that this set `V` satisfies the
    desired properties. There are three conditions to check:

    1. `V` is a subgroup of `Completion G`.
    2. `V` is open.
    3. `V ⊆ U`.

    The first condition follows directly from the fact that the topological closure of a subgroup
    is a subgroup. Now, let us check that `V` is open. -/
    have : IsOpen V := by
      /- Since `V` is a subgroup of `Completion G`, it suffices to show that it is a neighborhood of
      `0` in `Completion G`. This follows from the fact that `toCompl : G → Completion G` is dense
      inducing and `W` is a neighborhood of `0` in `G`. -/
      apply isOpen_of_mem_nhds (g := 0)
      apply (isDenseInducing_toCompl _).closure_image_mem_nhds
      exact mem_nhds_zero W
    use ⟨_, this⟩
    /- Finally, it remains to show that `V ⊆ U`. It suffices to show that `V ⊆ C`, which
    follows from the fact that `W ⊆ toCompl ⁻¹' C` and `C` is closed. -/
    suffices V ⊆ C from this.trans C_subset_U
    exact closure_minimal (Set.image_subset_iff.mpr hCW) C_closed

/-- The completion of a nonarchimedean ring is a nonarchimedean ring. -/
instance {R : Type*} [Ring R] [UniformSpace R] [IsTopologicalRing R] [IsUniformAddGroup R]
    [NonarchimedeanRing R] :
    NonarchimedeanRing (Completion R) where
  is_nonarchimedean := NonarchimedeanAddGroup.is_nonarchimedean
```
