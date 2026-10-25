-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AcceptanceNode.Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AcceptanceNode.Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9","mathematical_subject":"Foundations.Unclassified","original_sha256":"fb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/AcceptanceDAG.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.RefereeGate
import Folder.CanonicalPath.ZetaRHTarget

/-!
# Folder.CanonicalPath.AcceptanceDAG

Radiation role: research-boundary
BinaryMatrix spine: This module records the RH acceptance DAG, not BinaryMatrix data.
Ontology: canonical.acceptance_dag
Pivot role: spectral
Zero typology: l-function
Contract boundary: referee-matrix
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AcceptanceNode.Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9

namespace Folder
namespace CanonicalPath

inductive AcceptanceNode where
  | classicalZetaH0Equivalence
  | exactArithmeticObjectForZeta
  | globalNonzeroKIndex
  | rodgersTaoDerivedQuasiIso
  | derivedTransportPreservesIndex
  | diracRealizesZetaZeroDistribution
  | kIndexTraceEqualsDiracTrace
  | nonzeroKIndexIffBoundaryAlignment
  | boundaryToCriticalLineBridge
deriving DecidableEq, Repr

/--
Binary referee acceptance DAG.

Every node must be proved, no conditional contract may remain in the final
dependency cone, and the theorem must specialize exactly to zeta.
-/
structure RHAcceptanceDAG where
  nodeProved : AcceptanceNode → Prop
  allNodesProved : Prop
  allNodesProved_certified : allNodesProved
  noConditionalContracts : Prop
  noConditionalContracts_certified : noConditionalContracts
  specializesExactlyToZeta : Prop
  specializesExactlyToZeta_certified : specializesExactlyToZeta
  finalTheoremUsesOnlyProvedInputs : Prop
  finalTheoremUsesOnlyProvedInputs_certified : finalTheoremUsesOnlyProvedInputs
  sourceLabel : String

theorem acceptance_dag_requires_all_nodes
    (D : RHAcceptanceDAG) :
    D.allNodesProved :=
  D.allNodesProved_certified

theorem acceptance_dag_requires_no_contracts
    (D : RHAcceptanceDAG) :
    D.noConditionalContracts :=
  D.noConditionalContracts_certified

theorem acceptance_dag_requires_zeta_specialization
    (D : RHAcceptanceDAG) :
    D.specializesExactlyToZeta :=
  D.specializesExactlyToZeta_certified

end CanonicalPath
end Folder
