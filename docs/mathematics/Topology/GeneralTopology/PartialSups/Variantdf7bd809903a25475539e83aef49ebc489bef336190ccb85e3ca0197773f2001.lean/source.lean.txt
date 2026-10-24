-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PartialSups.Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PartialSups.Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Order/PartialSups.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Order.Lattice
import Mathlib.Order.PartialSups

/-!
# Continuity of `partialSups`

In this file we prove that `partialSups` of a sequence of continuous functions is continuous
as well as versions for `Filter.Tendsto`, `ContinuousAt`, `ContinuousWithinAt`, and `ContinuousOn`.
-/


namespace GRWTSK.Topology.GeneralTopology.PartialSups.Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5

open Filter
open scoped Topology

variable {L : Type*} [SemilatticeSup L] [TopologicalSpace L] [ContinuousSup L]

namespace Filter.Tendsto

variable {α : Type*} {l : Filter α} {f : ℕ → α → L} {g : ℕ → L} {n : ℕ}

protected lemma partialSups (hf : ∀ k ≤ n, Tendsto (f k) l (𝓝 (g k))) :
    Tendsto (partialSups f n) l (𝓝 (partialSups g n)) := by
  simp only [partialSups_eq_sup'_range]
  refine finset_sup'_nhds _ ?_
  simpa [Nat.lt_succ_iff]

protected lemma partialSups_apply (hf : ∀ k ≤ n, Tendsto (f k) l (𝓝 (g k))) :
    Tendsto (fun a ↦ partialSups (f · a) n) l (𝓝 (partialSups g n)) := by
  simpa only [← Pi.partialSups_apply] using Tendsto.partialSups hf

end Filter.Tendsto

variable {X : Type*} [TopologicalSpace X] {f : ℕ → X → L} {n : ℕ} {s : Set X} {x : X}

protected lemma ContinuousAt.partialSups_apply (hf : ∀ k ≤ n, ContinuousAt (f k) x) :
    ContinuousAt (fun a ↦ partialSups (f · a) n) x :=
  Tendsto.partialSups_apply hf

protected lemma ContinuousAt.partialSups (hf : ∀ k ≤ n, ContinuousAt (f k) x) :
    ContinuousAt (partialSups f n) x := by
  simpa only [← Pi.partialSups_apply] using ContinuousAt.partialSups_apply hf

protected lemma ContinuousWithinAt.partialSups_apply (hf : ∀ k ≤ n, ContinuousWithinAt (f k) s x) :
    ContinuousWithinAt (fun a ↦ partialSups (f · a) n) s x :=
  Tendsto.partialSups_apply hf

protected lemma ContinuousWithinAt.partialSups (hf : ∀ k ≤ n, ContinuousWithinAt (f k) s x) :
    ContinuousWithinAt (partialSups f n) s x := by
  simpa only [← Pi.partialSups_apply] using ContinuousWithinAt.partialSups_apply hf

protected lemma ContinuousOn.partialSups_apply (hf : ∀ k ≤ n, ContinuousOn (f k) s) :
    ContinuousOn (fun a ↦ partialSups (f · a) n) s := fun x hx ↦
  ContinuousWithinAt.partialSups_apply fun k hk ↦ hf k hk x hx

protected lemma ContinuousOn.partialSups (hf : ∀ k ≤ n, ContinuousOn (f k) s) :
    ContinuousOn (partialSups f n) s := fun x hx ↦
  ContinuousWithinAt.partialSups fun k hk ↦ hf k hk x hx

protected lemma Continuous.partialSups_apply (hf : ∀ k ≤ n, Continuous (f k)) :
    Continuous (fun a ↦ partialSups (f · a) n) :=
  continuous_iff_continuousAt.2 fun _ ↦ ContinuousAt.partialSups_apply fun k hk ↦
    (hf k hk).continuousAt

protected lemma Continuous.partialSups (hf : ∀ k ≤ n, Continuous (f k)) :
    Continuous (partialSups f n) :=
  continuous_iff_continuousAt.2 fun _ ↦ ContinuousAt.partialSups fun k hk ↦ (hf k hk).continuousAt
