# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LocalRank.Variant5d54f8c735da18d4f398a17504db044be9b3cd6f64af68ed828f5db711d2ff38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02f002a999309417f8c1723853354a253821cc97` · SHA-256 `6fe50024556307b08652a9d8973043eca30bb67f2d0923559cb9d251c6334767`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteLocalRank.Variant4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.FiniteLocalRank.Variant4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c","mathematical_subject":"Logic.Foundations","original_sha256":"4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Frontier/LocalRank.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Finite local ranks

The ordering source is explicit and rank injectivity is proof-bearing.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteLocalRank.Variant4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c

namespace Mathematics.StratifiedBoundary

structure FiniteLocalRank (Frontier : Type u) where
  orderingSourceRef : String
  rank : Frontier → Nat
  injective : Function.Injective rank

end Mathematics.StratifiedBoundary
```
