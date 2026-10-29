import Mathematics.Attention.Interchange
import Mathematics.Attention.Residual

/-!
# Transported attention error budget

Every local error is paired with the operator bound through which it reaches
the semantic decoder.  The nine observed channels are a conservative
specialization of `Residual.propagateResiduals`: each error is transported
first, then the resulting terms are accumulated with unit downstream gain.
-/

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
