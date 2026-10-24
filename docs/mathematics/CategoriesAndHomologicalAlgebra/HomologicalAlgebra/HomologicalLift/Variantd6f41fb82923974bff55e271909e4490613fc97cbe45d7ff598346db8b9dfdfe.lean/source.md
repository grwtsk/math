# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalLift.Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fe61fa7f7613c1154acd45cb546d5c2ffedc96c` · SHA-256 `701291241e935e4333eb9f4ce88f9884b8d50c771e8704927671c9aed7357469`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalLift.Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.HomologicalLift.Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"ae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Homology/HomologicalLift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Homology.ShortComplex.ModuleCat
import Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex
import Mathlib.GroupTheory.Torsion

/-!
# Integral homological lifts of state permutations

This module owns the representation-independent interface for lifting a
set-level state permutation to an automorphism of an integral chain complex.
The lift is explicit: no chain action is inferred merely from bijectivity of
the underlying state transformation.

Applying Mathlib's homology functor to the supplied chain isomorphism produces
an isomorphism in every degree.  Its underlying additive equivalence preserves
exact additive order and therefore transports the integral torsion subgroup.
This is a general homological statement and has no filesystem, matrix,
avalanche, or cryptographic semantics by itself.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalLift.Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e

namespace DAF.Homology

open CategoryTheory

universe u

/-- An `ℕ`-graded chain complex of integral modules. -/
abbrev IntegralChainComplex := ChainComplex (ModuleCat ℤ) ℕ

/--
An explicit lift of a state permutation to an integral chain automorphism.
The agreement field records its action on chosen degree-zero representatives.
-/
structure HomologicalLift
    (State : Type u)
    (H : Equiv.Perm State)
    (K : IntegralChainComplex) where
  vertex : State → K.X 0
  chainIso : K ≅ K
  degreeZero_agrees : ∀ state,
    chainIso.hom.f 0 (vertex state) = vertex (H state)

namespace HomologicalLift

variable {State : Type u}
variable {H : Equiv.Perm State}
variable {K : IntegralChainComplex}
variable (L : HomologicalLift State H K)

/-- The automorphism induced by the chain lift on integral homology in degree `q`. -/
noncomputable def homologyIso (q : Nat) :
    K.homology q ≅ K.homology q :=
  HomologicalComplex.homologyMapIso L.chainIso q

/-- The underlying additive equivalence of the induced homology isomorphism. -/
noncomputable def homologyAddEquiv (q : Nat) :
    K.homology q ≃+ K.homology q :=
  (L.homologyIso q).toLinearEquiv.toAddEquiv

@[simp]
theorem homologyAddEquiv_apply (q : Nat) (x : K.homology q) :
    L.homologyAddEquiv q x = (L.homologyIso q).hom x :=
  rfl

/-- Applying the induced map and then its inverse recovers every class. -/
theorem homologyIso_hom_inv (q : Nat) (x : K.homology q) :
    (L.homologyIso q).inv ((L.homologyIso q).hom x) = x := by
  simp

/-- Applying the inverse and then the induced map recovers every class. -/
theorem homologyIso_inv_hom (q : Nat) (x : K.homology q) :
    (L.homologyIso q).hom ((L.homologyIso q).inv x) = x := by
  simp

/-- Integral finite-order classes are preserved and reflected. -/
theorem homologyIso_isOfFinAddOrder_iff
    (q : Nat)
    (x : K.homology q) :
    IsOfFinAddOrder (L.homologyAddEquiv q x) ↔ IsOfFinAddOrder x :=
  Function.Injective.isOfFinAddOrder_iff
    (f := (L.homologyAddEquiv q).toAddMonoidHom)
    (L.homologyAddEquiv q).injective

/-- Finite-order spelling for the additive homology group. -/
theorem homologyIso_isOfFinOrder_iff
    (q : Nat)
    (x : K.homology q) :
    IsOfFinAddOrder (L.homologyAddEquiv q x) ↔ IsOfFinAddOrder x :=
  L.homologyIso_isOfFinAddOrder_iff q x

/-- The exact additive order of every integral homology class is invariant. -/
theorem homologyIso_addOrderOf
    (q : Nat)
    (x : K.homology q) :
    addOrderOf (L.homologyAddEquiv q x) = addOrderOf x :=
  L.homologyAddEquiv q |>.addOrderOf_eq x

/-- The integral torsion subgroup transported by the homology automorphism. -/
noncomputable def homologyTorsionEquiv (q : Nat) :
    AddCommGroup.torsion (K.homology q) ≃+
      AddCommGroup.torsion (K.homology q) where
  toFun x :=
    ⟨L.homologyAddEquiv q x,
      (L.homologyIso_isOfFinAddOrder_iff q x).2 x.property⟩
  invFun x :=
    ⟨(L.homologyAddEquiv q).symm x,
      (by
        apply (L.homologyIso_isOfFinAddOrder_iff q
          ((L.homologyAddEquiv q).symm x)).1
        rw [(L.homologyAddEquiv q).apply_symm_apply]
        exact x.property)⟩
  left_inv x := by
    apply Subtype.ext
    exact (L.homologyAddEquiv q).symm_apply_apply x
  right_inv x := by
    apply Subtype.ext
    exact (L.homologyAddEquiv q).apply_symm_apply x
  map_add' x y := by
    apply Subtype.ext
    exact (L.homologyAddEquiv q).map_add x y

end HomologicalLift

end DAF.Homology
```
