# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Witness.Variant494267e9f9e9359e1a5181d85391dc3f988e9dcf1d9092eb708bffd295955d23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b3dcffa627a520a43b7b349d0591e0cea6b7e81` · SHA-256 `494267e9f9e9359e1a5181d85391dc3f988e9dcf1d9092eb708bffd295955d23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.ModularWeight

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure PrunedWitness where
  oldPath : String
  newPath : String
  oldWeight : Nat
  newWeight : Nat
  sameWeight : oldWeight = newWeight
  residueClass : String
  reason : String

def phase37Witness : PrunedWitness :=
  { oldPath := "formal/Think/Pipeline/Phases/Phase37_WeightScoring.lean"
    newPath := "formal/Think/Pipeline/Phases/PhaseTable.lean"
    oldWeight := phaseWeight 37
    newWeight := phaseWeight 23
    sameWeight := by rfl
    residueClass := "Classifier.WeightScore"
    reason := "phase-table contraction preserving mirror Phase23" }

def classifierWeightScoreWitness : PrunedWitness :=
  { oldPath := "formal/Think/Poles/ClassifierPole/WeightScore.lean"
    newPath := "formal/Think/Poles/Classifier.lean"
    oldWeight := phaseWeight 37
    newWeight := phaseWeight 23
    sameWeight := by rfl
    residueClass := "Classifier.WeightScore"
    reason := "pole-family contraction preserving classifier scoring residue" }

theorem phase37Witness_preservesWeight :
    phase37Witness.oldWeight = phase37Witness.newWeight :=
  phase37Witness.sameWeight

end Think.RadoProjectedModularHeatflow
```
