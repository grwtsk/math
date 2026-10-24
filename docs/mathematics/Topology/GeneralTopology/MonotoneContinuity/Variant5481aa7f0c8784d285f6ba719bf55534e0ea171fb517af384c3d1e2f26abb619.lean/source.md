# Complete source: GRWTSK.Topology.GeneralTopology.MonotoneContinuity.Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73d4df1f1c1aea4e7d1a68ddcf606b5c821777ee` · SHA-256 `e93e1609f95793f46f0c8be33a7d0a97551f91661fbabedc3ad7d53b8f2cde1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.StrictMonoOnContinuousWithinAtRightOfExistsBetween.Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.StrictMonoOnContinuousWithinAtRightOfExistsBetween.Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5","mathematical_subject":"Topology.GeneralTopology","original_sha256":"530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Algebra/Order/MonotoneContinuity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury G. Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury G. Kudryashov, Heather Macbeth
-/
import Mathlib.Topology.Order.Basic
import Mathlib.Topology.Homeomorph


namespace GRWTSK.Topology.GeneralTopology.StrictMonoOnContinuousWithinAtRightOfExistsBetween.Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5

#align_import topology.algebra.order.monotone_continuity from "leanprover-community/mathlib"@"4c19a16e4b705bf135cf9a80ac18fcc99c438514"

/-!
# Continuity of monotone functions

In this file we prove the following fact: if `f` is a monotone function on a neighborhood of `a`
and the image of this neighborhood is a neighborhood of `f a`, then `f` is continuous at `a`, see
`continuousWithinAt_of_monotoneOn_of_image_mem_nhds`, as well as several similar facts.

We also prove that an `OrderIso` is continuous.

## Tags

continuous, monotone
-/


open Set Filter

open Topology

section LinearOrder

variable {α β : Type*} [LinearOrder α] [TopologicalSpace α] [OrderTopology α]

variable [LinearOrder β] [TopologicalSpace β] [OrderTopology β]

/-- If `f` is a function strictly monotone on a right neighborhood of `a` and the
image of this neighborhood under `f` meets every interval `(f a, b]`, `b > f a`, then `f` is
continuous at `a` from the right.

The assumption `hfs : ∀ b > f a, ∃ c ∈ s, f c ∈ Ioc (f a) b` is required because otherwise the
function `f : ℝ → ℝ` given by `f x = if x ≤ 0 then x else x + 1` would be a counter-example at
`a = 0`. -/
theorem StrictMonoOn.continuousWithinAt_right_of_exists_between {f : α → β} {s : Set α} {a : α}
    (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝[≥] a) (hfs : ∀ b > f a, ∃ c ∈ s, f c ∈ Ioc (f a) b) :
    ContinuousWithinAt f (Ici a) a := by
  have ha : a ∈ Ici a := left_mem_Ici
  have has : a ∈ s := mem_of_mem_nhdsWithin ha hs
  refine' tendsto_order.2 ⟨fun b hb => _, fun b hb => _⟩
  · filter_upwards [hs, @self_mem_nhdsWithin _ _ a (Ici a)] with _ hxs hxa using hb.trans_le
      ((h_mono.le_iff_le has hxs).2 hxa)
  · rcases hfs b hb with ⟨c, hcs, hac, hcb⟩
    rw [h_mono.lt_iff_lt has hcs] at hac
    filter_upwards [hs, Ico_mem_nhdsWithin_Ici (left_mem_Ico.2 hac)]
    rintro x hx ⟨_, hxc⟩
    exact ((h_mono.lt_iff_lt hx hcs).2 hxc).trans_le hcb
#align strict_mono_on.continuous_at_right_of_exists_between StrictMonoOn.continuousWithinAt_right_of_exists_between

/-- If `f` is a monotone function on a right neighborhood of `a` and the image of this neighborhood
under `f` meets every interval `(f a, b)`, `b > f a`, then `f` is continuous at `a` from the right.

