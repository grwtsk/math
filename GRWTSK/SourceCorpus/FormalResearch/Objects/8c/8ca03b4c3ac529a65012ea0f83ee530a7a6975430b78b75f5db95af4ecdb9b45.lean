import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Witness

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure BoundaryRefusal where
  query : String
  activeResidue : BoundaryResidue
  supportingWitness? : Option BoundaryWitness
  noSupportedAnswer : Prop

def BoundaryRefusal.supported (r : BoundaryRefusal) : Bool :=
  r.supportingWitness?.isSome

theorem unsupported_refusal_has_no_witness
    (r : BoundaryRefusal)
    (h : r.supported = false) :
    r.supportingWitness? = none := by
  cases hw : r.supportingWitness? with
  | none =>
      rfl
  | some _ =>
      simp [BoundaryRefusal.supported, hw] at h

end Think.RadoProjectedModularHeatflow.MemoryCore
