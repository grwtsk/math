# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hypercube.Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c328834b9d64fba18df6b9e7faf1d5938ca721d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c328834b9d64fba18df6b9e7faf1d5938ca721d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Matrix.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Boolean.Cube.ListTools` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Hypercube.Point](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-point--4baa97df9ccb549049b9d840.md) | 9 | `declaration-track:4baa97df9ccb549049b9d8403d21029c156c89d9e203d64fd4720a67d347a820` |
| 2 | `abbrev` | [Hypercube.BooleanFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-booleanfunction--d6c20a376b397d6e44a997f2.md) | 13 | `declaration-track:d6c20a376b397d6e44a997f29c3d611c4ff3d12634f8642756b71307f7bbd296` |
| 3 | `abbrev` | [Hypercube.ScalarFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-scalarfunction--c5e7c655a435099d5359f8f7.md) | 21 | `declaration-track:c5e7c655a435099d5359f8f71142bdc07a05ca28360b5605a8e984dfe69e22c0` |
| 4 | `def` | [Hypercube.bxor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-bxor--e1f9ae9d79c8d01163873cca.md) | 25 | `declaration-track:e1f9ae9d79c8d01163873cca90c885467d3556ca56da55e0832fc78e0dd9c720` |
| 5 | `def` | [Hypercube.boolDiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-booldiff--19c59c34c7f765be6f25ed69.md) | 32 | `declaration-track:19c59c34c7f765be6f25ed69a29816c839f8330d1dee99529ff23a67c86e658a` |
| 6 | `def` | [Hypercube.bitAtNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-bitatnat--324bcaef58a90a99881a1d53.md) | 36 | `declaration-track:324bcaef58a90a99881a1d539dcbee361666cdd6cfc0da10287c579ad9e7ee3e` |
| 7 | `def` | [Hypercube.tableBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-tablebit--98b352687f6a8aa17817b64b.md) | 45 | `declaration-track:98b352687f6a8aa17817b64ba7862927caa88904e63c408a68f43c2075a3ab0a` |
| 8 | `def` | [Hypercube.pointOfIndex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-pointofindex--10b4e30cac34bb69a8ee12e0.md) | 49 | `declaration-track:10b4e30cac34bb69a8ee12e094f5e51b938824f6355cf8e26eb5e23182469bae` |
| 9 | `def` | [Hypercube.vertices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-vertices--d1f2907acdff6668b290565c.md) | 56 | `declaration-track:d1f2907acdff6668b290565c7076c2ef278eb002c4010e55c63d32e711f9bb56` |
| 10 | `def` | [Hypercube.coordinates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-coordinates--fbfed605f7269b5a990796b9.md) | 60 | `declaration-track:fbfed605f7269b5a990796b9ac6e166e0d694c0398e4e8929b6840315d894f7c` |
| 11 | `def` | [Hypercube.spinOfBool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-spinofbool--5d111f559da00843f29571f4.md) | 64 | `declaration-track:5d111f559da00843f29571f4070e8a01b7043639da7c229d4d27b0ae8a5478cf` |
| 12 | `def` | [Hypercube.intOfBool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-intofbool--b11b7aff04807ef9f52ccfbb.md) | 69 | `declaration-track:b11b7aff04807ef9f52ccfbb020953cd0576f2ba7bc4926fa18d8063c8332713` |
| 13 | `def` | [Hypercube.spinCoordinates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-spincoordinates--5a42bc2bbf60e13276f7b250.md) | 74 | `declaration-track:5a42bc2bbf60e13276f7b250332a591c8c9f9af01914ce79289f163d9356521e` |
| 14 | `def` | [Hypercube.zeroOneCoordinates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-zeroonecoordinates--d5bd0d6ba6b26b47b7f312c6.md) | 78 | `declaration-track:d5bd0d6ba6b26b47b7f312c6dacb2ea60044d6ae37855ee8257d84f3dbf5ad8f` |
| 15 | `def` | [Hypercube.flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-flip--bfeec5f4a90e983db2eeb38e.md) | 82 | `declaration-track:bfeec5f4a90e983db2eeb38e10238b26f7a74a2f4e72cdbe85613885bf2feb4e` |
| 16 | `theorem` | [Hypercube.flip_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-flip-same--dd0c7d0af1abd29837fc77e1.md) | 90 | `result-track:dd0c7d0af1abd29837fc77e16168ffb24371b7eb1eb1f59c74a782ef7c775f14` |
| 17 | `theorem` | [Hypercube.flip_other](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-flip-other--cb93a34bf11a30b413a68d66.md) | 94 | `result-track:cb93a34bf11a30b413a68d6610dfc3311ec62f418500daab446b3d60747af010` |
| 18 | `def` | [Hypercube.pointEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-pointeq--2d634ce0941fab1e63d51230.md) | 100 | `declaration-track:2d634ce0941fab1e63d51230d5c9f2ddd705a3c56f8442f432c9e6bfd3c89a27` |
| 19 | `def` | [Hypercube.hammingDistance](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-hammingdistance--145c89531964e07dac9d2038.md) | 106 | `declaration-track:145c89531964e07dac9d2038d9bef32f10057b0b916ba3d6b49333133b5eba1c` |
| 20 | `def` | [Hypercube.adjacencyMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-adjacencymatrix--2c12f6f18d5b1b57a70ffbd4.md) | 113 | `declaration-track:2c12f6f18d5b1b57a70ffbd488969827bb46115b66567bd0daeee16dc17f307a` |
| 21 | `def` | [Hypercube.boundaryEdgeMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-boundaryedgematrix--4437d42e5196e59347f02b2b.md) | 126 | `declaration-track:4437d42e5196e59347f02b2bd8d05f274fbcedda0658972eee00e68fa5d19e68` |
| 22 | `def` | [Hypercube.edgeChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-edgechange--68ce537f3d06e71ea49af3e6.md) | 135 | `declaration-track:68ce537f3d06e71ea49af3e6716824ad8f5857c22c2df14d82962ae645b621bb` |
| 23 | `def` | [Hypercube.influenceCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-influencecount--0538ce54d77b105abcbb5685.md) | 146 | `declaration-track:0538ce54d77b105abcbb5685eca8da5a619417747c3f6354d27bd2d9c1cec3ab` |
| 24 | `def` | [Hypercube.influenceVector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-influencevector--cec07216baa11a99c560e892.md) | 153 | `declaration-track:cec07216baa11a99c560e892bcd4d3f64babd21101a34ee0f24bcad9bb4f1ce5` |
| 25 | `def` | [Hypercube.directedBoundaryCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-directedboundarycount--3642511effef478601ee6776.md) | 158 | `declaration-track:3642511effef478601ee6776cce1b665b7be14b190d9e982a055b0a60b74abca` |
| 26 | `def` | [Hypercube.grayBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-graybit--88fd8eb4ad1158540fa1311e.md) | 165 | `declaration-track:88fd8eb4ad1158540fa1311ec818db3e90d0fc55f249150eaf805289e949d23d` |
| 27 | `def` | [Hypercube.grayPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-graypoint--2491ff67180012673afe1396.md) | 175 | `declaration-track:2491ff67180012673afe13961fb9862471724a19499bc9a41bc953eaa8c0d687` |
| 28 | `def` | [Hypercube.grayAxis](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4.lean/declarations/hypercube-grayaxis--549f75ff1c01bfc692ac9446.md) | 179 | `declaration-track:549f75ff1c01bfc692ac944625d306d90002f0d3024273acc4d301d00f1a4b3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
