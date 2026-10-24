# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Confluence.Variant20f083de8eb4f77fb62a16d12dca7cab747c4d740ef9e2dcff6c9bd0593518b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c61db09bc431e9f115be382151d4ea471c3ac0b2` · SHA-256 `86bf1e395dfc47412aa0def008b4a9db390077ea71f3a40325c31f8ae60fe659`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CompatibleReduction.Variant185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.CompatibleReduction.Variant185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7","mathematical_subject":"Probability.Independence","original_sha256":"185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Confluence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Certified compatible reduction

Order independence is admitted only for handlers carrying an exact commuting
proof.  Noncommuting handlers require branching or quarantine.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CompatibleReduction.Variant185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7

namespace Mathematics.Mutation

structure CompatibleReduction (State Event : Type) where
  apply : Event → State → State
  commute :
    ∀ left right state,
      apply left (apply right state) =
        apply right (apply left state)

theorem compatible_reduction_confluent
    (reduction : CompatibleReduction State Event)
    (left right : Event)
    (state : State) :
    reduction.apply left (reduction.apply right state) =
      reduction.apply right (reduction.apply left state) :=
  reduction.commute left right state

end Mathematics.Mutation
```
