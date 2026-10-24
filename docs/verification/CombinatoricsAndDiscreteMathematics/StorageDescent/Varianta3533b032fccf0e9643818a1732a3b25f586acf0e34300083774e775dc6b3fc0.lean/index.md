# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.StorageDescent.Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "905949a83e03dc280c275867d7e67f5f70f65d8a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `905949a83e03dc280c275867d7e67f5f70f65d8a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean.json)

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
| 1 | `structure` | [LocalStorage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/localstorage--d105d2d9a8d5d0ad7edf91a5.md) | 24 | `declaration-track:d105d2d9a8d5d0ad7edf91a5c40743baee3c866498fe217dd5459aa4a9e3b26d` |
| 2 | `def` | [chart](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/chart--70d678b655067aa1f4b6eae4.md) | 32 | `declaration-track:70d678b655067aa1f4b6eae42c142174288e7bb80c0b6bcc5181b51ff5d4be6f` |
| 3 | `theorem` | [mem_chart](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/mem-chart--9ff54da37230029350c80f95.md) | 35 | `result-track:9ff54da37230029350c80f95c44d265f2215f4e723aa2f465fdbfab6e39469c4` |
| 4 | `def` | [global](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/global--17ed93da9158bee0aead9ce9.md) | 39 | `declaration-track:17ed93da9158bee0aead9ce97e7ec800ba5cd7ca956202ce5d2d8aad581d8c6b` |
| 5 | `theorem` | [global_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/global-eq--27514461dec2447ccae79124.md) | 43 | `result-track:27514461dec2447ccae791243fab9092216bd3d01f7be53e69836a2bf7da3d75` |
| 6 | `theorem` | [global_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/global-unique--ca6d68e3212951fa5ed340a2.md) | 53 | `result-track:ca6d68e3212951fa5ed340a2eab1b27afee7147e1c8ee849f5a74fd08e17a0e2` |
| 7 | `theorem` | [sum_drop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/sum-drop--1f2ccdd7bf1a2a16ba2c56ae.md) | 63 | `result-track:1f2ccdd7bf1a2a16ba2c56ae203b8588fdb019de02ba840935a7700d015add3c` |
| 8 | `theorem` | [terminal_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/terminal-budget--ce7338fdefee9985b5dcc290.md) | 70 | `result-track:ce7338fdefee9985b5dcc2905fb923a0369098968b4282f49858fcc55c5601a1` |
| 9 | `theorem` | [switched_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/switched-sum--b1b00295181444cf63c7f321.md) | 81 | `result-track:b1b00295181444cf63c7f321fa0b4c5a39dac9581d271318562df4986060a0e4` |
| 10 | `theorem` | [switched_terminal_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/switched-terminal-budget--3d57513a5a104a2b7fec04cb.md) | 91 | `result-track:3d57513a5a104a2b7fec04cb06f00ba558d9eb8fcdda7564c7f4a05f18680ab4` |
| 11 | `theorem` | [constant_gauge_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/constant-gauge-budget--11f41c601d6fa64cdc503291.md) | 104 | `result-track:11f41c601d6fa64cdc503291352a1b51ef9f16b058cd8ea21f8ed50e2675d0b5` |
| 12 | `theorem` | [variable_gauge_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/variable-gauge-budget--e413ad340fc950f0629c1bdb.md) | 120 | `result-track:e413ad340fc950f0629c1bdbf885d1833254795139a8c0ecb8cbe92c49ebd960` |
| 13 | `theorem` | [product_jump](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/product-jump--21c004b658ef665585246343.md) | 135 | `result-track:21c004b658ef66558524634397a57065c15ae252ac97daf79ac202b638dd4220` |
| 14 | `theorem` | [cost_le_of_terminal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/declarations/cost-le-of-terminal--5341418daa5eca466d15a3e5.md) | 139 | `result-track:5341418daa5eca466d15a3e579a02e5bd76e15cf1d9f392b82a6895373a4412d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
