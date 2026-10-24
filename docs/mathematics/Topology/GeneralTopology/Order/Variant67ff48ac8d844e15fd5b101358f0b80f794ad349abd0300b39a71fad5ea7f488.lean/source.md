# Complete source: GRWTSK.Topology.GeneralTopology.Order.Variant67ff48ac8d844e15fd5b101358f0b80f794ad349abd0300b39a71fad5ea7f488

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7353914bd589c7712f8f47f70b5a13b60675cbdd` · SHA-256 `c8a8d156fd2a9e8019e1b053de4fe4199f53600685a7345e5a4919a642eaad38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ClopenUpperSet.Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ClopenUpperSet.Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1","mathematical_subject":"Topology.GeneralTopology","original_sha256":"fafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Sets/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Topology.Sets.Closeds

/-!
# Clopen upper sets

In this file we define the type of clopen upper sets.
-/



namespace GRWTSK.Topology.GeneralTopology.ClopenUpperSet.Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1

open Set TopologicalSpace

variable {α : Type*} [TopologicalSpace α] [LE α]

/-! ### Compact open sets -/


/-- The type of clopen upper sets of a topological space. -/
structure ClopenUpperSet (α : Type*) [TopologicalSpace α] [LE α] extends Clopens α where
  upper' : IsUpperSet carrier

namespace ClopenUpperSet

instance : SetLike (ClopenUpperSet α) α where
  coe s := s.carrier
  coe_injective' s t h := by
    obtain ⟨⟨_, _⟩, _⟩ := s
    obtain ⟨⟨_, _⟩, _⟩ := t
    congr

/-- See Note [custom simps projection]. -/
def Simps.coe (s : ClopenUpperSet α) : Set α := s

initialize_simps_projections ClopenUpperSet (carrier → coe, as_prefix coe)

theorem upper (s : ClopenUpperSet α) : IsUpperSet (s : Set α) :=
  s.upper'

theorem isClopen (s : ClopenUpperSet α) : IsClopen (s : Set α) :=
  s.isClopen'

/-- Reinterpret an upper clopen as an upper set. -/
@[simps]
def toUpperSet (s : ClopenUpperSet α) : UpperSet α :=
  ⟨s, s.upper⟩

@[ext]
protected theorem ext {s t : ClopenUpperSet α} (h : (s : Set α) = t) : s = t :=
  SetLike.ext' h

@[simp]
theorem coe_mk (s : Clopens α) (h) : (mk s h : Set α) = s :=
  rfl

instance : Max (ClopenUpperSet α) :=
  ⟨fun s t => ⟨s.toClopens ⊔ t.toClopens, s.upper.union t.upper⟩⟩

instance : Min (ClopenUpperSet α) :=
  ⟨fun s t => ⟨s.toClopens ⊓ t.toClopens, s.upper.inter t.upper⟩⟩

instance : Top (ClopenUpperSet α) :=
  ⟨⟨⊤, isUpperSet_univ⟩⟩

instance : Bot (ClopenUpperSet α) :=
  ⟨⟨⊥, isUpperSet_empty⟩⟩

instance : Lattice (ClopenUpperSet α) :=
  SetLike.coe_injective.lattice _ (fun _ _ => rfl) fun _ _ => rfl

instance : BoundedOrder (ClopenUpperSet α) :=
  BoundedOrder.lift ((↑) : _ → Set α) (fun _ _ => id) rfl rfl

@[simp]
theorem coe_sup (s t : ClopenUpperSet α) : (↑(s ⊔ t) : Set α) = ↑s ∪ ↑t :=
  rfl

@[simp]
theorem coe_inf (s t : ClopenUpperSet α) : (↑(s ⊓ t) : Set α) = ↑s ∩ ↑t :=
  rfl

@[simp]
theorem coe_top : (↑(⊤ : ClopenUpperSet α) : Set α) = univ :=
  rfl

@[simp]
theorem coe_bot : (↑(⊥ : ClopenUpperSet α) : Set α) = ∅ :=
  rfl

instance : Inhabited (ClopenUpperSet α) :=
  ⟨⊥⟩

end ClopenUpperSet
```
