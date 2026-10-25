# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CohomologyClass.Variant46280316707be2bb4a134b15fe94283d0201e61225914c26e52e7112c340a3a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32a272226e8fabfd66228d5a78a32c8d88681468` · SHA-256 `8857eaf5e433d0050b1c33234767f707ecb304c90ac427034be81319011e606c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClassEqualityCompatible.Variantfc5d8387d2dd37ee37ae4fb3e040b6c7c7b3033af5fa770a1295e227d416268d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc5d8387d2dd37ee37ae4fb3e040b6c7c7b3033af5fa770a1295e227d416268d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ClassEqualityCompatible.Variantfc5d8387d2dd37ee37ae4fb3e040b6c7c7b3033af5fa770a1295e227d416268d","mathematical_subject":"Foundations.Unclassified","original_sha256":"fc5d8387d2dd37ee37ae4fb3e040b6c7c7b3033af5fa770a1295e227d416268d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineIndex/CohomologyClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.CohomologyClass
import Folder.CrystallineIndex.DeRhamWittBoundary

/-!
# Folder.Theorem.CrystallineIndex.CohomologyClass

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports cohomology-class and de Rham-Witt boundary facts.
Ontology: proof.crystalline_index.cohomology_class
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClassEqualityCompatible.Variantfc5d8387d2dd37ee37ae4fb3e040b6c7c7b3033af5fa770a1295e227d416268d

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace CohomologyClass

theorem class_equality_compatible
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {a b : Folder.CrystallineIndex.CohomologyClass H}
    (E : Folder.CrystallineIndex.ClassEquality a b) :
    E.compatible :=
  Folder.CrystallineIndex.class_equality_compatible E

theorem deRhamWitt_is_complex
    (W : Folder.CrystallineIndex.DeRhamWittComplexContract) :
    W.witt.isComplex :=
  Folder.CrystallineIndex.deRhamWitt_is_complex W

theorem deRhamWitt_identifies_with_crystalline_target
    (W : Folder.CrystallineIndex.DeRhamWittComplexContract) :
    W.identifiesWithCrystallineTarget :=
  Folder.CrystallineIndex.deRhamWitt_identifies_with_crystalline_target W

end CohomologyClass
end CrystallineIndex
end Theorem
end Folder
```
