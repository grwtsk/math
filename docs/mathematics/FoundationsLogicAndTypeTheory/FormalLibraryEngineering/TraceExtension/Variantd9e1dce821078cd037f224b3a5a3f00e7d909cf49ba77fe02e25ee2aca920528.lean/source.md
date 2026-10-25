# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceExtension.Variantd9e1dce821078cd037f224b3a5a3f00e7d909cf49ba77fe02e25ee2aca920528

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `586a931a415ada58e90423ff68f651007d77aef0` · SHA-256 `a773da4827574ce0624cf17fea3f3ff01ab63c4311d68a68435dafcb01abe9f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
