# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.TT02BertrandPrimeSource.Variant5a3d29e023128c46708a69ce56d4013aa14aa7c93f02b5a306353557edb9d3d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17f26363dc507c6c00a47c37fe8bbbd292656481` · SHA-256 `d63a09387011da0152d2daeb2e634d3321545bec24f2828f268a3c1b84cb5a6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.Tt02BertrandPrimeSource.Variant7424957b5a5f9b99c9ae6e81b0e0775dc156a002459289f3b41359dfec2c0027","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7424957b5a5f9b99c9ae6e81b0e0775dc156a002459289f3b41359dfec2c0027","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.Tt02BertrandPrimeSource.Variant7424957b5a5f9b99c9ae6e81b0e0775dc156a002459289f3b41359dfec2c0027","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"7424957b5a5f9b99c9ae6e81b0e0775dc156a002459289f3b41359dfec2c0027","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Theorems/TT02_BertrandPrimeSource.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Theorems.TT01_Bertrand


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.Tt02BertrandPrimeSource.Variant7424957b5a5f9b99c9ae6e81b0e0775dc156a002459289f3b41359dfec2c0027

namespace FCRS.Transport.Theorems

/-- Prime-source domain restriction, explicitly invoking full Bertrand. -/
theorem tt02_bertrandPrimeSource :
    ∀ p : Nat, Nat.Prime p ∧ 1 < p →
      ∃ q : Nat, Nat.Prime q ∧ p < q ∧ q < 2 * p := by
  intro p hp
  have fullClaim : IntervalClaim bertrandProfile := by
    intro n hn
    obtain ⟨q, hPrime, hnq, hqUpper⟩ := tt01_bertrand n hn
    exact ⟨q, bertrandAdmissible hn hPrime hnq hqUpper⟩
  obtain ⟨q, hAdmissible⟩ :=
    bertrandPrimeSourceRefines.transportClaim fullClaim p hp
  exact ⟨q, hAdmissible.2.2, hAdmissible.2.1.1,
    hAdmissible.2.1.2⟩

end FCRS.Transport.Theorems
```
