-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hex.Variantd24fae6576e509d57f880225bd217a5559082e4eaf54b40fcfd9992a0e0a761d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d24fae6576e509d57f880225bd217a5559082e4eaf54b40fcfd9992a0e0a761d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Hex.Variantd24fae6576e509d57f880225bd217a5559082e4eaf54b40fcfd9992a0e0a761d","mathematical_subject":"Logic.Foundations","original_sha256":"d24fae6576e509d57f880225bd217a5559082e4eaf54b40fcfd9992a0e0a761d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/tests/projects/theorem_hole_issue/Challenge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hex.Variantd24fae6576e509d57f880225bd217a5559082e4eaf54b40fcfd9992a0e0a761d

theorem hex : ∃ x : Nat, x = 0 := sorry

-- Not a hole itself, but its *value* mentions the theorem hole `hex`, so the transitive
-- walk in `Compare.loop` reaches `hex` a second time.
noncomputable def w : Nat := Classical.choose hex

theorem hw : w = 0 := sorry
