-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.WeightedLine.Variant46e6ed2b91a914183ecb97ac2d568d5d1ed664c8517cddd42432a609c4df761e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46e6ed2b91a914183ecb97ac2d568d5d1ed664c8517cddd42432a609c4df761e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.WeightedLine.Variant46e6ed2b91a914183ecb97ac2d568d5d1ed664c8517cddd42432a609c4df761e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"46e6ed2b91a914183ecb97ac2d568d5d1ed664c8517cddd42432a609c4df761e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:ae5b169d1f043ee855087108/workspace/Audit/BezierExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.Bezier.Subdivision

/-!
# Rational Bézier substrate examples

These noncanonical examples exercise endpoint, denominator, and reversal
behavior without granting theorem-cone authority.
-/


namespace GRWTSK.Topology.GeneralTopology.WeightedLine.Variant46e6ed2b91a914183ecb97ac2d568d5d1ed664c8517cddd42432a609c4df761e

namespace Surface.Audit.BezierExamples

open Surface.Core.Bezier

noncomputable section

/-- A nontrivial affine segment with unequal positive rational weights. -/
def weightedLine : RationalSegment ℝ 1 where
  control i := if i = 0 then 2 else 5
  weight i := if i = 0 then 1 else 3
  weight_pos i := by
    split_ifs <;> norm_num

example : weightedLine.eval (0 : UnitInterval) = 2 := by
  simp [weightedLine]

example : weightedLine.eval (1 : UnitInterval) = 5 := by
  simp [weightedLine]

example (t : UnitInterval) : 0 < weightedLine.denominator t.1 :=
  weightedLine.denominator_pos t

example (t : UnitInterval) :
    weightedLine.reverse.eval t =
      weightedLine.eval (reverseParameter t) :=
  weightedLine.eval_reverse t

example (tau t : UnitInterval) :
    (weightedLine.splitAt tau).1.eval t =
      weightedLine.eval (RationalSegment.leftParameter tau t) :=
  weightedLine.eval_split_left tau t

example (tau t : UnitInterval) :
    (weightedLine.splitAt tau).2.eval t =
      weightedLine.eval (RationalSegment.rightParameter tau t) :=
  weightedLine.eval_split_right tau t

end

end Surface.Audit.BezierExamples

#print axioms Surface.Core.Bezier.RationalSegment.denominator_pos
#print axioms Surface.Core.Bezier.RationalSegment.eval_zero
#print axioms Surface.Core.Bezier.RationalSegment.eval_one
#print axioms Surface.Core.Bezier.RationalSegment.continuous_eval
#print axioms Surface.Core.Bezier.RationalSegment.eval_reverse
#print axioms Surface.Core.Bezier.RationalSegment.eval_split_left
#print axioms Surface.Core.Bezier.RationalSegment.eval_split_right
