# Complete source: GRWTSK.Algebra.LinearAlgebra.Centralizer.Varianta677f557607aa789249ad171c649c05d96c4b58b5d76d6abfb2320c24528e75b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ea0953db1113018ab668d03c5f7f3620b4dc6f2` · SHA-256 `65ce624a754c430a1e17d046ee5e8c7fc4fdd4f285968aeaa38185d07b0cb16e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LeCentralizerIff.Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LeCentralizerIff.Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Algebra/Subalgebra/Centralizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
module

public import Mathlib.LinearAlgebra.TensorProduct.Basis
public import Mathlib.RingTheory.TensorProduct.Maps

/-!
# Properties of centers and centralizers

This file contains theorems about the center and centralizer of a subalgebra.

## Main results

Let `R` be a commutative ring and `A` and `B` two `R`-algebras.
- `Subalgebra.centralizer_sup`: if `S` and `T` are subalgebras of `A`, then the centralizer of
  `S ⊔ T` is the intersection of the centralizer of `S` and the centralizer of `T`.
- `Subalgebra.centralizer_range_includeLeft_eq_center_tensorProduct`: if `B` is free as a module,
  then the centralizer of `A ⊗ 1` in `A ⊗ B` is `C(A) ⊗ B` where `C(A)` is the center of `A`.
- `Subalgebra.centralizer_range_includeRight_eq_center_tensorProduct`: if `A` is free as a module,
  then the centralizer of `1 ⊗ B` in `A ⊗ B` is `A ⊗ C(B)` where `C(B)` is the center of `B`.
-/


namespace GRWTSK.Algebra.LinearAlgebra.LeCentralizerIff.Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4

public section

namespace Subalgebra

open Algebra.TensorProduct

section CommSemiring

variable {R : Type*} [CommSemiring R]
variable {A : Type*} [Semiring A] [Algebra R A]

lemma le_centralizer_iff (S T : Subalgebra R A) : S ≤ centralizer R T ↔ T ≤ centralizer R S :=
  ⟨fun h t ht _ hs ↦ (h hs t ht).symm, fun h s hs _ ht ↦ (h ht s hs).symm⟩

lemma centralizer_coe_sup (S T : Subalgebra R A) :
    centralizer R ((S ⊔ T : Subalgebra R A) : Set A) = centralizer R S ⊓ centralizer R T :=
  eq_of_forall_le_iff fun K ↦ by
    simp_rw [le_centralizer_iff, sup_le_iff, le_inf_iff, K.le_centralizer_iff]

lemma centralizer_coe_iSup {ι : Sort*} (S : ι → Subalgebra R A) :
    centralizer R ((⨆ i, S i : Subalgebra R A) : Set A) = ⨅ i, centralizer R (S i) :=
  eq_of_forall_le_iff fun K ↦ by
    simp_rw [le_centralizer_iff, iSup_le_iff, le_iInf_iff, K.le_centralizer_iff]

end CommSemiring

section Free

variable (R : Type*) [CommSemiring R]
variable (A : Type*) [Semiring A] [Algebra R A]
variable (B : Type*) [Semiring B] [Algebra R B]

open Finsupp TensorProduct

