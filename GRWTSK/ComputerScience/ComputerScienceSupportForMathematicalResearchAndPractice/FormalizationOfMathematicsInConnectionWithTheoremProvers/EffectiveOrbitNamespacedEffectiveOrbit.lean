-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EffectiveOrbit.Variant8c116feeb07762b5fd3a55a029cf983eb354edc80653cc448619e89f2db11b7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c116feeb07762b5fd3a55a029cf983eb354edc80653cc448619e89f2db11b7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EffectiveOrbit.Variant8c116feeb07762b5fd3a55a029cf983eb354edc80653cc448619e89f2db11b7a","mathematical_subject":"Foundations.Unclassified","original_sha256":"8c116feeb07762b5fd3a55a029cf983eb354edc80653cc448619e89f2db11b7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Orbit/EffectiveOrbit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Orbit.Stabilizer
import Mathematics.Orbit.TorusClosure

/-! # Effective orbit reports -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EffectiveOrbit.Variant8c116feeb07762b5fd3a55a029cf983eb354edc80653cc448619e89f2db11b7a

namespace Mathematics.Orbit

structure EffectiveOrbit where
  status : Status
  observedPrefixLength : Nat
  stabilizerDigest : Option Digest
  certificate : Option CertificateId
  deriving DecidableEq, Repr

def EffectiveOrbit.finitePrefixSafe (report : EffectiveOrbit) : Prop :=
  report.certificate.isNone → report.status = .unresolved ∨
    ∃ period, report.status = .finite period

end Mathematics.Orbit
