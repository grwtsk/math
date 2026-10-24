# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pairwise.Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b29968d0498df4dbdd78230621f0aa4a70f29935",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b29968d0498df4dbdd78230621f0aa4a70f29935`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Pairwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Pairwise.forall_of_forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean/declarations/pairwise-forall-of-forall--4c5cc5a814392341de5afd11.md) | 38 | `result-track:4c5cc5a814392341de5afd1179e5a07512c5a3e3c7873c187f5728e1d2d3bc3e` |
| 2 | `theorem` | [Pairwise.forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean/declarations/pairwise-forall--d9e15479455b16f2b6b7ff52.md) | 42 | `result-track:d9e15479455b16f2b6b7ff52eeb82a48000379e8d9422e066d110ca091a724ef` |
| 3 | `theorem` | [Pairwise.set_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean/declarations/pairwise-set-pairwise--843ad9e4ff8e9ad9d85651c4.md) | 49 | `result-track:843ad9e4ff8e9ad9d85651c428e9240319f7ee56390f441c35dd749d5653a722` |
| 4 | `theorem` | [pairwise_of_reflexive_of_forall_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean/declarations/pairwise-of-reflexive-of-forall-ne--e67543a006340b4f92a875cc.md) | 52 | `result-track:e67543a006340b4f92a875ccd59594f054fbf7b10ea09907bd70df82cb8a68de` |
| 5 | `theorem` | [Pairwise.rel_head_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean/declarations/pairwise-rel-head-tail--aef7b9b7f7e140eb240dc926.md) | 62 | `result-track:aef7b9b7f7e140eb240dc9263d83f92d194975928dccd8d465289f1c8d6df868` |
| 6 | `theorem` | [Pairwise.rel_head_of_rel_head_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean/declarations/pairwise-rel-head-of-rel-head-head--bb885825de7784a808eefbca.md) | 68 | `result-track:bb885825de7784a808eefbca183c44c155668697ceffb4d1695fdcdf569ae41f` |
| 7 | `theorem` | [Pairwise.rel_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean/declarations/pairwise-rel-head--3a026792fd733f2562c0eaf8.md) | 75 | `result-track:3a026792fd733f2562c0eaf814e759a6f1f617107eb765dd56aadc9783795792` |
| 8 | `theorem` | [Pairwise.rel_dropLast_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean/declarations/pairwise-rel-droplast-getlast--96b4854a46c7386b0cc799ec.md) | 79 | `result-track:96b4854a46c7386b0cc799ec6aaae963aa1080c2c7447def785e893127ecda8c` |
| 9 | `theorem` | [Pairwise.rel_getLast_of_rel_getLast_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean/declarations/pairwise-rel-getlast-of-rel-getlast-getlast--4521b212d1fc92f6a5886cc4.md) | 85 | `result-track:4521b212d1fc92f6a5886cc49418f4de9635d96615663beb4395c2512994eaf9` |
| 10 | `theorem` | [Pairwise.rel_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4.lean/declarations/pairwise-rel-getlast--6b4229b8d7dca8ba331211a1.md) | 91 | `result-track:6b4229b8d7dca8ba331211a1dbad37c700ae041d80609eddb33db64d0b03bdb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
