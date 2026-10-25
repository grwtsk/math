# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Invariants.Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88677754f3c81c1fb913f15d8ae055450d866249` · SHA-256 `f3fc5965459e42fe5c7b3960434062d025f92eded2a0666860c450a0a7be4468`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Average.Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Average.Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"cf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/RepresentationTheory/Invariants.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Antoine Labelle. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Labelle
-/
import Mathlib.RepresentationTheory.Basic
import Mathlib.RepresentationTheory.FdRep


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Average.Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64

#align_import representation_theory.invariants from "leanprover-community/mathlib"@"55b3f8206b8596db8bb1804d8a92814a0b6670c9"

/-!
# Subspace of invariants a group representation

This file introduces the subspace of invariants of a group representation
and proves basic results about it.
The main tool used is the average of all elements of the group, seen as an element of
`MonoidAlgebra k G`. The action of this special element gives a projection onto the
subspace of invariants.
In order for the definition of the average element to make sense, we need to assume for most of the
results that the order of `G` is invertible in `k` (e. g. `k` has characteristic `0`).
-/


open scoped BigOperators

open MonoidAlgebra

open Representation

namespace GroupAlgebra

variable (k G : Type*) [CommSemiring k] [Group G]

variable [Fintype G] [Invertible (Fintype.card G : k)]

/-- The average of all elements of the group `G`, considered as an element of `MonoidAlgebra k G`.
-/
noncomputable def average : MonoidAlgebra k G :=
  ⅟ (Fintype.card G : k) • ∑ g : G, of k G g
#align group_algebra.average GroupAlgebra.average

/-- `average k G` is invariant under left multiplication by elements of `G`.
-/
@[simp]
theorem mul_average_left (g : G) : ↑(Finsupp.single g 1) * average k G = average k G := by
  simp only [mul_one, Finset.mul_sum, Algebra.mul_smul_comm, average, MonoidAlgebra.of_apply,
    Finset.sum_congr, MonoidAlgebra.single_mul_single]
  set f : G → MonoidAlgebra k G := fun x => Finsupp.single x 1
  show ⅟ (Fintype.card G : k) • ∑ x : G, f (g * x) = ⅟ (Fintype.card G : k) • ∑ x : G, f x
  rw [Function.Bijective.sum_comp (Group.mulLeft_bijective g) _]
#align group_algebra.mul_average_left GroupAlgebra.mul_average_left

/-- `average k G` is invariant under right multiplication by elements of `G`.
-/
@[simp]
theorem mul_average_right (g : G) : average k G * ↑(Finsupp.single g 1) = average k G := by
  simp only [mul_one, Finset.sum_mul, Algebra.smul_mul_assoc, average, MonoidAlgebra.of_apply,
    Finset.sum_congr, MonoidAlgebra.single_mul_single]
  set f : G → MonoidAlgebra k G := fun x => Finsupp.single x 1
  show ⅟ (Fintype.card G : k) • ∑ x : G, f (x * g) = ⅟ (Fintype.card G : k) • ∑ x : G, f x
  rw [Function.Bijective.sum_comp (Group.mulRight_bijective g) _]
#align group_algebra.mul_average_right GroupAlgebra.mul_average_right

end GroupAlgebra

namespace Representation

section Invariants

open GroupAlgebra

variable {k G V : Type*} [CommSemiring k] [Group G] [AddCommMonoid V] [Module k V]

variable (ρ : Representation k G V)

/-- The subspace of invariants, consisting of the vectors fixed by all elements of `G`.
-/
def invariants : Submodule k V where
  carrier := setOf fun v => ∀ g : G, ρ g v = v
  zero_mem' g := by simp only [map_zero]
  add_mem' hv hw g := by simp only [hv g, hw g, map_add]
  smul_mem' r v hv g := by simp only [hv g, LinearMap.map_smulₛₗ, RingHom.id_apply]
#align representation.invariants Representation.invariants

@[simp]
theorem mem_invariants (v : V) : v ∈ invariants ρ ↔ ∀ g : G, ρ g v = v := by rfl
#align representation.mem_invariants Representation.mem_invariants

theorem invariants_eq_inter : (invariants ρ).carrier = ⋂ g : G, Function.fixedPoints (ρ g) := by
  ext; simp [Function.IsFixedPt]
