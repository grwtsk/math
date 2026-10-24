# Complete source: GRWTSK.Topology.GeneralTopology.Minimal.Variante931bb682181ca552eb2aaeec4d139fdb21fdf7880bdb483eb168bb8844de8a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38d82850b76f2d79fe77e15be44e3e0b694c1c63` · SHA-256 `fe92319ee8df8f75f858913ae93550324838d3914f87e599fc609c5ec8061ec9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.AddActionIsMinimal.Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.AddActionIsMinimal.Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133","mathematical_subject":"Topology.GeneralTopology","original_sha256":"06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Dynamics/Minimal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Algebra.ConstMulAction

/-!
# Minimal action of a group

In this file we define an action of a monoid `M` on a topological space `α` to be *minimal* if the
`M`-orbit of every point `x : α` is dense. We also provide an additive version of this definition
and prove some basic facts about minimal actions.

## TODO

* Define a minimal set of an action.

## Tags

group action, minimal
-/



namespace GRWTSK.Topology.GeneralTopology.AddActionIsMinimal.Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133

open Pointwise

/-- An action of an additive monoid `M` on a topological space is called *minimal* if the `M`-orbit
of every point `x : α` is dense. -/
class AddAction.IsMinimal (M α : Type*) [AddMonoid M] [TopologicalSpace α] [AddAction M α] :
    Prop where
  dense_orbit : ∀ x : α, Dense (AddAction.orbit M x)

/-- An action of a monoid `M` on a topological space is called *minimal* if the `M`-orbit of every
point `x : α` is dense. -/
@[to_additive]
class MulAction.IsMinimal (M α : Type*) [Monoid M] [TopologicalSpace α] [MulAction M α] :
    Prop where
  dense_orbit : ∀ x : α, Dense (MulAction.orbit M x)

open MulAction Set

variable (M G : Type*) {α : Type*} [Monoid M] [Group G] [TopologicalSpace α] [MulAction M α]
  [MulAction G α]

@[to_additive]
theorem MulAction.dense_orbit [IsMinimal M α] (x : α) : Dense (orbit M x) :=
  MulAction.IsMinimal.dense_orbit x

@[to_additive]
theorem denseRange_smul [IsMinimal M α] (x : α) : DenseRange fun c : M ↦ c • x :=
  MulAction.dense_orbit M x

@[to_additive]
instance (priority := 100) MulAction.isMinimal_of_pretransitive [IsPretransitive M α] :
    IsMinimal M α :=
  ⟨fun x ↦ (surjective_smul M x).denseRange⟩

@[to_additive]
theorem IsOpen.exists_smul_mem [IsMinimal M α] (x : α) {U : Set α} (hUo : IsOpen U)
    (hne : U.Nonempty) : ∃ c : M, c • x ∈ U :=
  (denseRange_smul M x).exists_mem_open hUo hne

@[to_additive]
theorem IsOpen.iUnion_preimage_smul [IsMinimal M α] {U : Set α} (hUo : IsOpen U)
    (hne : U.Nonempty) : ⋃ c : M, (c • ·) ⁻¹' U = univ :=
  iUnion_eq_univ_iff.2 fun x ↦ hUo.exists_smul_mem M x hne

@[to_additive]
theorem IsOpen.iUnion_smul [IsMinimal G α] {U : Set α} (hUo : IsOpen U) (hne : U.Nonempty) :
    ⋃ g : G, g • U = univ :=
  iUnion_eq_univ_iff.2 fun x ↦
    let ⟨g, hg⟩ := hUo.exists_smul_mem G x hne
    ⟨g⁻¹, _, hg, inv_smul_smul _ _⟩

@[to_additive]
theorem IsCompact.exists_finite_cover_smul [IsMinimal G α] [ContinuousConstSMul G α]
    {K U : Set α} (hK : IsCompact K) (hUo : IsOpen U) (hne : U.Nonempty) :
    ∃ I : Finset G, K ⊆ ⋃ g ∈ I, g • U :=
  (hK.elim_finite_subcover (fun g ↦ g • U) fun _ ↦ hUo.smul _) <| calc
    K ⊆ univ := subset_univ K
    _ = ⋃ g : G, g • U := (hUo.iUnion_smul G hne).symm

@[to_additive]
theorem dense_of_nonempty_smul_invariant [IsMinimal M α] {s : Set α} (hne : s.Nonempty)
    (hsmul : ∀ c : M, c • s ⊆ s) : Dense s :=
  let ⟨x, hx⟩ := hne
  (MulAction.dense_orbit M x).mono (range_subset_iff.2 fun c ↦ hsmul c ⟨x, hx, rfl⟩)

@[to_additive]
theorem eq_empty_or_univ_of_smul_invariant_closed [IsMinimal M α] {s : Set α} (hs : IsClosed s)
    (hsmul : ∀ c : M, c • s ⊆ s) : s = ∅ ∨ s = univ :=
  s.eq_empty_or_nonempty.imp_right fun hne ↦
    hs.closure_eq ▸ (dense_of_nonempty_smul_invariant M hne hsmul).closure_eq

@[to_additive]
theorem isMinimal_iff_isClosed_smul_invariant [ContinuousConstSMul M α] :
    IsMinimal M α ↔ ∀ s : Set α, IsClosed s → (∀ c : M, c • s ⊆ s) → s = ∅ ∨ s = univ := by
  constructor
  · intro _ _
    exact eq_empty_or_univ_of_smul_invariant_closed M
  refine fun H ↦ ⟨fun _ ↦ dense_iff_closure_eq.2 <| (H _ ?_ ?_).resolve_left ?_⟩
  exacts [isClosed_closure, fun _ ↦ smul_closure_orbit_subset _ _,
    (orbit_nonempty _).closure.ne_empty]
@[deprecated (since := "2024-11-19")] alias
isMinimal_iff_closed_smul_invariant := isMinimal_iff_isClosed_smul_invariant
```
