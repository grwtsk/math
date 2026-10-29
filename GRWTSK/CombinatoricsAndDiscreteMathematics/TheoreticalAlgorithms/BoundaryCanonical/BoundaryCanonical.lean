import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.BoundaryPairCorrelation

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

inductive BoundaryMemoryAction where
  | retain
  | compress
  | recall
  | refuse
  | insertWitness
deriving DecidableEq, Repr

structure BoundaryCanonicalRule where
  condition : String
  action : BoundaryMemoryAction
  residueClass : String
deriving DecidableEq, Repr

def boundaryCanonicalRules : List BoundaryCanonicalRule :=
  [ { condition := "heat, residue, or witness value remains"
      action := .retain
      residueClass := "retention" }
  , { condition := "inner residue is resolved by the outer boundary"
      action := .compress
      residueClass := "compression" }
  , { condition := "query creates outer-to-inner residue"
      action := .recall
      residueClass := "recall" }
  , { condition := "no boundary witness can support the answer"
      action := .refuse
      residueClass := "refusal" }
  , { condition := "boundary residue exceeds threshold"
      action := .insertWitness
      residueClass := "witness" }
  ]

theorem boundaryCanonicalRules_count :
    boundaryCanonicalRules.length = 5 := by
  rfl

end Think.RadoProjectedModularHeatflow.BoundaryMemory
