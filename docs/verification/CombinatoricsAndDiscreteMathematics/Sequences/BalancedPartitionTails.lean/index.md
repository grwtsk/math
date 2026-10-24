# Verification target: GRWTSK.Combinatorics.Sequences.BalancedPartitionTails

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52db35a93bcc11c11cd4b6a603f8e487c9908a0f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/BalancedPartitionTails.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52db35a93bcc11c11cd4b6a603f8e487c9908a0f`.

Source path: `GRWTSK/Combinatorics/Sequences/BalancedPartitionTails.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/BalancedPartitionTails.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.Sequences.ConditionalPartitionExposure`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.HypergeometricLowerTail`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/HypergeometricLowerTail.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [currentPartCountBad](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/declarations/currentpartcountbad--9ba54c3f1611204cbc68399a.md) | 27 | `declaration-track:9ba54c3f1611204cbc68399ad9827dd01efb1b9106d21a5939ad9cf710583041` |
| 2 | `theorem` | [remainder_inter_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/declarations/remainder-inter-eq--2d6a9075c129c22f8e15703d.md) | 33 | `result-track:2d6a9075c129c22f8e15703d3d2a23d7c604f43d76d21122aba9e7ed3bd40cb0` |
| 3 | `theorem` | [remainder_size_le_population](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/declarations/remainder-size-le-population--48b6c81586d58f6469d29873.md) | 45 | `result-track:48b6c81586d58f6469d29873292a1a18cd5237f57d648799be704b6c8d096047` |
| 4 | `theorem` | [conditional_currentPart_probability_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/declarations/conditional-currentpart-probability-eq--d37c9a4f1ad5172690b5894f.md) | 55 | `result-track:d37c9a4f1ad5172690b5894f841aaa805958d6dedfca100398bd593e634f8e87` |
| 5 | `theorem` | [conditional_currentPart_probability_eq_lowerTail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/declarations/conditional-currentpart-probability-eq-lowertail--bea67ebec012d198cda8aa8d.md) | 79 | `result-track:bea67ebec012d198cda8aa8defb0e65e40135e4752ed2bd52e660dc5d60473a5` |
| 6 | `theorem` | [lowerTailProbability_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/declarations/lowertailprobability-empty--db71363dda45b281d37593de.md) | 91 | `result-track:db71363dda45b281d37593de1e3fb5f3fc2ac2e2edfee69d0a73957e6d0ed2c3` |
| 7 | `theorem` | [partition_currentPart_quarter_lowerTail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/declarations/partition-currentpart-quarter-lowertail--3439ea42b891e31213e32a87.md) | 104 | `result-track:3439ea42b891e31213e32a8734c013de5d37cacc34b6cbd7db019dafd856ec59` |
| 8 | `theorem` | [partition_currentPart_threeQuarters_lowerTail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/declarations/partition-currentpart-threequarters-lowertail--5a8ffea8cb4a4abf96bd4adf.md) | 127 | `result-track:5a8ffea8cb4a4abf96bd4adfc59723a8ea037263784cedc566af947528756d24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
