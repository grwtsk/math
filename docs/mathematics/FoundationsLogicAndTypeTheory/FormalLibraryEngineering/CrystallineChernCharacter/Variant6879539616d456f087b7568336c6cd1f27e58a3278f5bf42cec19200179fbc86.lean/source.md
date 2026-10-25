# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineChernCharacter.Variant6879539616d456f087b7568336c6cd1f27e58a3278f5bf42cec19200179fbc86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ccdfcb72d790b3bd72cae70af637562b1ab07f1` · SHA-256 `8c00f35b8077aac51f97101e520142d7ea50c281bc81e62fcd8bb30b845907fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineChernCharacter.Variant9cd7d0cd1a504703a9fec3a29c8ef1ca97f7413ff42fd57543155489aabaa429","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9cd7d0cd1a504703a9fec3a29c8ef1ca97f7413ff42fd57543155489aabaa429","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CrystallineChernCharacter.Variant9cd7d0cd1a504703a9fec3a29c8ef1ca97f7413ff42fd57543155489aabaa429","mathematical_subject":"Foundations.Unclassified","original_sha256":"9cd7d0cd1a504703a9fec3a29c8ef1ca97f7413ff42fd57543155489aabaa429","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineIndex/CrystallineChernCharacter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.CohomologyClass

/-!
# Folder.CrystallineIndex.CrystallineChernCharacter

Radiation role: research-boundary
BinaryMatrix spine: This module records Chern-character contracts, not BinaryMatrix characteristic classes.
Ontology: crystalline_index.chern_character
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineChernCharacter.Variant9cd7d0cd1a504703a9fec3a29c8ef1ca97f7413ff42fd57543155489aabaa429

namespace Folder
namespace CrystallineIndex

structure CrystallineChernCharacter
    (H : CohomologyTheory) where
  BundleLike : Type _
  ch : BundleLike → CohomologyClass H
  additive : Prop
  additive_certified : additive
  multiplicative : Prop
  multiplicative_certified : multiplicative
  compatibleWithConnection : Prop
  compatibleWithConnection_certified : compatibleWithConnection
  sourceLabel : String

theorem chern_character_additive
    {H : CohomologyTheory}
    (ch : CrystallineChernCharacter H) :
    ch.additive :=
  ch.additive_certified

theorem chern_character_connection_compatible
    {H : CohomologyTheory}
    (ch : CrystallineChernCharacter H) :
    ch.compatibleWithConnection :=
  ch.compatibleWithConnection_certified

end CrystallineIndex
end Folder
```
