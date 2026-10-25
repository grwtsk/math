# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Solution.Variant4d4725d20eb43c6629652858da58a1c7bd00acd8853098fe1354bcfb4be93837

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5432bd55fe8eab0b660bb4b0a641feec1888b9e` · SHA-256 `b7f14fabf065ba52e556d2b993fa6565ac072809e4823d0319a01e727cc19449`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hex.Variantd8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Hex.Variantd8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb","mathematical_subject":"Logic.Foundations","original_sha256":"d8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/tests/projects/theorem_hole_issue/Solution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hex.Variantd8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb

theorem hex : ∃ x : Nat, x = 0 := ⟨0, rfl⟩

noncomputable def w : Nat := Classical.choose hex

theorem hw : w = 0 := Classical.choose_spec hex
```
