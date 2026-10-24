# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeLatticeScheduler.Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93ed1833aeea51e788da16aa840c93f1b7909ba3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93ed1833aeea51e788da16aa840c93f1b7909ba3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeLatticeScheduler](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544.lean/declarations/primelatticescheduler--07f29ec195777c469cb7640b.md) | 22 | `declaration-track:07f29ec195777c469cb7640bcee1ef1a5c6480c436623b806ffbaf0e5237db07` |
| 2 | `def` | [tick](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544.lean/declarations/tick--851e40180469adc6bbed892b.md) | 32 | `declaration-track:851e40180469adc6bbed892b5c5a68e90ce430c93ffd586a51595b38a3900a7b` |
| 3 | `theorem` | [tick_eq_observe_then_advance](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544.lean/declarations/tick-eq-observe-then-advance--6070a41b910659df0b183001.md) | 37 | `result-track:6070a41b910659df0b1830015a1e861ece5dab9bc33cf8ba7389219ca20ede55` |
| 4 | `structure` | [PrimeLatticeObservation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544.lean/declarations/primelatticeobservation--f80240a5f80003f77d414263.md) | 48 | `declaration-track:f80240a5f80003f77d4142631727ad5cd03bb531617d65c647e4886166426030` |
| 5 | `def` | [primeLatticeSchedulerAuthority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544.lean/declarations/primelatticeschedulerauthority--58e93e602bd091b9dfd83ccf.md) | 61 | `declaration-track:58e93e602bd091b9dfd83ccf03715a165a0356a27cf182dc76d2bfcab6571ed4` |
| 6 | `theorem` | [primeLattice_scheduler_not_kernel_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544.lean/declarations/primelattice-scheduler-not-kernel-authority--86d343f82b6419f7da8b6749.md) | 64 | `result-track:86d343f82b6419f7da8b674985960a5ead37e8da4eaab06a554e3ad29f14428c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
