-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.StructureAuditNameParts.Varianta39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.StructureAuditNameParts.Varianta39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/a3/a39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7--RieszZeroSummabilityEnvironment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

/-!
Local attribution: grwtsk contributors.
Boundary split of math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec, blob 67cd9228cc940c432cfa22621c0c9c5c638fc86d.
Retained definitions/policies keep their original scope; the operational driver
is maintained in Noe at tools/math/relocated/GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RieszZeroSummabilityEnvironmentNamespaced.lean.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
-/

namespace GRWTSK.Topology.GeneralTopology.StructureAuditNameParts.Varianta39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7

open Lean

def structureAuditMaintainedModule (name : Name) : Bool :=
  let text := name.toString
  text == "FormalResearch.RiemannHypothesis.RieszZeroSummability"

/-- The historical audit permits exactly these ambient axioms. -/
def structureAuditAllowedAxioms : List Name :=
  [``propext, ``Classical.choice, ``Quot.sound]

/-- Static exclusion predicate; evaluating it is not an axiom audit. -/
def structureAuditForbiddenAxiom (axiomName : Name) : Bool :=
  axiomName != ``propext && axiomName != ``Classical.choice && axiomName != ``Quot.sound

end GRWTSK.Topology.GeneralTopology.StructureAuditNameParts.Varianta39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7
