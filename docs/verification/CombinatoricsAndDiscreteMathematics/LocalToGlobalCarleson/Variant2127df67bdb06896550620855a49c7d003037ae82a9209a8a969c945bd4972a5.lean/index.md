# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LocalToGlobalCarleson.Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9715f8fdd91cd80cbd623b7e2cfb1bbf6f8f92d4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9715f8fdd91cd80cbd623b7e2cfb1bbf6f8f92d4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalToGlobalCarlesonData](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/declarations/localtoglobalcarlesondata--80fed3d4d573453628d35c4d.md) | 39 | `declaration-track:80fed3d4d573453628d35c4dd24dbb84c1fafc3c396222efd67f41611780b21b` |
| 2 | `def` | [LocalToGlobalCarlesonData.levelContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/declarations/localtoglobalcarlesondata-levelcontribution--bc5f4e097d7679b26d93b086.md) | 60 | `declaration-track:bc5f4e097d7679b26d93b0864546336064889ef00ae426d8298f7ec0d5ff1913` |
| 3 | `def` | [LocalToGlobalCarlesonData.totalContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/declarations/localtoglobalcarlesondata-totalcontribution--d4865b0bed31a353380d4826.md) | 68 | `declaration-track:d4865b0bed31a353380d48269de0b40eb734c9a185bbe0c432b294d9b6f2ea97` |
| 4 | `def` | [LocalToGlobalCarlesonData.levelMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/declarations/localtoglobalcarlesondata-levelmass--81f434195c62487203df5bef.md) | 74 | `declaration-track:81f434195c62487203df5bef6c30843a211254312243306bf1af80bfb1817046` |
| 5 | `theorem` | [LocalToGlobalCarlesonData.sum_levelContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/declarations/localtoglobalcarlesondata-sum-levelcontribution--c7e4fedd9baa6f6e61035091.md) | 81 | `result-track:c7e4fedd9baa6f6e610350911bca2dfc35f989f84c3db8b0e6dea3f95b4e9f64` |
| 6 | `def` | [LocalCrossSquareEstimate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/declarations/localcrosssquareestimate--4c0e71f1b1107511950e2c5a.md) | 100 | `declaration-track:4c0e71f1b1107511950e2c5a15203d11747e003f8540c6b45a6e37ea2e87bd66` |
| 7 | `def` | [LevelwiseMassPacking](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/declarations/levelwisemasspacking--3b560344d2c9d20687ce75f4.md) | 106 | `declaration-track:3b560344d2c9d20687ce75f4bdcf404c6a15b10c21118a283ee3aef345d7a068` |
| 8 | `theorem` | [LocalToGlobalCarlesonData.levelContribution_norm_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/declarations/localtoglobalcarlesondata-levelcontribution-norm-le--a6d7ba0602c0cca9ffc549bf.md) | 112 | `result-track:a6d7ba0602c0cca9ffc549bfdc42d165ef6e6ca974f2f3883446a84e074376de` |
| 9 | `theorem` | [treeCrossCarleson_of_localSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/declarations/treecrosscarleson-of-localsquare--1cac555a4925a41d2a9231d7.md) | 150 | `result-track:1cac555a4925a41d2a9231d7fd732a963fe0460861a8d434b2417eadfd993d37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
