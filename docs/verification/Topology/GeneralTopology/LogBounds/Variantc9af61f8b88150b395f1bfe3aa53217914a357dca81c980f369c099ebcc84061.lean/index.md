# Verification target: GRWTSK.Topology.GeneralTopology.LogBounds.Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc59dbf7f90a4d6c695870594f016290bb019366",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc59dbf7f90a4d6c695870594f016290bb019366`.

Source path: `GRWTSK/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_lower_taylor](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/log-lower-taylor--a7559668c609c98a29f9b55d.md) | 38 | `result-track:a7559668c609c98a29f9b55db39a7123d0aeb7c9a941a9175b48b27ea3bfa6d5` |
| 2 | `theorem` | [log_ge'](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/log-ge--a43f5a64fdbbe19b9bf839b3.md) | 57 | `result-track:a43f5a64fdbbe19b9bf839b326d80d5025f7607f99f78d59ae04f330148d200d` |
| 3 | `def` | [symmetricLogComb](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/symmetriclogcomb--c81766a81b7f60e62234057d.md) | 88 | `declaration-track:c81766a81b7f60e62234057d9230983fe4d3a3025a9dc22dbb9db126b9071d2e` |
| 4 | `theorem` | [symmetricLogComb_pos](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/symmetriclogcomb-pos--60347ff6bd8c1a74f595d578.md) | 92 | `result-track:60347ff6bd8c1a74f595d57813b7a0c3ae94eb5653eaa569dabcf8e1b90c4860` |
| 5 | `theorem` | [symmetricLogComb_alt](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/symmetriclogcomb-alt--f1a8f5a5480e7e0e2425a555.md) | 116 | `result-track:f1a8f5a5480e7e0e2425a555bb2dc29ce537ed06e40d3a70c8089067e6c0a3da` |
| 6 | `theorem` | [symmetricLogComb_le_two](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/symmetriclogcomb-le-two--fc3ccd0f153912f4274d2c98.md) | 134 | `result-track:fc3ccd0f153912f4274d2c989411db0f7089c4171f75fd2e6c0dd0655fa8624c` |
| 7 | `theorem` | [symmetricLogComb_abs_le_two](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/symmetriclogcomb-abs-le-two--ec89f1657cef5ee99c2d5f3f.md) | 186 | `result-track:ec89f1657cef5ee99c2d5f3ff5d921f6ea9fa347ee6c142978e8f41c6c0a7b2a` |
| 8 | `theorem` | [log_three_half_ge](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/log-three-half-ge--fec8c789db6a275d6a654f79.md) | 209 | `result-track:fec8c789db6a275d6a654f79addba1b522844211ff02d8a7bcbdec37204eef72` |
| 9 | `theorem` | [log_three_half_gt](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/log-three-half-gt--9750130d86e7a70fae259cd9.md) | 217 | `result-track:9750130d86e7a70fae259cd94b2571c2275e54bf43680af36d610374090f5f35` |
| 10 | `theorem` | [symmetricLogComb_half](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/symmetriclogcomb-half--97f28d37ff3660ce7922ae2b.md) | 223 | `result-track:97f28d37ff3660ce7922ae2bc69684885c4b73f38c52515f96f1a12e05cd1f1f` |
| 11 | `theorem` | [symmetricLogComb_half_lt_four_thirds](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/symmetriclogcomb-half-lt-four-thirds--c903af2edc5d4b2b98242934.md) | 235 | `result-track:c903af2edc5d4b2b98242934d267c0bdfbe1c774506d99b0ad25a3885ecccb7a` |
| 12 | `theorem` | [symmetricLogComb_le_four_thirds](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/symmetriclogcomb-le-four-thirds--ed8d5a4d7204f6a17b294cdb.md) | 260 | `result-track:ed8d5a4d7204f6a17b294cdbbfd26df8a6a29ef94a46eb74f09fc8ccf248b0f0` |
| 13 | `theorem` | [tendsto_log_one_add_div_self](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/tendsto-log-one-add-div-self--c50434a2bb6d21b3c01ce0c8.md) | 360 | `result-track:c50434a2bb6d21b3c01ce0c81bd1fe3e2b3ab100d95efb5c2fa907d09c41fb36` |
| 14 | `theorem` | [tendsto_log_one_sub_div_self](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/tendsto-log-one-sub-div-self--c0f54c668747d96a15913d6a.md) | 371 | `result-track:c0f54c668747d96a15913d6af925416a8d9527282fe7c6bf7aa9f4098555a0e2` |
| 15 | `theorem` | [tendsto_log_one_sub_sq_div_sq](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/tendsto-log-one-sub-sq-div-sq--fe9347445851efd804801fdf.md) | 385 | `result-track:fe9347445851efd804801fdf14734110fc6ffb00cc681ecc9b0d22fcc272f63c` |
| 16 | `theorem` | [symmetricLogComb_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/declarations/symmetriclogcomb-tendsto-one--b619fea7aa1ae0d025fd84a9.md) | 411 | `result-track:b619fea7aa1ae0d025fd84a9f0378b9f49a1d6c08779e1cc80a5c6c7e2c90dd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
