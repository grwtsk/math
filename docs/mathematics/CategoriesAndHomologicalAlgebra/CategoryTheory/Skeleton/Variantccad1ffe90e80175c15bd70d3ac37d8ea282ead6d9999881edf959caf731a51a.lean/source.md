# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeleton.Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c96e3ae8b0b8c0b6a4018b0b8e388c56ade2be1` · SHA-256 `acef7251350cf5ffee499e145663bf0b1a8f44ecf55843b9264ca8230785bd82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidOfSkeletalMonoidal.Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MonoidOfSkeletalMonoidal.Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Skeleton.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Monoidal.Braided.Basic
import Mathlib.CategoryTheory.Monoidal.Transport
import Mathlib.CategoryTheory.Skeletal

/-!
# The monoid on the skeleton of a monoidal category

The skeleton of a monoidal category is a monoid.

## Main results

* `Skeleton.instMonoid`, for monoidal categories.
* `Skeleton.instCommMonoid`, for braided monoidal categories.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidOfSkeletalMonoidal.Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720

namespace CategoryTheory

open MonoidalCategory

universe v u

variable {C : Type u} [Category.{v} C] [MonoidalCategory C]

/-- If `C` is monoidal and skeletal, it is a monoid.
See note [reducible non-instances]. -/
abbrev monoidOfSkeletalMonoidal (hC : Skeletal C) : Monoid C where
  mul X Y := (X ⊗ Y : C)
  one := (𝟙_ C : C)
  one_mul X := hC ⟨λ_ X⟩
  mul_one X := hC ⟨ρ_ X⟩
  mul_assoc X Y Z := hC ⟨α_ X Y Z⟩

/-- If `C` is braided and skeletal, it is a commutative monoid. -/
def commMonoidOfSkeletalBraided [BraidedCategory C] (hC : Skeletal C) : CommMonoid C :=
  { monoidOfSkeletalMonoidal hC with mul_comm := fun X Y => hC ⟨β_ X Y⟩ }

namespace Skeleton

/-- The skeleton of a monoidal category has a monoidal structure itself, induced by the equivalence.
-/
noncomputable instance instMonoidalCategory : MonoidalCategory (Skeleton C) :=
  Monoidal.transport (skeletonEquivalence C).symm

/--
The skeleton of a monoidal category can be viewed as a monoid, where the multiplication is given by
the tensor product, and satisfies the monoid axioms since it is a skeleton.
-/
noncomputable instance instMonoid : Monoid (Skeleton C) :=
  monoidOfSkeletalMonoidal (skeleton_isSkeleton _).skel

theorem mul_eq (X Y : Skeleton C) : X * Y = toSkeleton (X.out ⊗ Y.out) := rfl
theorem one_eq : (1 : Skeleton C) = toSkeleton (𝟙_ C) := rfl

theorem toSkeleton_tensorObj (X Y : C) : toSkeleton (X ⊗ Y) = toSkeleton X * toSkeleton Y :=
  let φ := (skeletonEquivalence C).symm.unitIso.app; Quotient.sound ⟨φ X ⊗ φ Y⟩

/-- The skeleton of a braided monoidal category has a braided monoidal structure itself, induced by
the equivalence. -/
noncomputable instance instBraidedCategory [BraidedCategory C] : BraidedCategory (Skeleton C) := by
  letI := braidedCategoryOfFullyFaithful
    (Monoidal.equivalenceTransported (skeletonEquivalence C).symm).inverse
  exact this

/--
The skeleton of a braided monoidal category can be viewed as a commutative monoid, where the
multiplication is given by the tensor product, and satisfies the monoid axioms since it is a
skeleton.
-/
noncomputable instance instCommMonoid [BraidedCategory C] : CommMonoid (Skeleton C) :=
  commMonoidOfSkeletalBraided (skeleton_isSkeleton _).skel

end Skeleton

end CategoryTheory
```
