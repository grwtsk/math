# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FinitePrimeState.Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac2970a0ef04c2c0bc7ab8b9ff3422cef3fa3696` · SHA-256 `5dbdb059fa93b585f0273c08028d878ac732fcce8933d3345a32fb6ec28167ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FinitePrimeState.Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FinitePrimeState.Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/FinitePrimeState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Prismatic.PrimeFiber

/-!
# Finite certified prime states

Adding a prime means adjoining a fiber whose primality and local construction
are already certified.  This module intentionally exposes no next-prime search
or prime-discovery operation.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FinitePrimeState.Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562

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
```
