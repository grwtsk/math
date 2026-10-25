# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModularWeight.Variante06fe874abe910caccd55127bb9d61743456d0abaa0e5fc20f0a39a73e9431e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffaea5272ffd7715bb877c7360ca9dca7b2aa61a` · SHA-256 `e06fe874abe910caccd55127bb9d61743456d0abaa0e5fc20f0a39a73e9431e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Orbit

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

def phaseMirror (n : Nat) : Nat :=
  60 - n

def phaseWeight (n : Nat) : Nat :=
  4 + 2 * ((Nat.min n (60 - n)) / 5)

theorem phaseWeight_reflection (n : Nat) (h : n ≤ 60) :
    phaseWeight n = phaseWeight (phaseMirror n) := by
  unfold phaseWeight phaseMirror
  rw [Nat.sub_sub_self h]
  exact congrArg (fun x => 4 + 2 * (x / 5)) (Nat.min_comm n (60 - n))

def canonicalFiberWeight : CanonicalFiber -> Nat
  | .pipelineCenter => 16
  | .pipelinePhase => 16
  | .poleFamily => 12
  | .residueAlgebra => 14
  | .sourceTreeGeometry => 16
  | .targetBoundary => 8
  | .finiteWitness => 8
  | .modularCarrier => 8
  | .researchCorpus => 6
  | .validationShell => 10
  | .braidConformance => 10
  | .buildShell => 2

theorem sourceTreeGeometry_weight :
    canonicalFiberWeight CanonicalFiber.sourceTreeGeometry = 16 := by
  rfl

end Think.RadoProjectedModularHeatflow
```
