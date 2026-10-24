# Complete source: GRWTSK.Algebra.UniversalAlgebra.Algebra.Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `707a183aad0ae39fbad7d2edd99411b6b0e091b6` · SHA-256 `c4e7b9400baeb856d39f4d9140fd212363c9cc1867375d1f279884d71503091c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.GAlgebra.Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.GAlgebra.Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"f94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/DirectSum/Algebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.DirectSum.Module
import Mathlib.Algebra.DirectSum.Ring

/-! # Additively-graded algebra structures on `⨁ i, A i`

This file provides `R`-algebra structures on external direct sums of `R`-modules.

Recall that if `A i` are a family of `AddCommMonoid`s indexed by an `AddMonoid`, then an instance
of `DirectSum.GMonoid A` is a multiplication `A i → A j → A (i + j)` giving `⨁ i, A i` the
structure of a semiring. In this file, we introduce the `DirectSum.GAlgebra R A` class for the case
where all `A i` are `R`-modules. This is the extra structure needed to promote `⨁ i, A i` to an
`R`-algebra.

## Main definitions

* `DirectSum.GAlgebra R A`, the typeclass.
* `DirectSum.toAlgebra` extends `DirectSum.toSemiring` to produce an `AlgHom`.

-/



namespace GRWTSK.Algebra.UniversalAlgebra.GAlgebra.Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f

universe uι uR uA uB

variable {ι : Type uι}

namespace DirectSum

open DirectSum

variable (R : Type uR) (A : ι → Type uA) {B : Type uB}
variable [CommSemiring R] [∀ i, AddCommMonoid (A i)] [∀ i, Module R (A i)]
variable [AddMonoid ι] [GSemiring A]

section

/-- A graded version of `Algebra`. An instance of `DirectSum.GAlgebra R A` endows `(⨁ i, A i)`
with an `R`-algebra structure. -/
class GAlgebra where
  toFun : R →+ A 0
  map_one : toFun 1 = GradedMonoid.GOne.one
  map_mul :
    ∀ r s, GradedMonoid.mk _ (toFun (r * s)) = .mk _ (GradedMonoid.GMul.mul (toFun r) (toFun s))
  commutes : ∀ (r) (x : GradedMonoid A), .mk _ (toFun r) * x = x * .mk _ (toFun r)
  smul_def : ∀ (r) (x : GradedMonoid A), r • x = .mk _ (toFun r) * x

end

variable [Semiring B] [GAlgebra R A] [Algebra R B]

instance _root_.GRWTSK.Algebra.UniversalAlgebra.GAlgebra.Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.GradedMonoid.smulCommClass_right :
    SMulCommClass R (GradedMonoid A) (GradedMonoid A) where
  smul_comm s x y := by
    dsimp
    rw [GAlgebra.smul_def, GAlgebra.smul_def, ← mul_assoc, GAlgebra.commutes, mul_assoc]

instance _root_.GRWTSK.Algebra.UniversalAlgebra.GAlgebra.Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.GradedMonoid.isScalarTower_right :
    IsScalarTower R (GradedMonoid A) (GradedMonoid A) where
  smul_assoc s x y := by
    dsimp
    rw [GAlgebra.smul_def, GAlgebra.smul_def, ← mul_assoc]

variable [DecidableEq ι]

instance : Algebra R (⨁ i, A i) where
  algebraMap :=
  { toFun := (DirectSum.of A 0).comp GAlgebra.toFun
    map_zero' := AddMonoidHom.map_zero _
    map_add' := AddMonoidHom.map_add _
    map_one' := DFunLike.congr_arg (DirectSum.of A 0) GAlgebra.map_one
    map_mul' a b := by
      simp only [AddMonoidHom.comp_apply]
      rw [of_mul_of]
      apply DFinsupp.single_eq_of_sigma_eq (GAlgebra.map_mul a b) }
  commutes' r x := by
    change AddMonoidHom.mul (DirectSum.of _ _ _) x = AddMonoidHom.mul.flip (DirectSum.of _ _ _) x
    apply DFunLike.congr_fun _ x
    ext i xi : 2
    dsimp only [AddMonoidHom.comp_apply, AddMonoidHom.mul_apply, AddMonoidHom.flip_apply]
    rw [of_mul_of, of_mul_of]
    apply DFinsupp.single_eq_of_sigma_eq (GAlgebra.commutes r ⟨i, xi⟩)
  smul_def' r x := by
    change DistribMulAction.toAddMonoidHom _ r x = AddMonoidHom.mul (DirectSum.of _ _ _) x
    apply DFunLike.congr_fun _ x
    ext i xi : 2
    dsimp only [AddMonoidHom.comp_apply, DistribMulAction.toAddMonoidHom_apply,
      AddMonoidHom.mul_apply]
    rw [DirectSum.of_mul_of, ← of_smul]
    apply DFinsupp.single_eq_of_sigma_eq (GAlgebra.smul_def r ⟨i, xi⟩)

