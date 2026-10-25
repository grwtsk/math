import Think.Pipeline.Center.RadoProjectedHeatflow

set_option autoImplicit false

namespace Think.Validation.RadoProjectionCorrect

theorem projection_rules_cover_canonical_fibers :
    Think.RadoProjectedModularHeatflow.projectionRules.length = 12 :=
  Think.RadoProjectedModularHeatflow.projectionRules_count

theorem projected_core_is_center :
    Think.Pipeline.Center.RadoProjectedHeatflow.canonicalizationPass.projectedCore =
      "formal/Think/Pipeline/Center" :=
  Think.Pipeline.Center.RadoProjectedHeatflow.projectedCore_is_center

theorem rado_projected_pass_has_residue :
    Think.Pipeline.Center.RadoProjectedHeatflow.finalWitness.hasResidue = true :=
  Think.Pipeline.Center.RadoProjectedHeatflow.finalWitness_hasResidue

end Think.Validation.RadoProjectionCorrect
