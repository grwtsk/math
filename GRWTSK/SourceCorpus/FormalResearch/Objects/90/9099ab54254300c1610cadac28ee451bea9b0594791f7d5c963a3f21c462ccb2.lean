import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Semiring

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

inductive InverseEvent where
  | invalidation
  | contradiction
  | refusal
  | residueCancellation
deriving DecidableEq, Repr

def InvAllowed (_event : InverseEvent) : Bool :=
  true

structure RestrictedInverseRule where
  event : InverseEvent
  vertex : MemoryVertex
  ledgerAtom : ResidueAtom
  allowed : InvAllowed event = true

def ringUnavailableResidues : List ResidueAtom :=
  [ ResidueAtom.semiringOnlyUntilInverseDefined
  , ResidueAtom.ringInverseMissing
  ]

def MemoryRingAvailable (rules : List RestrictedInverseRule) : Prop :=
  rules.length > 0

theorem no_rules_no_ring :
    ¬ MemoryRingAvailable [] := by
  intro h
  unfold MemoryRingAvailable at h
  simp at h

theorem ringUnavailableResidues_contains_missing :
    ResidueAtom.ringInverseMissing ∈ ringUnavailableResidues := by
  simp [ringUnavailableResidues]

end Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected
