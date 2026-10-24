# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Weighted.Variant8b9f2c319000eedba3d0d0f06021587b77a33b3b50b4b62fff33867ffbe596f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90f465ea0220f385f13c0e50a80ba506c9585c97` · SHA-256 `8b9f2c319000eedba3d0d0f06021587b77a33b3b50b4b62fff33867ffbe596f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Vertex

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

structure WeightedVertex where
  vertex : MemoryVertex
  coefficient : Nat
deriving DecidableEq, Repr

structure RuntimePressure where
  queryMatch : Nat
  residuePressure : Nat
  schedulerPressure : Nat
deriving DecidableEq, Repr

def clipNat (upper value : Nat) : Nat :=
  Nat.min upper value

def updateHeat
    (upper lambdaH alphaQ alphaR alphaP current : Nat)
    (pressure : RuntimePressure) : Nat :=
  clipNat upper
    (lambdaH * current +
      alphaQ * pressure.queryMatch +
      alphaR * pressure.residuePressure +
      alphaP * pressure.schedulerPressure)

def pressureResidues : List ResidueAtom :=
  [ ResidueAtom.runtimePressureNotReasoningAuthority ]

theorem updateHeat_le_upper
    (upper lambdaH alphaQ alphaR alphaP current : Nat)
    (pressure : RuntimePressure) :
    updateHeat upper lambdaH alphaQ alphaR alphaP current pressure ≤ upper := by
  unfold updateHeat clipNat
  exact Nat.min_le_left upper
    (lambdaH * current +
      alphaQ * pressure.queryMatch +
      alphaR * pressure.residuePressure +
      alphaP * pressure.schedulerPressure)

theorem pressureResidues_contains_nonAuthority :
    ResidueAtom.runtimePressureNotReasoningAuthority ∈ pressureResidues := by
  simp [pressureResidues]

end Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected
```
