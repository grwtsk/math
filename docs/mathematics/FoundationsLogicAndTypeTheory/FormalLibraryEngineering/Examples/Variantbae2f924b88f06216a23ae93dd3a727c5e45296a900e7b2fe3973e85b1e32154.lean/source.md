# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Examples.Variantbae2f924b88f06216a23ae93dd3a727c5e45296a900e7b2fe3973e85b1e32154

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `937da9bafb00c5d1920b251d80e1ced28b24f38a` · SHA-256 `715b446d2460e82f9414acac13554e3c052711dfd09519ab5cb2da8c7e7e5f50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boolean.Variant0974637318fd06c9c54cd4659f0a3378c426e32fcac70d213f41f280b9d8f624","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0974637318fd06c9c54cd4659f0a3378c426e32fcac70d213f41f280b9d8f624","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Boolean.Variant0974637318fd06c9c54cd4659f0a3378c426e32fcac70d213f41f280b9d8f624","mathematical_subject":"Foundations.Unclassified","original_sha256":"0974637318fd06c9c54cd4659f0a3378c426e32fcac70d213f41f280b9d8f624","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Examples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean
import Boolean.Cube.CertificateBoundary

/-!
# Boolean import examples

Small examples showing that the public Boolean surface and the explicit
certificate-boundary surface are independently importable.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boolean.Variant0974637318fd06c9c54cd4659f0a3378c426e32fcac70d213f41f280b9d8f624

namespace Boolean

example :
    Tree.eval (fun x : Fin 1 => decide (x = 0)) (.var (0 : Fin 1)) = true := by
  rfl

example (p : Tree (Fin 2)) :
    Formula.eval (fun _ : Fin 2 => false) (Tree.toFormula p) =
      Tree.eval (fun _ : Fin 2 => false) p := by
  simp

namespace Cube

example
    (report : SpectralDeterminantBoundary.BoundaryReport) :
    SpectralDeterminantBoundary.FiniteMobiusAuthority report ∨
      SpectralDeterminantBoundary.RequiresExternalAnalyticOrArithmeticCertificate
        report :=
  SpectralDeterminantBoundary.mobius_reducer_is_boundary_detector report

example :
    PrismaticProjection.stepChecked
      PrismaticProjection.exampleShapeUpdateWitness :=
  PrismaticProjection.example_stepChecked

example :
    PrismaticProjection.exampleShapeUpdateWitness.certificate.precisionSound :=
  PrismaticProjection.example_stepChecked_exposes_precision

example :
    PrismaticProjection.PrismaticComputed :=
  PrismaticProjection.examplePrismaticComputed

example :
    PrismaticProjection.ToroidalShadowState :=
  PrismaticProjection.examplePriorShadowState

end Cube

end Boolean
```
