# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Import.Variantac191291f4811964b6e37685d54c073cace823d9cd821aa150b8cb948d8be7be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `706ce7b22afbedbea2fca7aa29aad40a9c91439f` · SHA-256 `9a1d3b726f1cc8af8e1251aace1a714e9742c20cdf81bed043576883b2a487e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExplicitFormula.Variantf09a86c986a19d263d123279dca82010f06c0bf37ce515a0e76e1abfeefaf890","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f09a86c986a19d263d123279dca82010f06c0bf37ce515a0e76e1abfeefaf890","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ExplicitFormula.Variantf09a86c986a19d263d123279dca82010f06c0bf37ce515a0e76e1abfeefaf890","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f09a86c986a19d263d123279dca82010f06c0bf37ce515a0e76e1abfeefaf890","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/weil-lineage-d360/FormalResearch/RiemannHypothesis/WeilSource/Import.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Zeta23.WeilEF.Main

/-!
# The pinned external explicit formula

Only the dependency closure of the literature-form explicit formula is imported.
The theorem concerns Mathlib's actual zeta function and carries no mathematical
premise. Source specialization and occurrence transport are separate lemmas.
The external Apache-2.0 source remains a pinned dependency, not relicensed MIT code.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExplicitFormula.Variantf09a86c986a19d263d123279dca82010f06c0bf37ce515a0e76e1abfeefaf890

namespace FormalResearch.RiemannHypothesis.WeilSource

/-- The unconditional external formula, before specializing its test function. -/
theorem explicit_formula : Zeta23.EF.EF_lit Zeta23.zetaZeroConfig :=
  Zeta23.WeilEF.EF_lit_zetaZeroConfig

end FormalResearch.RiemannHypothesis.WeilSource
```
