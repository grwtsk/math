# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleObj.Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fac6c87de4886a54eec2faa5dfe43c7d0ca3413` · SHA-256 `fa605afe4766af49aef4146f34996020129192384c7669cf4b0743aebcfdc215`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypesSectionsEquivFixedPoints.Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TypesSectionsEquivFixedPoints.Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/SingleObj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.CategoryTheory.Limits.Types.Colimits
import Mathlib.CategoryTheory.Limits.Types.Limits
import Mathlib.CategoryTheory.SingleObj
import Mathlib.Data.Setoid.Basic
import Mathlib.GroupTheory.GroupAction.Defs

/-!
# (Co)limits of functors out of `SingleObj M`

We characterise (co)limits of shape `SingleObj M`. Currently only in the category of types.

## Main results

* `SingleObj.Types.limitEquivFixedPoints`: The limit of `J : SingleObj G ⥤ Type u` is the fixed
  points of `J.obj (SingleObj.star G)` under the induced action.

* `SingleObj.Types.colimitEquivQuotient`: The colimit of `J : SingleObj G ⥤ Type u` is the
  quotient of `J.obj (SingleObj.star G)` by the induced action.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypesSectionsEquivFixedPoints.Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263

assert_not_exists MonoidWithZero

universe u v

namespace CategoryTheory

namespace Limits

namespace SingleObj

variable {M G : Type v} [Monoid M] [Group G]

/-- The induced `G`-action on the target of `J : SingleObj G ⥤ Type u`. -/
instance (J : SingleObj M ⥤ Type u) : MulAction M (J.obj (SingleObj.star M)) where
  smul g x := J.map g x
  one_smul x := by
    show J.map (𝟙 _) x = x
    simp only [FunctorToTypes.map_id_apply]
  mul_smul g h x := by
    show J.map (g * h) x = (J.map h ≫ J.map g) x
    rw [← SingleObj.comp_as_mul]
    · simp only [FunctorToTypes.map_comp_apply, types_comp_apply]
      rfl

section Limits

variable (J : SingleObj M ⥤ Type u)

/-- The equivalence between sections of `J : SingleObj M ⥤ Type u` and fixed points of the
induced action on `J.obj (SingleObj.star M)`. -/
@[simps]
def Types.sections.equivFixedPoints :
    J.sections ≃ MulAction.fixedPoints M (J.obj (SingleObj.star M)) where
  toFun s := ⟨s.val _, s.property⟩
  invFun p := ⟨fun _ ↦ p.val, p.property⟩
  left_inv _ := rfl
  right_inv _ := rfl

/-- The limit of `J : SingleObj M ⥤ Type u` is equivalent to the fixed points of the
induced action on `J.obj (SingleObj.star M)`. -/
@[simps!]
noncomputable def Types.limitEquivFixedPoints :
    limit J ≃ MulAction.fixedPoints M (J.obj (SingleObj.star M)) :=
  (Types.limitEquivSections J).trans (Types.sections.equivFixedPoints J)

end Limits

section Colimits

variable {G : Type v} [Group G] (J : SingleObj G ⥤ Type u)

/-- The relation used to construct colimits in types for `J : SingleObj G ⥤ Type u` is
equivalent to the `MulAction.orbitRel` equivalence relation on `J.obj (SingleObj.star G)`. -/
lemma Types.Quot.Rel.iff_orbitRel (x y : J.obj (SingleObj.star G)) :
    Types.Quot.Rel J ⟨SingleObj.star G, x⟩ ⟨SingleObj.star G, y⟩
    ↔ MulAction.orbitRel G (J.obj (SingleObj.star G)) x y := by
  have h (g : G) : y = g • x ↔ g • x = y := ⟨symm, symm⟩
  conv => rhs; rw [Setoid.comm']
  show (∃ g : G, y = g • x) ↔ (∃ g : G, g • x = y)
  conv => lhs; simp only [h]

/-- The explicit quotient construction of the colimit of `J : SingleObj G ⥤ Type u` is
equivalent to the quotient of `J.obj (SingleObj.star G)` by the induced action. -/
@[simps]
def Types.Quot.equivOrbitRelQuotient :
    Types.Quot J ≃ MulAction.orbitRel.Quotient G (J.obj (SingleObj.star G)) where
  toFun := Quot.lift (fun p => ⟦p.2⟧) <| fun a b h => Quotient.sound <|
    (Types.Quot.Rel.iff_orbitRel J a.2 b.2).mp h
  invFun := Quot.lift (fun x => Quot.mk _ ⟨SingleObj.star G, x⟩) <| fun a b h =>
    Quot.sound <| (Types.Quot.Rel.iff_orbitRel J a b).mpr h
  left_inv := fun x => Quot.inductionOn x (fun _ ↦ rfl)
  right_inv := fun x => Quot.inductionOn x (fun _ ↦ rfl)

/-- The colimit of `J : SingleObj G ⥤ Type u` is equivalent to the quotient of
`J.obj (SingleObj.star G)` by the induced action. -/
@[simps!]
noncomputable def Types.colimitEquivQuotient :
    colimit J ≃ MulAction.orbitRel.Quotient G (J.obj (SingleObj.star G)) :=
  (Types.colimitEquivQuot J).trans (Types.Quot.equivOrbitRelQuotient J)

end Colimits

end SingleObj

end Limits

end CategoryTheory
```
