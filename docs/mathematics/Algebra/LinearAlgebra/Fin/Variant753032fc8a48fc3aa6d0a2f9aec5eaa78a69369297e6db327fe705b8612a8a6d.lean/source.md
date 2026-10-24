# Complete source: GRWTSK.Algebra.LinearAlgebra.Fin.Variant753032fc8a48fc3aa6d0a2f9aec5eaa78a69369297e6db327fe705b8612a8a6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `303355104072f9e07fb26b1a546397c4c1f34642` · SHA-256 `8dadf95e9705aa82cbbf54845955b8f2f157f8069e8986d57d98ec1a3f5d2c34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MkFinCons.Variantbc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MkFinCons.Variantbc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"bc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Basis/Fin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Alexander Bentkamp, Kevin H. Wilson
-/
module

public import Mathlib.LinearAlgebra.Basis.Basic
public import Mathlib.LinearAlgebra.Pi

/-!
# Bases indexed by `Fin`
-/


namespace GRWTSK.Algebra.LinearAlgebra.MkFinCons.Variantbc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7

@[expose] public section

assert_not_exists Ordinal

noncomputable section

universe u

open Function Set Submodule Finsupp

variable {ι : Type*} {ι' : Type*} {R : Type*} {R₂ : Type*} {M : Type*} {M' : Type*}

namespace Module

open LinearMap

variable {v : ι → M}
variable [Ring R] [CommRing R₂] [AddCommGroup M]
variable [Module R M] [Module R₂ M]
variable {x y : M}
variable (b : Basis ι R M)

namespace Basis

section Fin

