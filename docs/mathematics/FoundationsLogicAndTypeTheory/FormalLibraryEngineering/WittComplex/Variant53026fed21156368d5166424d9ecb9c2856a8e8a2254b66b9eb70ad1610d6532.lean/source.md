# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComplex.Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f4110cbcc9088f0ff3eb72f8ac7ec49c82eb744` · SHA-256 `e2bb659c86e93ea7c123a749024e39721b50d506bfa7044226466f6dc37175ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComplex.Variant935de0ccdfa48c19ae890169af1f71b4683f22b1a20cc85180c9f5a2b16740de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"935de0ccdfa48c19ae890169af1f71b4683f22b1a20cc85180c9f5a2b16740de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WittComplex.Variant935de0ccdfa48c19ae890169af1f71b4683f22b1a20cc85180c9f5a2b16740de","mathematical_subject":"Foundations.Unclassified","original_sha256":"935de0ccdfa48c19ae890169af1f71b4683f22b1a20cc85180c9f5a2b16740de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineIndex/WittComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.CrystallineIndex.WittComplex

Radiation role: research-boundary
BinaryMatrix spine: This module records Witt-complex targets, not BinaryMatrix arithmetic.
Ontology: crystalline_index.witt_complex
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComplex.Variant935de0ccdfa48c19ae890169af1f71b4683f22b1a20cc85180c9f5a2b16740de

namespace Folder
namespace CrystallineIndex

/--
A contract-level Witt complex.

This is not a construction of the de Rham-Witt complex. It is the typed target
in which crystalline index classes live.
-/
structure WittComplex where
  Base : Type _
  Degree : Type _
  Element : Degree → Type _
  zero : ∀ d : Degree, Element d
  differential? : Option Type
  frobenius? : Option Type
  verschiebung? : Option Type
  isComplex : Prop
  isComplex_certified : isComplex
  sourceLabel : String

structure WittElement
    (W : WittComplex) where
  degree : W.Degree
  value : W.Element degree
  label : String

def WittElement.IsZero
    {W : WittComplex}
    (x : WittElement W) : Prop :=
  x.value = W.zero x.degree

def WittElement.Nonzero
    {W : WittComplex}
    (x : WittElement W) : Prop :=
  ¬ x.IsZero

theorem witt_complex_is_complex
    (W : WittComplex) :
    W.isComplex :=
  W.isComplex_certified

theorem witt_element_has_degree
    {W : WittComplex}
    (x : WittElement W) :
    ∃ d : W.Degree, x.degree = d :=
  ⟨x.degree, rfl⟩

end CrystallineIndex
end Folder
```
