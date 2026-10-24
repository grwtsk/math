-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderTraceExtensionCertificate.Variant57d551bb8936d7f0e9ae8c95d97f09ed3b519dbce71d3cfc8d9dcb657b050ca4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57d551bb8936d7f0e9ae8c95d97f09ed3b519dbce71d3cfc8d9dcb657b050ca4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CylinderTraceExtensionCertificate.Variant57d551bb8936d7f0e9ae8c95d97f09ed3b519dbce71d3cfc8d9dcb657b050ca4","mathematical_subject":"Foundations.Unclassified","original_sha256":"57d551bb8936d7f0e9ae8c95d97f09ed3b519dbce71d3cfc8d9dcb657b050ca4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Trace/TraceExtension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Trace.CylinderTrace

/-!
# Optional completed trace extension

The cylinder trace exists independently.  Extension requires an explicit norm,
boundedness, density, and uniqueness certificate.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderTraceExtensionCertificate.Variant57d551bb8936d7f0e9ae8c95d97f09ed3b519dbce71d3cfc8d9dcb657b050ca4

namespace Mathematics.StratifiedBoundary

structure CylinderTraceExtensionCertificate
    (Cylinder Completed Value : Type u) where
  embed : Cylinder → Completed
  cylinderTrace : Cylinder → Value
  extension : Completed → Value
  completionNormRef : String
  boundednessProofRef : String
  densityProofRef : String
  restricts :
    ∀ cylinder,
      extension (embed cylinder) = cylinderTrace cylinder
  unique :
    ∀ candidate : Completed → Value,
      (∀ cylinder,
        candidate (embed cylinder) = cylinderTrace cylinder) →
      candidate = extension

theorem cylinder_trace_extension_unique
    {Cylinder Completed Value : Type u}
    (certificate :
      CylinderTraceExtensionCertificate
        Cylinder Completed Value)
    (candidate : Completed → Value)
    (restricts :
      ∀ cylinder,
        candidate (certificate.embed cylinder) =
          certificate.cylinderTrace cylinder) :
    candidate = certificate.extension :=
  certificate.unique candidate restricts

end Mathematics.StratifiedBoundary
