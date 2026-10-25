# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MOD07SemanticEquivalence.Variant9a62a95eadd06bfe596511a049c7c7e677fa6f313c012f3a750a0066b4a497e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c626cf44c20d3dc119c898b382cda3739758b0a` · SHA-256 `e766fb66957f7df4a20b0e8bd4847089112576aefd1b43a25ed6fa7ad2150381`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod07SemanticEquivalence.Variantfede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Mod07SemanticEquivalence.Variantfede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625","mathematical_subject":"Foundations.Unclassified","original_sha256":"fede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/MOD07_SemanticEquivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Theorems.MOD06_ConditionalAlgebraization


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod07SemanticEquivalence.Variantfede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625

namespace FCRS.Algebraization.Theorems

/--
If semantic pullback is separately full and faithful, the ME1--ME8 target is
equivalent to the algebraic semantic category.
-/
theorem mod07_semanticEquivalence
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hSource : SemanticSourceEffective S) :
    EquivalenceWitness (semanticPullbackEff S hSource) := by
  have hFF := registry.modFullFaithful
  exact equivalenceRestrictCodomain
    S.functors.SemanticPullback
    (fun Y => ModuliEffectivityCertificate S.moduli Y)
    hSource
    hFF.1
    hFF.2
    (fun Y hY => registry.modPipeline Y hY)

end FCRS.Algebraization.Theorems
```
