# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.OnePrimeMoment.Variantd5b589fdc662cbbbcc22c4e7e7d0465274044503eb03f68575f864aa88f5d31f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8338eb71a4c5b3567df4d94706ceceb2de144891` · SHA-256 `d5b589fdc662cbbbcc22c4e7e7d0465274044503eb03f68575f864aa88f5d31f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.QSeries.CoefficientRing
import Mathlib.Data.Nat.Prime.Basic

/-!
# One-prime moment data

Lambert-series and integrality claims remain theorem-bearing fields.
-/

namespace Mathematics.SemiLocalDefect.QSeries

structure OnePrimeMomentSystem where
  prime : Nat
  prime_isPrime : Nat.Prime prime
  moment : Nat → RationalQSeries
  jacobiDiagonal : Nat → RationalQSeries
  jacobiOffDiagonal : Nat → RationalQSeries
  lambertRepresentation : Prop
  lambertRepresentationProof :
    lambertRepresentation
  integrality :
    ∀ degree,
      CoefficientDomainCertificate (moment degree)
  digest : RealizationDigest

def OnePrimeMomentSystem.q
    (system : OnePrimeMomentSystem) : ℚ :=
  1 / system.prime

theorem OnePrimeMomentSystem.q_nonnegative
    (system : OnePrimeMomentSystem) :
    0 ≤ system.q := by
  simp [OnePrimeMomentSystem.q]

end Mathematics.SemiLocalDefect.QSeries
```
