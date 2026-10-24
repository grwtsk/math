# Complete source: GRWTSK.Algebra.LinearAlgebra.Free.Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5d12e3a25205c0d714c28df6b4796baba1f74f2` · SHA-256 `827836278c2b96d50c1bc92f96d9138b65ac8ac81b424d3aa43518c932b6ce89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BasisAux.Variantf69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BasisAux.Variantf69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"f69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/TensorProduct/Free.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Johan Commelin
-/
module

public import Mathlib.LinearAlgebra.DirectSum.Finsupp
public import Mathlib.LinearAlgebra.Finsupp.Pi
public import Mathlib.LinearAlgebra.FreeModule.Basic
public import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# Results on bases of tensor products

In the file we construct a basis for the base change of a module to an algebra,
and deduce that `Module.Free` is stable under base change.

## Main declarations

- `Algebra.TensorProduct.basis`: given a basis of a module `M` over a commutative semiring `R`,
  and an `R`-algebra `A`, this provides a basis for `A ⊗[R] M` over `A`.
- `Algebra.TensorProduct.instFree`: if `M` is free, then so is `A ⊗[R] M`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.BasisAux.Variantf69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16

@[expose] public section

assert_not_exists Cardinal

open Module
open scoped TensorProduct

namespace Algebra

namespace TensorProduct

variable {R A : Type*}

section Basis

universe uM uι
variable {M : Type uM} {ι : Type uι}
variable [CommSemiring R] [Semiring A] [Algebra R A]
variable [AddCommMonoid M] [Module R M] (b : Basis ι R M)

variable (A) in
/-- Given an `R`-algebra `A` and an `R`-basis of `M`, this is an `R`-linear isomorphism
`A ⊗[R] M ≃ (ι →₀ A)` (which is in fact `A`-linear). -/
noncomputable def basisAux : A ⊗[R] M ≃ₗ[R] ι →₀ A :=
  _root_.TensorProduct.congr (Finsupp.uniqueLinearEquiv R A ()).symm b.repr ≪≫ₗ
    (finsuppTensorFinsupp R R A R PUnit ι).trans
      (Finsupp.lcongr (Equiv.uniqueProd ι PUnit) (_root_.TensorProduct.rid R A))

theorem basisAux_tmul (a : A) (m : M) :
    basisAux A b (a ⊗ₜ m) = a • Finsupp.mapRange (algebraMap R A) (map_zero _) (b.repr m) := by
  ext
  simp [basisAux, ← Algebra.commutes, Algebra.smul_def]

theorem basisAux_map_smul (a : A) (x : A ⊗[R] M) : basisAux A b (a • x) = a • basisAux A b x :=
  TensorProduct.inductionOn x
    (fun x y => by simp only [TensorProduct.smul_tmul', basisAux_tmul, smul_assoc])
    fun x y hx hy => by simp [hx, hy]

variable (A) in
/-- Given an `R`-algebra `A`, this is the `A`-basis of `A ⊗[R] M` induced by an `R`-basis of `M`. -/
noncomputable def basis : Basis ι A (A ⊗[R] M) where
  repr := { basisAux A b with map_smul' := basisAux_map_smul b }

@[simp]
theorem basis_repr_tmul (a : A) (m : M) :
    (basis A b).repr (a ⊗ₜ m) = a • Finsupp.mapRange (algebraMap R A) (map_zero _) (b.repr m) :=
  basisAux_tmul b _ _

theorem basis_repr_symm_apply (a : A) (i : ι) :
    (basis A b).repr.symm (Finsupp.single i a) = a ⊗ₜ b.repr.symm (Finsupp.single i 1) := by
  simp [basis, Equiv.uniqueProd_symm_apply, basisAux]

@[simp]
theorem basis_apply (i : ι) : basis A b i = 1 ⊗ₜ b i := basis_repr_symm_apply b 1 i

theorem basis_repr_symm_apply' (a : A) (i : ι) : a • basis A b i = a ⊗ₜ b i := by
  simpa using basis_repr_symm_apply b a i

section baseChange

open LinearMap

variable [Fintype ι]
variable {ι' N : Type*} [Fintype ι'] [DecidableEq ι'] [AddCommMonoid N] [Module R N]
variable (A : Type*) [CommSemiring A] [Algebra R A]

lemma _root_.GRWTSK.Algebra.LinearAlgebra.BasisAux.Variantf69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16.Module.Basis.baseChange_linearMap (b : Basis ι R M) (b' : Basis ι' R N) (ij : ι × ι') :
    baseChange A (b'.linearMap b ij) = (basis A b').linearMap (basis A b) ij := by
  apply (basis A b').ext
  intro k
  conv_lhs => simp only [basis_apply, baseChange_tmul]
  simp_rw [Basis.linearMap_apply_apply, basis_apply]
  split <;> simp only [TensorProduct.tmul_zero]

variable [DecidableEq ι]

lemma _root_.GRWTSK.Algebra.LinearAlgebra.BasisAux.Variantf69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16.Module.Basis.baseChange_end (b : Basis ι R M) (ij : ι × ι) :
    baseChange A (b.end ij) = (basis A b).end ij :=
  b.baseChange_linearMap A b ij

end baseChange

end Basis

instance instFree (R A M : Type*)
    [CommSemiring R] [AddCommMonoid M] [Module R M] [Module.Free R M]
    [CommSemiring A] [Algebra R A] :
    Module.Free A (A ⊗[R] M) :=
  Module.Free.of_basis <| Algebra.TensorProduct.basis A (Module.Free.chooseBasis R M)

end TensorProduct

end Algebra

namespace LinearMap

open Algebra.TensorProduct

variable {R M₁ M₂ ι ι₂ : Type*} (A : Type*)
  [Fintype ι] [Finite ι₂] [DecidableEq ι]
  [CommSemiring R] [CommSemiring A] [Algebra R A]
  [AddCommMonoid M₁] [Module R M₁] [AddCommMonoid M₂] [Module R M₂]

@[simp]
lemma toMatrix_baseChange (f : M₁ →ₗ[R] M₂) (b₁ : Basis ι R M₁) (b₂ : Basis ι₂ R M₂) :
    toMatrix (basis A b₁) (basis A b₂) (f.baseChange A) =
    (toMatrix b₁ b₂ f).map (algebraMap R A) := by
  ext; simp [toMatrix_apply]

end LinearMap
```
