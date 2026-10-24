-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PreservedTheorem.Variant108182baa78cdbbf21524774ad4c995ac33e4b84d479192a2b9019115d722181","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"108182baa78cdbbf21524774ad4c995ac33e4b84d479192a2b9019115d722181","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PreservedTheorem.Variant108182baa78cdbbf21524774ad4c995ac33e4b84d479192a2b9019115d722181","mathematical_subject":"Computation.DataStructures","original_sha256":"108182baa78cdbbf21524774ad4c995ac33e4b84d479192a2b9019115d722181","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Reflection/TheoremPreservation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Proof
import Mathematics.Reflection.BuildCheck

/-! # Kernel-level theorem preservation -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PreservedTheorem.Variant108182baa78cdbbf21524774ad4c995ac33e4b84d479192a2b9019115d722181

namespace Mathematics.Reflection

/-- One proposition certified before and after the target-native patch. -/
structure PreservedTheorem where
  statement : Prop
  sourceEnvironment : Authority.FrozenKernelEnvironment
  targetEnvironment : Authority.FrozenKernelEnvironment
  before :
    Authority.AcceptedKernelCertificate sourceEnvironment statement
  after :
    Authority.AcceptedKernelCertificate targetEnvironment statement

/-- Complete declared theorem cone preserved by a patch. -/
structure TheoremPreservationCheck (patch : Patch) where
  requiredBefore : List ObjectAddress
  preserved : List PreservedTheorem
  coverage :
    ∀ certificateAddress,
      certificateAddress ∈ requiredBefore ↔
        ∃ witness ∈ preserved,
          witness.before.certificateAddress = certificateAddress
  checkDigest : Digest

namespace PreservedTheorem

theorem target_statement
    (preserved : PreservedTheorem) :
    preserved.statement :=
  preserved.after.proves

theorem target_sorry_absent
    (preserved : PreservedTheorem) :
    "sorryAx" ∉ preserved.after.audit.axiomClosure.axioms :=
  preserved.after.audit.axiomClosure.sorryAxAbsent

end PreservedTheorem

end Mathematics.Reflection
