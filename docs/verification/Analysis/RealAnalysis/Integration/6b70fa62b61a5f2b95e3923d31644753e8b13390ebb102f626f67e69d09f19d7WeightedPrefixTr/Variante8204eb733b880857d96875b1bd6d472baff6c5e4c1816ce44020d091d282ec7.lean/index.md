# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr.Variante8204eb733b880857d96875b1bd6d472baff6c5e4c1816ce44020d091d282ec7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4151102246f5ee9bac6e7698af72dcf2c5dd6263",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variante8204eb733b880857d96875b1bd6d472baff6c5e4c1816ce44020d091d282ec7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variante8204eb733b880857d96875b1bd6d472baff6c5e4c1816ce44020d091d282ec7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variante8204eb733b880857d96875b1bd6d472baff6c5e4c1816ce44020d091d282ec7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4151102246f5ee9bac6e7698af72dcf2c5dd6263`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variante8204eb733b880857d96875b1bd6d472baff6c5e4c1816ce44020d091d282ec7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variante8204eb733b880857d96875b1bd6d472baff6c5e4c1816ce44020d091d282ec7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variante8204eb733b880857d96875b1bd6d472baff6c5e4c1816ce44020d091d282ec7.lean/declarations/cumulativesum--6d84b130d8da9edfd95dff89.md) | 17 | `declaration-track:6d84b130d8da9edfd95dff89b34718c442bdd289534f2bee1e94e4431e1675cc` |
| 2 | `theorem` | [signed_sum_by_parts](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variante8204eb733b880857d96875b1bd6d472baff6c5e4c1816ce44020d091d282ec7.lean/declarations/signed-sum-by-parts--c1287dcbe68a50495a59fca9.md) | 22 | `result-track:c1287dcbe68a50495a59fca912d4731aeed06cccb583d6c5ec94c2ca36959c62` |
| 3 | `theorem` | [abs_weighted_sum_le_prefix_variation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variante8204eb733b880857d96875b1bd6d472baff6c5e4c1816ce44020d091d282ec7.lean/declarations/abs-weighted-sum-le-prefix-variation--5f7c18cd71e4c247e6dba722.md) | 35 | `result-track:5f7c18cd71e4c247e6dba722011acd4a5964811ec102aa44cf8ce7155a6067b5` |
| 4 | `theorem` | [weighted_actual_le_model_add_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variante8204eb733b880857d96875b1bd6d472baff6c5e4c1816ce44020d091d282ec7.lean/declarations/weighted-actual-le-model-add-budget--0b0cb9bc0ff765f2f96b5a71.md) | 53 | `result-track:0b0cb9bc0ff765f2f96b5a71bb803bceac5ae8d1b9ba15e3fb76faa9037bf077` |
| 5 | `theorem` | [closed_sum_eq_neg_cumulative_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variante8204eb733b880857d96875b1bd6d472baff6c5e4c1816ce44020d091d282ec7.lean/declarations/closed-sum-eq-neg-cumulative-integral--f963e277e506dec4e64ef25f.md) | 70 | `result-track:f963e277e506dec4e64ef25f82a7f3eef8696556501197f6c106a2d4d932a8cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