theorem algebraMap_apply (r : R) :
    algebraMap R (⨁ i, A i) r = DirectSum.of A 0 (GAlgebra.toFun r) :=
  rfl

theorem algebraMap_toAddMonoid_hom :
    ↑(algebraMap R (⨁ i, A i)) = (DirectSum.of A 0).comp (GAlgebra.toFun : R →+ A 0) :=
  rfl

/-- A family of `LinearMap`s preserving `DirectSum.GOne.one` and `DirectSum.GMul.mul`
describes an `AlgHom` on `⨁ i, A i`. This is a stronger version of `DirectSum.toSemiring`.

Of particular interest is the case when `A i` are bundled subojects, `f` is the family of
coercions such as `Submodule.subtype (A i)`, and the `[GMonoid A]` structure originates from
`DirectSum.GMonoid.ofAddSubmodules`, in which case the proofs about `GOne` and `GMul`
can be discharged by `rfl`. -/
@[simps]
def toAlgebra (f : ∀ i, A i →ₗ[R] B) (hone : f _ GradedMonoid.GOne.one = 1)
    (hmul : ∀ {i j} (ai : A i) (aj : A j), f _ (GradedMonoid.GMul.mul ai aj) = f _ ai * f _ aj) :
    (⨁ i, A i) →ₐ[R] B :=
  { toSemiring (fun i => (f i).toAddMonoidHom) hone @hmul with
    toFun := toSemiring (fun i => (f i).toAddMonoidHom) hone @hmul
    commutes' := fun r => by
      show toModule R _ _ f (algebraMap R _ r) = _
      rw [Algebra.algebraMap_eq_smul_one, Algebra.algebraMap_eq_smul_one, map_smul, one_def,
        ← lof_eq_of R, toModule_lof, hone] }

/-- Two `AlgHom`s out of a direct sum are equal if they agree on the generators.

See note [partially-applied ext lemmas]. -/
@[ext]
theorem algHom_ext' ⦃f g : (⨁ i, A i) →ₐ[R] B⦄
    (h : ∀ i, f.toLinearMap.comp (lof _ _ A i) = g.toLinearMap.comp (lof _ _ A i)) : f = g :=
  AlgHom.toLinearMap_injective <| DirectSum.linearMap_ext _ h

theorem algHom_ext ⦃f g : (⨁ i, A i) →ₐ[R] B⦄ (h : ∀ i x, f (of A i x) = g (of A i x)) : f = g :=
  algHom_ext' R A fun i => LinearMap.ext <| h i

/-- The piecewise multiplication from the `Mul` instance, as a bundled linear map.

This is the graded version of `LinearMap.mul`, and the linear version of `DirectSum.gMulHom` -/
@[simps]
def gMulLHom {i j} : A i →ₗ[R] A j →ₗ[R] A (i + j) where
  toFun a :=
    { toFun := fun b => GradedMonoid.GMul.mul a b
      map_smul' := fun r x => by
        injection (smul_comm r (GradedMonoid.mk _ a) (GradedMonoid.mk _ x)).symm
      map_add' := GNonUnitalNonAssocSemiring.mul_add _ }
  map_smul' r x := LinearMap.ext fun y => by
    injection smul_assoc r (GradedMonoid.mk _ x) (GradedMonoid.mk _ y)
  map_add' _ _ := LinearMap.ext fun _ => GNonUnitalNonAssocSemiring.add_mul _ _ _

end DirectSum

/-! ### Concrete instances -/


/-- A direct sum of copies of an `Algebra` inherits the algebra structure. -/
@[simps]
instance Algebra.directSumGAlgebra {R A : Type*} [AddMonoid ι] [CommSemiring R]
    [Semiring A] [Algebra R A] : DirectSum.GAlgebra R fun _ : ι => A where
  toFun := (algebraMap R A).toAddMonoidHom
  map_one := (algebraMap R A).map_one
  map_mul a b := Sigma.ext (zero_add _).symm (heq_of_eq <| (algebraMap R A).map_mul a b)
  commutes := fun _ ⟨_, _⟩ =>
    Sigma.ext ((zero_add _).trans (add_zero _).symm) (heq_of_eq <| Algebra.commutes _ _)
  smul_def := fun _ ⟨_, _⟩ => Sigma.ext (zero_add _).symm (heq_of_eq <| Algebra.smul_def _ _)
```
