# Complete source: GRWTSK.Algebra.Basic.Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0036d9b215c37edfc7ec06726aaa79ff964626f` · SHA-256 `ee291508b3b3ef7b918cffac18483b44a9a41081d4a1e42e87407ad4c3cb6f32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingDimensionLEOne.Variantbd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.RingDimensionLEOne.Variantbd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"bd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/RingTheory/DedekindDomain/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenji Nakagawa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenji Nakagawa, Anne Baanen, Filippo A. E. Nuccio
-/
import Mathlib.RingTheory.Ideal.Over
import Mathlib.RingTheory.Polynomial.RationalRoot


namespace GRWTSK.Algebra.RingDimensionLEOne.Variantbd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750

#align_import ring_theory.dedekind_domain.basic from "leanprover-community/mathlib"@"926daa81fd8acb2a04e15572c4ff20af2753c2ae"

/-!
# Dedekind domains

This file defines the notion of a Dedekind domain (or Dedekind ring),
as a Noetherian integrally closed commutative ring of Krull dimension at most one.

## Main definitions

 - `IsDedekindDomain` defines a Dedekind domain as a commutative ring that is
   Noetherian, integrally closed in its field of fractions and has Krull dimension at most one.
   `isDedekindDomain_iff` shows that this does not depend on the choice of field of fractions.

## Implementation notes

The definitions that involve a field of fractions choose a canonical field of fractions,
but are independent of that choice. The `..._iff` lemmas express this independence.

Often, definitions assume that Dedekind domains are not fields. We found it more practical
to add a `(h : ¬ IsField A)` assumption whenever this is explicitly needed.

## References

* [D. Marcus, *Number Fields*][marcus1977number]
* [J.W.S. Cassels, A. Frölich, *Algebraic Number Theory*][cassels1967algebraic]
* [J. Neukirch, *Algebraic Number Theory*][Neukirch1992]

## Tags

dedekind domain, dedekind ring
-/


variable (R A K : Type*) [CommRing R] [CommRing A] [Field K]

open scoped nonZeroDivisors Polynomial

/-- A ring `R` has Krull dimension at most one if all nonzero prime ideals are maximal. -/
class Ring.DimensionLEOne : Prop :=
  (maximalOfPrime : ∀ {p : Ideal R}, p ≠ ⊥ → p.IsPrime → p.IsMaximal)
#align ring.dimension_le_one Ring.DimensionLEOne

open Ideal Ring

theorem Ideal.IsPrime.isMaximal {R : Type*} [CommRing R] [DimensionLEOne R]
    {p : Ideal R} (h : p.IsPrime) (hp : p ≠ ⊥) : p.IsMaximal :=
  DimensionLEOne.maximalOfPrime hp h

namespace Ring

instance DimensionLEOne.principal_ideal_ring [IsDomain A] [IsPrincipalIdealRing A] :
    DimensionLEOne A where
  maximalOfPrime := fun nonzero _ =>
    IsPrime.to_maximal_ideal nonzero
#align ring.dimension_le_one.principal_ideal_ring Ring.DimensionLEOne.principal_ideal_ring

theorem DimensionLEOne.isIntegralClosure (B : Type*) [CommRing B] [IsDomain B] [Nontrivial R]
    [Algebra R A] [Algebra R B] [Algebra B A] [IsScalarTower R B A] [IsIntegralClosure B R A]
    [DimensionLEOne R] : DimensionLEOne B where
  maximalOfPrime := fun {p} ne_bot _ =>
    IsIntegralClosure.isMaximal_of_isMaximal_comap (R := R) A p
      (Ideal.IsPrime.isMaximal inferInstance (IsIntegralClosure.comap_ne_bot A ne_bot))
#align ring.dimension_le_one.is_integral_closure Ring.DimensionLEOne.isIntegralClosure

nonrec instance DimensionLEOne.integralClosure [Nontrivial R] [IsDomain A] [Algebra R A]
    [DimensionLEOne R] : DimensionLEOne (integralClosure R A) :=
  DimensionLEOne.isIntegralClosure R A (integralClosure R A)
#align ring.dimension_le_one.integral_closure Ring.DimensionLEOne.integralClosure

variable {R}

theorem DimensionLEOne.not_lt_lt [Ring.DimensionLEOne R] (p₀ p₁ p₂ : Ideal R) [hp₁ : p₁.IsPrime]
    [hp₂ : p₂.IsPrime] : ¬(p₀ < p₁ ∧ p₁ < p₂)
  | ⟨h01, h12⟩ => h12.ne ((hp₁.isMaximal (bot_le.trans_lt h01).ne').eq_of_le hp₂.ne_top h12.le)
#align ring.dimension_le_one.not_lt_lt Ring.DimensionLEOne.not_lt_lt

theorem DimensionLEOne.eq_bot_of_lt [Ring.DimensionLEOne R] (p P : Ideal R) [p.IsPrime]
    [P.IsPrime] (hpP : p < P) : p = ⊥ :=
  by_contra fun hp0 => not_lt_lt ⊥ p P ⟨Ne.bot_lt hp0, hpP⟩
#align ring.dimension_le_one.eq_bot_of_lt Ring.DimensionLEOne.eq_bot_of_lt

end Ring

/-- A Dedekind domain is an integral domain that is Noetherian, integrally closed, and
has Krull dimension at most one.

This is definition 3.2 of [Neukirch1992].

The integral closure condition is independent of the choice of field of fractions:
use `isDedekindDomain_iff` to prove `IsDedekindDomain` for a given `fraction_map`.

This is the default implementation, but there are equivalent definitions,
`is_dedekind_domain_dvr` and `is_dedekind_domain_inv`.
TODO: Prove that these are actually equivalent definitions.
-/
class IsDedekindDomain
  extends IsDomain A, IsNoetherian A A, DimensionLEOne A, IsIntegrallyClosed A : Prop
#align is_dedekind_domain IsDedekindDomain

/-- An integral domain is a Dedekind domain iff and only if it is
Noetherian, has dimension ≤ 1, and is integrally closed in a given fraction field.
In particular, this definition does not depend on the choice of this fraction field. -/
theorem isDedekindDomain_iff (K : Type*) [Field K] [Algebra A K] [IsFractionRing A K] :
    IsDedekindDomain A ↔
      IsDomain A ∧ IsNoetherianRing A ∧ DimensionLEOne A ∧
        ∀ {x : K}, IsIntegral A x → ∃ y, algebraMap A K y = x :=
  ⟨fun _ => ⟨inferInstance, inferInstance, inferInstance,
             fun {_} => (isIntegrallyClosed_iff K).mp inferInstance⟩,
   fun ⟨hid, hr, hd, hi⟩ => { hid, hr, hd, (isIntegrallyClosed_iff K).mpr @hi with }⟩
#align is_dedekind_domain_iff isDedekindDomain_iff

-- See library note [lower instance priority]
instance (priority := 100) IsPrincipalIdealRing.isDedekindDomain
    [IsDomain A] [IsPrincipalIdealRing A] :
    IsDedekindDomain A :=
  { PrincipalIdealRing.isNoetherianRing, Ring.DimensionLEOne.principal_ideal_ring A,
    UniqueFactorizationMonoid.instIsIntegrallyClosed with }
#align is_principal_ideal_ring.is_dedekind_domain IsPrincipalIdealRing.isDedekindDomain
```
