# Complete source: GRWTSK.Topology.GeneralTopology.Northcott.Variant6f28b6033a69f22653703d53a976874f505477a1bf6874bb7aae2ba7a23e5579

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92fcac1ca2ac07f22eb5ae0fa1c57d0924fa7d59` · SHA-256 `ffd96aff64e132d0b2560369e96f4f658883e64f4732f58599b1327afe8ca988`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Northcott.Varianta8228365fffc2c84cd20900199adf7770bc8afe2dc0bee20f91fd167feed8da8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8228365fffc2c84cd20900199adf7770bc8afe2dc0bee20f91fd167feed8da8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Northcott.Varianta8228365fffc2c84cd20900199adf7770bc8afe2dc0bee20f91fd167feed8da8","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a8228365fffc2c84cd20900199adf7770bc8afe2dc0bee20f91fd167feed8da8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Northcott.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
module

public import Mathlib.Order.Filter.TendstoCofinite

/-!
# Northcott Functions

In number theory, the height function `h` satisfies the *Northcott property* that the sets
`{a | h a ≤ b}` are finite. This file extracts this notion as a typeclass and provides some API.

## Main definitions

* `Northcott h`: A function `h : α → β` is Northcott if the sets `{a : α | h a ≤ b}` are all finite.

## Main theorems

* `Northcott.exists_min_image h s hs`: If `h` is Northcott to a linear order, then `h` has an
  absolute minimum on every nonempty set `s`.

## References

* [D. Northcott, *An inequality in the theory of arithmetic on algebraic varieties*](northcott1949)
-/


namespace GRWTSK.Topology.GeneralTopology.Northcott.Varianta8228365fffc2c84cd20900199adf7770bc8afe2dc0bee20f91fd167feed8da8

public noncomputable section

variable {α β γ : Type*} (h : α → β) (h' : β → γ)

/-- A function `h : α → β` is Northcott if the sets `{a : α | h a ≤ b}` are all finite. -/
@[mk_iff]
class Northcott [LE β] : Prop where
  finite_le : ∀ b, {a : α | h a ≤ b}.Finite

open Filter in
theorem northcott_iff_tendsto [LinearOrder β] [NoMaxOrder β] :
    Northcott h ↔ Tendsto h cofinite atTop := by
  simp_rw [northcott_iff, tendsto_atTop, eventually_cofinite, not_le]
  refine ⟨fun H b ↦ (H b).subset fun x ↦ le_of_lt, fun H b ↦ ?_⟩
  obtain ⟨b', hc⟩ := exists_gt b
  exact (H b').subset fun x hx ↦ lt_of_le_of_lt hx hc

namespace Northcott

theorem exists_min_image [LinearOrder β] [Northcott h] (s : Set α) (hs : s.Nonempty) :
    ∃ a ∈ s, ∀ a' ∈ s, h a ≤ h a' := by
  obtain ⟨a₁, h₁⟩ := hs
  obtain ⟨a₂, h₂, h₃⟩ := Set.exists_min_image ({a | h a ≤ h a₁} ∩ s) h
    ((finite_le (h a₁)).inter_of_left s) ⟨a₁, le_rfl, h₁⟩
  grind

/-- A composition `h' ∘ h` is Northcott when `h` is Northcott and preimages of bounded above sets
under `h'` are bounded above. -/
lemma comp_of_bddAbove [Preorder β] [LE γ] [Northcott h] (H : ∀ c, BddAbove (h' ⁻¹' {x | x ≤ c})) :
    Northcott (h' ∘ h) where
  finite_le c := by
    obtain ⟨b, hb⟩ := bddAbove_def.mp (H c)
    exact (finite_le (h := h) b).subset <| by grind

/-- A composition `h' ∘ h` is Northcott when `h'` is Northcott and the fibers of `h` are finite. -/
lemma comp_of_finite_fibers [LE γ] [Northcott h'] [Filter.TendstoCofinite h] :
    Northcott (h' ∘ h) where
  finite_le c := by
    refine Set.Finite.of_finite_fibers h ?_ fun x _ ↦
      (Filter.TendstoCofinite.finite_preimage_singleton h x).inter_of_right _
    exact (finite_le (h := h') c).subset <| by grind

end Northcott
```