The assumption `hfs : ∀ b > f a, ∃ c ∈ s, f c ∈ Ioo (f a) b` cannot be replaced by the weaker
assumption `hfs : ∀ b > f a, ∃ c ∈ s, f c ∈ Ioc (f a) b` we use for strictly monotone functions
because otherwise the function `ceil : ℝ → ℤ` would be a counter-example at `a = 0`. -/
theorem continuousWithinAt_right_of_monotoneOn_of_exists_between {f : α → β} {s : Set α} {a : α}
    (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝[≥] a) (hfs : ∀ b > f a, ∃ c ∈ s, f c ∈ Ioo (f a) b) :
    ContinuousWithinAt f (Ici a) a := by
  have ha : a ∈ Ici a := left_mem_Ici
  have has : a ∈ s := mem_of_mem_nhdsWithin ha hs
  refine' tendsto_order.2 ⟨fun b hb => _, fun b hb => _⟩
  · filter_upwards [hs, @self_mem_nhdsWithin _ _ a (Ici a)] with _ hxs hxa using hb.trans_le
      (h_mono has hxs hxa)
  · rcases hfs b hb with ⟨c, hcs, hac, hcb⟩
    have : a < c := not_le.1 fun h => hac.not_le <| h_mono hcs has h
    filter_upwards [hs, Ico_mem_nhdsWithin_Ici (left_mem_Ico.2 this)]
    rintro x hx ⟨_, hxc⟩
    exact (h_mono hx hcs hxc.le).trans_lt hcb
#align continuous_at_right_of_monotone_on_of_exists_between continuousWithinAt_right_of_monotoneOn_of_exists_between

/-- If a function `f` with a densely ordered codomain is monotone on a right neighborhood of `a` and
the closure of the image of this neighborhood under `f` is a right neighborhood of `f a`, then `f`
is continuous at `a` from the right. -/
theorem continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin [DenselyOrdered β]
    {f : α → β} {s : Set α} {a : α} (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝[≥] a)
    (hfs : closure (f '' s) ∈ 𝓝[≥] f a) : ContinuousWithinAt f (Ici a) a := by
  refine' continuousWithinAt_right_of_monotoneOn_of_exists_between h_mono hs fun b hb => _
  rcases(mem_nhdsWithin_Ici_iff_exists_mem_Ioc_Ico_subset hb).1 hfs with ⟨b', ⟨hab', hbb'⟩, hb'⟩
  rcases exists_between hab' with ⟨c', hc'⟩
  rcases mem_closure_iff.1 (hb' ⟨hc'.1.le, hc'.2⟩) (Ioo (f a) b') isOpen_Ioo hc' with
    ⟨_, hc, ⟨c, hcs, rfl⟩⟩
  exact ⟨c, hcs, hc.1, hc.2.trans_le hbb'⟩
#align continuous_at_right_of_monotone_on_of_closure_image_mem_nhds_within continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin

/-- If a function `f` with a densely ordered codomain is monotone on a right neighborhood of `a` and
the image of this neighborhood under `f` is a right neighborhood of `f a`, then `f` is continuous at
`a` from the right. -/
theorem continuousWithinAt_right_of_monotoneOn_of_image_mem_nhdsWithin [DenselyOrdered β]
    {f : α → β} {s : Set α} {a : α} (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝[≥] a)
    (hfs : f '' s ∈ 𝓝[≥] f a) : ContinuousWithinAt f (Ici a) a :=
  continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin h_mono hs <|
    mem_of_superset hfs subset_closure
#align continuous_at_right_of_monotone_on_of_image_mem_nhds_within continuousWithinAt_right_of_monotoneOn_of_image_mem_nhdsWithin

/-- If a function `f` with a densely ordered codomain is strictly monotone on a right neighborhood
of `a` and the closure of the image of this neighborhood under `f` is a right neighborhood of `f a`,
then `f` is continuous at `a` from the right. -/
theorem StrictMonoOn.continuousWithinAt_right_of_closure_image_mem_nhdsWithin [DenselyOrdered β]
    {f : α → β} {s : Set α} {a : α} (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝[≥] a)
    (hfs : closure (f '' s) ∈ 𝓝[≥] f a) : ContinuousWithinAt f (Ici a) a :=
  continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin
    (fun _ hx _ hy => (h_mono.le_iff_le hx hy).2) hs hfs
#align strict_mono_on.continuous_at_right_of_closure_image_mem_nhds_within StrictMonoOn.continuousWithinAt_right_of_closure_image_mem_nhdsWithin

