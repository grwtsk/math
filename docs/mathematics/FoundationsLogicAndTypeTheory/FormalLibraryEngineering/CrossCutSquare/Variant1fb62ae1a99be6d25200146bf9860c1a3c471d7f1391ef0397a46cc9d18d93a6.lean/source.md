# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrossCutSquare.Variant1fb62ae1a99be6d25200146bf9860c1a3c471d7f1391ef0397a46cc9d18d93a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2124e6fb19e170870d087b092340adc25bc4b945` · SHA-256 `1fb62ae1a99be6d25200146bf9860c1a3c471d7f1391ef0397a46cc9d18d93a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.BlockCut
public import Surface.Core.TypeII.TransverseSquare
import Mathlib.Tactic

/-!
# Local cross-cut square estimates

An algebraic `TypeIIBlockCut` derives its cross matrix from an exact block
decomposition.  This file applies that derived cross operation to every fixed
product interval and states the coefficient-specific local square bound.

The bound is not a field of the cut, and no proof is provided.  Consequently
an unrestricted residual or a coefficient-adapted cut cannot inhabit the
analytic endpoint merely by construction.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

/-- Cross part of one predetermined node/interval kernel. -/
@[expose]
def HyperbolicSurgeryPlan.crossIntervalKernel
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) (node : plan.tree.Node)
    (cut : TypeIIBlockCut B.Left B.Right)
    (interval : TypeIIProductDyadicInterval N q) : Matrix B.Left B.Right ℂ :=
  cut.crossMatrix (plan.intervalKernel node interval)

/-- Exact square sum of cross-cut correlations at one evaluated node. -/
@[expose]
def EvaluatedSurgeryTree.nodeCrossCutIntervalSquareSum
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (cut : TypeIIBlockCut B.Left B.Right) : ℝ :=
  coefficientIntervalSquareSum
    (evaluated.nodeLeftCoefficient node)
    (plan.crossIntervalKernel node cut)
    (evaluated.nodeRightCoefficient node)

/-- Coefficient-specific cross-correlation square endpoint for one exact
algebraic cut. -/
@[expose]
def LocalCrossCutSquareEstimateAtCut
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (cut : TypeIIBlockCut B.Left B.Right) (ε C : ℝ) : Prop :=
  0 < ε ∧ 0 ≤ C ∧
    evaluated.nodeCrossCutIntervalSquareSum node cut ≤
      (C * (N + 1 : ℝ) ^ ε * evaluated.nodeMass node) ^ 2

/-- Compatibility spelling emphasizing that this is the cross branch of the
common local square-function interface. -/
@[expose]
def LocalCrossSquareEstimateAtCut
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (cut : TypeIIBlockCut B.Left B.Right) (ε C : ℝ) : Prop :=
  LocalCrossCutSquareEstimateAtCut evaluated node cut ε C

end

end Surface.Core.TypeII

end
```
