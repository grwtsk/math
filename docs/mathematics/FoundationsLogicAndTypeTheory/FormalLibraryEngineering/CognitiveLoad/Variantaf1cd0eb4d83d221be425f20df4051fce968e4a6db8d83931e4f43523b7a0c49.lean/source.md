# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CognitiveLoad.Variantaf1cd0eb4d83d221be425f20df4051fce968e4a6db8d83931e4f43523b7a0c49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c61e2387025fed40e065c2482c4d219b5f490e8b` · SHA-256 `af1cd0eb4d83d221be425f20df4051fce968e4a6db8d83931e4f43523b7a0c49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Advisory stratified cognitive load

The score controls disclosure only and is not mathematical evidence.
-/

namespace Mathematics.StratifiedBoundary

structure StratifiedCognitiveLoad where
  prerequisiteLoad : Nat
  localLoad : Nat
  relationLoad : Nat
  unknownLoad : Nat
  operationLoad : Nat
  verificationLoad : Nat
  bitLoad : Nat
  obstructionLoad : Nat
  stratumLoad : Nat
  successorLoad : Nat
  limitLoad : Nat
  traceLoad : Nat

def StratifiedCognitiveLoad.total
    (load : StratifiedCognitiveLoad) : Nat :=
  load.prerequisiteLoad +
  load.localLoad +
  load.relationLoad +
  load.unknownLoad +
  load.operationLoad +
  load.verificationLoad +
  load.bitLoad +
  load.obstructionLoad +
  load.stratumLoad +
  load.successorLoad +
  load.limitLoad +
  load.traceLoad

end Mathematics.StratifiedBoundary
```