/-- If a function `f` with a densely ordered codomain is strictly monotone on a right neighborhood
of `a` and the image of this neighborhood under `f` is a right neighborhood of `f a`, then `f` is
continuous at `a` from the right. -/
theorem StrictMonoOn.continuousWithinAt_right_of_image_mem_nhdsWithin [DenselyOrdered β] {f : α → β}
    {s : Set α} {a : α} (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝[≥] a) (hfs : f '' s ∈ 𝓝[≥] f a) :
    ContinuousWithinAt f (Ici a) a :=
  h_mono.continuousWithinAt_right_of_closure_image_mem_nhdsWithin hs
    (mem_of_superset hfs subset_closure)
#align strict_mono_on.continuous_at_right_of_image_mem_nhds_within StrictMonoOn.continuousWithinAt_right_of_image_mem_nhdsWithin

/-- If a function `f` is strictly monotone on a right neighborhood of `a` and the image of this
neighborhood under `f` includes `Ioi (f a)`, then `f` is continuous at `a` from the right. -/
theorem StrictMonoOn.continuousWithinAt_right_of_surjOn {f : α → β} {s : Set α} {a : α}
    (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝[≥] a) (hfs : SurjOn f s (Ioi (f a))) :
    ContinuousWithinAt f (Ici a) a :=
  h_mono.continuousWithinAt_right_of_exists_between hs fun _ hb =>
    let ⟨c, hcs, hcb⟩ := hfs hb
    ⟨c, hcs, hcb.symm ▸ hb, hcb.le⟩
#align strict_mono_on.continuous_at_right_of_surj_on StrictMonoOn.continuousWithinAt_right_of_surjOn

/-- If `f` is a strictly monotone function on a left neighborhood of `a` and the image of this
neighborhood under `f` meets every interval `[b, f a)`, `b < f a`, then `f` is continuous at `a`
from the left.

The assumption `hfs : ∀ b < f a, ∃ c ∈ s, f c ∈ Ico b (f a)` is required because otherwise the
function `f : ℝ → ℝ` given by `f x = if x < 0 then x else x + 1` would be a counter-example at
`a = 0`. -/
theorem StrictMonoOn.continuousWithinAt_left_of_exists_between {f : α → β} {s : Set α} {a : α}
    (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝[≤] a) (hfs : ∀ b < f a, ∃ c ∈ s, f c ∈ Ico b (f a)) :
    ContinuousWithinAt f (Iic a) a :=
  h_mono.dual.continuousWithinAt_right_of_exists_between hs fun b hb =>
    let ⟨c, hcs, hcb, hca⟩ := hfs b hb
    ⟨c, hcs, hca, hcb⟩
#align strict_mono_on.continuous_at_left_of_exists_between StrictMonoOn.continuousWithinAt_left_of_exists_between

/-- If `f` is a monotone function on a left neighborhood of `a` and the image of this neighborhood
under `f` meets every interval `(b, f a)`, `b < f a`, then `f` is continuous at `a` from the left.

The assumption `hfs : ∀ b < f a, ∃ c ∈ s, f c ∈ Ioo b (f a)` cannot be replaced by the weaker
assumption `hfs : ∀ b < f a, ∃ c ∈ s, f c ∈ Ico b (f a)` we use for strictly monotone functions
because otherwise the function `floor : ℝ → ℤ` would be a counter-example at `a = 0`. -/
theorem continuousWithinAt_left_of_monotoneOn_of_exists_between {f : α → β} {s : Set α} {a : α}
    (hf : MonotoneOn f s) (hs : s ∈ 𝓝[≤] a) (hfs : ∀ b < f a, ∃ c ∈ s, f c ∈ Ioo b (f a)) :
    ContinuousWithinAt f (Iic a) a :=
  @continuousWithinAt_right_of_monotoneOn_of_exists_between αᵒᵈ βᵒᵈ _ _ _ _ _ _ f s a hf.dual hs
    fun b hb =>
    let ⟨c, hcs, hcb, hca⟩ := hfs b hb
    ⟨c, hcs, hca, hcb⟩
#align continuous_at_left_of_monotone_on_of_exists_between continuousWithinAt_left_of_monotoneOn_of_exists_between

