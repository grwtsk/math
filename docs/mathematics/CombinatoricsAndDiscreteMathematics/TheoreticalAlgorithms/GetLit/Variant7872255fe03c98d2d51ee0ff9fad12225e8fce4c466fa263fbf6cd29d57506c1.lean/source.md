# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetLit.Variant7872255fe03c98d2d51ee0ff9fad12225e8fce4c466fa263fbf6cd29d57506c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c459df47c2f02fcbf58bcd5b56ac5377e0cd9d9` · SHA-256 `bd510df3a337f14ca001f66c1fddb9c02149691498b4289aa77d575306df73ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetLit.Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GetLit.Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0","mathematical_subject":"Computation.DataStructures","original_sha256":"d43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Array/GetLit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/

module

prelude
public import Init.GetElem
import Init.Data.Array.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetLit.Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Array

/-! ### getLit -/

-- auxiliary declaration used in the equation compiler when pattern matching array literals.
abbrev getLit {α : Type u} {n : Nat} (xs : Array α) (i : Nat) (h₁ : xs.size = n) (h₂ : i < n) : α :=
  have := h₁.symm ▸ h₂
  xs[i]

theorem extLit {n : Nat}
    (xs ys : Array α)
    (hsz₁ : xs.size = n) (hsz₂ : ys.size = n)
    (h : (i : Nat) → (hi : i < n) → xs.getLit i hsz₁ hi = ys.getLit i hsz₂ hi) : xs = ys :=
  Array.ext (hsz₁.trans hsz₂.symm) fun i hi₁ _ => h i (hsz₁ ▸ hi₁)

-- has to be expose for array literal support
@[expose] def toListLitAux (xs : Array α) (n : Nat) (hsz : xs.size = n) : ∀ (i : Nat), i ≤ xs.size → List α → List α
  | 0,     _,  acc => acc
  | (i+1), hi, acc => toListLitAux xs n hsz i (Nat.le_of_succ_le hi) (xs.getLit i hsz (Nat.lt_of_lt_of_eq (Nat.lt_of_lt_of_le (Nat.lt_succ_self i) hi) hsz) :: acc)

-- has to be expose for array literal support
@[expose] def toArrayLit (xs : Array α) (n : Nat) (hsz : xs.size = n) : Array α :=
  List.toArray <| toListLitAux xs n hsz n (hsz ▸ Nat.le_refl _) []

theorem toArrayLit_eq (xs : Array α) (n : Nat) (hsz : xs.size = n) : xs = toArrayLit xs n hsz := by
  apply ext'
  simp [toArrayLit, List.toList_toArray]
  have hle : n ≤ xs.size := hsz ▸ Nat.le_refl _
  have hge : xs.size ≤ n := hsz ▸ Nat.le_refl _
  have := go n hle
  rw [List.drop_eq_nil_of_le hge] at this
  rw [this]
where
  getLit_eq (xs : Array α) (i : Nat) (h₁ : xs.size = n) (h₂ : i < n) : xs.getLit i h₁ h₂ = getElem xs.toList i ((id (α := xs.toList.length = n) h₁) ▸ h₂) :=
    rfl
  go (i : Nat) (hi : i ≤ xs.size) : toListLitAux xs n hsz i hi (xs.toList.drop i) = xs.toList := by
    induction i <;> simp only [List.drop, toListLitAux, getLit_eq, List.getElem_cons_drop, *]

end Array
```
