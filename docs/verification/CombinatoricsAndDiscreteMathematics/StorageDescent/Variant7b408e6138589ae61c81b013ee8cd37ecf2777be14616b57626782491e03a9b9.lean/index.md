# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.StorageDescent.Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f585589d21b8675c94607c350665e75ee527c59",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f585589d21b8675c94607c350665e75ee527c59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalStorage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/localstorage--d3fb2ecca6ce792dcd230ce3.md) | 32 | `declaration-track:d3fb2ecca6ce792dcd230ce385a06fcbc0ed3c6a76c3de9db6fa1752cbf6acb9` |
| 2 | `def` | [chart](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/chart--23b6b0202923d2e751c552d8.md) | 40 | `declaration-track:23b6b0202923d2e751c552d85dc15df6c4eaff69df8690272a652774878d94d0` |
| 3 | `theorem` | [mem_chart](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/mem-chart--b4d96979842d4dd55a07af06.md) | 43 | `result-track:b4d96979842d4dd55a07af066811d030ae12af9a33f388b652f7214ca913c466` |
| 4 | `def` | [global](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/global--709c6e43868423105347228d.md) | 47 | `declaration-track:709c6e43868423105347228d6103daf94ea8fae7059472a44bc5c718cf0b99a9` |
| 5 | `theorem` | [global_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/global-eq--dedb3604a8bb9234f8f5644c.md) | 51 | `result-track:dedb3604a8bb9234f8f5644c3849be89bf110216d0d72075d9618bbc50544725` |
| 6 | `theorem` | [global_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/global-unique--f0f34c35cccdacdbc2c95471.md) | 61 | `result-track:f0f34c35cccdacdbc2c95471367b2460b96c82f345b8fdb24d51ee644b4a8d81` |
| 7 | `theorem` | [sum_drop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/sum-drop--3657f7a44ae9b2f8b22315c2.md) | 71 | `result-track:3657f7a44ae9b2f8b22315c23cfd1438b6eb26805f9348c8cd03cd50a37a4897` |
| 8 | `theorem` | [terminal_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/terminal-budget--759b6a92ba093dbc5b0a78d1.md) | 78 | `result-track:759b6a92ba093dbc5b0a78d1b749d1b36efa4d5b68c1142086c147e305ce9a70` |
| 9 | `theorem` | [switched_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/switched-sum--bde9d2620e9c0c7c78523c1e.md) | 89 | `result-track:bde9d2620e9c0c7c78523c1e9fce8831c882ffd03af1a8a4c50b86671b48424b` |
| 10 | `theorem` | [switched_terminal_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/switched-terminal-budget--400bf21a51b37ad4bb33db4a.md) | 99 | `result-track:400bf21a51b37ad4bb33db4a885a8bc3464ed4bac7d39d86d92d9921bc78e266` |
| 11 | `theorem` | [constant_gauge_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/constant-gauge-budget--234da53ea5fa9ab87ee19ad2.md) | 112 | `result-track:234da53ea5fa9ab87ee19ad287ba7d1086b92991b28b65f65f551d529cfc166c` |
| 12 | `theorem` | [variable_gauge_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/variable-gauge-budget--6f5f94c15314acc513ba86b4.md) | 128 | `result-track:6f5f94c15314acc513ba86b44a61e7f5b6b37516d1ee5c90453927dee7c87c2a` |
| 13 | `theorem` | [product_jump](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/product-jump--7083a7b36ee273f0bc7a685d.md) | 143 | `result-track:7083a7b36ee273f0bc7a685da7f70162652cc97c2f9b8da84a04ab22b133487d` |
| 14 | `theorem` | [cost_le_of_terminal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/declarations/cost-le-of-terminal--eb18166a53568574a15f4215.md) | 147 | `result-track:eb18166a53568574a15f421597afa23a1d0e9cd55239497fca214bf6d9a0f941` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
