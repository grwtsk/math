# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FamiliesIndexClass.Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a25a5adf36d451b17e3b9fcb153a691dc5e10ec2` · SHA-256 `c594db293063658cf98dfba75546e612e86207bdabef438336b457b5b3d28da8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticFamily.Variantafd2b8a19bbf824f5bfd6ae4abb06fcc59eabf8a8b1503354697fc4e5c6c7ea7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"afd2b8a19bbf824f5bfd6ae4abb06fcc59eabf8a8b1503354697fc4e5c6c7ea7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ArithmeticFamily.Variantafd2b8a19bbf824f5bfd6ae4abb06fcc59eabf8a8b1503354697fc4e5c6c7ea7","mathematical_subject":"Foundations.Unclassified","original_sha256":"afd2b8a19bbf824f5bfd6ae4abb06fcc59eabf8a8b1503354697fc4e5c6c7ea7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/FamiliesIndexClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.KTheoryIndex
import Folder.DerivedSheaf.ModuliStackKTheory

/-!
# Folder.CanonicalPath.FamiliesIndexClass

Radiation role: research-boundary
BinaryMatrix spine: This module weakens pointwise nonzero targets to a families index class.
Ontology: canonical.families_index
Pivot role: spectral
Zero typology: k-zero
Contract boundary: contract
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticFamily.Variantafd2b8a19bbf824f5bfd6ae4abb06fcc59eabf8a8b1503354697fc4e5c6c7ea7

namespace Folder
namespace CanonicalPath

/--
An arithmetic family with a relevance predicate over its parameter space.
-/
structure ArithmeticFamily where
  ParameterSpace : Type
  Fiber : ParameterSpace → Type
  relevant : ParameterSpace → Prop
  sourceLabel : String

/--
A family-level index class.

This is deliberately weaker than pointwise universal nonvanishing. It records a
nontrivial class over the family and a supplied specialization relation to
fiberwise indices.
-/
structure FamiliesIndexClass
    (M : DerivedSheaf.MellKTheory)
    (F : ArithmeticFamily) where
  indexAt :
    ∀ x : F.ParameterSpace, F.relevant x → DerivedSheaf.KTheoryIndex M
  familyClass : DerivedSheaf.KTheoryClass M.K
  specializesToFibers : Prop
  specializesToFibers_certified : specializesToFibers
  nontrivialAsFamilyClass : Prop
  nontrivialAsFamilyClass_certified : nontrivialAsFamilyClass
  sourceLabel : String

theorem families_index_nontrivial
    {M : DerivedSheaf.MellKTheory}
    {F : ArithmeticFamily}
    (I : FamiliesIndexClass M F) :
    I.nontrivialAsFamilyClass :=
  I.nontrivialAsFamilyClass_certified

theorem families_index_specializes
    {M : DerivedSheaf.MellKTheory}
    {F : ArithmeticFamily}
    (I : FamiliesIndexClass M F) :
    I.specializesToFibers :=
  I.specializesToFibers_certified

end CanonicalPath
end Folder
```
