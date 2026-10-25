# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittRealization.Variant65d03f49ed08137e608cd5b4e129842b7de6a9c0504db9c43d17c5c5ee161b16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddb9b6c1ef9499f2fc6dc25973a141dd43dc8b74` · SHA-256 `b6b383088502fcf4dadb32ddf99c16533a9bfea3b31717b99f5b6185fd204c73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittRealization.Variant27d2a5b50223fd47eb5c0d1edbb6a55da938fc4bd745a0353f489476ef75ecf6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27d2a5b50223fd47eb5c0d1edbb6a55da938fc4bd745a0353f489476ef75ecf6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WittRealization.Variant27d2a5b50223fd47eb5c0d1edbb6a55da938fc4bd745a0353f489476ef75ecf6","mathematical_subject":"Foundations.Unclassified","original_sha256":"27d2a5b50223fd47eb5c0d1edbb6a55da938fc4bd745a0353f489476ef75ecf6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/WittRealization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.WittValuedIndex
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.DerivedSheaf.WittRealization

Radiation role: research-boundary
BinaryMatrix spine: This module makes Witt elements downstream of K-theory, not BinaryMatrix data.
Ontology: derived.witt_realization
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittRealization.Variant27d2a5b50223fd47eb5c0d1edbb6a55da938fc4bd745a0353f489476ef75ecf6

namespace Folder
namespace DerivedSheaf

structure WittRealization
    (M : MellKTheory)
    (W : CrystallineIndex.WittComplex) where
  realize :
    KTheoryClass M.K → CrystallineIndex.WittElement W
  compatibleWithChernCharacter : Prop
  compatibleWithChernCharacter_certified : compatibleWithChernCharacter
  sourceLabel : String

structure KTheoryIndexWittImage
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    (R : WittRealization M W)
    (I : KTheoryIndex M) where
  image : CrystallineIndex.WittElement W
  image_eq : image = R.realize I.indexClass

theorem witt_realization_compatible
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    (R : WittRealization M W) :
    R.compatibleWithChernCharacter :=
  R.compatibleWithChernCharacter_certified

theorem ktheory_index_witt_image_eq
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    {R : WittRealization M W}
    {I : KTheoryIndex M}
    (X : KTheoryIndexWittImage R I) :
    X.image = R.realize I.indexClass :=
  X.image_eq

end DerivedSheaf
end Folder
```
