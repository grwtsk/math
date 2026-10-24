import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.BoundaryWeight

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

inductive PairCorrelationTarget where
  | off
  | montgomeryGUE
  | poisson
  | custom
deriving DecidableEq, Repr

structure BoundaryPairCorrelationPolicy where
  target : PairCorrelationTarget
  preventsSpectralClumping : Bool
  importsMontgomeryAsTheoremAuthority : Bool
deriving DecidableEq, Repr

def montgomeryBoundaryPolicy : BoundaryPairCorrelationPolicy :=
  { target := .montgomeryGUE
    preventsSpectralClumping := true
    importsMontgomeryAsTheoremAuthority := false }

theorem montgomery_boundary_policy_is_regularizer :
    montgomeryBoundaryPolicy.importsMontgomeryAsTheoremAuthority = false := by
  rfl

end Think.RadoProjectedModularHeatflow.BoundaryMemory
