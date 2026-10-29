-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CochainCurvature.Variantdc98bb368128e6630e31e9e2406423bea65e47c86a84187e23506b70424da870","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc98bb368128e6630e31e9e2406423bea65e47c86a84187e23506b70424da870","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CochainCurvature.Variantdc98bb368128e6630e31e9e2406423bea65e47c86a84187e23506b70424da870","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"dc98bb368128e6630e31e9e2406423bea65e47c86a84187e23506b70424da870","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/CochainCurvature.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.BoundaryCochain

/-!
# Exact cochain curvature

The exact capacity-derived cochain has zero square curvature.  Approximate
connector curvature is intentionally outside this exact proposition.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CochainCurvature.Variantdc98bb368128e6630e31e9e2406423bea65e47c86a84187e23506b70424da870

namespace Mathematics.SemiLocalDefect

def cochainCurvature
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    DiagonalOperator Coordinate :=
  capacity.increment cut first +
      capacity.increment (insert first cut) second -
    (capacity.increment cut second +
      capacity.increment (insert second cut) first)

theorem exact_capacity_cochain_curvature_zero
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    cochainCurvature capacity cut first second = 0 := by
  rw [cochainCurvature]
  rw [capacity_increment_square_closed]
  exact sub_self _

end Mathematics.SemiLocalDefect
