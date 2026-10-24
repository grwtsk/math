# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OracleInterface.Variant52a62debef3ffd097a7a158bb08bca95ddc8fe104d497ad9b41b304ab5fc9dd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7947c036402118b39d61453c1be96b78ed0c7d34` · SHA-256 `52a62debef3ffd097a7a158bb08bca95ddc8fe104d497ad9b41b304ab5fc9dd9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.MobiusOntology.SecurityGame

/-!
# Coordinate-local oracle interface
-/

namespace Mathematics.MobiusOntology

universe u v w x

structure OracleInterface
    (Input : Type u) (Coordinate : Type v) (Answer : Type w) where
  query : Coordinate → Input → Answer

def OracleInterface.differsAt
    [DecidableEq Answer]
    (interface : OracleInterface Input Coordinate Answer)
    (coordinate : Coordinate)
    (left right : Input) : Bool :=
  decide (interface.query coordinate left ≠
    interface.query coordinate right)

structure OracleInterfaceCertificate
    {Input : Type u} {Output : Type v}
    {Coordinate : Type w} {Answer : Type x}
    [DecidableEq Answer]
    (problem : OracleProblem Input Output Coordinate)
    (interface : OracleInterface Input Coordinate Answer) : Prop where
  exact :
    ∀ coordinate left right,
      problem.differsAt coordinate left right =
        interface.differsAt coordinate left right

end Mathematics.MobiusOntology
```
