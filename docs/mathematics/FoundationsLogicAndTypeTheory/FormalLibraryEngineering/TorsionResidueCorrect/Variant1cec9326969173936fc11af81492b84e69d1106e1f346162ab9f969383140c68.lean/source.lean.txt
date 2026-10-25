import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.TorsionWitness

set_option autoImplicit false

namespace Think.Validation.TorsionResidueCorrect

theorem torsion_resolved_means_zero_residue
    (T : Think.RadoProjectedModularHeatflow.MemoryCore.CompactTorsion)
    (h : T.resolved) :
    T.residueValue = 0 := by
  exact h

theorem natural_torsion_restriction_is_admitted
    (r : Think.RadoProjectedModularHeatflow.MemoryCore.TorsionRestriction)
    (h : r.naturalUnderRestriction) :
    r.admitted :=
  Think.RadoProjectedModularHeatflow.MemoryCore.natural_torsion_restriction_admitted r h

theorem torsion_witness_bridge_side
    (W : Think.RadoProjectedModularHeatflow.TorsionWitness.TorsionRadoWitness) :
    W.witness.witness.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge :=
  Think.RadoProjectedModularHeatflow.TorsionWitness.torsion_witness_is_bridge W

end Think.Validation.TorsionResidueCorrect
