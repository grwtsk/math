# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SemanticRealizationAdapter.Variantad5675d83e6449ced476dfe93c5b80db9038395b22c291e8c58821ef7875ffa4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc53771b30db4edea118f768796612184a20f70e` · SHA-256 `6c532c635b70118cf1994d468c9c3dbeae7a13e5715c8db93edc341897f89169`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CertifiedPartialRealizationOfCoerciveSemanticRealization.Variant417cea18cd7dbbc2fbbcdd19181ccbd77a19e60b6428467f30e4e75bab714ade","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"417cea18cd7dbbc2fbbcdd19181ccbd77a19e60b6428467f30e4e75bab714ade","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CertifiedPartialRealizationOfCoerciveSemanticRealization.Variant417cea18cd7dbbc2fbbcdd19181ccbd77a19e60b6428467f30e4e75bab714ade","mathematical_subject":"Logic.Foundations","original_sha256":"417cea18cd7dbbc2fbbcdd19181ccbd77a19e60b6428467f30e4e75bab714ade","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/NeuralDiffusion/SemanticRealizationAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Hilbert.SemanticRealization
import Mathematics.NeuralDiffusion.SpectralOrbit

/-!
# Coercive semantic-realization adapter

The older diffuser interface requires an injective real-linear encoder and a
partial decoder.  The canonical semantic realization can satisfy that
interface only through a coercive lower bound; positive semidefiniteness plus
an upper bound is insufficient.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CertifiedPartialRealizationOfCoerciveSemanticRealization.Variant417cea18cd7dbbc2fbbcdd19181ccbd77a19e60b6428467f30e4e75bab714ade

noncomputable section

namespace Mathematics.NeuralDiffusion

open Mathematics.Hilbert

universe u

/--
Coercivity supplies the injective real-linear encoder and its exact inverse on
the encoded range.
-/
def CertifiedPartialRealization.ofCoerciveSemanticRealization
    {Atom : Type u}
    {data : Concept.QuotientNormData Atom}
    {kernel : Kernel.PositiveKernel Atom}
    (compatibility :
      CoerciveKernelCompatibility data kernel)
    (certificateAddress : ObjectAddress) :
    CertifiedPartialRealization
      (Concept.BanachCarrier data)
      (KernelSpace kernel) where
  encode :=
    (banachToHilbert compatibility.toKernelCompatibility).restrictScalars ℝ
  encode_injective := compatibility.injective
  decodeDomain :=
    Set.range
      ((banachToHilbert
        compatibility.toKernelCompatibility).restrictScalars ℝ)
  encoded_mem := fun value ↦ ⟨value, rfl⟩
  decode := fun encoded ↦
    Classical.choose encoded.property
  decode_encode := by
    intro value
    have chosenEquation :=
      Classical.choose_spec
        (show
          (banachToHilbert
              compatibility.toKernelCompatibility).restrictScalars ℝ
              value ∈
            Set.range
              ((banachToHilbert
                compatibility.toKernelCompatibility).restrictScalars ℝ)
          from ⟨value, rfl⟩)
    change
      banachToHilbert compatibility.toKernelCompatibility
          (Classical.choose _) =
        banachToHilbert compatibility.toKernelCompatibility value
      at chosenEquation
    exact compatibility.injective chosenEquation
  realizationCertificate := certificateAddress

end Mathematics.NeuralDiffusion
```
