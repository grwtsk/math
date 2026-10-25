# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseSectionComplex.Variant8edae9c96bec18383518066335fdf7881664f8357d56c95844fb2c5e1de5b2b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9e8d600f377665fdf1c48df7ab681838a83f16f` · SHA-256 `493245b0df2d409a1cea8a936aba49b40473b8fa57642e65a8f70b45579804c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertifiedBaseCurveLvalueNonzero.Variant48224ae262a35e49887e2eaed8a0b6cdb99bb256eef15f8f2050af26fc59957b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48224ae262a35e49887e2eaed8a0b6cdb99bb256eef15f8f2050af26fc59957b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CertifiedBaseCurveLvalueNonzero.Variant48224ae262a35e49887e2eaed8a0b6cdb99bb256eef15f8f2050af26fc59957b","mathematical_subject":"Foundations.Unclassified","original_sha256":"48224ae262a35e49887e2eaed8a0b6cdb99bb256eef15f8f2050af26fc59957b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/BaseCaseSectionComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.BaseCaseSectionComplex

/-!
# Folder.Theorem.DerivedSheaf.BaseCaseSectionComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case section-complex facts, not BinaryMatrix data.
Ontology: base.section_complex
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertifiedBaseCurveLvalueNonzero.Variant48224ae262a35e49887e2eaed8a0b6cdb99bb256eef15f8f2050af26fc59957b

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem certified_base_curve_lvalue_nonzero
    (E : Folder.DerivedSheaf.CertifiedBaseCaseEllipticCurve) :
    E.lfunction.centralValueNonzero :=
  Folder.DerivedSheaf.certified_base_curve_lvalue_nonzero E

theorem certified_base_curve_center_normalized
    (E : Folder.DerivedSheaf.CertifiedBaseCaseEllipticCurve) :
    E.normalization.normalize E.lfunction.rawCriticalCenter =
      Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.certified_base_curve_center_normalized E

theorem base_case_euler_nonzero
    (B : Folder.DerivedSheaf.BaseCaseSectionComplex) :
    B.euler.value ≠ 0 :=
  Folder.DerivedSheaf.base_case_euler_nonzero B

theorem base_case_complex_realizes_lfunction
    (B : Folder.DerivedSheaf.BaseCaseSectionComplex) :
    B.complexRealizesLFunction :=
  Folder.DerivedSheaf.base_case_complex_realizes_lfunction B

end DerivedSheaf
end Theorem
end Folder
```
