# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitMetric.Variant2b14810490b2993a4acffc87b9ab086e650edffa89a475943c64964e06479c42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0629a03c554a64567ef9a0d95e926ca6ad1ee126` · SHA-256 `2b14810490b2993a4acffc87b9ab086e650edffa89a475943c64964e06479c42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Boundary.LimitState

/-!
# Certified limit metric

Separation and completeness are supplied for the declared weighted metric;
they are not inferred from a schema containing weights.
-/

namespace Mathematics.StratifiedBoundary

structure LimitMetricCertificate (State : Type u) where
  distance : State → State → Nat
  cauchy : (Nat → State) → Prop
  converges : (Nat → State) → State → Prop
  separates :
    ∀ {left right},
      distance left right = 0 →
        left = right
  complete :
    ∀ sequence,
      cauchy sequence →
        ∃ limit,
          converges sequence limit
  summableWeightCertificateRef : String
  finiteProjectionContinuityRef : String

theorem limit_metric_separates
    {State : Type u}
    (certificate : LimitMetricCertificate State)
    {left right : State}
    (zeroDistance :
      certificate.distance left right = 0) :
    left = right :=
  certificate.separates zeroDistance

theorem limit_metric_complete
    {State : Type u}
    (certificate : LimitMetricCertificate State)
    (sequence : Nat → State)
    (isCauchy : certificate.cauchy sequence) :
    ∃ limit,
      certificate.converges sequence limit :=
  certificate.complete sequence isCauchy

end Mathematics.StratifiedBoundary
```
