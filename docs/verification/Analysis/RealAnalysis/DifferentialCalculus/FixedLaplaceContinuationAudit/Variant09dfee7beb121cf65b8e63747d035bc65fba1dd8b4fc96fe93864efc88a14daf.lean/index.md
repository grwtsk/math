# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedLaplaceContinuationAudit.Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "557f4288099524ba07073600c559e32ad5e8dc1d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `557f4288099524ba07073600c559e32ad5e8dc1d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/actuallaplace--573f5bbbfd50442954a47844.md) | 25 | `declaration-track:573f5bbbfd50442954a4784472e61de2d1199e936d7302b7f2eea02343937545` |
| 2 | `theorem` | [decay_derivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/decay-derivative-bound--ae5e96ad34531213ad521763.md) | 28 | `result-track:ae5e96ad34531213ad521763cfcef3e188e936fccaa4125231b9ba5c247a6b83` |
| 3 | `theorem` | [actualLaplace_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/actuallaplace-differentiableat--d517691f581c1ee2bdcc5cc7.md) | 41 | `result-track:d517691f581c1ee2bdcc5cc7b8019d857e6dcf79545383205fd56769faf5348b` |
| 4 | `theorem` | [V_differentiableAt_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/v-differentiableat-of-ne-zero--b235835edce8068fcb9991a4.md) | 93 | `result-track:b235835edce8068fcb9991a4db61707b46450ae477225e9515301d58ec97bd03` |
| 5 | `theorem` | [repairedTransfer_differentiableAt_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/repairedtransfer-differentiableat-of-ne--5c1ec92d986f9741c32fea6a.md) | 102 | `result-track:5c1ec92d986f9741c32fea6a82533677bddee2d5d147482a00aa3c9e76d8f86f` |
| 6 | `theorem` | [repairedTransfer_analyticAt_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/repairedtransfer-analyticat-pole--6ae2ef650cf5035eb2e47d02.md) | 118 | `result-track:6ae2ef650cf5035eb2e47d029e38c3b37d99ba8c44fbdcc2dfa9a3c92273df9a` |
| 7 | `theorem` | [repairedTransfer_differentiableOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/repairedtransfer-differentiableon-positive--40b6cee4a7d1f848e4384bec.md) | 127 | `result-track:40b6cee4a7d1f848e4384bec33cce6184532c0ea61f3850b462beb2aa71745ff` |
| 8 | `theorem` | [actualLaplace_analyticOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/actuallaplace-analyticon-positive--501ebcdfd304557409bdac86.md) | 139 | `result-track:501ebcdfd304557409bdac86d1aec0311fea837bd33cb12532e8cb8883ef32b6` |
| 9 | `theorem` | [actualLaplace_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/actuallaplace-eq-repairedtransfer--b12b4897ef957ec850a3ca90.md) | 146 | `result-track:b12b4897ef957ec850a3ca90cc15665e21e37ba17a01a909cafad5c820d45d18` |
| 10 | `theorem` | [actualLaplace_at_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/actuallaplace-at-pole--3eebec95bdb585227a0e2ef5.md) | 161 | `result-track:3eebec95bdb585227a0e2ef5ab93672a6ea9e835b2746817c73c42713542c11e` |
| 11 | `theorem` | [actualLaplace_pole_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/actuallaplace-pole-ne-zero--53a9e13b2f7d91fb9db743a3.md) | 165 | `result-track:53a9e13b2f7d91fb9db743a3c94b7e84ba743eb392385c8ae0220ab82ac46756` |
| 12 | `theorem` | [actual_laplace_integral_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/actual-laplace-integral-eq-repairedtransfer--7d22d842659b76ad0f73fadb.md) | 170 | `result-track:7d22d842659b76ad0f73fadb6ece141b21f2fccb18017333cd0d7b1fafdb35ef` |
| 13 | `theorem` | [actual_laplace_integral_at_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/actual-laplace-integral-at-pole--350a30afe195f96d56b4fe03.md) | 176 | `result-track:350a30afe195f96d56b4fe03f87e84e0a7c4003aaf147b22b717b7d5882d11c9` |
| 14 | `theorem` | [actual_laplace_integral_zero_of_nontrivial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/actual-laplace-integral-zero-of-nontrivial--eaedc914292bea783c214350.md) | 182 | `result-track:eaedc914292bea783c214350a574e3d196f405d02847d37c656653c19e9e940d` |
| 15 | `theorem` | [actual_laplace_integral_zero_occurrence](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf.lean/declarations/actual-laplace-integral-zero-occurrence--5c38c2e79a0d2c21dc0d701c.md) | 193 | `result-track:5c38c2e79a0d2c21dc0d701cd57412935c7bb8aff6d4873558a87953d95abaa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
