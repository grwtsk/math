import Mathematics.Prismatic.FinitePrimeState
import Mathlib.Algebra.Polynomial.BigOperators

/-!
# Candidate, certified local, finite, and external Euler data

A Frobenius matrix does not become a canonical Euler factor by naming
convention.  Certification is relative to a frozen local specification.  Once
local factors are certified, their product over a finite prime state is an
exact finite product.  Infinite convergence and continuation remain external.
-/

namespace Mathematics.Prismatic

open scoped BigOperators

universe u

noncomputable section

variable {Coefficient : Type u}

/-- Frozen mathematical meaning of a canonical local Euler polynomial. -/
structure LocalEulerSpecification
    (Coefficient : Type u) [CommRing Coefficient] where
  accepts : (prime : Nat) → Polynomial Coefficient → Prop
  statementDigest : Nat → Digest
  specificationAddress : ObjectAddress

/-- Proposal extracted from local Frobenius data. -/
structure CandidateLocalEulerDatum
    (Coefficient : Type u) [CommRing Coefficient] where
  prime : CertifiedPrime
  factor : Polynomial Coefficient
  extractionDigest : Digest
  evidenceAddress : ObjectAddress

/-- Local Euler data accepted against the exact frozen specification. -/
structure CertifiedLocalEulerDatum
    [CommRing Coefficient]
    (specification : LocalEulerSpecification Coefficient) where
  prime : CertifiedPrime
  factor : Polynomial Coefficient
  accepted :
    specification.accepts prime.value factor
  declarationDigest : Digest
  kernelCertificate : ObjectAddress

/-- A theorem-bearing promotion from one candidate to accepted local data. -/
structure LocalEulerExtractionCertificate
    [CommRing Coefficient]
    (specification : LocalEulerSpecification Coefficient)
    (candidate : CandidateLocalEulerDatum Coefficient)
    (accepted : CertifiedLocalEulerDatum specification) where
  samePrime :
    accepted.prime.value = candidate.prime.value
  samePolynomial :
    accepted.factor = candidate.factor
  proofTermDigest : Digest
  dependencyConeDigest : Digest
  kernelReceipt : ObjectAddress

/-- Certified local factor family over exactly one finite prime state. -/
structure CertifiedEulerFamily
    [CommRing Coefficient]
    (specification : LocalEulerSpecification Coefficient)
    (state : FinitePrimeState) where
  factor : Nat → Polynomial Coefficient
  accepted :
    ∀ prime ∈ state.primes,
      specification.accepts prime (factor prime)
  localCertificate :
    ∀ prime, prime ∈ state.primes → ObjectAddress

/-- The exact finite Euler product. -/
def finiteEulerProduct
    [CommRing Coefficient]
    (primes : Finset Nat)
    (factor : Nat → Polynomial Coefficient) :
    Polynomial Coefficient :=
  ∏ prime ∈ primes, factor prime

@[simp]
theorem finiteEulerProduct_insert
    [CommRing Coefficient]
    (factor : Nat → Polynomial Coefficient)
    {prime : Nat} {primes : Finset Nat}
    (fresh : prime ∉ primes) :
    finiteEulerProduct (insert prime primes) factor =
      factor prime * finiteEulerProduct primes factor := by
  simp [finiteEulerProduct, fresh]

end

end Mathematics.Prismatic
