import Mathematics.Core.SemanticIdentity

/-!
# Local, global, and universal expression

Scale records the intended domain of an expression.  A universal statement
must retain its local realization map; universality is not homogenization.
-/

namespace Mathematics.Oracle

inductive ExpressionScale
  | local (projectId : ProjectId)
  | global
  | universal
  deriving DecidableEq, Repr

structure ScaledExpression where
  expressionId : StableId
  pointIds : List ElementId
  scale : ExpressionScale
  localRealizationIds : List StableId
  scopeDigest : Digest
  expressionDigest : Digest
  deriving DecidableEq, Repr

def ScaledExpression.UniversalWithLocalRealizations
    (expression : ScaledExpression) : Prop :=
  expression.scale = .universal ∧
  expression.localRealizationIds ≠ []

/-- Universal expression does not erase its target-native realizations. -/
theorem ScaledExpression.universal_retains_local
    {expression : ScaledExpression}
    (universal : expression.UniversalWithLocalRealizations) :
    expression.localRealizationIds ≠ [] :=
  universal.2

end Mathematics.Oracle
