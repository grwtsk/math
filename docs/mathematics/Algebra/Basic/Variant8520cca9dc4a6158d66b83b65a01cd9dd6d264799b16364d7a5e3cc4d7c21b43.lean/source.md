# Complete source: GRWTSK.Algebra.Basic.Variant8520cca9dc4a6158d66b83b65a01cd9dd6d264799b16364d7a5e3cc4d7c21b43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `613a0e50dbf19c260159df03e3030ce748d2b217` · SHA-256 `9fe40a8d14061aa834d619e7c22d67413c03b3ee1aa34d442b73016b69875b2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingHasFiniteQuotients.Variantdaecae3d46c823638f26192cf61feb6207b2dfb4922aef7ee31122857f270c31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"daecae3d46c823638f26192cf61feb6207b2dfb4922aef7ee31122857f270c31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.RingHasFiniteQuotients.Variantdaecae3d46c823638f26192cf61feb6207b2dfb4922aef7ee31122857f270c31","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"daecae3d46c823638f26192cf61feb6207b2dfb4922aef7ee31122857f270c31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Ideal/Quotient/HasFiniteQuotients/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot
-/
module

public import Mathlib.Data.ZMod.QuotientRing
public import Mathlib.FieldTheory.Perfect
public import Mathlib.RingTheory.DedekindDomain.Basic
public import Mathlib.RingTheory.LocalRing.ResidueField.Ideal

/-! # Rings with finite quotients

A commutative ring is said to have finite quotients if, for any nonzero ideal `I` of `R`, the
quotient `R ⧸ I` is finite.

## Main results
- `Ring.HasFiniteQuotients.instDimensionLEOne`: A ring with finite quotients has dimension `≤ 1`.
- `Ring.HasFiniteQuotients.instIsNoetherianRing` : A ring with finite quotients is noetherian.
- `Ring.HasFiniteQuotients.of_module_finite`: Assume that `R` has finite quotients and that `S` is
  a domain and a finite `R`-module. Then `S` has finite quotients.

-/


namespace GRWTSK.Algebra.RingHasFiniteQuotients.Variantdaecae3d46c823638f26192cf61feb6207b2dfb4922aef7ee31122857f270c31

public section

/--
A ring `R` has finite quotients if the quotient `R ⧸ I` is finite for all nonzero ideals of `R`.
-/
class Ring.HasFiniteQuotients (R : Type*) [CommRing R] : Prop where
  finiteQuotient {I : Ideal R} : I ≠ ⊥ → Finite (R ⧸ I)

namespace Ring.HasFiniteQuotients

variable {R : Type*} [CommRing R]

/-- A finite ring has finite quotients. -/
instance [Finite R] : Ring.HasFiniteQuotients R where
  finiteQuotient := fun _ ↦ Quotient.finite _

section properties

variable [HasFiniteQuotients R]

/-- A quotient of a ring with finite quotients by a nonzero ideal is finite. -/
instance {I : Ideal R} [NeZero I] :
    Finite (R ⧸ I) :=
  finiteQuotient (NeZero.ne I)

/-- A nonzero prime ideal of a ring with finite quotients is maximal. -/
theorem maximalOfPrime {P : Ideal R} [P.IsPrime] (hp : P ≠ ⊥) :
    P.IsMaximal :=
  have : Finite (R ⧸ P) := finiteQuotient hp
  Ideal.Quotient.maximal_of_isField P <| Finite.isField_of_domain (R ⧸ P)

/-- A ring with finite quotients has dimension `≤ 1`. -/
instance : DimensionLEOne R where
  maximalOfPrime := fun h _ ↦ maximalOfPrime h

/-- A ring with finite quotients is noetherian. -/
instance : IsNoetherianRing R := by
  refine (isNoetherianRing_iff_ideal_fg R).mpr fun I ↦ ?_
  by_cases hI : I = 0
  · exact hI ▸ Submodule.fg_bot
  obtain ⟨x, hx₁, hx₂⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hI
  refine Submodule.fg_of_fg_map_of_fg_inf_ker (Submodule.mkQ (Ideal.span {x})) ?_ ?_
  · have := finiteQuotient (I := Ideal.span {x}) (by simp [hx₂])
    exact Submodule.FG.of_finite
  · rw [Submodule.ker_mkQ, inf_eq_right.mpr ((Ideal.span_singleton_le_iff_mem I).mpr hx₁)]
    exact Submodule.fg_span_singleton x

instance [IsDomain R] [PerfectField (FractionRing R)] (P : Ideal R) [P.IsPrime] :
    PerfectField P.ResidueField := by
  rcases eq_or_ne P ⊥ with rfl | hP
  · exact PerfectField.of_ringEquiv (FractionRing.algEquiv R _).toRingEquiv
  · have : Finite (R ⧸ P) := Ring.HasFiniteQuotients.finiteQuotient hP
    infer_instance

variable (R) in
/--
Assume that `R` has finite quotients and that `S` is a domain and a finite `R`-module. Then
`S` has finite quotients.
-/
theorem of_module_finite (S : Type*) [CommRing S] [IsDomain S]
    [Algebra R S] [Module.Finite R S] :
    HasFiniteQuotients S where
  finiteQuotient {I} hI := by
    obtain hR | hR := subsingleton_or_nontrivial R
    · have : Finite S := Module.finite_of_finite R
      exact Quotient.finite _
    let J : Ideal R := Ideal.under R I
    have : Finite (R ⧸ J) := finiteQuotient <| Ideal.under_ne_bot R hI
    have : Module.Finite (R ⧸ J) (S ⧸ I) := Module.Finite.of_restrictScalars_finite R _ _
    exact Module.finite_of_finite (R ⧸ J)

end properties

/-- The ring `ℤ` has finite quotients. -/
instance : HasFiniteQuotients ℤ where
  finiteQuotient {I} hI := by
    obtain ⟨n, rfl⟩ := Submodule.IsPrincipal.principal I
    have : NeZero n := ⟨by simpa using hI⟩
    exact inferInstanceAs <| Finite (ℤ ⧸ Ideal.span {n})

end Ring.HasFiniteQuotients
```
