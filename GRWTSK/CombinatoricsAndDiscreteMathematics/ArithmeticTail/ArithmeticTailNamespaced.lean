-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SemiLocalArithmeticTail.Varianta275eb0aa4c15e1fec0ddbc384a1413b174647cd36c14d414c55a8be607d42db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a275eb0aa4c15e1fec0ddbc384a1413b174647cd36c14d414c55a8be607d42db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SemiLocalArithmeticTail.Varianta275eb0aa4c15e1fec0ddbc384a1413b174647cd36c14d414c55a8be607d42db","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"a275eb0aa4c15e1fec0ddbc384a1413b174647cd36c14d414c55a8be607d42db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Trace/ArithmeticTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Trace.CofinalLimit

/-!
# Semi-local arithmetic truncation tails
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SemiLocalArithmeticTail.Varianta275eb0aa4c15e1fec0ddbc384a1413b174647cd36c14d414c55a8be607d42db

namespace Mathematics.SemiLocalDefect.Trace

universe uPrime uTest

structure SemiLocalArithmeticTail
    (Prime : Type uPrime)
    [DecidableEq Prime]
    (Test : Type uTest) where
  globalWeil : Test → ℝ
  truncatedWeil : Finset Prime → Test → ℝ
  tail : Finset Prime → Test → ℝ
  split :
    ∀ cut test,
      globalWeil test =
        truncatedWeil cut test +
          tail cut test
  cofinalDecay : Prop
  cofinalDecayProof : cofinalDecay
  uniformOnUnitBall : Prop
  uniformOnUnitBallProof :
    uniformOnUnitBall

end Mathematics.SemiLocalDefect.Trace
