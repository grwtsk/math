# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPairRegion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "871b093df09dd18eaba0c5e7800c3df8495ac2b1",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `871b093df09dd18eaba0c5e7800c3df8495ac2b1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.GaussianPolynomialPair`](../../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPairEvaluation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairEvaluation.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Packet](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/packet--35fc803cd8d7eec492e02046.md) | 31 | `declaration-track:35fc803cd8d7eec492e0204610f78d127ad7bb34fb487bdf510f669935c00056` |
| 2 | `def` | [anchor](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/anchor--2d025caedf5fbd849bf54530.md) | 42 | `declaration-track:2d025caedf5fbd849bf54530bb935d93614b4c6dd0d6ae3f617da8bcfc6dd07f` |
| 3 | `def` | [heightBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/heightbound--fe838e465f9464cf0fdb245a.md) | 43 | `declaration-track:fe838e465f9464cf0fdb245a2a464b7870b41091e8bb3417732208d9416a9d18` |
| 4 | `def` | [carrier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/carrier--3b83beb722cb36314820bf9d.md) | 44 | `declaration-track:3b83beb722cb36314820bf9db5e91c0d9007885cd075c35ce241a1b010fef9ec` |
| 5 | `def` | [model](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/model--d1dffb2b4fb109f2c6d15d2d.md) | 46 | `declaration-track:d1dffb2b4fb109f2c6d15d2df57d52773b8efbb80b59efbbaaa81302745e8ff2` |
| 6 | `def` | [centerDisk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/centerdisk--03426ef968d03963b3399a62.md) | 48 | `declaration-track:03426ef968d03963b3399a6252e46f10ce418c1469a43eae9c15019cf56f73a4` |
| 7 | `def` | [squaredDisk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/squareddisk--4bee32c8d6cac236b2ba36ac.md) | 49 | `declaration-track:4bee32c8d6cac236b2ba36ace248e03e1b6fa57e15da4bed7f9706a398ce8475` |
| 8 | `def` | [bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/bounds--4dc8f8eba6b701a17bca787b.md) | 51 | `declaration-track:4dc8f8eba6b701a17bca787b5b0e3b364c88ea7ae40a745c520a355c509d3d44` |
| 9 | `def` | [lowerEven](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/lowereven--8bf57fc45f35a356b184d050.md) | 53 | `declaration-track:8bf57fc45f35a356b184d050d17d472fe6e562db21c9be19dc2bac0b834db528` |
| 10 | `def` | [lowerOdd](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/lowerodd--ba1905b5d486dab0bfb9dc84.md) | 54 | `declaration-track:ba1905b5d486dab0bfb9dc84ce2b7bb7d7df166c1904c371af49692f9d352023` |
| 11 | `def` | [constantGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/constantgap--e99ba0921bd03287e09d971d.md) | 55 | `declaration-track:e99ba0921bd03287e09d971d7c58d996b336eea56e79d152ec5152ea57438933` |
| 12 | `def` | [slopeGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/slopegap--c878f55a932c2b98bbbad607.md) | 56 | `declaration-track:c878f55a932c2b98bbbad607eb106e166930f001afe2e70cc0f186cd9e3a2ce3` |
| 13 | `def` | [Guard](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/guard--3a59dcaf6e3c0c90726520a5.md) | 59 | `declaration-track:3a59dcaf6e3c0c90726520a5a5dc5ba527c913d875b5ad78dbe3a480e53d24a4` |
| 14 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/check--bc609235a14337e9f105be33.md) | 66 | `declaration-track:bc609235a14337e9f105be3389ff5db3e59b85cc1ead016c9f70e4e2fc9a7ef0` |
| 15 | `lemma` | [check_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/check-iff--58492e429c3c19ad1012f08a.md) | 67 | `result-track:58492e429c3c19ad1012f08a9c7e483def833fb0c0e3c4357fff82bcf9510be7` |
| 16 | `def` | [Binds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/binds--5487061667ba898ae6287d19.md) | 70 | `declaration-track:5487061667ba898ae6287d19604dc4fb9e2a4ade5e2bdd74767e04f5d27da5c9` |
| 17 | `lemma` | [height_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/height-bound--c3dd3f7afcccfde29c45b9ad.md) | 72 | `result-track:c3dd3f7afcccfde29c45b9ad649d2cb30637592c36968403234e8449459160ef` |
| 18 | `lemma` | [channel_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/channel-bounds--45905a72cd3c5069bf74c209.md) | 80 | `result-track:45905a72cd3c5069bf74c209ba2d8484957a46d2b8bc545e6f254b0869311474` |
| 19 | `theorem` | [polynomial_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/polynomial-margin--690b3bbd9c129a970b329d67.md) | 121 | `result-track:690b3bbd9c129a970b329d67544e5e3ae8dcd40c608f4210b1a3b1c6895ffd00` |
| 20 | `theorem` | [rhOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/rhon--e90efe5f5a2fae8bc33c7ac4.md) | 147 | `result-track:e90efe5f5a2fae8bc33c7ac44ed52bad95978e0bfdacd620307b5f10832e4f80` |
| 21 | `theorem` | [window_successor_of_regions](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/declarations/window-successor-of-regions--6e7a748fd7c4f43a93953193.md) | 189 | `result-track:6e7a748fd7c4f43a93953193aafd6e2e68917893dd384bcca18596bf4d44f6d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
