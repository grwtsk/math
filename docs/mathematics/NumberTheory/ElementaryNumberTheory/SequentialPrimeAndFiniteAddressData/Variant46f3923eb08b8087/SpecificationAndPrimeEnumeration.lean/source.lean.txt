/-
Complete admissible prime specification and exact canonical prime enumeration
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

/-!
# Sequential-prime carrier addresses

This module formalizes the finite data and coding boundary used by the
source-relative carrier construction.  It deliberately separates concrete
coding functions from certificates whose mathematical obligations (prime
enumeration, mixed-radix bijectivity, and canonical increasing enumeration)
must be supplied before those functions are treated as exact equivalences.
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087

/-- A sequential-prime specification `(start; multiplicities)`. -/
structure SequentialPrimeSpecification where
  start : Nat
  multiplicities : List Nat
  nonempty : multiplicities ≠ []
  admissible : ∀ d ∈ multiplicities, d = 1 ∨ Nat.Prime d

namespace SequentialPrimeSpecification

/-- Total number of axes after expanding the multiplicities. -/
def rank (specification : SequentialPrimeSpecification) : Nat :=
  specification.multiplicities.sum

/-- A capability for the strictly increasing enumeration of prime numbers. -/
structure PrimeEnumeration where
  value : Nat → Nat
  prime : ∀ index, Nat.Prime (value index)
  strictlyIncreasing : StrictMono value
  canonical : ∀ index, value index = Nat.nth Nat.Prime index

/--
The actual increasing prime enumeration used by the project formalization.
Its two substantive obligations are Mathlib's infinitude-of-primes theorem and
the strict monotonicity theorem for `Nat.nth` on an infinite set.
-/
noncomputable def canonicalPrimeEnumeration : PrimeEnumeration where
  value := Nat.nth Nat.Prime
  prime := Nat.nth_mem_of_infinite Nat.infinite_setOf_prime
  strictlyIncreasing := Nat.nth_strictMono Nat.infinite_setOf_prime
  canonical := fun _ => rfl

@[simp]
theorem canonicalPrimeEnumeration_value (index : Nat) :
    canonicalPrimeEnumeration.value index = Nat.nth Nat.Prime index :=
  rfl

theorem canonicalPrimeEnumeration_prime (index : Nat) :
    Nat.Prime (canonicalPrimeEnumeration.value index) :=
  canonicalPrimeEnumeration.prime index

theorem canonicalPrimeEnumeration_strictlyIncreasing :
    StrictMono canonicalPrimeEnumeration.value :=
  canonicalPrimeEnumeration.strictlyIncreasing

end SequentialPrimeSpecification


end GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087