/--
Let `R` be a commutative ring and `A, B` be `R`-algebras where `B` is free as `R`-module.
For any subset `S ⊆ A`, the centralizer of `S ⊗ 1 ⊆ A ⊗ B` is `C_A(S) ⊗ B` where `C_A(S)` is the
centralizer of `S` in `A`.
-/
lemma centralizer_coe_image_includeLeft_eq_center_tensorProduct
    (S : Set A) [Module.Free R B] :
    Subalgebra.centralizer R
      (Algebra.TensorProduct.includeLeft (S := R) '' S) =
    (Algebra.TensorProduct.map (Subalgebra.centralizer R (S : Set A)).val
      (AlgHom.id R B)).range := by
  ext w
  constructor
  · intro hw
    rw [mem_centralizer_iff] at hw
    let ℬ := Module.Free.chooseBasis R B
    obtain ⟨b, rfl⟩ := TensorProduct.eq_repr_basis_right ℬ w
    refine Subalgebra.sum_mem _ fun j hj => ⟨⟨b j, ?_⟩ ⊗ₜ[R] ℬ j, by simp⟩
    rw [Subalgebra.mem_centralizer_iff]
    intro x hx
    suffices x • b = b.mapRange (· * x) (by simp) from Finsupp.ext_iff.1 this j
    specialize hw (x ⊗ₜ[R] 1) ⟨x, hx, rfl⟩
    simp only [Finsupp.sum, Finset.mul_sum, Algebra.TensorProduct.tmul_mul_tmul, one_mul,
      Finset.sum_mul, mul_one] at hw
    refine TensorProduct.sum_tmul_basis_right_injective ℬ ?_
    simp only [Finsupp.coe_lsum]
    rw [sum_of_support_subset (s := b.support) (hs := Finsupp.support_smul) (h := by simp),
      sum_of_support_subset (s := b.support) (hs := support_mapRange) (h := by simp)]
    simpa only [Finsupp.coe_smul, Pi.smul_apply, smul_eq_mul, LinearMap.flip_apply,
      TensorProduct.mk_apply, Finsupp.mapRange_apply] using hw
  · rintro ⟨w, rfl⟩
    rw [Subalgebra.mem_centralizer_iff]
    rintro _ ⟨x, hx, rfl⟩
    induction w using TensorProduct.inductionOn with
    | tmul b c =>
      simp [Subalgebra.mem_centralizer_iff _ |>.1 b.2 x hx]
    | add y z hy hz => rw [map_add, mul_add, hy, hz, add_mul]

/--
Let `R` be a commutative ring and `A, B` be `R`-algebras where `B` is free as `R`-module.
For any subset `S ⊆ B`, the centralizer of `1 ⊗ S ⊆ A ⊗ B` is `A ⊗ C_B(S)` where `C_B(S)` is the
centralizer of `S` in `B`.
-/
lemma centralizer_coe_image_includeRight_eq_center_tensorProduct
    (S : Set B) [Module.Free R A] :
    Subalgebra.centralizer R
      (Algebra.TensorProduct.includeRight '' S) =
    (Algebra.TensorProduct.map (AlgHom.id R A)
      (Subalgebra.centralizer R (S : Set B)).val).range := by
  have eq1 := centralizer_coe_image_includeLeft_eq_center_tensorProduct R B A S
  apply_fun Subalgebra.comap (Algebra.TensorProduct.comm R A B).toAlgHom at eq1
  convert! eq1
  · ext x
    simpa [mem_centralizer_iff] using
      ⟨fun h b hb ↦ (Algebra.TensorProduct.comm R A B).symm.injective <| by aesop, fun h b hb ↦
        (Algebra.TensorProduct.comm R A B).injective <| by aesop⟩
  · ext x
    simp only [AlgHom.mem_range, mem_comap, AlgEquiv.coe_toAlgHom]
    constructor
    · rintro ⟨x, rfl⟩
      exact ⟨(Algebra.TensorProduct.comm R _ _) x,
        by rw [Algebra.TensorProduct.comm_comp_map_apply]⟩
    · rintro ⟨y, hy⟩
      refine ⟨(Algebra.TensorProduct.comm R _ _) y, (Algebra.TensorProduct.comm R A B).injective ?_⟩
      rw [← hy, comm_comp_map_apply, ← Algebra.TensorProduct.comm_symm, AlgEquiv.symm_apply_apply]

