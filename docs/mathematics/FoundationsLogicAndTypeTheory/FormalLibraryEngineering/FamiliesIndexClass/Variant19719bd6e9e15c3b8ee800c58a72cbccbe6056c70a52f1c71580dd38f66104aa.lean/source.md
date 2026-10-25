# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FamiliesIndexClass.Variant19719bd6e9e15c3b8ee800c58a72cbccbe6056c70a52f1c71580dd38f66104aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bd4ae0f65a6ce71ba0a309a5c245e56352af6c4` · SHA-256 `ccf14af37c263aeef02019ab0470038785bb6418736fa9114de3bf771042fb38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FamiliesIndexNontrivial.Variant85ee1c44291a4b220663f3111612dca2a90b0f436503e5917ca3db757412a356","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85ee1c44291a4b220663f3111612dca2a90b0f436503e5917ca3db757412a356","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FamiliesIndexNontrivial.Variant85ee1c44291a4b220663f3111612dca2a90b0f436503e5917ca3db757412a356","mathematical_subject":"Foundations.Unclassified","original_sha256":"85ee1c44291a4b220663f3111612dca2a90b0f436503e5917ca3db757412a356","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/FamiliesIndexClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.GlobalIndexNonzeroBoundary

/-!
# Folder.Theorem.CanonicalPath.FamiliesIndexClass

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports families-index class facts.
Ontology: proof.canonical_path.families_index
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FamiliesIndexNontrivial.Variant85ee1c44291a4b220663f3111612dca2a90b0f436503e5917ca3db757412a356

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem families_index_nontrivial
    {M : Folder.DerivedSheaf.MellKTheory}
    {F : Folder.CanonicalPath.ArithmeticFamily}
    (I : Folder.CanonicalPath.FamiliesIndexClass M F) :
    I.nontrivialAsFamilyClass :=
  Folder.CanonicalPath.families_index_nontrivial I

theorem families_index_specializes
    {M : Folder.DerivedSheaf.MellKTheory}
    {F : Folder.CanonicalPath.ArithmeticFamily}
    (I : Folder.CanonicalPath.FamiliesIndexClass M F) :
    I.specializesToFibers :=
  Folder.CanonicalPath.families_index_specializes I

theorem pointwise_global_index_nonzero_if_supplied
    {M : Folder.DerivedSheaf.MellKTheory}
    {F : Folder.CanonicalPath.ArithmeticFamily}
    (T : Folder.CanonicalPath.PointwiseGlobalIndexNonzeroTarget M F)
    (h : T.pointwiseNonzero) :
    T.pointwiseNonzero :=
  Folder.CanonicalPath.pointwise_global_index_nonzero_if_supplied T h

end CanonicalPath
end Theorem
end Folder
```
