import Mathematics.Homology.Event
import Mathlib.Data.Nat.Prime.Basic

/-!
# Certified prime-local base point

A prismatic fiber is indexed by a prime that is already certified.  No
constructor in this module searches for, predicts, or manufactures a new
prime.
-/

namespace Mathematics.Prismatic

/-- A fixed prime together with the immutable evidence that introduced it. -/
structure CertifiedPrime where
  value : Nat
  isPrime : Nat.Prime value
  statementDigest : Digest
  certificate : ObjectAddress
  deriving Repr

namespace CertifiedPrime

theorem two_le (prime : CertifiedPrime) : 2 ≤ prime.value :=
  prime.isPrime.two_le

theorem ne_zero (prime : CertifiedPrime) : prime.value ≠ 0 :=
  Nat.ne_of_gt (lt_of_lt_of_le Nat.zero_lt_two prime.two_le)

theorem ne_one (prime : CertifiedPrime) : prime.value ≠ 1 :=
  Nat.ne_of_gt prime.two_le

end CertifiedPrime

end Mathematics.Prismatic
