# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectrumObject.Variant28e715301ce33841d7b526395cee6ac62acd0672763ad333639b86b75342b39d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `324c79fe1da66f4b7d576527dd79b46fcdb6e414` · SHA-256 `3c2068405bc72e04e753576ba69ea58ec6a6ca61b668d338ad4c68230e1e4aea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectrumObjectStable.Variant6b223d39e584cbc7b6d44d129f7498387c8d18deb0095b1b06fc3b9719cf9d44","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b223d39e584cbc7b6d44d129f7498387c8d18deb0095b1b06fc3b9719cf9d44","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SpectrumObjectStable.Variant6b223d39e584cbc7b6d44d129f7498387c8d18deb0095b1b06fc3b9719cf9d44","mathematical_subject":"Foundations.Unclassified","original_sha256":"6b223d39e584cbc7b6d44d129f7498387c8d18deb0095b1b06fc3b9719cf9d44","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/AdelicInfinityTopos/SpectrumObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.Theorem.AdelicInfinityTopos.SpectrumObject

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectrum-object contract exposures.
Ontology: proof.adelic.spectrum_object
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectrumObjectStable.Variant6b223d39e584cbc7b6d44d129f7498387c8d18deb0095b1b06fc3b9719cf9d44

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace SpectrumObject

theorem spectrum_object_stable
    (X : Folder.AdelicInfinityTopos.SpectrumObject) :
    X.stable :=
  Folder.AdelicInfinityTopos.spectrum_object_stable X

theorem spectrum_morphism_preserves_stability
    {X Y : Folder.AdelicInfinityTopos.SpectrumObject}
    (f : Folder.AdelicInfinityTopos.SpectrumMorphism X Y) :
    f.preservesStableStructure :=
  Folder.AdelicInfinityTopos.spectrum_morphism_preserves_stability f

end SpectrumObject
end AdelicInfinityTopos
end Theorem
end Folder
```
