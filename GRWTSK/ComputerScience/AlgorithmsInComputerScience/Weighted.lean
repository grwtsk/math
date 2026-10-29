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
