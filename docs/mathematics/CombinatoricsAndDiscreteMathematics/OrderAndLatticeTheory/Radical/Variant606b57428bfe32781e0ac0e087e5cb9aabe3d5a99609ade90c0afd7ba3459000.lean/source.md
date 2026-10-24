# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Radical.Variant606b57428bfe32781e0ac0e087e5cb9aabe3d5a99609ade90c0afd7ba3459000

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa57118b3531a8d0595705d29cb635d7bb6a25cf` · SHA-256 `a74b90625e6d10ccb35ad3504f9ab305b2280e14919b0b50e7648f2ac3edce4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderRadical.Variant089875c0c6bbb9b64ae121707b6dabdfb0c2b265181ac2a1c0905212105838aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"089875c0c6bbb9b64ae121707b6dabdfb0c2b265181ac2a1c0905212105838aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.OrderRadical.Variant089875c0c6bbb9b64ae121707b6dabdfb0c2b265181ac2a1c0905212105838aa","mathematical_subject":"Algebra.OrderTheory","original_sha256":"089875c0c6bbb9b64ae121707b6dabdfb0c2b265181ac2a1c0905212105838aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Radical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Colva Roney-Dougal. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Colva Roney-Dougal, Inna Capdeboscq, Susanna Fishel, Kim Morrison
-/
import Mathlib.Order.Atoms

/-!
# The radical of a lattice

This file contains results on the order radical of a lattice: the infimum of the coatoms.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderRadical.Variant089875c0c6bbb9b64ae121707b6dabdfb0c2b265181ac2a1c0905212105838aa

/--
The infimum of all coatoms.

This notion specializes, e.g. in the subgroup lattice of a group to the Frattini subgroup,
or in the lattices of ideals in a ring `R` to the Jacobson ideal.
-/
def Order.radical (α : Type*) [Preorder α] [OrderTop α] [InfSet α] : α :=
   ⨅ a ∈ {H | IsCoatom H}, a

variable {α : Type*} [CompleteLattice α]

lemma Order.radical_le_coatom {a : α} (h : IsCoatom a) : radical α ≤ a := biInf_le _ h

variable {β : Type*} [CompleteLattice β]

theorem OrderIso.map_radical (f : α ≃o β) : f (Order.radical α) = Order.radical β := by
  unfold Order.radical
  simp only [OrderIso.map_iInf]
  fapply Equiv.iInf_congr
  · exact f.toEquiv
  · simp

theorem Order.radical_nongenerating [IsCoatomic α] {a : α} (h : a ⊔ radical α = ⊤) : a = ⊤ := by
  -- Since the lattice is coatomic, either `a` is already the top element,
  -- or there is a coatom above it.
  obtain (rfl | w) := eq_top_or_exists_le_coatom a
  · -- In the first case, we're done, this was already the goal.
    rfl
  · obtain ⟨m, c, le⟩ := w
    have q : a ⊔ radical α ≤ m := sup_le le (radical_le_coatom c)
    -- Now note that `a ⊔ radical α ≤ m` since both `a ≤ m` and `radical α ≤ m`.
    rw [h, top_le_iff] at q
    simpa using c.1 q
```