/-- If a function `f` with a densely ordered codomain is monotone on a left neighborhood of `a` and
the closure of the image of this neighborhood under `f` is a left neighborhood of `f a`, then `f` is
continuous at `a` from the left -/
theorem continuousWithinAt_left_of_monotoneOn_of_closure_image_mem_nhdsWithin [DenselyOrdered β]
    {f : α → β} {s : Set α} {a : α} (hf : MonotoneOn f s) (hs : s ∈ 𝓝[≤] a)
    (hfs : closure (f '' s) ∈ 𝓝[≤] f a) : ContinuousWithinAt f (Iic a) a :=
  @continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin αᵒᵈ βᵒᵈ _ _ _ _ _ _ _ f s
    a hf.dual hs hfs
#align continuous_at_left_of_monotone_on_of_closure_image_mem_nhds_within continuousWithinAt_left_of_monotoneOn_of_closure_image_mem_nhdsWithin

/-- If a function `f` with a densely ordered codomain is monotone on a left neighborhood of `a` and
the image of this neighborhood under `f` is a left neighborhood of `f a`, then `f` is continuous at
`a` from the left. -/
theorem continuousWithinAt_left_of_monotoneOn_of_image_mem_nhdsWithin [DenselyOrdered β] {f : α → β}
    {s : Set α} {a : α} (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝[≤] a) (hfs : f '' s ∈ 𝓝[≤] f a) :
    ContinuousWithinAt f (Iic a) a :=
  continuousWithinAt_left_of_monotoneOn_of_closure_image_mem_nhdsWithin h_mono hs
    (mem_of_superset hfs subset_closure)
#align continuous_at_left_of_monotone_on_of_image_mem_nhds_within continuousWithinAt_left_of_monotoneOn_of_image_mem_nhdsWithin

/-- If a function `f` with a densely ordered codomain is strictly monotone on a left neighborhood of
`a` and the closure of the image of this neighborhood under `f` is a left neighborhood of `f a`,
then `f` is continuous at `a` from the left. -/
theorem StrictMonoOn.continuousWithinAt_left_of_closure_image_mem_nhdsWithin [DenselyOrdered β]
    {f : α → β} {s : Set α} {a : α} (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝[≤] a)
    (hfs : closure (f '' s) ∈ 𝓝[≤] f a) : ContinuousWithinAt f (Iic a) a :=
  h_mono.dual.continuousWithinAt_right_of_closure_image_mem_nhdsWithin hs hfs
#align strict_mono_on.continuous_at_left_of_closure_image_mem_nhds_within StrictMonoOn.continuousWithinAt_left_of_closure_image_mem_nhdsWithin

/-- If a function `f` with a densely ordered codomain is strictly monotone on a left neighborhood of
`a` and the image of this neighborhood under `f` is a left neighborhood of `f a`, then `f` is
continuous at `a` from the left. -/
theorem StrictMonoOn.continuousWithinAt_left_of_image_mem_nhdsWithin [DenselyOrdered β] {f : α → β}
    {s : Set α} {a : α} (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝[≤] a) (hfs : f '' s ∈ 𝓝[≤] f a) :
    ContinuousWithinAt f (Iic a) a :=
  h_mono.dual.continuousWithinAt_right_of_image_mem_nhdsWithin hs hfs
#align strict_mono_on.continuous_at_left_of_image_mem_nhds_within StrictMonoOn.continuousWithinAt_left_of_image_mem_nhdsWithin

/-- If a function `f` is strictly monotone on a left neighborhood of `a` and the image of this
neighborhood under `f` includes `Iio (f a)`, then `f` is continuous at `a` from the left. -/
theorem StrictMonoOn.continuousWithinAt_left_of_surjOn {f : α → β} {s : Set α} {a : α}
    (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝[≤] a) (hfs : SurjOn f s (Iio (f a))) :
    ContinuousWithinAt f (Iic a) a :=
  h_mono.dual.continuousWithinAt_right_of_surjOn hs hfs
#align strict_mono_on.continuous_at_left_of_surj_on StrictMonoOn.continuousWithinAt_left_of_surjOn