/-- Let `b` be a basis for a submodule `N` of `M`. If `y : M` is linear independent of `N`
and `y` and `N` together span the whole of `M`, then there is a basis for `M`
whose basis vectors are given by `Fin.cons y b`. -/
noncomputable def mkFinCons {n : ℕ} {N : Submodule R M} (y : M) (b : Basis (Fin n) R N)
    (hli : ∀ (c : R), ∀ x ∈ N, c • y + x = 0 → c = 0) (hsp : ∀ z : M, ∃ c : R, z + c • y ∈ N) :
    Basis (Fin (n + 1)) R M :=
  have span_b : N = Submodule.span R (Set.range (N.subtype ∘ b)) := by
    rw [Set.range_comp, Submodule.span_image, b.span_eq, Submodule.map_subtype_top]
  Basis.mk (v := Fin.cons y (N.subtype ∘ b))
    ((b.linearIndependent.map' N.subtype (Submodule.ker_subtype _)).finCons' _ _
      (by
        intro c x hx hc
        rw [← span_b] at hx
        exact hli c x hx hc))
    fun x _ => by simpa [Submodule.mem_span_insert', span_b] using hsp x

@[simp]
theorem coe_mkFinCons {n : ℕ} {N : Submodule R M} (y : M) (b : Basis (Fin n) R N)
    (hli : ∀ (c : R), ∀ x ∈ N, c • y + x = 0 → c = 0) (hsp : ∀ z : M, ∃ c : R, z + c • y ∈ N) :
    (mkFinCons y b hli hsp : Fin (n + 1) → M) = Fin.cons y ((↑) ∘ b) := by
  unfold mkFinCons
  exact coe_mk (v := Fin.cons y (N.subtype ∘ b)) _ _

/-- Let `b` be a basis for a submodule `N ≤ O`. If `y ∈ O` is linear independent of `N`
and `y` and `N` together span the whole of `O`, then there is a basis for `O`
whose basis vectors are given by `Fin.cons y b`. -/
noncomputable def mkFinConsOfLE {n : ℕ} {N O : Submodule R M} (y : M) (yO : y ∈ O)
    (b : Basis (Fin n) R N) (hNO : N ≤ O) (hli : ∀ (c : R), ∀ x ∈ N, c • y + x = 0 → c = 0)
    (hsp : ∀ z ∈ O, ∃ c : R, z + c • y ∈ N) : Basis (Fin (n + 1)) R O :=
  mkFinCons ⟨y, yO⟩ (b.map (Submodule.comapSubtypeEquivOfLe hNO).symm)
    (fun c x hc hx => hli c x (Submodule.mem_comap.mp hc) (congr_arg ((↑) : O → M) hx))
    fun z => hsp z z.2

@[simp]
theorem coe_mkFinConsOfLE {n : ℕ} {N O : Submodule R M} (y : M) (yO : y ∈ O) (b : Basis (Fin n) R N)
    (hNO : N ≤ O) (hli : ∀ (c : R), ∀ x ∈ N, c • y + x = 0 → c = 0)
    (hsp : ∀ z ∈ O, ∃ c : R, z + c • y ∈ N) :
    (mkFinConsOfLE y yO b hNO hli hsp : Fin (n + 1) → O) =
      Fin.cons ⟨y, yO⟩ (Submodule.inclusion hNO ∘ b) :=
  coe_mkFinCons _ _ _ _

/-- Let `b` be a basis for a submodule `N` of `M`. If `y : M` is linear independent of `N`
and `y` and `N` together span the whole of `M`, then there is a basis for `M`
whose basis vectors are given by `Fin.snoc b y`. -/
noncomputable def mkFinSnoc {n : ℕ} {N : Submodule R M} (b : Basis (Fin n) R N) (y : M)
    (hli : ∀ (c : R), ∀ x ∈ N, c • y + x = 0 → c = 0) (hsp : ∀ z : M, ∃ c : R, z + c • y ∈ N) :
    Basis (Fin (n + 1)) R M :=
  have span_b : N = Submodule.span R (Set.range (N.subtype ∘ b)) := by
    rw [Set.range_comp, Submodule.span_image, b.span_eq, Submodule.map_subtype_top]
  Basis.mk (v := Fin.snoc (N.subtype ∘ b) y)
    ((b.linearIndependent.map' N.subtype (Submodule.ker_subtype _)).finSnoc' _ _
      (by
        intro c x hx hc
        rw [← span_b] at hx
        exact hli c x hx hc))
    fun x _ ↦ by simpa [Submodule.mem_span_insert', span_b] using hsp x

@[simp]
theorem coe_mkFinSnoc {n : ℕ} {N : Submodule R M} (b : Basis (Fin n) R N) (y : M)
    (hli : ∀ (c : R), ∀ x ∈ N, c • y + x = 0 → c = 0) (hsp : ∀ z : M, ∃ c : R, z + c • y ∈ N) :
    (mkFinSnoc b y hli hsp : Fin (n + 1) → M) = Fin.snoc ((↑) ∘ b) y := by
  unfold mkFinSnoc
  exact coe_mk (v := Fin.snoc (N.subtype ∘ b) y) _ _

/-- Let `b` be a basis for a submodule `N ≤ O`. If `y ∈ O` is linear independent of `N`
and `y` and `N` together span the whole of `O`, then there is a basis for `O`
whose basis vectors are given by `Fin.snoc b y`. -/
noncomputable def mkFinSnocOfLE {n : ℕ} {N O : Submodule R M} (b : Basis (Fin n) R N)
    (hNO : N ≤ O) (y : M) (yO : y ∈ O) (hli : ∀ (c : R), ∀ x ∈ N, c • y + x = 0 → c = 0)
    (hsp : ∀ z ∈ O, ∃ c : R, z + c • y ∈ N) : Basis (Fin (n + 1)) R O :=
  mkFinSnoc (b.map (Submodule.comapSubtypeEquivOfLe hNO).symm) ⟨y, yO⟩
    (fun c x hc hx => hli c x (Submodule.mem_comap.mp hc) (congr_arg ((↑) : O → M) hx))
    fun z => hsp z z.2

@[simp]
theorem coe_mkFinSnocOfLE {n : ℕ} {N O : Submodule R M} (b : Basis (Fin n) R N)
    (hNO : N ≤ O) (y : M) (yO : y ∈ O) (hli : ∀ (c : R), ∀ x ∈ N, c • y + x = 0 → c = 0)
    (hsp : ∀ z ∈ O, ∃ c : R, z + c • y ∈ N) :
    (mkFinSnocOfLE b hNO y yO hli hsp : Fin (n + 1) → O) =
      Fin.snoc (Submodule.inclusion hNO ∘ b) ⟨y, yO⟩ :=
  coe_mkFinSnoc _ _ _ _

/-- The basis of `R × R` given by the two vectors `(1, 0)` and `(0, 1)`. -/
protected def finTwoProd (R : Type*) [Semiring R] : Basis (Fin 2) R (R × R) :=
  Basis.ofEquivFun (LinearEquiv.finTwoArrow R R).symm

@[simp]
theorem finTwoProd_zero (R : Type*) [Semiring R] : Basis.finTwoProd R 0 = (1, 0) := by
  simp [Basis.finTwoProd, LinearEquiv.finTwoArrow]

@[simp]
theorem finTwoProd_one (R : Type*) [Semiring R] : Basis.finTwoProd R 1 = (0, 1) := by
  simp [Basis.finTwoProd, LinearEquiv.finTwoArrow]

@[simp]
theorem coe_finTwoProd_repr {R : Type*} [Semiring R] (x : R × R) :
    ⇑((Basis.finTwoProd R).repr x) = ![x.fst, x.snd] :=
  rfl

end Fin

end Basis

end Module
```
