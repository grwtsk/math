# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KTheoryClass.Variantd0fe2a197da07c02a48fb79c0c7fc9197eb79d5baff2c281dee1db01cc6c8588

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c587021c72227a90e83f6f89538e670eedac6eb6` · SHA-256 `3c3d155c88b45229bb6dd1862d3062013e3dc9d81df369d87f094b7053b93e92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KTheorySpace.Variant32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.KTheorySpace.Variant32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa","mathematical_subject":"Foundations.Unclassified","original_sha256":"32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/KTheoryClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.DerivedSheaf.KTheoryClass

Radiation role: research-boundary
BinaryMatrix spine: This module records K-theory class data, not BinaryMatrix carriers.
Ontology: derived.k_theory_class
Pivot role: none
Zero typology: k_zero
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KTheorySpace.Variant32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa

namespace Folder
namespace DerivedSheaf

structure KTheorySpace where
  Base : Type _
  Class : Type _
  zero : Class
  add : Class → Class → Class
  neg : Class → Class
  label : String

structure KTheoryClass
    (K : KTheorySpace) where
  value : K.Class
  label : String

def KTheoryClass.IsZero
    {K : KTheorySpace}
    (x : KTheoryClass K) : Prop :=
  x.value = K.zero

def KTheoryClass.Nonzero
    {K : KTheorySpace}
    (x : KTheoryClass K) : Prop :=
  ¬ x.IsZero

theorem ktheory_class_has_value
    {K : KTheorySpace}
    (x : KTheoryClass K) :
    ∃ v : K.Class, v = x.value :=
  ⟨x.value, rfl⟩

end DerivedSheaf
end Folder
```
