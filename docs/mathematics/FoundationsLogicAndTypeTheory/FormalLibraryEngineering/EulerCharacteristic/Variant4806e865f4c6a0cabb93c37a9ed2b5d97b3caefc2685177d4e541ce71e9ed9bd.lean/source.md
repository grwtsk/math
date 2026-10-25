# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerCharacteristic.Variant4806e865f4c6a0cabb93c37a9ed2b5d97b3caefc2685177d4e541ce71e9ed9bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e21f6fded9af2ec9b3b1d060ab8570cdd1220db` · SHA-256 `bdba20f0f3aeba2c77c610640d35eb2afb27c615ed2f711f1805ca838f7e1207`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CohomologyRankData.Variantd727cced95890f9ceddf3f07da907ec935e243111eb7844148cf381bfe0cd7d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d727cced95890f9ceddf3f07da907ec935e243111eb7844148cf381bfe0cd7d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CohomologyRankData.Variantd727cced95890f9ceddf3f07da907ec935e243111eb7844148cf381bfe0cd7d0","mathematical_subject":"Foundations.Unclassified","original_sha256":"d727cced95890f9ceddf3f07da907ec935e243111eb7844148cf381bfe0cd7d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/EulerCharacteristic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.SectionComplex

/-!
# Folder.DerivedSheaf.EulerCharacteristic

Radiation role: research-boundary
BinaryMatrix spine: This module records Euler-characteristic data, not BinaryMatrix counts.
Ontology: derived.euler_characteristic
Pivot role: none
Zero typology: signed-alternating-contract
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CohomologyRankData.Variantd727cced95890f9ceddf3f07da907ec935e243111eb7844148cf381bfe0cd7d0

namespace Folder
namespace DerivedSheaf

structure CohomologyRankData
    (C : SectionComplex) where
  rank : Degree → Int
  finiteSupport : Prop
  finiteSupport_certified : finiteSupport

def SignedRank
    (n : Degree)
    (r : Int) : Int :=
  if n % 2 = 0 then r else -r

structure EulerCharacteristic
    (C : SectionComplex) where
  value : Int
  rankData : CohomologyRankData C
  value_eq_signed_sum : Prop
  value_eq_signed_sum_certified : value_eq_signed_sum

theorem euler_characteristic_signed_sum
    {C : SectionComplex}
    (chi : EulerCharacteristic C) :
    chi.value_eq_signed_sum :=
  chi.value_eq_signed_sum_certified

end DerivedSheaf
end Folder
```
