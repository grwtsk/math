# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseIndex.Variantf0ee674f33aedada6e86ebfaa643fe7a3a090aa0ad2b0308216422ee0f4a8ca1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `deba4aa999776601dcc7c9c2f2d79e1de838a435` · SHA-256 `651120d807f257589a1f27e83b650f74f3b5541a7ae8074c986f309bfeff8e2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseLfunctionCenterEqSpectralPivot.Variant1b8b69441f5876b7feec9ddb7276762174693f722964b5d60d09f52e114322b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b8b69441f5876b7feec9ddb7276762174693f722964b5d60d09f52e114322b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BaseCaseLfunctionCenterEqSpectralPivot.Variant1b8b69441f5876b7feec9ddb7276762174693f722964b5d60d09f52e114322b5","mathematical_subject":"Foundations.Unclassified","original_sha256":"1b8b69441f5876b7feec9ddb7276762174693f722964b5d60d09f52e114322b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/BaseCaseIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.BaseCaseIndex

/-!
# Folder.Theorem.DerivedSheaf.BaseCaseIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case index facts, not BinaryMatrix data.
Ontology: base.derived_index
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseLfunctionCenterEqSpectralPivot.Variant1b8b69441f5876b7feec9ddb7276762174693f722964b5d60d09f52e114322b5

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem base_case_lfunction_center_eq_spectralPivot
    (D : Folder.DerivedSheaf.BaseCaseLFunctionData) :
    D.normalizedCriticalCenter = Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.base_lfunction_center_is_spectral_pivot D

theorem base_case_lfunction_central_value_nonzero
    (D : Folder.DerivedSheaf.BaseCaseLFunctionData) :
    D.centralValueNonzero :=
  Folder.DerivedSheaf.base_lfunction_central_value_nonzero D

theorem base_case_euler_nonzero
    (B : Folder.DerivedSheaf.BaseCaseSectionComplex) :
    B.euler.value ≠ 0 :=
  Folder.DerivedSheaf.base_case_euler_nonzero B

theorem base_case_derived_index_euler_nonzero
    (I : Folder.DerivedSheaf.BaseCaseDerivedIndex) :
    I.derivedIndex.euler.value ≠ 0 :=
  Folder.DerivedSheaf.base_case_derived_index_euler_nonzero I

theorem base_case_derived_index_same_complex
    (I : Folder.DerivedSheaf.BaseCaseDerivedIndex) :
    I.derivedIndex.complex = I.base.complex :=
  Folder.DerivedSheaf.base_case_derived_index_same_complex I

end DerivedSheaf
end Theorem
end Folder
```
