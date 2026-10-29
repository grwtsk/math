-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FieldSpectrumReference.Variant2b091635a3072037dd1d9d4f1e69a4e2f59379b46d29a2747c336213cacd04ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b091635a3072037dd1d9d4f1e69a4e2f59379b46d29a2747c336213cacd04ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FieldSpectrumReference.Variant2b091635a3072037dd1d9d4f1e69a4e2f59379b46d29a2747c336213cacd04ad","mathematical_subject":"Foundations.Unclassified","original_sha256":"2b091635a3072037dd1d9d4f1e69a4e2f59379b46d29a2747c336213cacd04ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.think/Think/Kakeya/Etale/FieldSpectrum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Kakeya.Gauge.Reference


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FieldSpectrumReference.Variant2b091635a3072037dd1d9d4f1e69a4e2f59379b46d29a2747c336213cacd04ad

namespace Think.Kakeya.Etale

/-!
Reference-layer labels for the arithmetic étale site.

These definitions deliberately distinguish `K_field` from the browser's
finite-measurement tolerance `K128`.
-/

structure FieldSpectrumReference where
  baseFieldLabel : String
  specLabel : String
deriving Repr, DecidableEq

def specKFieldEtale : FieldSpectrumReference :=
  { baseFieldLabel := "K_field", specLabel := "Spec(K_field)_ét" }

def absoluteGaloisGroupLabel : String :=
  "G_K_field"

def zariskiTooCoarseForClientArithmeticInvariant : String :=
  "Zariski topology is too coarse for this client arithmetic invariant role, not globally invalid."

end Think.Kakeya.Etale
