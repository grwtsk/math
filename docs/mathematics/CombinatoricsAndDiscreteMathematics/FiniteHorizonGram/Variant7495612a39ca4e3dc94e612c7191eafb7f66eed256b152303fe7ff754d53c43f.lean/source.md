# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHorizonGram.Variant7495612a39ca4e3dc94e612c7191eafb7f66eed256b152303fe7ff754d53c43f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c56ebae25e9db68a8c0b51148725d1bc535805b8` · SHA-256 `527421d55aabd2fd23533ad12923fbce45d4e3de16613935f96ca6ada00b3424`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHorizonGramFamily.Variant7ff80354e2ae104db137fea8d2d6c4da81b265839b653b5a5540d26e3011e41b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ff80354e2ae104db137fea8d2d6c4da81b265839b653b5a5540d26e3011e41b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteHorizonGramFamily.Variant7ff80354e2ae104db137fea8d2d6c4da81b265839b653b5a5540d26e3011e41b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7ff80354e2ae104db137fea8d2d6c4da81b265839b653b5a5540d26e3011e41b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Sonin/FiniteHorizonGram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Sonin.ProjectionDefect

/-!
# Finite-horizon Gram operators

The compatible metric is built relative to a top cut and is not promoted to a
global metric without a cofinal stability certificate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHorizonGramFamily.Variant7ff80354e2ae104db137fea8d2d6c4da81b265839b653b5a5540d26e3011e41b

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure FiniteHorizonGramFamily
    (model : OperatorModel)
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    (connectors : SoninConnectorSystem family)
    (range :
      FiniteHorizonRangeProjection
        model connectors) where
  connectorOperator :
    Finset Prime → Finset Prime → model.Operator
  gram :
    Finset Prime → Finset Prime → model.Operator
  gram_eq_pullback :
    ∀ source horizon,
      gram source horizon =
        range.operations.compose
          (range.operations.adjoint
            (connectorOperator source horizon))
          (connectorOperator source horizon)
  selfAdjoint :
    ∀ source horizon,
      model.SelfAdjoint (gram source horizon)
  nonnegative :
    ∀ source horizon,
      model.Nonnegative (gram source horizon)
  compatible :
    ∀ {source target horizon},
      source ⊆ target →
      target ⊆ horizon →
      gram source horizon =
        range.operations.compose
          (range.operations.adjoint
            (connectorOperator source target))
          (range.operations.compose
            (gram target horizon)
            (connectorOperator source target))
  lowerBound :
    Finset Prime → ℚ
  upperBound :
    Finset Prime → ℚ
  lowerBound_positive :
    ∀ source, 0 < lowerBound source
  bounded : Prop
  boundedProof : bounded

end Mathematics.SemiLocalDefect.Sonin
```
