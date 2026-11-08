-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.StructureAuditNameParts.Variant87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.StructureAuditNameParts.Variant87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4ae","mathematical_subject":"Topology.GeneralTopology","original_sha256":"87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/87/87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4ae--SourceBoundaryLayerEnvironment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

/-!
Local attribution: grwtsk contributors.
Boundary split of math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec, blob 85f28bbeed0515d89fdcae2652fba491a8d65865.
Retained definitions/policies keep their original scope; the operational driver
is maintained in Noe at tools/math/relocated/GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SourceBoundaryLayerEnvironmentNamespaced.lean.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
-/

namespace GRWTSK.Topology.GeneralTopology.StructureAuditNameParts.Variant87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4ae

open Lean

def structureAuditMaintainedModule (name : Name) : Bool :=
  let text := name.toString
  text == "FormalResearch.RiemannHypothesis.SourceBoundaryLayer"

/-- The historical audit permits exactly these ambient axioms. -/
def structureAuditAllowedAxioms : List Name :=
  [``propext, ``Classical.choice, ``Quot.sound]

/-- Static exclusion predicate; evaluating it is not an axiom audit. -/
def structureAuditForbiddenAxiom (axiomName : Name) : Bool :=
  axiomName != ``propext && axiomName != ``Classical.choice && axiomName != ``Quot.sound

end GRWTSK.Topology.GeneralTopology.StructureAuditNameParts.Variant87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4ae
