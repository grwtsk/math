# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SecurityGame.Variant2e30131798fd1589e3d41bfa63bd45385e7df5031bd9bb51490b80220fdd0d73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12d7715c0221f9dca29307646ebf24d9c6a4d231` · SHA-256 `2e30131798fd1589e3d41bfa63bd45385e7df5031bd9bb51490b80220fdd0d73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.MobiusOntology.EffectivePresentation
import Mathematics.Resolution.AdversaryInvariant

/-!
# Declared security games

The success event, oracle model, advantage, and resource measure are part of
the game object; no topological invariant supplies them implicitly.
-/

namespace Mathematics.MobiusOntology

universe u v w x

abbrev OracleProblem :=
  Mathematics.Resolution.OracleProblem

structure SecurityGame
    (Input : Type u) (Output : Type v)
    (Coordinate : Type w) (Attack : Type x) where
  problem : OracleProblem Input Output Coordinate
  successful : Attack → Prop
  advantage : Attack → ℝ
  resources : Attack → ResourceCost
  modelSemantics : Prop
  modelSemanticsProof : modelSemantics

inductive SecurityProblemKind
  | preimage
  | collision
  | keySearch
  | distinguishing
  | forgery
  | proofSimulation
  deriving DecidableEq, Repr

end Mathematics.MobiusOntology
```
