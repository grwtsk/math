# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant53e5ff503c3c694e5ed75fcc3f67274fe02b7d4044b9e48774f563e1cbeea9d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `428210c6a35520593eacf984cf3efea9b1003ada` · SHA-256 `67d58ad0c51c03db25059b4f6852b4d818d627e77a87d2911ddf1f1859d6c0c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ISupDecode.Variant07025155910bfeab7c95a1390694c5ca7f2b7ca1c38ce0a89b96653ccdf22bae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"07025155910bfeab7c95a1390694c5ca7f2b7ca1c38ce0a89b96653ccdf22bae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.ISupDecode.Variant07025155910bfeab7c95a1390694c5ca7f2b7ca1c38ce0a89b96653ccdf22bae","mathematical_subject":"Algebra.OrderTheory","original_sha256":"07025155910bfeab7c95a1390694c5ca7f2b7ca1c38ce0a89b96653ccdf22bae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Logic/Encodable/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Logic.Encodable.Basic
import Mathlib.Logic.Pairwise


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ISupDecode.Variant07025155910bfeab7c95a1390694c5ca7f2b7ca1c38ce0a89b96653ccdf22bae

#align_import logic.encodable.lattice from "leanprover-community/mathlib"@"9003f28797c0664a49e4179487267c494477d853"

/-!
# Lattice operations on encodable types

Lemmas about lattice and set operations on encodable types

## Implementation Notes

This is a separate file, to avoid unnecessary imports in basic files.

Previously some of these results were in the `MeasureTheory` folder.
-/

open Set

namespace Encodable

variable {α : Type*} {β : Type*} [Encodable β]

theorem iSup_decode₂ [CompleteLattice α] (f : β → α) :
    ⨆ (i : ℕ) (b ∈ decode₂ β i), f b = (⨆ b, f b) := by
  rw [iSup_comm]
  simp only [mem_decode₂, iSup_iSup_eq_right]
#align encodable.supr_decode₂ Encodable.iSup_decode₂

theorem iUnion_decode₂ (f : β → Set α) : ⋃ (i : ℕ) (b ∈ decode₂ β i), f b = ⋃ b, f b :=
  iSup_decode₂ f
#align encodable.Union_decode₂ Encodable.iUnion_decode₂

/- Porting note: `@[elab_as_elim]` gives `unexpected eliminator resulting type`. -/
--@[elab_as_elim]
theorem iUnion_decode₂_cases {f : β → Set α} {C : Set α → Prop} (H0 : C ∅) (H1 : ∀ b, C (f b)) {n} :
    C (⋃ b ∈ decode₂ β n, f b) :=
  match decode₂ β n with
  | none => by
    simp
    apply H0
  | some b => by
    convert H1 b
    simp [ext_iff]
#align encodable.Union_decode₂_cases Encodable.iUnion_decode₂_cases

theorem iUnion_decode₂_disjoint_on {f : β → Set α} (hd : Pairwise (Disjoint on f)) :
    Pairwise (Disjoint on fun i => ⋃ b ∈ decode₂ β i, f b) := by
  rintro i j ij
  refine' disjoint_left.mpr fun x => _
  suffices ∀ a, encode a = i → x ∈ f a → ∀ b, encode b = j → x ∉ f b by simpa [decode₂_eq_some]
  rintro a rfl ha b rfl hb
  exact (hd (mt (congr_arg encode) ij)).le_bot ⟨ha, hb⟩
#align encodable.Union_decode₂_disjoint_on Encodable.iUnion_decode₂_disjoint_on

end Encodable
```
