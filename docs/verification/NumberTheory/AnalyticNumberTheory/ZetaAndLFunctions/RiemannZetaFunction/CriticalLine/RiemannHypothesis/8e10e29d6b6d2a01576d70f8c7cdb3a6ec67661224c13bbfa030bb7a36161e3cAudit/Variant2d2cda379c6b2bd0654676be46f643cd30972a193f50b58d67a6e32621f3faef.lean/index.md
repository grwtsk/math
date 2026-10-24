# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit.Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d86e653cef56a5832ce2413cd13b8935f2d128d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d86e653cef56a5832ce2413cd13b8935f2d128d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean/declarations/cumulativesum--dbaadefec0cbf235fd4a67b8.md) | 28 | `declaration-track:dbaadefec0cbf235fd4a67b87a2184bbfb140f9b0c1b9bd10ce21e2106daa97e` |
| 2 | `theorem` | [signed_sum_by_parts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean/declarations/signed-sum-by-parts--2ec9c103c452270911841582.md) | 33 | `result-track:2ec9c103c452270911841582d1d0aa6fdb85213e6670e31453e727bd6fd5f3ac` |
| 3 | `theorem` | [abs_weighted_sum_le_prefix_variation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean/declarations/abs-weighted-sum-le-prefix-variation--317939dc0148bf00ef57abde.md) | 46 | `result-track:317939dc0148bf00ef57abde77da2fd7d53f52fd013d9d1f0dc381346b1da766` |
| 4 | `theorem` | [weighted_actual_le_model_add_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean/declarations/weighted-actual-le-model-add-budget--dcc8100217a17c9015fdc0da.md) | 64 | `result-track:dcc8100217a17c9015fdc0dae6451c9cde80d8abbaf1b2b51d7413dc838fc617` |
| 5 | `theorem` | [closed_sum_eq_neg_cumulative_integral](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean/declarations/closed-sum-eq-neg-cumulative-integral--0c941bf06cb7790d8cbc6ed5.md) | 81 | `result-track:0c941bf06cb7790d8cbc6ed56d098bed9cb2c7d729e904872930df45f057b1f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
