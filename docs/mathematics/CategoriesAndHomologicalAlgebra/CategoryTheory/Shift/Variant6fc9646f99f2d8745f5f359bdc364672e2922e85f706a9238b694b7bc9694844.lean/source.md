# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Shift.Variant6fc9646f99f2d8745f5f359bdc364672e2922e85f706a9238b694b7bc9694844

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a5c2f031c2f5b1c11baaf10683cdf0849547a09` · SHA-256 `cbff74e4afed60a92cec32919e0ca4a14acdc5560dc82492376cdb5bf12d191b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Shift.Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Shift.Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"fc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/ObjectProperty/Shift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms
import Mathlib.CategoryTheory.Shift.Basic

/-!
# Properties of objects on categories equipped with shift

Given a predicate `P : ObjectProperty C` on objects of a category equipped with a shift
by `A`, we define shifted properties of objects `P.shift a` for all `a : A`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Shift.Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3

open CategoryTheory Category

namespace CategoryTheory

variable {C : Type*} [Category C] (P : ObjectProperty C)
  {A : Type*} [AddMonoid A] [HasShift C A]

namespace ObjectProperty

/-- Given a predicate `P : C → Prop` on objects of a category equipped with a shift by `A`,
this is the predicate which is satisfied by `X` if `P (X⟦a⟧)`. -/
def shift (a : A) : ObjectProperty C := fun X => P (X⟦a⟧)

lemma prop_shift_iff (a : A) (X : C) : P.shift a X ↔ P (X⟦a⟧) := Iff.rfl

instance (a : A) [P.IsClosedUnderIsomorphisms] :
    (P.shift a).IsClosedUnderIsomorphisms where
  of_iso e hX := P.prop_of_iso ((shiftFunctor C a).mapIso e) hX

variable (A)

@[simp]
lemma shift_zero [P.IsClosedUnderIsomorphisms] : P.shift (0 : A) = P := by
  ext X
  exact P.prop_iff_of_iso ((shiftFunctorZero C A).app X)

variable {A}

lemma shift_shift (a b c : A) (h : a + b = c) [P.IsClosedUnderIsomorphisms] :
    (P.shift b).shift a = P.shift c := by
  ext X
  exact P.prop_iff_of_iso ((shiftFunctorAdd' C a b c h).symm.app X)

end ObjectProperty

@[deprecated (since := "2025-02-25")] alias PredicateShift := ObjectProperty.shift
@[deprecated (since := "2025-02-25")] alias predicateShift_iff := ObjectProperty.prop_shift_iff
@[deprecated (since := "2025-02-25")] alias predicateShift_zero := ObjectProperty.shift_zero
@[deprecated (since := "2025-02-25")] alias predicateShift_predicateShift :=
  ObjectProperty.shift_shift

end CategoryTheory
```
