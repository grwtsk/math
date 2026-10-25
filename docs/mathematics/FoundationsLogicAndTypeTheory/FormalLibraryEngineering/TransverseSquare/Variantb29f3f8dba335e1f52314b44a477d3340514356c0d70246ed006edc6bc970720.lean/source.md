# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransverseSquare.Variantb29f3f8dba335e1f52314b44a477d3340514356c0d70246ed006edc6bc970720

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf4be16804fe7edab33fbb09a434a6ce1b185b3d` · SHA-256 `139d3baeb80a69b9824c04160dd0de5a61aef87ee70699a5d4d8c067d9378511`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoefficientIntervalSquareSum.Variant18e77c3331398ba1dd5c2dbfa160c350d887255de735c8893e260b691dbbd6f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"18e77c3331398ba1dd5c2dbfa160c350d887255de735c8893e260b691dbbd6f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CoefficientIntervalSquareSum.Variant18e77c3331398ba1dd5c2dbfa160c350d887255de735c8893e260b691dbbd6f5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"18e77c3331398ba1dd5c2dbfa160c350d887255de735c8893e260b691dbbd6f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/TransverseSquare.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.CoefficientBlindPlan
import Mathlib.Tactic

/-!
# Local transverse square estimates

This file fixes the coefficient-specific square function used by every local
analytic branch of the hyperbolic surgery program.  The interval family and
matrix kernels come from a coefficient-blind `HyperbolicSurgeryPlan`; only
`EvaluatedSurgeryTree` supplies the two arithmetic vectors.

`LocalTransverseDiffuseSquareEstimate` is deliberately only a proposition.
It has no constructor or proof in this module.  A caller applies it to
an evaluation whose coefficient vectors are the diffuse components selected
by the canonical martingale decomposition.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoefficientIntervalSquareSum.Variant18e77c3331398ba1dd5c2dbfa160c350d887255de735c8893e260b691dbbd6f5

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- Finite square sum of one coefficient pair against a predetermined family
of product-interval matrices. -/
@[expose]
def coefficientIntervalSquareSum
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (left : B.Left → ℂ)
    (kernel : TypeIIProductDyadicInterval N q → Matrix B.Left B.Right ℂ)
    (right : B.Right → ℂ) : ℝ :=
  ∑ interval ∈ typeIIProductDyadicIntervals N q,
    ‖bilinearMatrixPairing left (kernel interval) right‖ ^ 2

/-- The exact interval square sum at one predetermined surgery-tree node. -/
@[expose]
def EvaluatedSurgeryTree.nodeIntervalSquareSum
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node) : ℝ :=
  coefficientIntervalSquareSum
    (evaluated.nodeLeftCoefficient node)
    (plan.intervalKernel node)
    (evaluated.nodeRightCoefficient node)

/-- At the root, the square sum is exactly the literal shell-interval square
sum for the two supplied vectors. -/
@[surface_novel, surface_published]
theorem rootNodeIntervalSquareSum_eq_shell
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B)
    (left : B.Left → ℂ) (right : B.Right → ℂ) :
    (plan.evaluate left right).nodeIntervalSquareSum plan.tree.root =
      coefficientIntervalSquareSum left
        (typeIIShellIntervalMatrix B) right := by
  unfold EvaluatedSurgeryTree.nodeIntervalSquareSum
  unfold coefficientIntervalSquareSum
  apply Finset.sum_congr rfl
  intro interval _
  change ‖(plan.evaluate left right).nodeIntervalCorrelation
      plan.tree.root interval‖ ^ 2 = _
  rw [evaluatedRootIntervalCorrelation_eq_shellPairing]

/-- The local transverse/diffuse analytic endpoint.

The two arithmetic vectors are literal fields of `evaluated`; the tree,
intervals, and kernels are fixed by `plan`.  In the intended application,
`evaluated` is formed from diffuse martingale components.  This definition
does not assert that such a bound is available. -/
@[expose]
def LocalTransverseDiffuseSquareEstimate
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (ε C : ℝ) : Prop :=
  0 < ε ∧ 0 ≤ C ∧
    evaluated.nodeIntervalSquareSum node ≤
      (C * (N + 1 : ℝ) ^ ε * evaluated.nodeMass node) ^ 2

end

end Surface.Core.TypeII

end
```
