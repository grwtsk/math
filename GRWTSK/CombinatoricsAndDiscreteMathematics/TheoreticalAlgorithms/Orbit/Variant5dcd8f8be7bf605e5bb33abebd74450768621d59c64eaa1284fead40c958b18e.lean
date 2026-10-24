-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrbitGenerator.Variantfff87e793c40992425955fd1dad93fa4e5b5d3b157b1faa1f2f0573b92b94aad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fff87e793c40992425955fd1dad93fa4e5b5d3b157b1faa1f2f0573b92b94aad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OrbitGenerator.Variantfff87e793c40992425955fd1dad93fa4e5b5d3b157b1faa1f2f0573b92b94aad","mathematical_subject":"Computation.DataStructures","original_sha256":"fff87e793c40992425955fd1dad93fa4e5b5d3b157b1faa1f2f0573b92b94aad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/Orbit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrbitGenerator.Variantfff87e793c40992425955fd1dad93fa4e5b5d3b157b1faa1f2f0573b92b94aad

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

inductive OrbitGenerator where
  | typedWreath
  | phaseReflection
  | orbitQuotient
deriving DecidableEq, Repr

structure OrbitPolicy where
  generators : List OrbitGenerator
  exactWeightSymmetry : Prop
  modularLabelsMayBeNonfaithful : Prop
deriving Repr

def sourceTreeOrbitPolicy : OrbitPolicy :=
  { generators := [ .typedWreath, .phaseReflection, .orbitQuotient ]
    exactWeightSymmetry := True
    modularLabelsMayBeNonfaithful := True }

theorem sourceTreeOrbitPolicy_hasReflection :
    OrbitGenerator.phaseReflection ∈ sourceTreeOrbitPolicy.generators := by
  decide

end Think.RadoProjectedModularHeatflow