#align representation.invariants_eq_inter Representation.invariants_eq_inter

variable [Fintype G] [Invertible (Fintype.card G : k)]

/-- The action of `average k G` gives a projection map onto the subspace of invariants.
-/
@[simp]
noncomputable def averageMap : V →ₗ[k] V :=
  asAlgebraHom ρ (average k G)
#align representation.average_map Representation.averageMap

/-- The `averageMap` sends elements of `V` to the subspace of invariants.
-/
theorem averageMap_invariant (v : V) : averageMap ρ v ∈ invariants ρ := fun g => by
  rw [averageMap, ← asAlgebraHom_single_one, ← LinearMap.mul_apply, ← map_mul (asAlgebraHom ρ),
    mul_average_left]
#align representation.average_map_invariant Representation.averageMap_invariant

/-- The `averageMap` acts as the identity on the subspace of invariants.
-/
theorem averageMap_id (v : V) (hv : v ∈ invariants ρ) : averageMap ρ v = v := by
  rw [mem_invariants] at hv
  simp [average, map_sum, hv, Finset.card_univ, nsmul_eq_smul_cast k _ v, smul_smul]
#align representation.average_map_id Representation.averageMap_id

theorem isProj_averageMap : LinearMap.IsProj ρ.invariants ρ.averageMap :=
  ⟨ρ.averageMap_invariant, ρ.averageMap_id⟩
#align representation.is_proj_average_map Representation.isProj_averageMap

end Invariants

namespace linHom

universe u

open CategoryTheory Action

section Rep

variable {k : Type u} [CommRing k] {G : GroupCat.{u}}

theorem mem_invariants_iff_comm {X Y : Rep k G} (f : X.V →ₗ[k] Y.V) (g : G) :
    (linHom X.ρ Y.ρ) g f = f ↔ f.comp (X.ρ g) = (Y.ρ g).comp f := by
  dsimp
  erw [← ρAut_apply_inv]
  rw [← LinearMap.comp_assoc, ← ModuleCat.comp_def, ← ModuleCat.comp_def, Iso.inv_comp_eq,
    ρAut_apply_hom]
  exact comm
#align representation.lin_hom.mem_invariants_iff_comm Representation.linHom.mem_invariants_iff_comm

/-- The invariants of the representation `linHom X.ρ Y.ρ` correspond to the representation
homomorphisms from `X` to `Y`. -/
@[simps]
def invariantsEquivRepHom (X Y : Rep k G) : (linHom X.ρ Y.ρ).invariants ≃ₗ[k] X ⟶ Y where
  toFun f := ⟨f.val, fun g => (mem_invariants_iff_comm _ g).1 (f.property g)⟩
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  invFun f := ⟨f.hom, fun g => (mem_invariants_iff_comm _ g).2 (f.comm g)⟩
  left_inv _ := by apply Subtype.ext; ext; rfl -- Porting note: Added `apply Subtype.ext`
  right_inv _ := by ext; rfl
set_option linter.uppercaseLean3 false in
#align representation.lin_hom.invariants_equiv_Rep_hom Representation.linHom.invariantsEquivRepHom

end Rep

section FdRep

variable {k : Type u} [Field k] {G : GroupCat.{u}}

/-- The invariants of the representation `linHom X.ρ Y.ρ` correspond to the representation
homomorphisms from `X` to `Y`. -/
def invariantsEquivFdRepHom (X Y : FdRep k G) : (linHom X.ρ Y.ρ).invariants ≃ₗ[k] X ⟶ Y := by
  rw [← FdRep.forget₂_ρ, ← FdRep.forget₂_ρ]
  -- Porting note: The original version used `linHom.invariantsEquivRepHom _ _ ≪≫ₗ`
  exact linHom.invariantsEquivRepHom
    ((forget₂ (FdRep k G) (Rep k G)).obj X) ((forget₂ (FdRep k G) (Rep k G)).obj Y) ≪≫ₗ
    FdRep.forget₂HomLinearEquiv X Y
set_option linter.uppercaseLean3 false in
#align representation.lin_hom.invariants_equiv_fdRep_hom Representation.linHom.invariantsEquivFdRepHom

end FdRep

end linHom

end Representation
```