/--
Let `R` be a commutative ring and `A, B` be `R`-algebras where `B` is free as `R`-module.
For any subalgebra `S` of `A`, the centralizer of `S ⊗ 1 ⊆ A ⊗ B` is `C_A(S) ⊗ B` where `C_A(S)` is
the centralizer of `S` in `A`.
-/
lemma centralizer_coe_map_includeLeft_eq_center_tensorProduct
    (S : Subalgebra R A) [Module.Free R B] :
    Subalgebra.centralizer R
      (S.map (Algebra.TensorProduct.includeLeft (R := R) (B := B))) =
    (Algebra.TensorProduct.map (Subalgebra.centralizer R (S : Set A)).val
      (AlgHom.id R B)).range :=
  centralizer_coe_image_includeLeft_eq_center_tensorProduct R A B S

/--
Let `R` be a commutative ring and `A, B` be `R`-algebras where `A` is free as `R`-module.
For any subalgebra `S` of `B`, the centralizer of `1 ⊗ S ⊆ A ⊗ B` is `A ⊗ C_B(S)` where `C_B(S)` is
the centralizer of `S` in `B`.
-/
lemma centralizer_coe_map_includeRight_eq_center_tensorProduct
    (S : Subalgebra R B) [Module.Free R A] :
    Subalgebra.centralizer R
      (S.map (Algebra.TensorProduct.includeRight (R := R) (A := A))) =
    (Algebra.TensorProduct.map (AlgHom.id R A)
      (Subalgebra.centralizer R (S : Set B)).val).range :=
  centralizer_coe_image_includeRight_eq_center_tensorProduct R A B S

/--
Let `R` be a commutative ring and `A, B` be `R`-algebras where `B` is free as `R`-module.
Then the centralizer of `A ⊗ 1 ⊆ A ⊗ B` is `C(A) ⊗ B` where `C(A)` is the center of `A`.
-/
lemma centralizer_coe_range_includeLeft_eq_center_tensorProduct [Module.Free R B] :
    Subalgebra.centralizer R
      (Algebra.TensorProduct.includeLeft : A →ₐ[R] A ⊗[R] B).range =
    (Algebra.TensorProduct.map (Subalgebra.center R A).val (AlgHom.id R B)).range := by
  rw [← centralizer_univ, ← Algebra.coe_top (R := R) (A := A),
    ← centralizer_coe_map_includeLeft_eq_center_tensorProduct R A B ⊤]
  ext
  simp [includeLeft, includeLeftRingHom]

/--
Let `R` be a commutative ring and `A, B` be `R`-algebras where `A` is free as `R`-module.
Then the centralizer of `1 ⊗ B ⊆ A ⊗ B` is `A ⊗ C(B)` where `C(B)` is the center of `B`.
-/
lemma centralizer_range_includeRight_eq_center_tensorProduct [Module.Free R A] :
    Subalgebra.centralizer R
      (Algebra.TensorProduct.includeRight : B →ₐ[R] A ⊗[R] B).range =
    (Algebra.TensorProduct.map (AlgHom.id R A) (center R B).val).range := by
  rw [← centralizer_univ, ← Algebra.coe_top (R := R) (A := B),
    ← centralizer_coe_map_includeRight_eq_center_tensorProduct R A B ⊤]
  ext
  simp [includeRight]

lemma centralizer_tensorProduct_eq_center_tensorProduct_left [Module.Free R B] :
    Subalgebra.centralizer R
      (Algebra.TensorProduct.map (AlgHom.id R A) (Algebra.ofId R B)).range =
    (Algebra.TensorProduct.map (Subalgebra.center R A).val (AlgHom.id R B)).range := by
  rw [← centralizer_coe_range_includeLeft_eq_center_tensorProduct]
  simp [Algebra.TensorProduct.map_range]

lemma centralizer_tensorProduct_eq_center_tensorProduct_right [Module.Free R A] :
    Subalgebra.centralizer R
      (Algebra.TensorProduct.map (Algebra.ofId R A) (AlgHom.id R B)).range =
    (Algebra.TensorProduct.map (AlgHom.id R A) (center R B).val).range := by
  rw [← centralizer_range_includeRight_eq_center_tensorProduct]
  simp [Algebra.TensorProduct.map_range]

end Free

end Subalgebra
```
