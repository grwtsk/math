import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Heat

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure PairCorrelationPolicy where
  kernelName : String
  regularizerOnly : Bool
  exactSymmetrySource : String
  noTheoremAuthority : Prop
deriving Repr

def montgomeryGUEPolicy : PairCorrelationPolicy :=
  { kernelName := "montgomery_gue"
    regularizerOnly := true
    exactSymmetrySource := "group_orbits"
    noTheoremAuthority := True }

theorem montgomeryGUEPolicy_regularizerOnly :
    montgomeryGUEPolicy.regularizerOnly = true := by
  rfl

end Think.RadoProjectedModularHeatflow
