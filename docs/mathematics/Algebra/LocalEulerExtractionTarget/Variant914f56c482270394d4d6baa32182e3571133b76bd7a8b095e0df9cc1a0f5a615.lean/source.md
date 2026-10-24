# Complete source: GRWTSK.Algebra.LocalEulerExtractionTarget.Variant914f56c482270394d4d6baa32182e3571133b76bd7a8b095e0df9cc1a0f5a615

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dfa846afd51cf16e1142862a253904b767abd30` · SHA-256 `914f56c482270394d4d6baa32182e3571133b76bd7a8b095e0df9cc1a0f5a615`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Discovery.OpenElement
import Mathematics.Prismatic.EulerData

/-!
# Parameterized target: prime-local Euler extraction

This is a proposition-valued target for supplied data, not a closed
conjecture element.  A genuine open element must first bind one concrete
candidate and one frozen specification.
-/

namespace Mathematics.Prismatic

universe u

/-- Exact local extraction target; no certificate is embedded in the seed. -/
def LocalEulerExtractionTarget
    {Coefficient : Type u} [CommRing Coefficient]
    (specification : LocalEulerSpecification Coefficient)
    (candidate : CandidateLocalEulerDatum Coefficient) : Prop :=
  specification.accepts candidate.prime.value candidate.factor

end Mathematics.Prismatic
```
