# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bracket.Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dcc3d1a8999c8653310cc1f22d823c445de81a4",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dcc3d1a8999c8653310cc1f22d823c445de81a4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean.json)

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
| 1 | `inductive` | [BracketBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/bracketbit--41c190a93ff158ae63de4f6f.md) | 21 | `declaration-track:41c190a93ff158ae63de4f6ffa3766e724ecbf7b796e56ce5a7e0c193f85270d` |
| 2 | `abbrev` | [BracketProgram](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/bracketprogram--59235334dd358900220eeb2c.md) | 26 | `declaration-track:59235334dd358900220eeb2c2bac1e70bc1018be48fd418fc9d7a050ef2576f4` |
| 3 | `def` | [BracketBit.toDyck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/bracketbit-todyck--0b6b96be5ce1ea2c92a4706c.md) | 28 | `declaration-track:0b6b96be5ce1ea2c92a4706cdaed6d9e31d29f41884213ad0846893992d6f276` |
| 4 | `def` | [BracketBit.ofDyck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/bracketbit-ofdyck--707906b320e2ea5812ac116d.md) | 32 | `declaration-track:707906b320e2ea5812ac116d7a59f86e650e2c081d9e2dfaa483dda325dc64d0` |
| 5 | `theorem` | [BracketBit.toDyck_ofDyck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/bracketbit-todyck-ofdyck--d8aa6874a357dcf4b2cbe4f0.md) | 36 | `result-track:d8aa6874a357dcf4b2cbe4f04cddc26f09a718799a2fffd4db4bb277a442c5c5` |
| 6 | `theorem` | [BracketBit.ofDyck_toDyck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/bracketbit-ofdyck-todyck--8dc51afac19832385a5bd70e.md) | 40 | `result-track:8dc51afac19832385a5bd70e9610e4e68713f49e4f81bc5d9051328548bf752b` |
| 7 | `inductive` | [FiniteTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/finitetree--8b2d5ec86d0c76b38baf9872.md) | 45 | `declaration-track:8b2d5ec86d0c76b38baf9872bc48995174bec4238f8b50c726c7b4909f58a150` |
| 8 | `def` | [FiniteTree.nodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/finitetree-nodecount--671299736e3fd91676f7450b.md) | 49 | `declaration-track:671299736e3fd91676f7450bb596969cd91c12352a8cc4b91cd241b97bb12956` |
| 9 | `def` | [finiteForestNodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/finiteforestnodecount--e4b1f5ab66e7cfe920909ef0.md) | 52 | `declaration-track:e4b1f5ab66e7cfe920909ef0343fe90562948870f5dea8ead70880d203688fa0` |
| 10 | `def` | [finiteForestBinary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/finiteforestbinary--10bfb81bab1c88e732624d81.md) | 55 | `declaration-track:10bfb81bab1c88e732624d81eee131b6b61326307a1cb1e399c5a51cbddaa992` |
| 11 | `def` | [projectForestDyck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projectforestdyck--41748ee6eb41473ba9419858.md) | 60 | `declaration-track:41748ee6eb41473ba941985839054a784ac45c61d6e60583436d8b5127caeb3e` |
| 12 | `def` | [projectForest](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projectforest--8a91a26dd681cadb28ff04ad.md) | 63 | `declaration-track:8a91a26dd681cadb28ff04ad7f5735f5902a6790a489ddab8be5b8b90b0c4763` |
| 13 | `def` | [projectTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projecttree--0eae2a52684fc7b0f108f55a.md) | 66 | `declaration-track:0eae2a52684fc7b0f108f55a2de4edd67b1e4da07ff5b126fd2145e41cde2a0d` |
| 14 | `def` | [prefixDepth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/prefixdepth--30f1f7778257d58439d8ecbc.md) | 69 | `declaration-track:30f1f7778257d58439d8ecbc66f04417a1503b53e18b6aeb322ee1bdd7d9ae22` |
| 15 | `def` | [finalDepth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/finaldepth--adc4533c41ca4123c67aee1a.md) | 73 | `declaration-track:adc4533c41ca4123c67aee1a24e821c6aad998cd720d309b5179544382407fb5` |
| 16 | `def` | [prefixValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/prefixvalid--242d711315d8c40f4b4da6dd.md) | 76 | `declaration-track:242d711315d8c40f4b4da6dd8f612c8008f7e17a1b913e248f595400d913854c` |
| 17 | `def` | [balanced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/balanced--59fde254926e5ebec8320e6c.md) | 80 | `declaration-track:59fde254926e5ebec8320e6c13a60983711acab721a3e65e13ac5eeb7723cfdb` |
| 18 | `def` | [maxDepth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/maxdepth--336fda4b67dbebd79994d8df.md) | 83 | `declaration-track:336fda4b67dbebd79994d8dfbbe397f3170099089697e8b7b126d76828789a10` |
| 19 | `def` | [structuralEnergy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/structuralenergy--bc6d9843dc04fa2e2d7ab777.md) | 87 | `declaration-track:bc6d9843dc04fa2e2d7ab777cc3624da7a3fd6fe3856229a042049847dad12fc` |
| 20 | `theorem` | [projectForest_toDyck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projectforest-todyck--5988341c9aed6a9532f83180.md) | 92 | `result-track:5988341c9aed6a9532f8318044a4f92bd3d561f85e5b57db0afc6cfe569ffddf` |
| 21 | `theorem` | [take_map_local](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/take-map-local--5939ff1eaeeaa47e6679a2a6.md) | 102 | `result-track:5939ff1eaeeaa47e6679a2a6c09fa01bc6191e3b2c83fc277733caf0ea5a9e22` |
| 22 | `theorem` | [finiteForestBinary_numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/finiteforestbinary-numnodes--e8cf6f1629fbc4b246c28091.md) | 115 | `result-track:e8cf6f1629fbc4b246c280915f72c72327f68e3786369cd8c441b111315d2759` |
| 23 | `theorem` | [projectForest_semilength_eq_nodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projectforest-semilength-eq-nodecount--0bf3e270169d7b6db2681a01.md) | 122 | `result-track:0bf3e270169d7b6db2681a019a9d78e958a181719b5b0a696dd73bab310b0c53` |
| 24 | `theorem` | [projectForest_length_eq_twice_nodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projectforest-length-eq-twice-nodecount--70ddd41e3ebdb4483e2e7992.md) | 130 | `result-track:70ddd41e3ebdb4483e2e7992d27144445c0e3b5ab29d5685f9068313687f9fa0` |
| 25 | `theorem` | [projectForest_prefixValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projectforest-prefixvalid--39c1680f2094ce4cded35503.md) | 138 | `result-track:39c1680f2094ce4cded355037029e43c01f813549d50f8eeee701c61ef1b2867` |
| 26 | `theorem` | [projectForest_finalDepth_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projectforest-finaldepth-zero--a5cb01b2a4badc2d62c4c000.md) | 147 | `result-track:a5cb01b2a4badc2d62c4c000365ea111d0dce46a17ea58d16fa8eca8267feb4a` |
| 27 | `theorem` | [projectForest_balanced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projectforest-balanced--89402a7509708b70a4d53153.md) | 155 | `result-track:89402a7509708b70a4d53153bd2aecf6af655dfd0b15ef353d32010860b25ab5` |
| 28 | `theorem` | [projectTree_prefixValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projecttree-prefixvalid--53fcc09d72f0ed2abe79212f.md) | 160 | `result-track:53fcc09d72f0ed2abe79212f48486e063fc841ed848ffba52e28f98aa7d78bef` |
| 29 | `theorem` | [projectTree_finalDepth_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projecttree-finaldepth-zero--332c3ce05ff622886d244571.md) | 165 | `result-track:332c3ce05ff622886d24457172e8d617cf6fe79fe48488dbc8b5840d44893cba` |
| 30 | `theorem` | [projectTree_balanced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projecttree-balanced--4bd06f9cf7842040fd3cdfc6.md) | 170 | `result-track:4bd06f9cf7842040fd3cdfc63517c673d71d651930ee7e6102dfb6df9254b132` |
| 31 | `theorem` | [projectTree_length_eq_twice_nodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/projecttree-length-eq-twice-nodecount--b9fcecfb486e0deb262f33e2.md) | 175 | `result-track:b9fcecfb486e0deb262f33e24269a85a4771fa48d454934dcd9e0da3add72540` |
| 32 | `structure` | [RichTreeState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/richtreestate--c5cf5684399a40a0be0ab0f9.md) | 181 | `declaration-track:c5cf5684399a40a0be0ab0f97ba921fb5bf4d914e59deff5c8d8c7979a370cb3` |
| 33 | `def` | [RichTreeState.binaryLogicProjection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/richtreestate-binarylogicprojection--d6325c1a1a66d3340683a321.md) | 186 | `declaration-track:d6325c1a1a66d3340683a321deb8dee8d23dcf2086f3eefc12176ed40ac92cf8` |
| 34 | `theorem` | [binaryLogicProjection_is_lossy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc.lean/declarations/binarylogicprojection-is-lossy--9009df1fe9e3a32c8782f212.md) | 191 | `result-track:9009df1fe9e3a32c8782f21216468e3348b8ebdd7da1b3f24993e923103f3aa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
