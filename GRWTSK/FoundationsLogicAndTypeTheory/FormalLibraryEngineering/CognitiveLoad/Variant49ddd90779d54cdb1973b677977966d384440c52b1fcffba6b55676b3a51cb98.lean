-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StratifiedCognitiveLoad.Variantaf1cd0eb4d83d221be425f20df4051fce968e4a6db8d83931e4f43523b7a0c49","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af1cd0eb4d83d221be425f20df4051fce968e4a6db8d83931e4f43523b7a0c49","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.StratifiedCognitiveLoad.Variantaf1cd0eb4d83d221be425f20df4051fce968e4a6db8d83931e4f43523b7a0c49","mathematical_subject":"Foundations.Unclassified","original_sha256":"af1cd0eb4d83d221be425f20df4051fce968e4a6db8d83931e4f43523b7a0c49","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Presentation/CognitiveLoad.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Advisory stratified cognitive load

The score controls disclosure only and is not mathematical evidence.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StratifiedCognitiveLoad.Variantaf1cd0eb4d83d221be425f20df4051fce968e4a6db8d83931e4f43523b7a0c49

namespace Mathematics.StratifiedBoundary

structure StratifiedCognitiveLoad where
  prerequisiteLoad : Nat
  localLoad : Nat
  relationLoad : Nat
  unknownLoad : Nat
  operationLoad : Nat
  verificationLoad : Nat
  bitLoad : Nat
  obstructionLoad : Nat
  stratumLoad : Nat
  successorLoad : Nat
  limitLoad : Nat
  traceLoad : Nat

def StratifiedCognitiveLoad.total
    (load : StratifiedCognitiveLoad) : Nat :=
  load.prerequisiteLoad +
  load.localLoad +
  load.relationLoad +
  load.unknownLoad +
  load.operationLoad +
  load.verificationLoad +
  load.bitLoad +
  load.obstructionLoad +
  load.stratumLoad +
  load.successorLoad +
  load.limitLoad +
  load.traceLoad

end Mathematics.StratifiedBoundary
