# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Adjacency.Variant305d4e9873f00c7cea4c41554957818ab5477a86d7f1fd8d2ffcebc1ff0ffedc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a4e12a5b843a14a894608149e3df58f164675de` · SHA-256 `cadd3265a8e2baf586ee7691a06876762a5805bc9c10002971a9cd69f97c46f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoordDiffOne.Variant350089c50d9ab36b097b6b0bb3931b7af93fbd4ae1f248219cbf1b99fd74c65e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"350089c50d9ab36b097b6b0bb3931b7af93fbd4ae1f248219cbf1b99fd74c65e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CoordDiffOne.Variant350089c50d9ab36b097b6b0bb3931b7af93fbd4ae1f248219cbf1b99fd74c65e","mathematical_subject":"Foundations.Unclassified","original_sha256":"350089c50d9ab36b097b6b0bb3931b7af93fbd4ae1f248219cbf1b99fd74c65e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Cellular/Adjacency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Cellular.Cube

/-!
# Folder.Cellular.Adjacency

Radiation role: cube-address
BinaryMatrix spine: This module generalizes BinaryMatrix indexing into finite cubical address spaces or adjacency data.
Ontology: cellular.adjacency
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoordDiffOne.Variant350089c50d9ab36b097b6b0bb3931b7af93fbd4ae1f248219cbf1b99fd74c65e

namespace Folder
namespace Cellular

def CoordDiffOne
    {d k : Nat}
    (x y : CubeAddress d k)
    (i : Fin d) : Prop :=
  ((x i).val + 1 = (y i).val) ∨
  ((y i).val + 1 = (x i).val)

def SameExcept
    {d k : Nat}
    (x y : CubeAddress d k)
    (i : Fin d) : Prop :=
  ∀ j : Fin d, j ≠ i → x j = y j

def CubeAdjacent
    {d k : Nat}
    (x y : CubeAddress d k) : Prop :=
  ∃ i : Fin d, CoordDiffOne x y i ∧ SameExcept x y i

theorem cubeAdjacent_symm
    {d k : Nat}
    {x y : CubeAddress d k} :
    CubeAdjacent x y → CubeAdjacent y x := by
  intro h
  rcases h with ⟨i, hdiff, hsame⟩
  refine ⟨i, ?_, ?_⟩
  · exact hdiff.symm
  · intro j hj
    exact (hsame j hj).symm

theorem cubeAdjacent_irrefl
    {d k : Nat}
    (x : CubeAddress d k) :
    ¬ CubeAdjacent x x := by
  intro h
  rcases h with ⟨i, hdiff, _⟩
  rcases hdiff with h | h <;> omega

end Cellular
end Folder
```
