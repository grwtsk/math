# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticTail.Variant9325bde3b85e7302d34bd25b03f029e82357c6327cf4e3769cda592518cc022d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7585e6590d8526095f56b37e5a041245bed39e3` · SHA-256 `b3cc317ef0d602bdd05edd7e9291fd23979908e3f3b6169eac19801580d5b1d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
