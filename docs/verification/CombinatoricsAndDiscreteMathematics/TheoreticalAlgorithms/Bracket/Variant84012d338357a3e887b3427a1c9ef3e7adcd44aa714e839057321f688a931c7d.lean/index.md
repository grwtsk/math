# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bracket.Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7a613629d21c1f0f59bc2fc22050347eb4b5a4b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7a613629d21c1f0f59bc2fc22050347eb4b5a4b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean.json)

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
| 1 | `inductive` | [BracketBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/bracketbit--05c90492ff4cdf98a9736e50.md) | 29 | `declaration-track:05c90492ff4cdf98a9736e507ae91021421f896d325927ed3002d06367c473bd` |
| 2 | `abbrev` | [BracketProgram](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/bracketprogram--2d300ab6c7c7accf05c6c488.md) | 34 | `declaration-track:2d300ab6c7c7accf05c6c4881dc226b6338805ab52d71ad00ffc625e8fd79ba5` |
| 3 | `def` | [BracketBit.toDyck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/bracketbit-todyck--ca68ca92fc1b906e91771ec1.md) | 36 | `declaration-track:ca68ca92fc1b906e91771ec1e50e480c86b75b05cfb8c471b7aca367448d17cf` |
| 4 | `def` | [BracketBit.ofDyck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/bracketbit-ofdyck--3c219a349b506983e761c73d.md) | 40 | `declaration-track:3c219a349b506983e761c73d20986742c0ade50ec57294d924b763615ece13f5` |
| 5 | `theorem` | [BracketBit.toDyck_ofDyck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/bracketbit-todyck-ofdyck--87fc3e2fcb4b7b8030cf1f88.md) | 44 | `result-track:87fc3e2fcb4b7b8030cf1f88e67313aa3442ccd8ab4cb32e46b6ecb40d16da6b` |
| 6 | `theorem` | [BracketBit.ofDyck_toDyck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/bracketbit-ofdyck-todyck--e7e6a8804605c3a1d9e4f978.md) | 48 | `result-track:e7e6a8804605c3a1d9e4f9783ffcd3fe8c9c5cc4d607fdc9eee32986d7be6022` |
| 7 | `inductive` | [FiniteTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/finitetree--ecb0783e72fe29064ae6c5da.md) | 53 | `declaration-track:ecb0783e72fe29064ae6c5daef3bd2147c588e42029f5f2808e4e031be6a81b5` |
| 8 | `def` | [FiniteTree.nodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/finitetree-nodecount--a6b5f4fd062048f79c9ca71b.md) | 57 | `declaration-track:a6b5f4fd062048f79c9ca71b07fb3a36e6516c61054f72d8511671d61d96d5b1` |
| 9 | `def` | [finiteForestNodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/finiteforestnodecount--e3430097380a3bbe83cf87c3.md) | 60 | `declaration-track:e3430097380a3bbe83cf87c363ebbc320f5597c17178be94ba5d71eb57eaa814` |
| 10 | `def` | [finiteForestBinary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/finiteforestbinary--ae2871d0efe7f3d74693d11c.md) | 63 | `declaration-track:ae2871d0efe7f3d74693d11c3d7e7f4651ad57a7d9283051efacab7d50236377` |
| 11 | `def` | [projectForestDyck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projectforestdyck--98a68d251bec24092819a436.md) | 68 | `declaration-track:98a68d251bec24092819a4366f7f45f78d7b2aad4cdac7794c81aef818a32454` |
| 12 | `def` | [projectForest](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projectforest--8a2a9b357e9ccd036555d290.md) | 71 | `declaration-track:8a2a9b357e9ccd036555d2908dafb0ca520ed46099ddcfc68066810da422f92c` |
| 13 | `def` | [projectTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projecttree--ebc3d171043ed77a1c2a60b9.md) | 74 | `declaration-track:ebc3d171043ed77a1c2a60b967b0d860299bb44444d0bf2e73679705a766b789` |
| 14 | `def` | [prefixDepth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/prefixdepth--e4bd01b6d2ffcd851aa8a90c.md) | 77 | `declaration-track:e4bd01b6d2ffcd851aa8a90cb2a27b92632659bc20c9f6795b99e9557a653ef8` |
| 15 | `def` | [finalDepth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/finaldepth--525f2ce5277f7a37a3f3e479.md) | 81 | `declaration-track:525f2ce5277f7a37a3f3e4790fd7b27502b4e65807cf55c7ae8548337774a42b` |
| 16 | `def` | [prefixValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/prefixvalid--9342c8410ea851fb07e86bbd.md) | 84 | `declaration-track:9342c8410ea851fb07e86bbd455a27f7a8db434f3d234c27c9bccf8e995fce6f` |
| 17 | `def` | [balanced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/balanced--6caff4c6b8dc926297b49d6a.md) | 88 | `declaration-track:6caff4c6b8dc926297b49d6ae4006f1340217be544e07330507184383349406a` |
| 18 | `def` | [maxDepth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/maxdepth--5bae6728d742568b0e2d9f22.md) | 91 | `declaration-track:5bae6728d742568b0e2d9f2283b2295ba76a0fdca2e6015e0844d184e0f399ef` |
| 19 | `def` | [structuralEnergy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/structuralenergy--708f17737d85ad90031d9d7a.md) | 95 | `declaration-track:708f17737d85ad90031d9d7aa9976ff60b6dac1ef5eda6f3381c74a6876f0b21` |
| 20 | `theorem` | [projectForest_toDyck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projectforest-todyck--fa667ee19c86d98d3627ceb1.md) | 100 | `result-track:fa667ee19c86d98d3627ceb1457002ddf6a0b3e8d7b78214b75b62b04bda03dc` |
| 21 | `theorem` | [take_map_local](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/take-map-local--fad48a034bc875c9d47a3d16.md) | 110 | `result-track:fad48a034bc875c9d47a3d161707b82a2d8c962c0ed4ba97886b1394ce11a302` |
| 22 | `theorem` | [finiteForestBinary_numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/finiteforestbinary-numnodes--a33fa15a1b30318b24d6c2e6.md) | 123 | `result-track:a33fa15a1b30318b24d6c2e6ec0154313567e4620525f8414f8e0bac53eb9a64` |
| 23 | `theorem` | [projectForest_semilength_eq_nodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projectforest-semilength-eq-nodecount--00346ccc4de116d1ba0f59c9.md) | 130 | `result-track:00346ccc4de116d1ba0f59c923bb67922a84053534c4553b1782d5db9f903061` |
| 24 | `theorem` | [projectForest_length_eq_twice_nodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projectforest-length-eq-twice-nodecount--41da46dd1e047f2454f9f6b3.md) | 138 | `result-track:41da46dd1e047f2454f9f6b338a004fcbd446f1df3eb9c26023e67eddfeb2749` |
| 25 | `theorem` | [projectForest_prefixValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projectforest-prefixvalid--00579a8e777a820c5def106b.md) | 146 | `result-track:00579a8e777a820c5def106bee26c729f025b2db5079d95d31bd17b9aa8cb4dc` |
| 26 | `theorem` | [projectForest_finalDepth_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projectforest-finaldepth-zero--7c4d178541ad19b205282c7b.md) | 155 | `result-track:7c4d178541ad19b205282c7bab649abef90c65604f2189960d851f5c8501c756` |
| 27 | `theorem` | [projectForest_balanced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projectforest-balanced--a397f45732132ec9b4f94e73.md) | 163 | `result-track:a397f45732132ec9b4f94e734f67f9a486acf92a930ca2ee2d0a8663f56f03df` |
| 28 | `theorem` | [projectTree_prefixValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projecttree-prefixvalid--8ad53ab6e2c18da035f11d81.md) | 168 | `result-track:8ad53ab6e2c18da035f11d812fbdd1b4b3b82dd4604f4c7093c7a380bb12e22d` |
| 29 | `theorem` | [projectTree_finalDepth_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projecttree-finaldepth-zero--39acf51b3ee286a5767e6f89.md) | 173 | `result-track:39acf51b3ee286a5767e6f89eef833419161483a9e18f0bb91050e806b35cf88` |
| 30 | `theorem` | [projectTree_balanced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projecttree-balanced--6edcd3f466f0aae78be63f85.md) | 178 | `result-track:6edcd3f466f0aae78be63f851648a9c47ab84a58e1537f51f241bbc80aed178c` |
| 31 | `theorem` | [projectTree_length_eq_twice_nodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/projecttree-length-eq-twice-nodecount--269dee8dd22de37ec91319a4.md) | 183 | `result-track:269dee8dd22de37ec91319a4f732e2fd641959791a7de8c7fff90a57516181e4` |
| 32 | `structure` | [RichTreeState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/richtreestate--a03e092b60b85afb0f050a64.md) | 189 | `declaration-track:a03e092b60b85afb0f050a64d098502ab98a7c8f390e752c785f84cb98becbbb` |
| 33 | `def` | [RichTreeState.binaryLogicProjection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/richtreestate-binarylogicprojection--04f2362b7e27889ca7cc33ff.md) | 194 | `declaration-track:04f2362b7e27889ca7cc33ffee32998f647ac32a345ec981511ba2fbb23398d3` |
| 34 | `theorem` | [binaryLogicProjection_is_lossy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/declarations/binarylogicprojection-is-lossy--348e16499608efa7d424d22b.md) | 199 | `result-track:348e16499608efa7d424d22b50f479e56717b5677e20b2d88d27b5fe766fb171` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
