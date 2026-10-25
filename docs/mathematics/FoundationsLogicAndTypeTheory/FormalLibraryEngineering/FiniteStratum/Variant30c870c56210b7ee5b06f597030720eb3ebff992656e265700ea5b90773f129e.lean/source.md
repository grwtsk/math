# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteStratum.Variant30c870c56210b7ee5b06f597030720eb3ebff992656e265700ea5b90773f129e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9e3df7802d96942c16d825bf27ec80b0f7c4f88` · SHA-256 `30c870c56210b7ee5b06f597030720eb3ebff992656e265700ea5b90773f129e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Arithmetic.FiniteCorrespondence

/-!
# Finite-stratum square-root certificate
-/

namespace Mathematics.StratifiedBoundary

structure FiniteStratumSquareRootCertificate where
  stratum : Nat
  unnormalizedDiscrepancy : Nat
  squareRootScale : Nat
  spectralMultiplicityScale : Nat
  bound :
    unnormalizedDiscrepancy ≤
      squareRootScale * spectralMultiplicityScale
  invariantBiasRemoved : Bool := true
  invariantBiasRemoved_exact :
    invariantBiasRemoved = true
  exactArithmeticCorrespondenceRef : String
  spectralBoundRef : String

end Mathematics.StratifiedBoundary
```
