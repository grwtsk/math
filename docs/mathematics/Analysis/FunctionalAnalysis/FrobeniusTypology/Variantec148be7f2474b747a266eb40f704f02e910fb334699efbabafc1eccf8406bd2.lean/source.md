# Complete source: GRWTSK.Analysis.FunctionalAnalysis.FrobeniusTypology.Variantec148be7f2474b747a266eb40f704f02e910fb334699efbabafc1eccf8406bd2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28336feddf3ad5e8dfb342c788172b797463bce5` · SHA-256 `282ab17684bd3b8aa8ac8ee6bf81a4c3baf1ffd60c9aae7cbc7791f7e82dcac7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.AnalyticFrobeniusEnergy.Variantbef729983f9d5b3f0fb2e9444e528a3930d597ce0fe0447e16b2ef73a99d327b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bef729983f9d5b3f0fb2e9444e528a3930d597ce0fe0447e16b2ef73a99d327b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AnalyticFrobeniusEnergy.Variantbef729983f9d5b3f0fb2e9444e528a3930d597ce0fe0447e16b2ef73a99d327b","mathematical_subject":"Foundations.Unclassified","original_sha256":"bef729983f9d5b3f0fb2e9444e528a3930d597ce0fe0447e16b2ef73a99d327b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/FrobeniusTypology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Tensor
import Folder.Research.ArithmeticBoundary

/-!
# Folder.Core.FrobeniusTypology

Radiation role: core-architecture
BinaryMatrix spine: This module separates analytic Frobenius energy from arithmetic Frobenius witnesses downstream of finite carriers.
Ontology: core.frobenius_typology
Pivot role: none
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.AnalyticFrobeniusEnergy.Variantbef729983f9d5b3f0fb2e9444e528a3930d597ce0fe0447e16b2ef73a99d327b

namespace Folder
namespace Core

structure AnalyticFrobeniusEnergy where
  carrier : Type
  normSq : carrier → ℝ
  nonnegative : ∀ x, 0 ≤ normSq x

structure ArithmeticFrobeniusWitness where
  Curve : Type
  q : Nat
  trace : Int
  hasseBound : Prop
  source : String
  certified : hasseBound

theorem analytic_frobenius_nonnegative
    (F : AnalyticFrobeniusEnergy)
    (x : F.carrier) :
    0 ≤ F.normSq x :=
  F.nonnegative x

theorem arithmetic_frobenius_has_bound
    (W : ArithmeticFrobeniusWitness) :
    W.hasseBound :=
  W.certified

end Core
end Folder
```
