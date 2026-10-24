# Complete source: GRWTSK.Algebra.BaseChange.Variant91eee2684dee7c4dbd54404664473fbd9f90d7a19c562a010c456e3bbaf908a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35c5b4540034ed3cce4a0b1e13c55e6afc18e73d` · SHA-256 `abd472e8975edf47cf412e694122b42282e8794fe0dd9f31c9ff139f01779a0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.OfDerivation.Variant40a4116d332b949ba528ded0a42a0401d7649c1d783a272e0b1579b7b6b61b95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40a4116d332b949ba528ded0a42a0401d7649c1d783a272e0b1579b7b6b61b95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.OfDerivation.Variant40a4116d332b949ba528ded0a42a0401d7649c1d783a272e0b1579b7b6b61b95","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"40a4116d332b949ba528ded0a42a0401d7649c1d783a272e0b1579b7b6b61b95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Lie/Derivation/BaseChange.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Leonid Ryvkin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonid Ryvkin
-/
module

public import Mathlib.Algebra.Lie.BaseChange
public import Mathlib.Algebra.Lie.Derivation.Basic
public import Mathlib.RingTheory.Derivation.Lie

/-!
# LieDerivations of a Lie algebra created through BaseChange

When, given an `R`-algebra `A` and an `R`-Lie algebra `L` the (Lie algebra) basechange `A ⊗[R] L`,
both derivations of `A` and Lie derivations of `L` induce Lie derivations of `A ⊗[R] L`. Moreover,
both these procedures are Lie algebra homomorphisms themselves.


## Tags

lie algebra, extension of scalars, base change, derivation

-/


namespace GRWTSK.Algebra.OfDerivation.Variant40a4116d332b949ba528ded0a42a0401d7649c1d783a272e0b1579b7b6b61b95

@[expose] public section
namespace Lie.Derivation

open TensorProduct
variable {R : Type*} [CommRing R]
variable {A : Type*} [CommRing A] [Algebra R A]
variable {L : Type*} [LieRing L] [LieAlgebra R L]
attribute [local instance 100] LieRing.ofAssociativeRing

variable (L) in
/-- A derivation of an associative `R`-algebra `A`, induces a Lie derivation of `A ⊗[R] L` for any
Lie algebra `L` over `R`. -/
def ofDerivation : Derivation R A A →ₗ⁅R⁆ LieDerivation R (A ⊗[R] L) (A ⊗[R] L) where
  toFun d :=
    { toFun := d.rTensor L
      map_add' := by simp
      map_smul' := by simp
      leibniz' x y := by
        simp only [LinearMap.coe_mk, AddHom.coe_mk]
        refine x.inductionOn (fun _ l ↦ ?_) (fun _ _ h1 h2 ↦ ?_)
        · refine y.inductionOn (fun _ l' ↦ ?_) (fun _ _ h1 h2 ↦ ?_)
          · simp [← lie_skew l' l, -lie_skew, add_tmul, tmul_neg]
          · simp [h1, h2, sub_add_sub_comm]
        · simp [h1, h2, sub_add_sub_comm] }
  map_add' _ _ := by ext; simp
  map_smul' _ _ := by ext; simp
  map_lie' {_ _} := by
    ext z
    refine z.inductionOn (by simp [sub_tmul]) (fun _ _ hx hy ↦ ?_)
    simp_all
    abel

@[simp]
lemma ofDerivation_apply (d : Derivation R A A) (x : A ⊗[R] L) :
    ofDerivation L d x = d.toLinearMap.rTensor L x :=
  rfl

variable (A) in
/-- A Lie derivation of an `R-`Lie algebra `L`, induces a Lie derivation of `A ⊗[R] L` for any
Algebra `A` over `R`. -/
def ofLieDerivation : (LieDerivation R L L) →ₗ⁅R⁆ (LieDerivation R (A ⊗[R] L) (A ⊗[R] L)) where
  toFun d :=
    { toFun := d.toLinearMap.lTensor A
      map_add' := by simp
      map_smul' := by simp
      leibniz' x y := by
        simp only [LinearMap.coe_mk, AddHom.coe_mk]
        refine x.inductionOn ?_ ?_
        · intros _ _
          refine y.inductionOn ?_ ?_
          · intros _ _
            simp [LieAlgebra.ExtendScalars.bracket_tmul, tmul_sub, mul_comm]
          · intros _ _ h1 h2
            simp [h1, h2]
            abel_nf
        · intros _ _ h1 h2
          simp [h1, h2]
          abel_nf }
  map_add' _ _ := by ext _; simp
  map_smul' _ _ := by ext _; simp
  map_lie' {_ _} := by
    ext z
    refine z.inductionOn (fun a l ↦ ?_) (fun _ _ hx hy ↦ ?_)
    · simp [tmul_sub]
    · simp_all [sub_add_sub_comm]

@[simp]
lemma ofLieDerivation_apply (d : LieDerivation R L L) (x : A ⊗[R] L) :
    ofLieDerivation A d x = d.toLinearMap.lTensor A x :=
  rfl

end Lie.Derivation
end
```
