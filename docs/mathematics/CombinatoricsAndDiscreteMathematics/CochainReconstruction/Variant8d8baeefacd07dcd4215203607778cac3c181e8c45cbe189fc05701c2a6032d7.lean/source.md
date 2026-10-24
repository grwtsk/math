# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CochainReconstruction.Variant8d8baeefacd07dcd4215203607778cac3c181e8c45cbe189fc05701c2a6032d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f355a720fd71d53e660bd42644cde83ea5834ba0` · SHA-256 `6707915f18f510354966445db6de645c006a648b02e45a22eb3fc87fb4b34421`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DefectCochainProjection.Variantfccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DefectCochainProjection.Variantfccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"fccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/CochainReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.CochainCurvature

/-!
# Positive exact-component reconstruction

The finite least-squares or semidefinite solver is external.  Its accepted
receipt must bind the reconstructed potential, the projected exact cochain,
and all three visible residual channels.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DefectCochainProjection.Variantfccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622

namespace Mathematics.SemiLocalDefect

universe uPrime

structure DefectCochainProjection
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (measured :
      MeasuredDefectCochain model Prime) where
  potential : Finset Prime → model.Operator
  baseValue : model.Operator
  baseFixed : potential ∅ = baseValue
  projectedIncrement :
    Finset Prime → Prime → model.Operator
  projected_exact :
    ∀ cut prime,
      projectedIncrement cut prime =
        potential (insert prime cut) -
          potential cut
  closednessResidual :
    Finset Prime → Prime → Prime →
      model.Operator
  measurementResidual :
    Finset Prime → Prime → model.Operator
  residual_split :
    ∀ cut prime,
      measured.increment cut prime =
        projectedIncrement cut prime +
          measurementResidual cut prime
  digest : ReconstructionDigest

structure PositiveCapacityReconstruction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {measured :
      MeasuredDefectCochain model Prime}
    (projection :
      DefectCochainProjection measured) where
  selfAdjoint :
    ∀ cut,
      model.SelfAdjoint (projection.potential cut)
  nonnegative :
    ∀ cut,
      model.Nonnegative (projection.potential cut)
  boundedByIdentity :
    ∀ cut,
      OperatorLE model
        (projection.potential cut)
        model.identity
  monotone :
    ∀ {source target},
      source ⊆ target →
      OperatorLE model
        (projection.potential source)
        (projection.potential target)
  positivityResidual :
    Finset Prime → model.Operator
  positivityResidual_nonnegative :
    ∀ cut,
      model.Nonnegative
        (positivityResidual cut)

end Mathematics.SemiLocalDefect
```
