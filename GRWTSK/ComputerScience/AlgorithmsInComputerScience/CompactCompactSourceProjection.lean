import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.CompactInduction
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Residue

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.Compact

structure CompactSourceProjection where
  sourcePath : String
  compactLabel : String
  canonicalFiber : String
  residueClass : String
  poleConservative : Prop
  residueComplete : Prop

def CompactSourceProjection.admitted
    (P : CompactSourceProjection) : Prop :=
  P.poleConservative ∧ P.residueComplete

structure CompactSourceTreePass where
  projections : List CompactSourceProjection
  compactInductionAudit : Think.RadoProjectedModularHeatflow.MemoryCore.CompactInductionHypotheses
  contractionsPreserveResidue : Prop
  importsRemainAcyclic : Prop

def CompactSourceTreePass.admitted
    (P : CompactSourceTreePass) : Prop :=
  P.compactInductionAudit.admitted ∧
    P.contractionsPreserveResidue ∧
    P.importsRemainAcyclic

theorem admitted_projection_has_residue_complete
    (P : CompactSourceProjection)
    (h : P.admitted) :
    P.residueComplete := by
  exact h.2

end Think.RadoProjectedModularHeatflow.Compact
