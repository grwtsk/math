# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CochainCurvature.Variantdc16fb97c9d9c3ff0699fee2d9b58b5763abce4ed639e123f8d6d8577efab5c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9113ac65c17a81f677e27485a68ed44e78830193` · SHA-256 `68d514880d77f32c1f6034a9fe69e10327b21f8d490fda8769e4d096b5c34796`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MeasuredDefectCochain.Variantd5827278e59ed6ba31daa97fbae44ec7539524314465abb9a861aae803774fe7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5827278e59ed6ba31daa97fbae44ec7539524314465abb9a861aae803774fe7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MeasuredDefectCochain.Variantd5827278e59ed6ba31daa97fbae44ec7539524314465abb9a861aae803774fe7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d5827278e59ed6ba31daa97fbae44ec7539524314465abb9a861aae803774fe7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/CochainCurvature.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.BoundaryCochain

/-!
# Computed cochains and curvature budgets

Approximate connector increments remain measurements until projected onto an
exact potential.  Closedness, measurement, and positivity residuals stay
separate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MeasuredDefectCochain.Variantd5827278e59ed6ba31daa97fbae44ec7539524314465abb9a861aae803774fe7

namespace Mathematics.SemiLocalDefect

universe uPrime

structure MeasuredDefectCochain
    (model : OperatorModel)
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  increment :
    Finset Prime → Prime → model.Operator
  measurementDigest : ReconstructionDigest

def MeasuredDefectCochain.curvature
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (cochain :
      MeasuredDefectCochain model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    model.Operator :=
  cochain.increment cut left +
    cochain.increment (insert left cut) right -
    cochain.increment cut right -
    cochain.increment (insert right cut) left

structure CochainCurvatureBudget
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (cochain :
      MeasuredDefectCochain model Prime) where
  size : model.Operator → ℝ
  size_nonnegative :
    ∀ operator : model.Operator,
      0 ≤ size operator
  bound :
    Finset Prime → Prime → Prime → ℝ
  bound_nonnegative :
    ∀ (cut : Finset Prime)
      (left right : Prime),
      0 ≤ bound cut left right
  curvature_bounded :
    ∀ (cut : Finset Prime)
      (left right : Prime),
      size
          (MeasuredDefectCochain.curvature
            (model := model)
            (Prime := Prime)
            cochain cut left right) ≤
        (bound cut left right : ℝ)

end Mathematics.SemiLocalDefect
```
