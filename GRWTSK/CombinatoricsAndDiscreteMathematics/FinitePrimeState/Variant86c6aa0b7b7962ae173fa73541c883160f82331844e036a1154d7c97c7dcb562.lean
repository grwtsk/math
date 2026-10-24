import Mathematics.Prismatic.PrimeFiber

/-!
# Finite certified prime states

Adding a prime means adjoining a fiber whose primality and local construction
are already certified.  This module intentionally exposes no next-prime search
or prime-discovery operation.
-/

namespace Mathematics.Prismatic

universe u

/--
A finite state of certified prime-local fibers.  The dependent `fiber` family
is authoritative; it retains each complete typed realization and its accepted
kernel certificate.
-/
structure FinitePrimeState where
  primes : Finset Nat
  fiber :
    ∀ prime, prime ∈ primes →
      CertifiedPrimeLocalFiber.{u} prime
  globalObject : GlobalArithmeticObject
  compatibilityDigest : Digest
  stateAddress : ObjectAddress

namespace FinitePrimeState

/-- Primality is recovered from the retained typed fiber, not a second claim. -/
theorem primeCertified
    (state : FinitePrimeState)
    (prime : Nat)
    (membership : prime ∈ state.primes) :
    Nat.Prime prime :=
  (state.fiber prime membership).isPrime

/-- Exact typed lookup at a certified prime of the finite state. -/
def fiberAt
    (state : FinitePrimeState)
    (prime : Nat)
    (membership : prime ∈ state.primes) :
    CertifiedPrimeLocalFiber prime :=
  state.fiber prime membership

/--
Compatibility projection for the pre-existing inclusion API.  Despite the
historical name, this returns the complete typed fiber, so every existing
restriction equality now preserves mathematical data rather than an address.
-/
def fiberAddress
    (state : FinitePrimeState)
    (prime : Nat)
    (membership : prime ∈ state.primes) :
    CertifiedPrimeLocalFiber prime :=
  state.fiberAt prime membership

/-- Content address derived from, and subordinate to, the typed fiber. -/
def fiberObjectAddress
    (state : FinitePrimeState)
    (prime : Nat)
    (membership : prime ∈ state.primes) :
    ObjectAddress :=
  (state.fiberAt prime membership).objectAddress

end FinitePrimeState

/-- Exact extension by one already certified prime-local fiber. -/
structure CertifiedPrimeExtension
    (source target : FinitePrimeState) where
  newPrime : CertifiedPrime
  newPrime_not_mem :
    newPrime.value ∉ source.primes
  target_primes :
    target.primes = insert newPrime.value source.primes
  oldFibersPreserved :
    ∀ prime (membership : prime ∈ source.primes),
      target.fiberAt prime
          (target_primes ▸ Finset.mem_insert_of_mem membership) =
        source.fiberAt prime membership
  newFiber : CertifiedPrimeLocalFiber newPrime.value
  newFiber_prime_bound :
    newFiber.prime = newPrime
  newFiber_agrees :
    target.fiberAt newPrime.value
        (target_primes ▸ Finset.mem_insert_self
          newPrime.value source.primes) =
      newFiber
  globalObjectPreserved :
    target.globalObject = source.globalObject
  extensionCertificate : ObjectAddress

namespace CertifiedPrimeExtension

theorem newPrime_mem_target
    {source target : FinitePrimeState}
    (extension : CertifiedPrimeExtension source target) :
    extension.newPrime.value ∈ target.primes := by
  rw [extension.target_primes]
  exact Finset.mem_insert_self _ _

/-- Every retained source fiber is equal as typed mathematical data. -/
theorem oldFiber_typed_preserved
    {source target : FinitePrimeState}
    (extension : CertifiedPrimeExtension source target)
    (prime : Nat)
    (membership : prime ∈ source.primes) :
    target.fiberAt prime
        (extension.target_primes ▸
          Finset.mem_insert_of_mem membership) =
      source.fiberAt prime membership :=
  extension.oldFibersPreserved prime membership

/-- The adjoined fiber is the exact certified typed value supplied to the extension. -/
theorem newFiber_typed_preserved
    {source target : FinitePrimeState}
    (extension : CertifiedPrimeExtension source target) :
    target.fiberAt extension.newPrime.value
        (extension.target_primes ▸
          Finset.mem_insert_self
            extension.newPrime.value source.primes) =
      extension.newFiber :=
  extension.newFiber_agrees

end CertifiedPrimeExtension

end Mathematics.Prismatic
