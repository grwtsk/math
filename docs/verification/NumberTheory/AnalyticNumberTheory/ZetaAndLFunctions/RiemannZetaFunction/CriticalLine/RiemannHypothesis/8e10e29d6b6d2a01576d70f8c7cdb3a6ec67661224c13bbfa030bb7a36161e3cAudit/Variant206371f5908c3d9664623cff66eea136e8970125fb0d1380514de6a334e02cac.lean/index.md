# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit.Variant206371f5908c3d9664623cff66eea136e8970125fb0d1380514de6a334e02cac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f7228438eddf72db08859a8b9aa1b4e6968713c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant206371f5908c3d9664623cff66eea136e8970125fb0d1380514de6a334e02cac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant206371f5908c3d9664623cff66eea136e8970125fb0d1380514de6a334e02cac.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant206371f5908c3d9664623cff66eea136e8970125fb0d1380514de6a334e02cac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f7228438eddf72db08859a8b9aa1b4e6968713c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant206371f5908c3d9664623cff66eea136e8970125fb0d1380514de6a334e02cac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant206371f5908c3d9664623cff66eea136e8970125fb0d1380514de6a334e02cac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant206371f5908c3d9664623cff66eea136e8970125fb0d1380514de6a334e02cac.lean/declarations/cumulativesum--1a5341f266eb52c093fef846.md) | 20 | `declaration-track:1a5341f266eb52c093fef846a09a8837229bc3a9a0ef50408969a693d614854b` |
| 2 | `theorem` | [signed_sum_by_parts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant206371f5908c3d9664623cff66eea136e8970125fb0d1380514de6a334e02cac.lean/declarations/signed-sum-by-parts--913d908920a6d1d006202e0d.md) | 25 | `result-track:913d908920a6d1d006202e0d5f4fb0f014daa7e2d24f9b9b448aceca33957523` |
| 3 | `theorem` | [abs_weighted_sum_le_prefix_variation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant206371f5908c3d9664623cff66eea136e8970125fb0d1380514de6a334e02cac.lean/declarations/abs-weighted-sum-le-prefix-variation--9c1485c51a7a165190ab25b8.md) | 38 | `result-track:9c1485c51a7a165190ab25b8cf4d76b8bc0993bef6da65afe0be4bf8a1a5c407` |
| 4 | `theorem` | [weighted_actual_le_model_add_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant206371f5908c3d9664623cff66eea136e8970125fb0d1380514de6a334e02cac.lean/declarations/weighted-actual-le-model-add-budget--65c7986174b356cb07086a95.md) | 56 | `result-track:65c7986174b356cb07086a95d37b86035ac95b3d39c50a774645830deeeb7717` |
| 5 | `theorem` | [closed_sum_eq_neg_cumulative_integral](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant206371f5908c3d9664623cff66eea136e8970125fb0d1380514de6a334e02cac.lean/declarations/closed-sum-eq-neg-cumulative-integral--5dda6be11948f547d5834e04.md) | 73 | `result-track:5dda6be11948f547d5834e049452b6ebdb0f5b6775bb4c14af4f4b1e6f9239b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
