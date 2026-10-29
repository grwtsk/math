-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SnapshotCertifiedFixedPoint.Variantb94f48ce5f17dfdb03bbbf68bf92151c75de562043a83240ba64b55723fd3e81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b94f48ce5f17dfdb03bbbf68bf92151c75de562043a83240ba64b55723fd3e81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SnapshotCertifiedFixedPoint.Variantb94f48ce5f17dfdb03bbbf68bf92151c75de562043a83240ba64b55723fd3e81","mathematical_subject":"Foundations.Unclassified","original_sha256":"b94f48ce5f17dfdb03bbbf68bf92151c75de562043a83240ba64b55723fd3e81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Operational/FixedPointAuthority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Authority.Kernel
import Mathematics.Operational.DiscreteFixedPoint

/-!
# Snapshot-scoped fixed-point authority

The exact equation, current snapshot capability, and accepted Lean-kernel
certificate remain inseparable.  Addresses and digests cannot construct this
record without the two sealed capabilities.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SnapshotCertifiedFixedPoint.Variantb94f48ce5f17dfdb03bbbf68bf92151c75de562043a83240ba64b55723fd3e81

namespace Mathematics.Operational

universe u

/-- An exact fixed point authorized in one frozen kernel environment. -/
structure SnapshotCertifiedFixedPoint
    {State : Type u}
    (environment : Authority.FrozenKernelEnvironment)
    (operator : VersionedOperator State) where
  fixedPoint : CertifiedFixedPoint operator
  activeSnapshot :
    Projection.VerifiedActiveSnapshot operator.snapshot
  kernelCertificate :
    Authority.AcceptedKernelCertificate environment
      (Function.IsFixedPt operator.step fixedPoint.point)

namespace SnapshotCertifiedFixedPoint

variable
    {State : Type u}
    {environment : Authority.FrozenKernelEnvironment}
    {operator : VersionedOperator State}

/-- Kernel elimination yields only the exact operator-indexed equation. -/
theorem fixed
    (certificate :
      SnapshotCertifiedFixedPoint environment operator) :
    Function.IsFixedPt operator.step certificate.fixedPoint.point :=
  certificate.kernelCertificate.proves

end SnapshotCertifiedFixedPoint

end Mathematics.Operational
