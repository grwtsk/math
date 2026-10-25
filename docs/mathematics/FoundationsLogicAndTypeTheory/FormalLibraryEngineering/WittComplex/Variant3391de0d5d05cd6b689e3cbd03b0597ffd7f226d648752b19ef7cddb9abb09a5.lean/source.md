# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComplex.Variant3391de0d5d05cd6b689e3cbd03b0597ffd7f226d648752b19ef7cddb9abb09a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37953dc26d51258ddde42af496b90e93e879287c` · SHA-256 `75fb1e945f532f40dae6e8c21e9cbe94f4c109f32da1f084cd0f2cc4010a49cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComplexIsComplex.Variantcf18297f62de43b7600569eefc39d2881c7e90466fe742ea2ae4d65acfa98e09","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf18297f62de43b7600569eefc39d2881c7e90466fe742ea2ae4d65acfa98e09","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WittComplexIsComplex.Variantcf18297f62de43b7600569eefc39d2881c7e90466fe742ea2ae4d65acfa98e09","mathematical_subject":"Foundations.Unclassified","original_sha256":"cf18297f62de43b7600569eefc39d2881c7e90466fe742ea2ae4d65acfa98e09","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineIndex/WittComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.WittComplex

/-!
# Folder.Theorem.CrystallineIndex.WittComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Witt-complex contract exposure facts.
Ontology: proof.crystalline_index.witt_complex
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComplexIsComplex.Variantcf18297f62de43b7600569eefc39d2881c7e90466fe742ea2ae4d65acfa98e09

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace WittComplex

theorem witt_complex_is_complex
    (W : Folder.CrystallineIndex.WittComplex) :
    W.isComplex :=
  Folder.CrystallineIndex.witt_complex_is_complex W

theorem witt_element_has_degree
    {W : Folder.CrystallineIndex.WittComplex}
    (x : Folder.CrystallineIndex.WittElement W) :
    ∃ d : W.Degree, x.degree = d :=
  Folder.CrystallineIndex.witt_element_has_degree x

end WittComplex
end CrystallineIndex
end Theorem
end Folder
```
