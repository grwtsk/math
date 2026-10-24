# Complete source: GRWTSK.Algebra.UniversalAlgebra.NonZeroDivisors.Variantf3c1204266727fdb416df95e8d79ca80512f7125596dea341c942b6f1f08bb5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f170160aeba2d4358f3bbdc05f4192f1432728a8` · SHA-256 `9f55a018192391191ff0bd09f4f023e8856845ca5d33ad832c6759ed2870ab44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.NontrivialOfNonZeroDivisorsLeft.Variantd2e543199bb84d1a1384da92c232fd82e2e1d2007ca6a80c94de3382090b27c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2e543199bb84d1a1384da92c232fd82e2e1d2007ca6a80c94de3382090b27c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NontrivialOfNonZeroDivisorsLeft.Variantd2e543199bb84d1a1384da92c232fd82e2e1d2007ca6a80c94de3382090b27c2","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"d2e543199bb84d1a1384da92c232fd82e2e1d2007ca6a80c94de3382090b27c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/OreLocalization/NonZeroDivisors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer, Kevin Klinge, Andrew Yang
-/
module

public import Mathlib.Algebra.GroupWithZero.NonZeroDivisors
public import Mathlib.RingTheory.OreLocalization.Basic

/-!
# Ore Localization over nonZeroDivisors in monoids with zeros.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.NontrivialOfNonZeroDivisorsLeft.Variantd2e543199bb84d1a1384da92c232fd82e2e1d2007ca6a80c94de3382090b27c2

@[expose] public section

open scoped nonZeroDivisors

namespace OreLocalization

section MonoidWithZero

variable {R : Type*} [MonoidWithZero R] {S : Submonoid R} [OreSet S]

theorem nontrivial_of_nonZeroDivisorsLeft [Nontrivial R] (hS : S ≤ nonZeroDivisorsLeft R) :
    Nontrivial R[S⁻¹] :=
  nontrivial_iff.mpr (fun e ↦ one_ne_zero <| hS e 1 (zero_mul _))

theorem nontrivial_of_nonZeroDivisorsRight [Nontrivial R] (hS : S ≤ nonZeroDivisorsRight R) :
    Nontrivial R[S⁻¹] :=
  nontrivial_iff.mpr (fun e ↦ one_ne_zero <| hS e 1 (mul_zero _))

theorem nontrivial_of_nonZeroDivisors [Nontrivial R] (hS : S ≤ R⁰) :
    Nontrivial R[S⁻¹] :=
  nontrivial_of_nonZeroDivisorsLeft (hS.trans inf_le_left)

variable [Nontrivial R] [OreSet R⁰]

instance nontrivial : Nontrivial R[R⁰⁻¹] :=
  nontrivial_of_nonZeroDivisors (refl R⁰)

variable [NoZeroDivisors R]

open scoped Classical in
/-- The inversion of Ore fractions for a ring without zero divisors, satisfying `0⁻¹ = 0` and
`(r /ₒ r')⁻¹ = r' /ₒ r` for `r ≠ 0`. -/
@[irreducible]
protected noncomputable def inv : R[R⁰⁻¹] → R[R⁰⁻¹] :=
  liftExpand
    (fun r s =>
      if hr : r = (0 : R) then (0 : R[R⁰⁻¹])
      else s /ₒ ⟨r, mem_nonZeroDivisors_of_ne_zero hr⟩)
    (by
      intro r t s hst
      by_cases hr : r = 0
      · simp [hr]
      · by_cases ht : t = 0
        · exfalso
          apply nonZeroDivisors.coe_ne_zero ⟨_, hst⟩
          simp [ht]
        · simp only [hr, ht, dite_eq_right, not_false_iff, or_self_iff, mul_eq_zero, smul_eq_mul]
          apply OreLocalization.expand)

noncomputable instance inv' : Inv R[R⁰⁻¹] :=
  ⟨OreLocalization.inv⟩

open scoped Classical in
protected theorem inv_def {r : R} {s : R⁰} :
    (r /ₒ s)⁻¹ =
      if hr : r = (0 : R) then (0 : R[R⁰⁻¹])
      else s /ₒ ⟨r, mem_nonZeroDivisors_of_ne_zero hr⟩ := by
  with_unfolding_all rfl

protected theorem mul_inv_cancel (x : R[R⁰⁻¹]) (h : x ≠ 0) : x * x⁻¹ = 1 := by
  induction x with | _ r s
  rw [OreLocalization.inv_def, OreLocalization.one_def]
  have hr : r ≠ 0 := by
    rintro rfl
    simp at h
  simp only [hr]
  with_unfolding_all apply OreLocalization.mul_inv ⟨r, _⟩

protected theorem inv_zero : (0 : R[R⁰⁻¹])⁻¹ = 0 := by
  rw [OreLocalization.zero_def, OreLocalization.inv_def]
  simp

noncomputable instance : GroupWithZero R[R⁰⁻¹] where
  inv_zero := OreLocalization.inv_zero
  mul_inv_cancel := OreLocalization.mul_inv_cancel

end MonoidWithZero

section CommMonoidWithZero

variable {R : Type*} [CommMonoidWithZero R] [Nontrivial R] [OreSet R⁰] [NoZeroDivisors R]

noncomputable instance : CommGroupWithZero R[R⁰⁻¹] where

end CommMonoidWithZero

end OreLocalization
```
