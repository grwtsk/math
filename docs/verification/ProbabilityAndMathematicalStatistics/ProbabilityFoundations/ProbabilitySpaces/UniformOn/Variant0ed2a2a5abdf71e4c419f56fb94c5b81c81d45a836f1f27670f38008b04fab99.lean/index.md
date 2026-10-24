# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.UniformOn.Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "875ff8e3f0ff90bf86a50909d5604b375de657a4",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `875ff8e3f0ff90bf86a50909d5604b375de657a4`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ConditionalProbability` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Count` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uniformOn](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon--3f4e7ee55464b0238d457801.md) | 53 | `declaration-track:3f4e7ee55464b0238d457801c25bfb8cd3ba83e6ee1077f199ab99bb3cd0b7fc` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/instance--2209f34c8c22261b20340d9d.md) | 56 | `declaration-track:2209f34c8c22261b20340d9d124a340e67e430500f842b3bf6080851ae72234e` |
| 3 | `theorem` | [uniformOn_empty_meas](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-empty-meas--db8b2f74a81f96f44776b495.md) | 60 | `result-track:db8b2f74a81f96f44776b495defa477ae5b61e224fd8708ceed1b74a0fb8baa6` |
| 4 | `theorem` | [uniformOn_empty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-empty--e891d52e28b93d2941280fb8.md) | 62 | `result-track:e891d52e28b93d2941280fb8d15b717a4b2de82b1c93973208d0df1294e73ebf` |
| 5 | `lemma` | [uniformOn_eq_zero'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-eq-zero--649f17d88bf937854ac2e55a.md) | 66 | `result-track:649f17d88bf937854ac2e55a1bf34bbbea73620eabd2c8c165c607f7b9e0244c` |
| 6 | `lemma` | [uniformOn_eq_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-eq-zero--c5bbf97359b420535aef61f6.md) | 71 | `result-track:c5bbf97359b420535aef61f68b90f5adc7ffd03b075af820ff7dc2eda5930bd5` |
| 7 | `theorem` | [finite_of_uniformOn_ne_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/finite-of-uniformon-ne-zero--b946f3d5e4ebf35453007720.md) | 74 | `result-track:b946f3d5e4ebf354530077200d79966a72514529f844b3b2afce4b0587a30014` |
| 8 | `theorem` | [uniformOn_univ](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-univ--3cdec71bafd6d5cff2c9f58b.md) | 78 | `result-track:3cdec71bafd6d5cff2c9f58b0d8bfefd23d9909813a5f8bc0d1ce271e8f7976f` |
| 9 | `theorem` | [uniformOn_isProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-isprobabilitymeasure--be080774925327b7b099d900.md) | 84 | `result-track:be080774925327b7b099d9007102217f7029fae085e4f8eca8dcbcae74317eb6` |
| 10 | `theorem` | [uniformOn_singleton](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-singleton--844b43c1b26220cd0a1c8558.md) | 90 | `result-track:844b43c1b26220cd0a1c8558e01aa71f21119dcf9fdbc5e6f9ece3557cb72933` |
| 11 | `theorem` | [uniformOn_inter_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-inter-self--93ec0974c02c033cf3845252.md) | 100 | `result-track:93ec0974c02c033cf3845252021af9faa8ee97d2c6fad8c2e9b9f697c067cc6d` |
| 12 | `theorem` | [uniformOn_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-self--1e6b9ebb782f12bf5cf03099.md) | 103 | `result-track:1e6b9ebb782f12bf5cf030999bd75a6d42501e59d82c91205a0a2cdcae05b032` |
| 13 | `theorem` | [uniformOn_eq_one_of](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-eq-one-of--4e598ea8c3d821d1808b6c06.md) | 108 | `result-track:4e598ea8c3d821d1808b6c0630c8e36a07d9c463f5147feab1d96566598c9e90` |
| 14 | `theorem` | [pred_true_of_uniformOn_eq_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/pred-true-of-uniformon-eq-one--d1d011e7ef7bb4bf25bd19a8.md) | 115 | `result-track:d1d011e7ef7bb4bf25bd19a868e498bfb720432809bba707d3c9513a61a9b3dc` |
| 15 | `theorem` | [uniformOn_eq_zero_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-eq-zero-iff--51e7868945cc83d9a24634f3.md) | 125 | `result-track:51e7868945cc83d9a24634f35ac632f5cc5525fedd5112b1dcb9b1ecc2ad6efb` |
| 16 | `theorem` | [uniformOn_of_univ](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-of-univ--d70792570c4965777ab4dd89.md) | 129 | `result-track:d70792570c4965777ab4dd892bee4c7f80a4148807fa083f5a3bad3381a1b686` |
| 17 | `theorem` | [uniformOn_inter](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-inter--3294e89ad4dcfe84e7c547e9.md) | 132 | `result-track:3294e89ad4dcfe84e7c547e9802a7e570f35c277817ec7e91da4b3641c77f455` |
| 18 | `theorem` | [uniformOn_inter'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-inter--a20a42c5a537f7cc299b9880.md) | 144 | `result-track:a20a42c5a537f7cc299b9880bd1df4c0e1767e70dd5a884730b8c96635f1bd7f` |
| 19 | `theorem` | [uniformOn_union](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-union--f379d3ee0076e187ded021ca.md) | 149 | `result-track:f379d3ee0076e187ded021caa3761843f23356b8f0b8d4ab467f95563c234435` |
| 20 | `theorem` | [uniformOn_compl](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-compl--8420bc7f1b427fd6dfab14b9.md) | 155 | `result-track:8420bc7f1b427fd6dfab14b90f4a3beeda159032c63f7b1e99e8a925a7de283f` |
| 21 | `theorem` | [uniformOn_disjoint_union](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-disjoint-union--1a0efb0179f795c900f18f92.md) | 160 | `result-track:1a0efb0179f795c900f18f920ad66b8e167e92de6f6f55e40035507dd7dff8d4` |
| 22 | `theorem` | [uniformOn_add_compl_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/declarations/uniformon-add-compl-eq--2eb3100f6df82f8c49a8f935.md) | 182 | `result-track:2eb3100f6df82f8c49a8f93506246078ce4e4612f146a85659aa4c970f663b87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
