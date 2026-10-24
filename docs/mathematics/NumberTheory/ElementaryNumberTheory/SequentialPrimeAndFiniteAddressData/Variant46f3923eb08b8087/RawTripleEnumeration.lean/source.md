# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.RawTripleEnumeration

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f1b7c14bc4f9001b415c6aaab827c4beb1de42d` · SHA-256 `99e3402922aa35d21b6f25d7af437541799aeb8615488d0d8713a20f37c11a8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Whole raw natural triple coding and code-ordered enumeration with exact Mathlib pairing inverses
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e
Organized SHA-256: 7db2e66beb99aba0b9020dab1439132befa137a92a93440edb7d372bcee6e3ce
PMD: 510.2.010 elementary number theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Mathlib.Data.Nat.Pairing
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Prime.Nth
import Mathlib.Data.Nat.PrimeFin

import GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.PairingAndSequenceFormulas

/-!
# Sequential-prime carrier addresses

This module formalizes the finite data and coding boundary used by the
source-relative carrier construction.  It deliberately separates concrete
coding functions from certificates whose mathematical obligations (prime
enumeration, mixed-radix bijectivity, and canonical increasing enumeration)
must be supplied before those functions are treated as exact equivalences.
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087

/-- Raw address codes before restricting specification and coordinate codes. -/
structure RawCarrierAddress where
  occurrence : Nat
  specification : Nat
  coordinate : Nat
  deriving DecidableEq, Repr

/-- The nested documented address code. -/
def rawAddressCode (address : RawCarrierAddress) : Nat :=
  cantorPair address.occurrence
    (cantorPair address.specification address.coordinate)

/--
An exact canonical enumeration capability for a validated address type.
`canonicalOrder` prevents an arbitrary countability equivalence from being
misreported as the increasing enumeration of the selected address code.
-/
structure AddressEnumeration (Address : Type) where
  enumerate : Nat ≃ Address
  code : Address → Nat
  codeInjective : Function.Injective code
  canonicalOrder : ∀ left right,
    left < right ↔ code (enumerate left) < code (enumerate right)

/-- Natural numbers with their identity code form the simplest fully
validated canonical address enumeration. -/
def naturalAddressEnumeration : AddressEnumeration Nat where
  enumerate := Equiv.refl Nat
  code := id
  codeInjective := Function.injective_id
  canonicalOrder := by simp

/-- Mathlib's pairing gives an executable bijection for the raw triple type. -/
def rawAddressEquivNat : RawCarrierAddress ≃ Nat where
  toFun address :=
    Nat.pair address.occurrence
      (Nat.pair address.specification address.coordinate)
  invFun value :=
    let outer := Nat.unpair value
    let inner := Nat.unpair outer.2
    ⟨outer.1, inner.1, inner.2⟩
  left_inv address := by
    cases address
    simp
  right_inv value := by
    simp

/-- A concrete enumeration of raw triples; it is not the certified increasing
enumeration of the restricted sequential-prime carrier. -/
def rawAddressEnumeration : Nat ≃ RawCarrierAddress :=
  rawAddressEquivNat.symm

/--
A fully certified canonical enumeration for raw carrier triples, ordered by
Mathlib's pairing code.  This is deliberately not identified with the
documented restricted sequential-prime address subspace: that restriction
requires a separate membership proof and filtering enumeration.
-/
def rawCanonicalAddressEnumeration : AddressEnumeration RawCarrierAddress where
  enumerate := rawAddressEnumeration
  code := rawAddressEquivNat
  codeInjective := rawAddressEquivNat.injective
  canonicalOrder := by
    intro left right
    simp [rawAddressEnumeration]

@[simp]
theorem rawCanonicalAddressEnumeration_code_enumerate (index : Nat) :
    rawCanonicalAddressEnumeration.code
      (rawCanonicalAddressEnumeration.enumerate index) = index := by
  simp [rawCanonicalAddressEnumeration, rawAddressEnumeration]

theorem rawCanonicalAddressEnumeration_order (left right : Nat) :
    left < right ↔
      rawCanonicalAddressEnumeration.code
        (rawCanonicalAddressEnumeration.enumerate left) <
      rawCanonicalAddressEnumeration.code
        (rawCanonicalAddressEnumeration.enumerate right) :=
  rawCanonicalAddressEnumeration.canonicalOrder left right


end GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087
```
