# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Scheduler.Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a24e9a92f7bb216302eb221c90558b9bc549f6b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a24e9a92f7bb216302eb221c90558b9bc549f6b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kernel.Checked` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DirectionAnchor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/directionanchor--7916e740a1b2949ed0d6c512.md) | 23 | `declaration-track:7916e740a1b2949ed0d6c51246f436734bd5f3de7093b70f1e6bbbf0527718a7` |
| 2 | `structure` | [Context](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/context--f8937267338a40164de1893d.md) | 29 | `declaration-track:f8937267338a40164de1893dc3305deb1dddec67492880af8ca71f7a2a2e8dc9` |
| 3 | `def` | [admissibilityGuard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/admissibilityguard--32cd3cc156f73d67414e22e5.md) | 47 | `declaration-track:32cd3cc156f73d67414e22e5ebfe52f0885b0f5a340a18c020e537be19412276` |
| 4 | `def` | [guardWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/guardwitness--50661f602b9c5235db2f35ba.md) | 51 | `declaration-track:50661f602b9c5235db2f35ba11344382fa78ffa491920543f6f02cdca63fc021` |
| 5 | `theorem` | [guardWitness_isProved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/guardwitness-isproved--e9d894d388e1e5004a1ecb56.md) | 55 | `result-track:e9d894d388e1e5004a1ecb56baba26b518ea47c596b69db71ea6c8e7a8a6d8f8` |
| 6 | `inductive` | [SchedulerClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/schedulerclass--12ad2bfbaa108ff45a82ff13.md) | 60 | `declaration-track:12ad2bfbaa108ff45a82ff13460c3f97ed0a4b42be841f746c8444196f70c68b` |
| 7 | `inductive` | [Atom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/atom--f242966df3609cc113900cf9.md) | 71 | `declaration-track:f242966df3609cc113900cf933080b6d42a6015f124af4db5ee7e9d90e7ef2f6` |
| 8 | `def` | [Atom.id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/atom-id--f1a796a208a0d9fc46b519ea.md) | 84 | `declaration-track:f1a796a208a0d9fc46b519ea5e2b47cfcf1682b0793519d977ec16e89c20dc25` |
| 9 | `def` | [Atom.claim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/atom-claim--2950d33949c5d0fd0c0c419b.md) | 96 | `declaration-track:2950d33949c5d0fd0c0c419b35565aab440c179f05b39970d86c73a30884f3b7` |
| 10 | `def` | [atomResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/atomresidue--0aa7d308de67b881c9132ed8.md) | 111 | `declaration-track:0aa7d308de67b881c9132ed84075eab3836bf5eaad7845623e37cd5072a60178` |
| 11 | `def` | [allAtoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/allatoms--6f0e159578586f074688a219.md) | 129 | `declaration-track:6f0e159578586f074688a2198e3a96d7451563ec7d5460df9f71541953a102a8` |
| 12 | `def` | [schedulerResidues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/schedulerresidues--0b2781a433e84ab0ef0a9a20.md) | 142 | `declaration-track:0b2781a433e84ab0ef0a9a20024d6585918afe594ffdcb6cba0df984b6586d6e` |
| 13 | `def` | [continuumOverclaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/continuumoverclaim--1e55cbac36b2e290157df9eb.md) | 145 | `declaration-track:1e55cbac36b2e290157df9eb8235803af3a09698ba424e181a5fd19663b3beae` |
| 14 | `def` | [continuumOverclaimWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/continuumoverclaimwitness--b35262cf0dfe7be7b7f7e97e.md) | 148 | `declaration-track:b35262cf0dfe7be7b7f7e97ecbaec9e5a85b4a1917998b16dadabf35feac6fb6` |
| 15 | `theorem` | [continuumOverclaimWitness_hasResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/continuumoverclaimwitness-hasresidue--7e471417b7a540aef6036c78.md) | 152 | `result-track:7e471417b7a540aef6036c788811eef179aa7a810283b71f00b32578ea2f6e7a` |
| 16 | `theorem` | [schedulerResidue_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/schedulerresidue-count--7c3efb7b6b349034be7b64e4.md) | 156 | `result-track:7c3efb7b6b349034be7b64e4bc67399e9e8913a4934a98109ade3995056454c9` |
| 17 | `theorem` | [schedulerResidues_targets_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/schedulerresidues-targets-correct--c825992ca936d7224ef323d8.md) | 160 | `result-track:c825992ca936d7224ef323d856edbaa78085e62467380dc12afd4fe01d3b7d72` |
| 18 | `theorem` | [allAtoms_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/allatoms-nodup--e25064e1731a058ee183c575.md) | 168 | `result-track:e25064e1731a058ee183c575dc569d8e98379eb550f9e5228c158f4f4f5ba930` |
| 19 | `theorem` | [atomId_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variantce1a361910562d524b31c21fbf4f666215c6fc804451c9086636f6398ce35072.lean/declarations/atomid-injective--2d71df9304cf0c3de6f12df3.md) | 172 | `result-track:2d71df9304cf0c3de6f12df34af2d6d5204f389f3143b33757212031fd41bd0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