/-- If a function `f` is strictly monotone on a neighborhood of `a` and the image of this
neighborhood under `f` meets every interval `[b, f a)`, `b < f a`, and every interval
`(f a, b]`, `b > f a`, then `f` is continuous at `a`. -/
theorem StrictMonoOn.continuousAt_of_exists_between {f : α → β} {s : Set α} {a : α}
    (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝 a) (hfs_l : ∀ b < f a, ∃ c ∈ s, f c ∈ Ico b (f a))
    (hfs_r : ∀ b > f a, ∃ c ∈ s, f c ∈ Ioc (f a) b) : ContinuousAt f a :=
  continuousAt_iff_continuous_left_right.2
    ⟨h_mono.continuousWithinAt_left_of_exists_between (mem_nhdsWithin_of_mem_nhds hs) hfs_l,
      h_mono.continuousWithinAt_right_of_exists_between (mem_nhdsWithin_of_mem_nhds hs) hfs_r⟩
#align strict_mono_on.continuous_at_of_exists_between StrictMonoOn.continuousAt_of_exists_between

/-- If a function `f` with a densely ordered codomain is strictly monotone on a neighborhood of `a`
and the closure of the image of this neighborhood under `f` is a neighborhood of `f a`, then `f` is
continuous at `a`. -/
theorem StrictMonoOn.continuousAt_of_closure_image_mem_nhds [DenselyOrdered β] {f : α → β}
    {s : Set α} {a : α} (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝 a)
    (hfs : closure (f '' s) ∈ 𝓝 (f a)) : ContinuousAt f a :=
  continuousAt_iff_continuous_left_right.2
    ⟨h_mono.continuousWithinAt_left_of_closure_image_mem_nhdsWithin (mem_nhdsWithin_of_mem_nhds hs)
        (mem_nhdsWithin_of_mem_nhds hfs),
      h_mono.continuousWithinAt_right_of_closure_image_mem_nhdsWithin
        (mem_nhdsWithin_of_mem_nhds hs) (mem_nhdsWithin_of_mem_nhds hfs)⟩
#align strict_mono_on.continuous_at_of_closure_image_mem_nhds StrictMonoOn.continuousAt_of_closure_image_mem_nhds

/-- If a function `f` with a densely ordered codomain is strictly monotone on a neighborhood of `a`
and the image of this set under `f` is a neighborhood of `f a`, then `f` is continuous at `a`. -/
theorem StrictMonoOn.continuousAt_of_image_mem_nhds [DenselyOrdered β] {f : α → β} {s : Set α}
    {a : α} (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝 a) (hfs : f '' s ∈ 𝓝 (f a)) :
    ContinuousAt f a :=
  h_mono.continuousAt_of_closure_image_mem_nhds hs (mem_of_superset hfs subset_closure)
#align strict_mono_on.continuous_at_of_image_mem_nhds StrictMonoOn.continuousAt_of_image_mem_nhds

/-- If `f` is a monotone function on a neighborhood of `a` and the image of this neighborhood under
`f` meets every interval `(b, f a)`, `b < f a`, and every interval `(f a, b)`, `b > f a`, then `f`
is continuous at `a`. -/
theorem continuousAt_of_monotoneOn_of_exists_between {f : α → β} {s : Set α} {a : α}
    (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝 a) (hfs_l : ∀ b < f a, ∃ c ∈ s, f c ∈ Ioo b (f a))
    (hfs_r : ∀ b > f a, ∃ c ∈ s, f c ∈ Ioo (f a) b) : ContinuousAt f a :=
  continuousAt_iff_continuous_left_right.2
    ⟨continuousWithinAt_left_of_monotoneOn_of_exists_between h_mono (mem_nhdsWithin_of_mem_nhds hs)
        hfs_l,
      continuousWithinAt_right_of_monotoneOn_of_exists_between h_mono
        (mem_nhdsWithin_of_mem_nhds hs) hfs_r⟩
#align continuous_at_of_monotone_on_of_exists_between continuousAt_of_monotoneOn_of_exists_between

