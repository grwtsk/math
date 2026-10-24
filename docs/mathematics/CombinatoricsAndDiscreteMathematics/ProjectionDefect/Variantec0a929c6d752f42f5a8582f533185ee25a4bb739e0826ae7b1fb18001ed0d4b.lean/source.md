# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ProjectionDefect.Variantec0a929c6d752f42f5a8582f533185ee25a4bb739e0826ae7b1fb18001ed0d4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6edfab8d5fc91b1ce02bae37e9bc05c39d5f2dc2` · SHA-256 `f9453568dab8702122494d8c870aa1decf25b7838cfa5322831d95f29a21f126`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SoninProjectionDefectRealization.Variant2f9cc948ba4ca4cff351fb7fbaefe654d403be2343b372fc16fecaeb89951853","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f9cc948ba4ca4cff351fb7fbaefe654d403be2343b372fc16fecaeb89951853","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SoninProjectionDefectRealization.Variant2f9cc948ba4ca4cff351fb7fbaefe654d403be2343b372fc16fecaeb89951853","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2f9cc948ba4ca4cff351fb7fbaefe654d403be2343b372fc16fecaeb89951853","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Sonin/ProjectionDefect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Sonin.RangeProjection

/-!
# Sonin projection defect realization

The finite-horizon projection is related to the primary capacity by an
explicit realization certificate; it is never silently identified with it.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SoninProjectionDefectRealization.Variant2f9cc948ba4ca4cff351fb7fbaefe654d403be2343b372fc16fecaeb89951853

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure SoninProjectionDefectRealization
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    (range :
      FiniteHorizonRangeProjection
        model connectors)
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (horizon : Finset Prime) where
  comparisonDefect :
    Finset Prime → model.Operator
  comparison :
    ∀ cut,
      cut ⊆ horizon →
      range.projection cut horizon =
        capacity.defect cut +
          comparisonDefect cut
  exactOnHorizon : Prop
  exactOnHorizonProof : exactOnHorizon
  packetTraceCompatible : Prop
  packetTraceCompatibleProof :
    packetTraceCompatible

def soninProjectionIncrement
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    (range :
      FiniteHorizonRangeProjection
        model connectors)
    (source horizon : Finset Prime)
    (prime : Prime) :
    model.Operator :=
  range.projection (insert prime source) horizon -
    range.projection source horizon

theorem soninProjectionIncrement_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    (range :
      FiniteHorizonRangeProjection
        model connectors)
    (source horizon : Finset Prime)
    (prime : Prime)
    (insertSubset :
      insert prime source ⊆ horizon) :
    model.Nonnegative
      (soninProjectionIncrement
        range source horizon prime) := by
  exact range.monotone
    (Finset.subset_insert prime source)
    insertSubset

end Mathematics.SemiLocalDefect.Sonin
```
