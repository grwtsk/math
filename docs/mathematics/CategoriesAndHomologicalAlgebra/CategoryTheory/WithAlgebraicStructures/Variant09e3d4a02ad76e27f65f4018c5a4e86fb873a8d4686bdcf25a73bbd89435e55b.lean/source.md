# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WithAlgebraicStructures.Variant09e3d4a02ad76e27f65f4018c5a4e86fb873a8d4686bdcf25a73bbd89435e55b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65f59c4a68887a7ae4a14bdeff82f393519b2107` · SHA-256 `550f76c5f71f3be55bd4ba462dc021beade62fa97f969e8ada691fe1cfa15c7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitRepEqZero.Variantacaa6cf0660522a408b513e01883d138df36dca2739b85bc8fce50b6cd57944f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acaa6cf0660522a408b513e01883d138df36dca2739b85bc8fce50b6cd57944f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ColimitRepEqZero.Variantacaa6cf0660522a408b513e01883d138df36dca2739b85bc8fce50b6cd57944f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"acaa6cf0660522a408b513e01883d138df36dca2739b85bc8fce50b6cd57944f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/ConcreteCategory/WithAlgebraicStructures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
import Mathlib.CategoryTheory.Limits.ConcreteCategory.Basic
import Mathlib.Algebra.Category.ModuleCat.Basic
import Mathlib.Tactic.CategoryTheory.Elementwise

/-!
# Colimits in ModuleCat

Let `C` be a concrete category and `F : J ⥤ C` a filtered diagram in `C`. We discuss some results
about `colimit F` when objects and morphisms in `C` have some algebraic structures.

## Main results
- `CategoryTheory.Limits.Concrete.colimit_rep_eq_zero`: Let `C` be a category where its objects have
  zero elements and morphisms preserve zero. If `x : Fⱼ` is mapped to `0` in the colimit, then
  there exists a `i ⟶ j` such that `x` restricted to `i` is already `0`.

- `CategoryTheory.Limits.Concrete.colimit_no_zero_smul_divisor`: Let `C` be a category where its
  objects are `R`-modules and morphisms `R`-linear maps. Let `r : R` be an element without zero
  smul divisors for all small sections, i.e. there exists some `j : J` such that for all `j ⟶ i`
  and `x : Fᵢ` we have `r • x = 0` implies `x = 0`, then if `r • x = 0` for `x : colimit F`, then
  `x = 0`.

## Implementation details

For now, we specialize our results to `C = ModuleCat R`, which is the only place they are used.
In the future they might be generalized by assuming a `HasForget₂ C (ModuleCat R)` instance,
plus assertions that the module structures induced by `HasForget₂` coincide.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitRepEqZero.Variantacaa6cf0660522a408b513e01883d138df36dca2739b85bc8fce50b6cd57944f

universe t w v u r

open CategoryTheory

namespace CategoryTheory.Limits.Concrete

variable (R : Type*) [Ring R] {J : Type w} [Category.{r} J]

section zero

theorem colimit_rep_eq_zero
    (F : J ⥤ ModuleCat.{max t w} R) [PreservesColimit F (forget (ModuleCat R))] [IsFiltered J]
    [HasColimit F] (j : J) (x : F.obj j) (hx : colimit.ι F j x = 0) :
    ∃ (j' : J) (i : j ⟶ j'), (F.map i).hom x = 0 := by
  rw [show 0 = colimit.ι F j 0 by simp, colimit_rep_eq_iff_exists] at hx
  obtain ⟨j', i, y, g⟩ := hx
  exact ⟨j', i, g ▸ by simp⟩

end zero

section module

/--
if `r` has no zero smul divisors for all small-enough sections, then `r` has no zero smul divisors
in the colimit.
-/
lemma colimit_no_zero_smul_divisor
    (F : J ⥤ ModuleCat.{max t w} R) [PreservesColimit F (forget (ModuleCat R))]
    [IsFiltered J] [HasColimit F]
    (r : R) (H : ∃ (j' : J), ∀ (j : J) (_ : j' ⟶ j), ∀ (c : F.obj j), r • c = 0 → c = 0)
    (x : ToType (colimit F)) (hx : r • x = 0) : x = 0 := by
  classical
  obtain ⟨j, x, rfl⟩ := Concrete.colimit_exists_rep F x
  rw [← map_smul (colimit.ι F j).hom] at hx
  obtain ⟨j', i, h⟩ := Concrete.colimit_rep_eq_zero (hx := hx)
  obtain ⟨j'', H⟩ := H
  simpa [elementwise_of% (colimit.w F), map_zero] using congr(colimit.ι F _
    $(H (IsFiltered.sup {j, j', j''} { ⟨j, j', by simp, by simp, i⟩ })
      (IsFiltered.toSup _ _ <| by simp)
      (F.map (IsFiltered.toSup _ _ <| by simp) x)
      (by rw [← IsFiltered.toSup_commutes (f := i) (mY := by simp) (mf := by simp), F.map_comp,
        ModuleCat.comp_apply, ← map_smul, ← map_smul, h, map_zero])))

end module

end CategoryTheory.Limits.Concrete
```
