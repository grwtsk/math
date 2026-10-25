# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN06HRegImpliesHSG.Varianta87f39323aa23e96de118d957a80861d24cb9fdbb4cf28a1010bcde796522d78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a38de1a3294d477d17687533fc1150d53c632df9` · SHA-256 `c5827ecb0bc0048bf2877d11463926400aa59ef23eb37fd93b2e1fcfe17047b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen06HregImpliesHSG.Variantfad1b9dfcdb257d1e3ee17f7d2097009d589834d28265015146fdca0cf09637b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fad1b9dfcdb257d1e3ee17f7d2097009d589834d28265015146fdca0cf09637b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen06HregImpliesHSG.Variantfad1b9dfcdb257d1e3ee17f7d2097009d589834d28265015146fdca0cf09637b","mathematical_subject":"Foundations.Unclassified","original_sha256":"fad1b9dfcdb257d1e3ee17f7d2097009d589834d28265015146fdca0cf09637b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN06_HRegImpliesHSG.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen06HregImpliesHSG.Variantfad1b9dfcdb257d1e3ee17f7d2097009d589834d28265015146fdca0cf09637b

namespace FCRS.Algebraization.Theorems

/--
Proposed research implication: a verified Henselian regularity theorem
produces Henselian Serre generation.
-/
theorem hen06_hregImpliesHSG
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN06Claim S :=
  registry.hen06

end FCRS.Algebraization.Theorems
```
