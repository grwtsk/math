# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.CertifiedPrime.Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4a73f02029c334d08cdf38433f13bbc97d996f7` · SHA-256 `2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