/-- If a function `f` with a densely ordered codomain is monotone on a neighborhood of `a` and the
closure of the image of this neighborhood under `f` is a neighborhood of `f a`, then `f` is
continuous at `a`. -/
theorem continuousAt_of_monotoneOn_of_closure_image_mem_nhds [DenselyOrdered β] {f : α → β}
    {s : Set α} {a : α} (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝 a)
    (hfs : closure (f '' s) ∈ 𝓝 (f a)) : ContinuousAt f a :=
  continuousAt_iff_continuous_left_right.2
    ⟨continuousWithinAt_left_of_monotoneOn_of_closure_image_mem_nhdsWithin h_mono
        (mem_nhdsWithin_of_mem_nhds hs) (mem_nhdsWithin_of_mem_nhds hfs),
      continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin h_mono
        (mem_nhdsWithin_of_mem_nhds hs) (mem_nhdsWithin_of_mem_nhds hfs)⟩
#align continuous_at_of_monotone_on_of_closure_image_mem_nhds continuousAt_of_monotoneOn_of_closure_image_mem_nhds

/-- If a function `f` with a densely ordered codomain is monotone on a neighborhood of `a` and the
image of this neighborhood under `f` is a neighborhood of `f a`, then `f` is continuous at `a`. -/
theorem continuousAt_of_monotoneOn_of_image_mem_nhds [DenselyOrdered β] {f : α → β} {s : Set α}
    {a : α} (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝 a) (hfs : f '' s ∈ 𝓝 (f a)) : ContinuousAt f a :=
  continuousAt_of_monotoneOn_of_closure_image_mem_nhds h_mono hs
    (mem_of_superset hfs subset_closure)
#align continuous_at_of_monotone_on_of_image_mem_nhds continuousAt_of_monotoneOn_of_image_mem_nhds

/-- A monotone function with densely ordered codomain and a dense range is continuous. -/
theorem Monotone.continuous_of_denseRange [DenselyOrdered β] {f : α → β} (h_mono : Monotone f)
    (h_dense : DenseRange f) : Continuous f :=
  continuous_iff_continuousAt.mpr fun a =>
    continuousAt_of_monotoneOn_of_closure_image_mem_nhds (fun x _ y _ hxy => h_mono hxy)
        univ_mem <|
      by simp only [image_univ, h_dense.closure_eq, univ_mem]
#align monotone.continuous_of_dense_range Monotone.continuous_of_denseRange

/-- A monotone surjective function with a densely ordered codomain is continuous. -/
theorem Monotone.continuous_of_surjective [DenselyOrdered β] {f : α → β} (h_mono : Monotone f)
    (h_surj : Function.Surjective f) : Continuous f :=
  h_mono.continuous_of_denseRange h_surj.denseRange
#align monotone.continuous_of_surjective Monotone.continuous_of_surjective

end LinearOrder

/-!
### Continuity of order isomorphisms

In this section we prove that an `OrderIso` is continuous, hence it is a `Homeomorph`. We prove
this for an `OrderIso` between to partial orders with order topology.
-/


namespace OrderIso

variable {α β : Type*} [PartialOrder α] [PartialOrder β] [TopologicalSpace α] [TopologicalSpace β]
  [OrderTopology α] [OrderTopology β]

protected theorem continuous (e : α ≃o β) : Continuous e := by
  rw [‹OrderTopology β›.topology_eq_generate_intervals]
  refine' continuous_generateFrom fun s hs => _
  rcases hs with ⟨a, rfl | rfl⟩
  · rw [e.preimage_Ioi]
    apply isOpen_lt'
  · rw [e.preimage_Iio]
    apply isOpen_gt'
#align order_iso.continuous OrderIso.continuous

/-- An order isomorphism between two linear order `OrderTopology` spaces is a homeomorphism. -/
def toHomeomorph (e : α ≃o β) : α ≃ₜ β :=
  { e with
    continuous_toFun := e.continuous
    continuous_invFun := e.symm.continuous }
#align order_iso.to_homeomorph OrderIso.toHomeomorph

@[simp]
theorem coe_toHomeomorph (e : α ≃o β) : ⇑e.toHomeomorph = e :=
  rfl
#align order_iso.coe_to_homeomorph OrderIso.coe_toHomeomorph

@[simp]
theorem coe_toHomeomorph_symm (e : α ≃o β) : ⇑e.toHomeomorph.symm = e.symm :=
  rfl
#align order_iso.coe_to_homeomorph_symm OrderIso.coe_toHomeomorph_symm

end OrderIso
```
