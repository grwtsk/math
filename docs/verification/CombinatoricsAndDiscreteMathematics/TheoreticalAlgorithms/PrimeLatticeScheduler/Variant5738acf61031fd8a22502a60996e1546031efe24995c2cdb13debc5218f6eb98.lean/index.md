# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeLatticeScheduler.Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b5b847a5c4597f108199872aeae55804415b40b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b5b847a5c4597f108199872aeae55804415b40b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98.lean.json)

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
| 1 | `structure` | [PrimeLatticeScheduler](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98.lean/declarations/primelatticescheduler--c4e10742d832dc086cc9d7cb.md) | 30 | `declaration-track:c4e10742d832dc086cc9d7cbfec30001a7a21cbab4bcaa120ee4d8ba0b6ec99f` |
| 2 | `def` | [tick](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98.lean/declarations/tick--f6a5bca9cbe8fe8005fbfd02.md) | 40 | `declaration-track:f6a5bca9cbe8fe8005fbfd02ca8298e3993cca30a7fdd72a87c1bd9015ae41b5` |
| 3 | `theorem` | [tick_eq_observe_then_advance](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98.lean/declarations/tick-eq-observe-then-advance--84877b1475c422a026e0d88e.md) | 45 | `result-track:84877b1475c422a026e0d88ed72b242b11a7d9a1db38fde9361c49ca9d77d19b` |
| 4 | `structure` | [PrimeLatticeObservation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98.lean/declarations/primelatticeobservation--c77ec1b0ffb4ac4f723311be.md) | 56 | `declaration-track:c77ec1b0ffb4ac4f723311be01370abb101519f19a37c9bd26ea199de89e4518` |
| 5 | `def` | [primeLatticeSchedulerAuthority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98.lean/declarations/primelatticeschedulerauthority--ff6586b93e88629fd517766f.md) | 69 | `declaration-track:ff6586b93e88629fd517766fc5a88954ef14268cfbaec557a0a4083f23d45c94` |
| 6 | `theorem` | [primeLattice_scheduler_not_kernel_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLatticeScheduler/Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98.lean/declarations/primelattice-scheduler-not-kernel-authority--9d40c0ac599e853e4d07b9a3.md) | 72 | `result-track:9d40c0ac599e853e4d07b9a36f4a0d3bad87bf29701c467e1690d4af14601e44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
