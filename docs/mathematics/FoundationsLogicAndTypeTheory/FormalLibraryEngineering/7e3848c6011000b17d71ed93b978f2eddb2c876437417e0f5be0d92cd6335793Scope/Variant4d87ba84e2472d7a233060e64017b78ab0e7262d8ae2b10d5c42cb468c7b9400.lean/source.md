# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.7e3848c6011000b17d71ed93b978f2eddb2c876437417e0f5be0d92cd6335793Scope.Variant4d87ba84e2472d7a233060e64017b78ab0e7262d8ae2b10d5c42cb468c7b9400

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c47789ea2be3ddfbc1b542ccccdffe9fb5e50b61` · SHA-256 `279317f7bae8629dc472b4cea7171d80cd2c68732cd3f88f79f9a69f8df1fdc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteValuesDoNotEnsureGreatestMaximizer.Variant7e3848c6011000b17d71ed93b978f2eddb2c876437417e0f5be0d92cd6335793","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e3848c6011000b17d71ed93b978f2eddb2c876437417e0f5be0d92cd6335793","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteValuesDoNotEnsureGreatestMaximizer.Variant7e3848c6011000b17d71ed93b978f2eddb2c876437417e0f5be0d92cd6335793","mathematical_subject":"Foundations.Unclassified","original_sha256":"7e3848c6011000b17d71ed93b978f2eddb2c876437417e0f5be0d92cd6335793","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/7e/7e3848c6011000b17d71ed93b978f2eddb2c876437417e0f5be0d92cd6335793--Scope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.MaximalDefect


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteValuesDoNotEnsureGreatestMaximizer.Variant7e3848c6011000b17d71ed93b978f2eddb2c876437417e0f5be0d92cd6335793

namespace FormalResearch.PositiveAtlas.MaximalDefect

/-- Finitely many defect values alone do not ensure a greatest maximizer
without an additional finiteness or ascending-chain condition on the carrier. -/
theorem finite_values_do_not_ensure_greatest_maximizer :
    ∃ f : ℕ → ℝ, (Set.range f).Finite ∧ Supermodular f ∧
      ¬ ∃ g, IsGreatest {x | IsMaximizer f x} g := by
  refine ⟨fun _ => 0, Set.finite_range_const, fun _ _ => le_rfl, ?_⟩
  intro ⟨g, hg⟩
  have hbad : g + 1 ≤ g := hg.2 (fun _ => le_rfl)
  exact Nat.not_succ_le_self g hbad

end FormalResearch.PositiveAtlas.MaximalDefect
```
