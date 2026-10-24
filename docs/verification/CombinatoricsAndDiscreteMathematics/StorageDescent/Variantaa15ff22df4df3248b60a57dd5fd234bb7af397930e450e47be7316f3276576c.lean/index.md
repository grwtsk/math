# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.StorageDescent.Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4d97b9bd8bab36d93bed3a30c2ca493d382ef04",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4d97b9bd8bab36d93bed3a30c2ca493d382ef04`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalStorage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/localstorage--113f4a9cbf7b5a8514f6837c.md) | 24 | `declaration-track:113f4a9cbf7b5a8514f6837c1e017b52faecf394bcee6080adcdcd863e5995e1` |
| 2 | `def` | [chart](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/chart--50555ea947d4a99d81bcbd27.md) | 34 | `declaration-track:50555ea947d4a99d81bcbd279d10df651ba37fdfefac4dbc189b6abe46fe651c` |
| 3 | `theorem` | [mem_chart](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/mem-chart--57456353cb6de832a2cc09ee.md) | 37 | `result-track:57456353cb6de832a2cc09ee63e16ddc9bdcf03a50e0ce85ab7d08eca15dc65b` |
| 4 | `def` | [global](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/global--c26fe677bf438ae3880f03e2.md) | 41 | `declaration-track:c26fe677bf438ae3880f03e2b5bfe5a9f8f2ebaf4933e6ce0825275a5810c207` |
| 5 | `theorem` | [global_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/global-eq--3bc65bb39c9e846b435a2c0f.md) | 45 | `result-track:3bc65bb39c9e846b435a2c0f4bfea1e71ba83c46c71f6f8dedea2e39d6fb57a9` |
| 6 | `theorem` | [global_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/global-unique--c2ee2f90802404c2c0f32820.md) | 55 | `result-track:c2ee2f90802404c2c0f32820c48d1f625b287a9a36e7814284931e5eb2db8d1c` |
| 7 | `theorem` | [sum_drop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/sum-drop--fb51622a1aab93a3f5aa602c.md) | 65 | `result-track:fb51622a1aab93a3f5aa602c255e88e217576c2b11e17951ad1dcb7d4fd8e3f5` |
| 8 | `theorem` | [terminal_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/terminal-budget--b8d47ba96cbb2c37c6a11012.md) | 72 | `result-track:b8d47ba96cbb2c37c6a110129db9c2709cb3491088aa5e82dfbaa8eb7ead98cb` |
| 9 | `theorem` | [switched_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/switched-sum--a5f9a3302616c5e8407d39b1.md) | 83 | `result-track:a5f9a3302616c5e8407d39b1ad1fd2e905d8f1fc2b651550341a86ab96cc3d0f` |
| 10 | `theorem` | [switched_terminal_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/switched-terminal-budget--13f0375b48566aec0bb5089a.md) | 93 | `result-track:13f0375b48566aec0bb5089a0b594a3c029591f37ff0c2bebabcbe37ff9d9000` |
| 11 | `theorem` | [constant_gauge_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/constant-gauge-budget--15b9deda808269bfa2cf2f09.md) | 106 | `result-track:15b9deda808269bfa2cf2f0914d9016ef8e9e31cd522f4aac4546788dea01737` |
| 12 | `theorem` | [variable_gauge_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/variable-gauge-budget--9809a9b5c0fb5fca466b743b.md) | 122 | `result-track:9809a9b5c0fb5fca466b743bd58a56e1f370be0355da0860cd17b3ec3054f281` |
| 13 | `theorem` | [product_jump](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/product-jump--9b630078b02d9a626a6653f4.md) | 137 | `result-track:9b630078b02d9a626a6653f4dc1ddfdea898b74eb26b85b8339b72920f87b8d2` |
| 14 | `theorem` | [cost_le_of_terminal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variantaa15ff22df4df3248b60a57dd5fd234bb7af397930e450e47be7316f3276576c.lean/declarations/cost-le-of-terminal--0f7ba54bbed3c5cdd4f56a04.md) | 141 | `result-track:0f7ba54bbed3c5cdd4f56a04c6c637628b1eba09cce964c803ff88b30c31c2e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
