# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineComparison.Varianta286ba37c70c77fa925986adbd69452fa290f0c5bee4f2b903979ce701c7706d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fbe881fd71b466a961c76fe3da779be392dd4be` · SHA-256 `9588eb0996e38ad59e691267d372811a09fd63a152af5c97d818491e907f6dc4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineRealization.Variant094d9fc01db431d0a19452cae5f01c961aebe41a991140ce0e20e424f059cb83","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"094d9fc01db431d0a19452cae5f01c961aebe41a991140ce0e20e424f059cb83","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CrystallineRealization.Variant094d9fc01db431d0a19452cae5f01c961aebe41a991140ce0e20e424f059cb83","mathematical_subject":"Foundations.Unclassified","original_sha256":"094d9fc01db431d0a19452cae5f01c961aebe41a991140ce0e20e424f059cb83","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Prismatic.PrismaticRealization

/-!
# Folder.Prismatic.CrystallineComparison

Radiation role: research-boundary
BinaryMatrix spine: This module records comparison contracts, not BinaryMatrix data.
Ontology: prismatic_realization
Pivot role: prismatic
Zero typology: none
Contract boundary: contract
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineRealization.Variant094d9fc01db431d0a19452cae5f01c961aebe41a991140ce0e20e424f059cb83

namespace Folder
namespace Prismatic

/-- Abstract crystalline realization object. -/
structure CrystallineRealization where
  objectLabel : String
  crystallineLabel : String

/-- Contract-level comparison; not a theorem. -/
structure PrismaticCrystallineComparison where
  prismatic : PrismaticCohomology
  crystalline : CrystallineRealization
  comparisonLabel : String

theorem prismatic_crystalline_comparison_has_prismatic_side
    (C : PrismaticCrystallineComparison) :
    ∃ P : PrismaticCohomology, C.prismatic = P :=
  ⟨C.prismatic, rfl⟩

theorem prismatic_crystalline_comparison_has_crystalline_side
    (C : PrismaticCrystallineComparison) :
    ∃ R : CrystallineRealization, C.crystalline = R :=
  ⟨C.crystalline, rfl⟩

end Prismatic
end Folder
```
