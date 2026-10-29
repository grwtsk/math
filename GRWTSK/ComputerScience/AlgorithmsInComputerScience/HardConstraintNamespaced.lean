-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HardConstraint.Variant0b4dff4672137a748a1dd5b27956d3159053e872c8781c167dee60aecdcb6cd5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b4dff4672137a748a1dd5b27956d3159053e872c8781c167dee60aecdcb6cd5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HardConstraint.Variant0b4dff4672137a748a1dd5b27956d3159053e872c8781c167dee60aecdcb6cd5","mathematical_subject":"Computation.DataStructures","original_sha256":"0b4dff4672137a748a1dd5b27956d3159053e872c8781c167dee60aecdcb6cd5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/HardConstraint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Relaxation.State

/-! # Hard constraints -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HardConstraint.Variant0b4dff4672137a748a1dd5b27956d3159053e872c8781c167dee60aecdcb6cd5

namespace Mathematics.Relaxation

/-- A named predicate that every admitted relaxation state must preserve. -/
structure HardConstraint where
  constraintId : StableId
  Holds : State → Prop
  statementDigest : Digest

/-- Finite conjunction of hard constraints. -/
def SatisfiesAll
    (constraints : List HardConstraint)
    (state : State) : Prop :=
  ∀ constraint ∈ constraints, constraint.Holds state

end Mathematics.Relaxation
