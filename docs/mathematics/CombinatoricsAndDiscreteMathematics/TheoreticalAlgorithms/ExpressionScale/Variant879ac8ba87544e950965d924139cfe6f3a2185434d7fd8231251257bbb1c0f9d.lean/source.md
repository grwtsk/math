# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExpressionScale.Variant879ac8ba87544e950965d924139cfe6f3a2185434d7fd8231251257bbb1c0f9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54362a5d6a1bfbad92bbc85d67db0bc298828984` · SHA-256 `879ac8ba87544e950965d924139cfe6f3a2185434d7fd8231251257bbb1c0f9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
