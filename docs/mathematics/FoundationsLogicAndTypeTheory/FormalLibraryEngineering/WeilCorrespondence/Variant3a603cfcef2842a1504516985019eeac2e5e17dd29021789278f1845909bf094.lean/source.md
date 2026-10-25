# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeilCorrespondence.Variant3a603cfcef2842a1504516985019eeac2e5e17dd29021789278f1845909bf094

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6488948bcfdf19ef458d7b7dd763e7ef6f3222a9` · SHA-256 `3a603cfcef2842a1504516985019eeac2e5e17dd29021789278f1845909bf094`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Trace.OperatorBridge

/-!
# Weil boundary correspondence

Arithmetic truncation and operator realization defects remain visible in the
exact decomposition.
-/

namespace Mathematics.SemiLocalDefect.Trace

universe uPrime uTest

structure WeilBoundaryIdentification
    (Prime : Type uPrime)
    [DecidableEq Prime]
    (Test : Type uTest) where
  arithmetic :
    SemiLocalArithmeticTail Prime Test
  operator :
    SemiLocalOperatorBridge Prime Test
  truncatedSidesAgree :
    ∀ cut test,
      arithmetic.truncatedWeil cut test =
        operator.truncatedArithmetic cut test
  exactDecomposition :
    ∀ cut test,
      arithmetic.globalWeil test =
        operator.packetEnergy cut test +
          arithmetic.tail cut test +
          operator.residual cut test
  localGlobalCompatibility : Prop
  localGlobalCompatibilityProof :
    localGlobalCompatibility

end Mathematics.SemiLocalDefect.Trace
```
