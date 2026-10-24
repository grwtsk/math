# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CoefficientRing.Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12298d3fc6df0818c55b949df1a0c2b515d20e8e` · SHA-256 `f4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.PlaceInteraction

/-!
# Registered finite q-series

Only finite truncations are evaluated definitionally.  Infinite convergence
and coefficient-domain membership require separate certificates.
-/

namespace Mathematics.SemiLocalDefect.QSeries

open scoped BigOperators

structure RationalQSeries where
  coefficient : Nat → ℚ

def RationalQSeries.evaluateThrough
    (series : RationalQSeries)
    (order : Nat)
    (q : ℚ) : ℚ :=
  ∑ degree ∈ Finset.range (order + 1),
    series.coefficient degree * q ^ degree

structure QInterval where
  lower : ℚ
  upper : ℚ
  lower_nonnegative : 0 ≤ lower
  ordered : lower ≤ upper
  upper_le_one : upper ≤ 1

inductive CoefficientDomain
  | integers
  | dyadicSqrtTwo
  | rationals
  | registeredAlgebraic
deriving DecidableEq, Repr

structure CoefficientDomainCertificate
    (series : RationalQSeries) where
  domain : CoefficientDomain
  member : Nat → Prop
  allCoefficients :
    ∀ degree,
      member degree
  domainSound : Prop
  domainSoundProof : domainSound

end Mathematics.SemiLocalDefect.QSeries
```
