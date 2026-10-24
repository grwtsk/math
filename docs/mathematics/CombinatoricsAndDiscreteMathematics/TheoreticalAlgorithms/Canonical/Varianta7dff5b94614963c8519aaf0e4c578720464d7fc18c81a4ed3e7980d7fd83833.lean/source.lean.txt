-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompressionRule.Varianta9af88cd2ef41d53f4e7a2e803d152ccfb78961d2f8317f1d007c9573bc7f514","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9af88cd2ef41d53f4e7a2e803d152ccfb78961d2f8317f1d007c9573bc7f514","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CompressionRule.Varianta9af88cd2ef41d53f4e7a2e803d152ccfb78961d2f8317f1d007c9573bc7f514","mathematical_subject":"Computation.DataStructures","original_sha256":"a9af88cd2ef41d53f4e7a2e803d152ccfb78961d2f8317f1d007c9573bc7f514","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/Canonical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Prune


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompressionRule.Varianta9af88cd2ef41d53f4e7a2e803d152ccfb78961d2f8317f1d007c9573bc7f514

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

def idealPrunedTree : List String :=
  [ "formal/Think/Pipeline/Phases/PhaseTable.lean"
  , "formal/Think/Pipeline/Phases/PhaseSymmetry.lean"
  , "formal/Think/Pipeline/Phases/PhaseResidue.lean"
  , "formal/Think/Poles/Request.lean"
  , "formal/Think/Poles/Carrier.lean"
  , "formal/Think/Poles/Lowering.lean"
  , "formal/Think/Poles/Trace.lean"
  , "formal/Think/Poles/Compact.lean"
  , "formal/Think/Poles/Classifier.lean"
  , "formal/Think/Poles/Scheduler.lean"
  , "formal/Think/Poles/Cluster.lean"
  , "formal/Think/Poles/Boundary.lean"
  , "formal/Think/SourceTree/RadoProjected/Canonical.lean"
  ]

theorem idealPrunedTree_count :
    idealPrunedTree.length = 13 := by
  rfl

structure CompressionRule where
  originalPattern : String
  canonicalTarget : String
  action : String
deriving DecidableEq, Repr

def compressionRules : List CompressionRule :=
  [ { originalPattern := "Pipeline/Phases/PhaseNN_*.lean"
      canonicalTarget := "Pipeline/Phases/PhaseTable.lean"
      action := "fold into indexed phase records" }
  , { originalPattern := "Poles/*Pole/*.lean"
      canonicalTarget := "Poles/<Family>.lean"
      action := "merge family" }
  , { originalPattern := "ResearchSurvey/<topic>.lean"
      canonicalTarget := "ResearchSurvey/Corpus.lean"
      action := "convert to SurveyEntry" }
  , { originalPattern := "Think/FiniteWitnessResidue/Tests/*Smoke.lean"
      canonicalTarget := "Think/FiniteWitnessResidue/Tests/Smoke.lean"
      action := "merge smoke suites" }
  ]

theorem compressionRules_count :
    compressionRules.length = 4 := by
  rfl

end Think.RadoProjectedModularHeatflow
