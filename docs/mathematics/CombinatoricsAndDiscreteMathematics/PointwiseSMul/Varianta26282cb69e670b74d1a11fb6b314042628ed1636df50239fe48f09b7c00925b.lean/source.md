# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PointwiseSMul.Varianta26282cb69e670b74d1a11fb6b314042628ed1636df50239fe48f09b7c00925b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b164df99f12281f840e8b33b9c55781d2e2efd1` · SHA-256 `f2f82f9e4141c124a36f34ee57716b1ed4be9ee1d0f52b53df39812e1aeeea0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MemSmulAntidiagonalOfGroup.Variant3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MemSmulAntidiagonalOfGroup.Variant3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/MonoidAlgebra/PointwiseSMul.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Scott Carnahan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Carnahan
-/
module

public import Mathlib.Algebra.MonoidAlgebra.Defs
public import Mathlib.Data.Finset.SMulAntidiagonal

/-!
# Scalar multiplication by (additive) monoid rings on formal functions.

Given sets `G` and `P`, with a left-cancellative scalar-multiplication (or vector-addition) of `G`
on `P`, together with a module `V` over a semiring `R`, we define a convolution action of the monoid
algebra `R[G]` on the set of functions `P → V`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MemSmulAntidiagonalOfGroup.Variant3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7

public section

noncomputable section

variable {G P R V : Type*}

namespace MonoidAlgebra

@[to_additive]
theorem mem_smulAntidiagonal_of_group [Group G] [MulAction G P] [Semiring R] [Zero V]
    (f : R[G]) (x : P → V) (p : P) (gh : G × P) :
    gh ∈ Finset.SMulAntidiagonal p
      (Set.SMulAntidiagonal.finite_of_finite_fst f.coeff.support.finite_toSet x.support p) ↔
      f.coeff gh.1 ≠ 0 ∧ x gh.2 ≠ 0 ∧ gh.2 = gh.1⁻¹ • p := by
  rw [Finset.mem_smulAntidiagonal, eq_inv_smul_iff, Function.mem_support, Finset.mem_coe,
    Finsupp.mem_support_iff]

/-- A convolution-type scalar multiplication of the monoid algebra on the set of formal
functions. -/
@[to_additive (dont_translate := R) /-- A convolution-type scalar multiplication of the additive
monoid algebra on the set of formal functions. -/]
scoped instance [SMul G P] [IsLeftCancelSMul G P] [Semiring R] [AddCommMonoid V]
    [SMulWithZero R V] :
    SMul (R[G]) (P → V) where
  smul f x p := ∑ gh ∈ Finset.SMulAntidiagonal p
    (Set.SMulAntidiagonal.finite_of_finite_fst f.coeff.support.finite_toSet x.support p),
      f.coeff gh.1 • x gh.2

@[to_additive (dont_translate := R) smul_eq]
theorem smul_eq [SMul G P] [IsLeftCancelSMul G P] [Semiring R] [AddCommMonoid V] [SMulWithZero R V]
    (f : R[G]) (x : P → V) (p : P)
    (hp : ((f.coeff.support : Set G).smulAntidiagonal (Function.support x) p).Finite :=
      Set.SMulAntidiagonal.finite_of_finite_fst f.coeff.support.finite_toSet x.support p) :
    (f • x) p = ∑ gh ∈ Finset.SMulAntidiagonal p hp, f.coeff gh.1 • x gh.2 :=
  rfl

@[to_additive (dont_translate := R) smul_apply_addAction]
theorem smul_apply_mulAction [Group G] [MulAction G P] [Semiring R] [AddCommMonoid V]
    [SMulWithZero R V] (f : MonoidAlgebra R G) (x : P → V) (p : P) :
    (f • x) p = ∑ i ∈ f.coeff.support, (f.coeff i) • x (i⁻¹ • p) := by
  have hp : ((f.coeff.support : Set G).smulAntidiagonal (Function.support x) p).Finite :=
    Set.SMulAntidiagonal.finite_of_finite_fst f.coeff.support.finite_toSet x.support p
  set s : Set (G × P) := ↑(Finset.SMulAntidiagonal p hp)
  have h₁ : s.InjOn Prod.fst := fun _ h₁ _ h₂ h ↦ by
    rw [Finset.mem_coe, mem_smulAntidiagonal_of_group] at h₁ h₂
    aesop
  have h₂ : s.MapsTo Prod.fst ↑f.coeff.support := fun g hg ↦ by aesop
  have h₃ (g : G) (hg : g ∈ f.coeff.support) (hgn : g ∉ Prod.fst '' s) :
      f.coeff g • x (g⁻¹ • p) = 0 := by
    obtain (h | h) : f.coeff g = 0 ∨ ∀ q, ¬ x q = 0 → ¬g • q = p := by aesop
    · simp [h]
    · have := h (g⁻¹ • p)
      aesop
  rw [smul_eq, Finset.sum_of_injOn Prod.fst h₁ h₂ h₃]
  aesop

end MonoidAlgebra
```
