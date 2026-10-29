-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.PNTInputs.Variant4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.PNTInputs.Variant4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/ClassicalTargets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.ZetaHalfPlaneScaffold

/-!
# Folder.Rebuild.AnalyticNumberTheory.ClassicalTargets

Classical analytic number theory targets and anchors.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.PNTInputs.Variant4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

structure PNTInputs where
  zetaMeromorphicContinuation : Prop
  zetaSimplePoleAtOne : Prop
  zetaNoZerosOnReOne : Prop
  tauberianTheorem : Prop

def PrimeNumberTheoremAnchor : ClassicalAnchor :=
  pntAnchor

def PNTClassicalRouteAnchor : ClassicalAnchor where
  shortName := "Classical route to prime asymptotics"
  paperOrBook := "Hadamard, de la Vallee Poussin, and Tauberian references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "Meromorphic continuation, a simple pole at one, a no-zero boundary statement, and a Tauberian theorem form the classical route."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl

end AnalyticNumberTheory
end Rebuild
end Folder
