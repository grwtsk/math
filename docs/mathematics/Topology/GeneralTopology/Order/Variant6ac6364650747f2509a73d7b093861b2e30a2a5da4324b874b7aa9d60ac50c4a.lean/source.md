# Complete source: GRWTSK.Topology.GeneralTopology.Order.Variant6ac6364650747f2509a73d7b093861b2e30a2a5da4324b874b7aa9d60ac50c4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3b2ede85fbce4989139377bd5d8cf6c9b93046b` · SHA-256 `29c72b505ac999bdbc7f12c40c0c24b08469cfed5cc52731a0e92ebc52eb8c12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoUniformlyOnEventuallyForallLt.Variant1c3f7c05a9da0954ceee13aa31600e61ecf10472ff454c175a416fd73d7bcb9c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c3f7c05a9da0954ceee13aa31600e61ecf10472ff454c175a416fd73d7bcb9c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoUniformlyOnEventuallyForallLt.Variant1c3f7c05a9da0954ceee13aa31600e61ecf10472ff454c175a416fd73d7bcb9c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1c3f7c05a9da0954ceee13aa31600e61ecf10472ff454c175a416fd73d7bcb9c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/IsUniformGroup/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
module

public import Mathlib.Topology.Algebra.IsUniformGroup.Defs
public import Mathlib.Topology.Order.Basic
public import Mathlib.Topology.UniformSpace.UniformConvergence

/-!
# TendstoUniformlyOn on ordered spaces

We gather some results about `TendstoUniformlyOn f g K` on ordered spaces,
in particular bounding the values of `f` in terms of bounds on the limit `g`.

-/


namespace GRWTSK.Topology.GeneralTopology.TendstoUniformlyOnEventuallyForallLt.Variant1c3f7c05a9da0954ceee13aa31600e61ecf10472ff454c175a416fd73d7bcb9c

public section

open Filter

variable {α ι : Type*}

section order

variable {β : Type*} [UniformSpace β] [AddGroup β] [IsUniformAddGroup β] [PartialOrder β]
  [OrderTopology β] [AddLeftMono β] [AddRightMono β]

variable {f : ι → α → β} {g : α → β} {K : Set α} {p : Filter ι}

/-- If a sequence of functions converges uniformly on a set to a function `g` which is bounded above
by a value `u`, then the sequence is strictly bounded by any `v` such that `u < v`. -/
lemma TendstoUniformlyOn.eventually_forall_lt {u v : β} (huv : u < v)
    (hf : TendstoUniformlyOn f g p K) (hg : ∀ x ∈ K, g x ≤ u) :
    ∀ᶠ i in p, ∀ x ∈ K, f i x < v := by
  simp only [tendstoUniformlyOn_iff_tendsto, uniformity_eq_comap_neg_add_nhds_zero,
    tendsto_iff_eventually, eventually_comap, Prod.forall] at *
  conv at hf => enter [2]; rw [eventually_iff_exists_mem]
  have hf2 := hf (fun x ↦ -x.1 + x.2 < -u + v) ⟨_, (isOpen_gt' (-u + v)).mem_nhds (by simp [huv]),
    fun y hy a b hab ↦ (hab.symm ▸ hy :)⟩
  filter_upwards [eventually_prod_principal_iff.mp hf2] with i hi x hx
  simpa using add_lt_add_of_le_of_lt (hg x hx) (hi x hx)

lemma TendstoUniformlyOn.eventually_forall_le {u v : β} (huv : u < v)
    (hf : TendstoUniformlyOn f g p K) (hg : ∀ x ∈ K, g x ≤ u) :
    ∀ᶠ i in p, ∀ x ∈ K, f i x ≤ v := by
  filter_upwards [hf.eventually_forall_lt huv hg] with i hi x hx using (hi x hx).le

end order
```
