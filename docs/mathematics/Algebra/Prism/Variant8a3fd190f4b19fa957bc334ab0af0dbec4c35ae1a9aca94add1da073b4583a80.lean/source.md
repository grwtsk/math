# Complete source: GRWTSK.Algebra.Prism.Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f582cf3f60b9d8acf78dfb96ab3c46344b18e47` · SHA-256 `6fb4bcffefdb86ea870f6aa26439431709a48d1fb785e716d7f993b0f9156e3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AdicCompatibleSequence.Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AdicCompatibleSequence.Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"bf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/Prism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Prismatic.DeltaStructure
import Mathlib.RingTheory.Ideal.Quotient.Operations

/-!
# Bounded prime-local prism candidate

This module records the part of a bounded prism that is formalized here:

* an actual prime-indexed delta structure;
* a principal effective-Cartier ideal, witnessed by a regular generator;
* the prism containment condition;
* classical separated completeness for the `(p,I)`-adic filtration;
* a uniform exponent for the `p`-power torsion of `A/I`.

Classical adic completeness is not silently identified with derived
`(p,I)`-completeness.  The latter remains an explicit obligation, so the
resulting object is named a candidate rather than a bounded prism.
-/


namespace GRWTSK.Algebra.AdicCompatibleSequence.Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797

namespace Mathematics.Prismatic

universe u

variable (A : Type u) [CommRing A]

/-- The ideal defining the classical `(p,I)`-adic filtration. -/
def primeIdeal
    (prime : CertifiedPrime) (ideal : Ideal A) : Ideal A :=
  ideal + Ideal.span {(prime.value : A)}

/--
A sequence compatible with every stage of an adic filtration.  Compatibility
is stated for every later term, rather than inferred from a digest or a
numerical convergence test.
-/
structure AdicCompatibleSequence (adicIdeal : Ideal A) where
  term : Nat → A
  compatible :
    ∀ {lower upper : Nat}, lower ≤ upper →
      term upper - term lower ∈ adicIdeal ^ (lower + 1)

/--
Classical separated adic completeness: every compatible sequence has one and
only one limit modulo every positive power of the ideal.

This is deliberately not called derived completeness.
-/
def ClassicallyAdicComplete (adicIdeal : Ideal A) : Prop :=
  ∀ sequence : AdicCompatibleSequence A adicIdeal,
    ∃! limit : A,
      ∀ level : Nat,
        limit - sequence.term level ∈ adicIdeal ^ (level + 1)

/--
A principal effective-Cartier ideal in this affine profile.  The regularity
clause is the non-zero-divisor witness missing from mere principality.
-/
def PrincipalEffectiveCartierIdeal
    (ideal : Ideal A) (generator : A) : Prop :=
  ideal = Ideal.span {generator} ∧
    ∀ multiplier : A,
      generator * multiplier = 0 → multiplier = 0

/-- Uniform boundedness of all `p`-power torsion in the quotient `A/I`. -/
def BoundedPrimePowerTorsion
    (prime : CertifiedPrime) (ideal : Ideal A) (bound : Nat) : Prop :=
  ∀ value : A ⧸ ideal,
    (∃ exponent : Nat,
      (prime.value : A ⧸ ideal) ^ exponent * value = 0) →
    (prime.value : A ⧸ ideal) ^ bound * value = 0

/--
The proof-bearing finite algebraic data presently available for a bounded
prism.  Promotion to a genuine bounded prism additionally requires discharge
of `derivedCompletionObligation`.
-/
structure BoundedPrismCandidate
    (prime : CertifiedPrime) (A : Type u) [CommRing A] where
  deltaStructure : PrimeDeltaStructure prime A
  ideal : Ideal A
  distinguished : A
  cartier :
    PrincipalEffectiveCartierIdeal A ideal distinguished
  prism_condition :
    (prime.value : A) ∈
      ideal + ideal.map deltaStructure.frobenius
  classically_complete :
    ClassicallyAdicComplete A (primeIdeal A prime ideal)
  derivedCompletionObligation : StableId
  derivedCompletionObligation_valid :
    derivedCompletionObligation.Valid
  torsionBound : Nat
  bounded :
    BoundedPrimePowerTorsion A prime ideal torsionBound
  sourceDigest : Digest
  candidateAddress : ObjectAddress

namespace BoundedPrismCandidate

variable {A : Type u} [CommRing A] {prime : CertifiedPrime}

/-- The distinguished element belongs to the prism ideal. -/
theorem distinguished_mem
    (candidate : BoundedPrismCandidate prime A) :
    candidate.distinguished ∈ candidate.ideal := by
  rw [candidate.cartier.1]
  exact Ideal.subset_span (Set.mem_singleton candidate.distinguished)

/-- The distinguished generator is a non-zero-divisor. -/
theorem distinguished_regular
    (candidate : BoundedPrismCandidate prime A)
    (multiplier : A)
    (annihilated : candidate.distinguished * multiplier = 0) :
    multiplier = 0 :=
  candidate.cartier.2 multiplier annihilated

end BoundedPrismCandidate

end Mathematics.Prismatic
```
