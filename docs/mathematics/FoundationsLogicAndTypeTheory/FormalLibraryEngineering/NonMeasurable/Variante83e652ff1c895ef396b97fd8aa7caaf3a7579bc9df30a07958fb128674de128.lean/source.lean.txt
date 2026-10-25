-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MeasurableSetStatus.Variant9af965a70b2ca2cb844e86714448a7e835a2ea2052cb19093734c584cf8f2968","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9af965a70b2ca2cb844e86714448a7e835a2ea2052cb19093734c584cf8f2968","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MeasurableSetStatus.Variant9af965a70b2ca2cb844e86714448a7e835a2ea2052cb19093734c584cf8f2968","mathematical_subject":"Foundations.Unclassified","original_sha256":"9af965a70b2ca2cb844e86714448a7e835a2ea2052cb19093734c584cf8f2968","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/Choice/NonMeasurable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.Choice.Vitali

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MeasurableSetStatus.Variant9af965a70b2ca2cb844e86714448a7e835a2ea2052cb19093734c584cf8f2968

namespace Surface
namespace Legacy

inductive MeasurableSetStatus where
  | certified
  | notYetFormalized
  | choiceDependent
deriving DecidableEq, Repr

def vitali_nonmeasurable_status : MeasurableSetStatus :=
  MeasurableSetStatus.notYetFormalized

end Legacy
end Surface
