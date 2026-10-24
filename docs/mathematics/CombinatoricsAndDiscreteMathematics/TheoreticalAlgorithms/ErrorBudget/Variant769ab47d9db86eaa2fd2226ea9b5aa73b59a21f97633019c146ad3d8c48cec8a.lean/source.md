# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ErrorBudget.Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da3d1ddd81242b6af4f9ab66012bc86d77249b0e` · SHA-256 `d2f0710f310200b44bd749135c70bfe614e33adbbf5c1cb6133a7bdf2bc8fda7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TransportedErrorTerm.Variantbc0b1c36f3e65361b586ee7267461c99f254762e7dd46f5e04b28f02b432c278","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc0b1c36f3e65361b586ee7267461c99f254762e7dd46f5e04b28f02b432c278","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TransportedErrorTerm.Variantbc0b1c36f3e65361b586ee7267461c99f254762e7dd46f5e04b28f02b432c278","mathematical_subject":"Computation.DataStructures","original_sha256":"bc0b1c36f3e65361b586ee7267461c99f254762e7dd46f5e04b28f02b432c278","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Attention/ErrorBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Attention.Interchange
import Mathematics.Attention.Residual

/-!
# Transported attention error budget

Every local error is paired with the operator bound through which it reaches
the semantic decoder.  The nine observed channels are a conservative
specialization of `Residual.propagateResiduals`: each error is transported
first, then the resulting terms are accumulated with unit downstream gain.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TransportedErrorTerm.Variantbc0b1c36f3e65361b586ee7267461c99f254762e7dd46f5e04b28f02b432c278

namespace Mathematics.Attention

open scoped NNReal

structure TransportedErrorTerm where
  localError : ℝ≥0
  transportBound : ℝ≥0

def TransportedErrorTerm.bound
    (term : TransportedErrorTerm) :
    ℝ≥0 :=
  term.transportBound * term.localError

theorem TransportedErrorTerm.bound_nonnegative
    (term : TransportedErrorTerm) :
    0 ≤ term.bound :=
  bot_le

/--
Represent one already-transported observation as a unit-gain residual step.
The category remains explicit while the proof authority resides in the
end-to-end semantic enclosure.
-/
def TransportedErrorTerm.toResidualBound
    (kind : ResidualKind)
    (term : TransportedErrorTerm) :
    ResidualBound Unit where
  kind := kind
  localError := term.bound
  lipschitz := 1
  proofRef := ()

structure AttentionErrorBudget where
  sequence : TransportedErrorTerm
  depth : TransportedErrorTerm
  interchange : TransportedErrorTerm
  block : TransportedErrorTerm
  arithmetic : TransportedErrorTerm
  mps : TransportedErrorTerm
  decoder : TransportedErrorTerm
  condensation : TransportedErrorTerm
  rebirth : TransportedErrorTerm

/-- Chronological residual projection of the observed attention channels. -/
def AttentionErrorBudget.residuals
    (budget : AttentionErrorBudget) :
    List (ResidualBound Unit) :=
  [
    budget.sequence.toResidualBound
      .sequenceApproximation,
    budget.depth.toResidualBound
      .depthNormalization,
    budget.interchange.toResidualBound
      .interchange,
    budget.block.toResidualBound
      .blockCondensation,
    budget.arithmetic.toResidualBound
      .sequenceArithmetic,
    budget.mps.toResidualBound
      .mpsFactorization,
    budget.decoder.toResidualBound
      .decoderSemantic,
    budget.condensation.toResidualBound
      .continuationCoverage,
    budget.rebirth.toResidualBound
      .reproductiveBehavior
  ]

/-- Propagated total of the nine already-transported observation channels. -/
def AttentionErrorBudget.total
    (budget : AttentionErrorBudget) :
    ℝ≥0 :=
  Residual.propagateResiduals budget.residuals

/-- The residual specialization agrees with the original transported sum. -/
theorem AttentionErrorBudget.total_eq_transported_sum
    (budget : AttentionErrorBudget) :
    budget.total =
      budget.sequence.bound +
      budget.depth.bound +
      budget.interchange.bound +
      budget.block.bound +
      budget.arithmetic.bound +
      budget.mps.bound +
      budget.decoder.bound +
      budget.condensation.bound +
      budget.rebirth.bound := by
  simp [AttentionErrorBudget.total,
    AttentionErrorBudget.residuals,
    TransportedErrorTerm.toResidualBound,
    Residual.propagateResiduals,
    Residual.propagateFrom,
    Residual.advance]

theorem AttentionErrorBudget.total_nonnegative
    (budget : AttentionErrorBudget) :
    0 ≤ budget.total :=
  bot_le

end Mathematics.Attention
```
