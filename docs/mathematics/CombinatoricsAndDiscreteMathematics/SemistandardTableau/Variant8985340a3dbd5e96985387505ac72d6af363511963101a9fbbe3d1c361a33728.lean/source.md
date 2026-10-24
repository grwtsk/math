# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SemistandardTableau.Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec69c80ba33fb445305ba44350249160433a2413` · SHA-256 `b8e3d3c983241de56000137e1c8b0d053faed44ea4cc7f3b2703ded539cc4049`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SemistandardYoungTableau.Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SemistandardYoungTableau.Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Combinatorics/Young/SemistandardTableau.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jake Levinson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jake Levinson
-/
module

public import Mathlib.Combinatorics.Young.YoungDiagram

/-!
# Semistandard Young tableaux

A semistandard Young tableau is a filling of a Young diagram by natural numbers, such that
the entries are weakly increasing left-to-right along rows (i.e. for fixed `i`), and
strictly-increasing top-to-bottom along columns (i.e. for fixed `j`).

An example of an SSYT of shape `μ = [4, 2, 1]` is:

```text
0 0 0 2
1 1
2
```

We represent a semistandard Young tableau as a function `ℕ → ℕ → ℕ`, which is required to be zero
for all pairs `(i, j) ∉ μ` and to satisfy the row-weak and column-strict conditions on `μ`.


## Main definitions

- `SemistandardYoungTableau (μ : YoungDiagram)`: semistandard Young tableaux of shape `μ`. There is
  a `coe` instance such that `T i j` is value of the `(i, j)` entry of the semistandard Young
  tableau `T`.
- `SemistandardYoungTableau.highestWeight (μ : YoungDiagram)`: the semistandard Young tableau whose
  `i`th row consists entirely of `i`s, for each `i`.

## Tags

Semistandard Young tableau

## References

<https://en.wikipedia.org/wiki/Young_tableau>

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SemistandardYoungTableau.Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964

@[expose] public section


/-- A semistandard Young tableau is a filling of the cells of a Young diagram by natural
numbers, such that the entries in each row are weakly increasing (left to right), and the entries
in each column are strictly increasing (top to bottom).

Here, a semistandard Young tableau is represented as an unrestricted function `ℕ → ℕ → ℕ` that, for
reasons of extensionality, is required to vanish outside `μ`. -/
structure SemistandardYoungTableau (μ : YoungDiagram) where
  /-- `entry i j` is value of the `(i, j)` entry of the SSYT `μ`. -/
  entry : ℕ → ℕ → ℕ
  /-- The entries in each row are weakly increasing (left to right). -/
  row_weak' : ∀ {i j1 j2 : ℕ}, j1 < j2 → (i, j2) ∈ μ → entry i j1 ≤ entry i j2
  /-- The entries in each column are strictly increasing (top to bottom). -/
  col_strict' : ∀ {i1 i2 j : ℕ}, i1 < i2 → (i2, j) ∈ μ → entry i1 j < entry i2 j
  /-- `entry` is required to be zero for all pairs `(i, j) ∉ μ`. -/
  zeros' : ∀ {i j}, (i, j) ∉ μ → entry i j = 0

namespace SemistandardYoungTableau

@[macro_inline]
instance instFunLike {μ : YoungDiagram} : FunLike (SemistandardYoungTableau μ) ℕ (ℕ → ℕ) where
  coe := SemistandardYoungTableau.entry
  coe_injective T T' h := by
    cases T
    cases T'
    congr

@[simp]
theorem to_fun_eq_coe {μ : YoungDiagram} {T : SemistandardYoungTableau μ} :
    T.entry = (T : ℕ → ℕ → ℕ) :=
  rfl

@[ext]
theorem ext {μ : YoungDiagram} {T T' : SemistandardYoungTableau μ} (h : ∀ i j, T i j = T' i j) :
    T = T' :=
  DFunLike.ext T T' fun _ ↦ by
    funext
    apply h

/-- Copy of an `SemistandardYoungTableau μ` with a new `entry` equal to the old one. Useful to fix
definitional equalities. -/
protected def copy {μ : YoungDiagram} (T : SemistandardYoungTableau μ) (entry' : ℕ → ℕ → ℕ)
    (h : entry' = T) : SemistandardYoungTableau μ where
  entry := entry'
  row_weak' := h.symm ▸ T.row_weak'
  col_strict' := h.symm ▸ T.col_strict'
  zeros' := h.symm ▸ T.zeros'

@[simp]
theorem coe_copy {μ : YoungDiagram} (T : SemistandardYoungTableau μ) (entry' : ℕ → ℕ → ℕ)
    (h : entry' = T) : ⇑(T.copy entry' h) = entry' :=
  rfl

theorem copy_eq {μ : YoungDiagram} (T : SemistandardYoungTableau μ) (entry' : ℕ → ℕ → ℕ)
    (h : entry' = T) : T.copy entry' h = T :=
  DFunLike.ext' h

theorem row_weak {μ : YoungDiagram} (T : SemistandardYoungTableau μ) {i j1 j2 : ℕ} (hj : j1 < j2)
    (hcell : (i, j2) ∈ μ) : T i j1 ≤ T i j2 :=
  T.row_weak' hj hcell

theorem col_strict {μ : YoungDiagram} (T : SemistandardYoungTableau μ) {i1 i2 j : ℕ} (hi : i1 < i2)
    (hcell : (i2, j) ∈ μ) : T i1 j < T i2 j :=
  T.col_strict' hi hcell

theorem zeros {μ : YoungDiagram} (T : SemistandardYoungTableau μ) {i j : ℕ}
    (not_cell : (i, j) ∉ μ) : T i j = 0 :=
  T.zeros' not_cell

theorem row_weak_of_le {μ : YoungDiagram} (T : SemistandardYoungTableau μ) {i j1 j2 : ℕ}
    (hj : j1 ≤ j2) (cell : (i, j2) ∈ μ) : T i j1 ≤ T i j2 := by
  rcases eq_or_lt_of_le hj with h | h
  · rw [h]
  · exact T.row_weak h cell

theorem col_weak {μ : YoungDiagram} (T : SemistandardYoungTableau μ) {i1 i2 j : ℕ} (hi : i1 ≤ i2)
    (cell : (i2, j) ∈ μ) : T i1 j ≤ T i2 j := by
  rcases eq_or_lt_of_le hi with h | h
  · rw [h]
  · exact le_of_lt (T.col_strict h cell)

/-- The "highest weight" SSYT of a given shape has all i's in row i, for each i. -/
def highestWeight (μ : YoungDiagram) : SemistandardYoungTableau μ where
  entry i j := if (i, j) ∈ μ then i else 0
  row_weak' hj hcell := by
    rw [ite_eq_left hcell, ite_eq_left (μ.up_left_mem (by rfl) (le_of_lt hj) hcell)]
  col_strict' hi hcell := by
    rwa [ite_eq_left hcell, ite_eq_left (μ.up_left_mem (le_of_lt hi) (by rfl) hcell)]
  zeros' not_cell := ite_eq_right not_cell

@[simp]
theorem highestWeight_apply {μ : YoungDiagram} {i j : ℕ} :
    highestWeight μ i j = if (i, j) ∈ μ then i else 0 :=
  rfl

instance {μ : YoungDiagram} : Inhabited (SemistandardYoungTableau μ) :=
  ⟨highestWeight μ⟩

end SemistandardYoungTableau
````
