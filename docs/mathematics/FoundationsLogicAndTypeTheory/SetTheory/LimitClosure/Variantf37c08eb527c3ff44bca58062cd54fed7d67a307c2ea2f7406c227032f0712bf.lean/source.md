# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.LimitClosure.Variantf37c08eb527c3ff44bca58062cd54fed7d67a307c2ea2f7406c227032f0712bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88f62586e30bd4ae1876ba6bc02ae843350ae83a` · SHA-256 `f37c08eb527c3ff44bca58062cd54fed7d67a307c2ea2f7406c227032f0712bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.SquareRoot.OrdinalFamily
import Mathematics.StratifiedBoundary.Arithmetic.LimitCorrespondence

/-!
# Conditional limit square-root closure

Finite bounds pass to a declared limit only through norm compatibility and an
exact arithmetic correspondence.
-/

namespace Mathematics.StratifiedBoundary

structure LimitSquareRootClosure
    (CylinderTraceValue ArithmeticValue : Type u) where
  ordinalFamily : OrdinalFamilySquareRootCertificate
  arithmetic :
    LimitArithmeticCorrespondence
      CylinderTraceValue ArithmeticValue
  limitNormCompatibility : Prop
  limitNormCompatibilityProof : limitNormCompatibility
  finiteSquareRootNorm : Nat
  finiteSquareRootNormEvidence : Prop
  finiteSquareRootNormProof : finiteSquareRootNormEvidence

end Mathematics.StratifiedBoundary
```
