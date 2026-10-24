# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryHeap.Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1f62fb1f8b37560546b6c8e2777f776ef293123",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1f62fb1f8b37560546b6c8e2777f776ef293123`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryHeap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/binaryheap--b4deb872e4398a6c2dbce183.md) | 11 | `declaration-track:b4deb872e4398a6c2dbce183167f9c33814547fc48ff3d6830e7398c7fbc70ae` |
| 2 | `def` | [heapifyDown](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/heapifydown--e85dff5f850b9482c689b8ca.md) | 18 | `declaration-track:e85dff5f850b9482c689b8ca6f1d6b60cb375963eb392bf525dfaf02bb3ab727` |
| 3 | `theorem` | [size_heapifyDown](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/size-heapifydown--ed38ff842bd6bcb3ca8ecb2b.md) | 41 | `result-track:ed38ff842bd6bcb3ca8ecb2bc257dd17ab0c829267310686fa5ad444108da362` |
| 4 | `def` | [mkHeap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/mkheap--a71e1cca688ab0b1d9e3cb6e.md) | 46 | `declaration-track:a71e1cca688ab0b1d9e3cb6e5b84cb259ecb03489f558321e6dfa79497613f3a` |
| 5 | `theorem` | [size_mkHeap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/size-mkheap--fa9b85428c881cebf0e4e9b3.md) | 56 | `result-track:fa9b85428c881cebf0e4e9b3d037114585d36d2edc55f1fd490f9e6b6fce6c3b` |
| 6 | `def` | [heapifyUp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/heapifyup--1f6218f309c02085b9278650.md) | 61 | `declaration-track:1f6218f309c02085b9278650ac71c541c941744565c7efbede315624e14f7583` |
| 7 | `theorem` | [size_heapifyUp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/size-heapifyup--6d88e6ba017cdea3ad2455c9.md) | 75 | `result-track:6d88e6ba017cdea3ad2455c9a622d0151f5d32d27132c812159f1093500589ff` |
| 8 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/empty--1a61b7a2f1fdcd9cbbfe074d.md) | 79 | `declaration-track:1a61b7a2f1fdcd9cbbfe074dea4aae8bb8fe080b6f1297ab60ab5cc1685d973d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/instance--87e1dab5c396249428fd19ae.md) | 81 | `declaration-track:87e1dab5c396249428fd19aeb2186488d00cba04cec77c1bb6232f481b1589ca` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/instance--2b561c9f69f4b9862d0a5123.md) | 82 | `declaration-track:2b561c9f69f4b9862d0a512328129c8f6adc53b06d6ccb6079ac687bccc10e51` |
| 11 | `def` | [singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/singleton--9b6305138d7a87424fd374a7.md) | 85 | `declaration-track:9b6305138d7a87424fd374a71cb5ec38e7ac6eb93f0bff1c33e36d074456407f` |
| 12 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/size--7b00a8f7d15b40b5270cc228.md) | 88 | `declaration-track:7b00a8f7d15b40b5270cc22883edc037e3c3401d24e6ed32bd7902b2089ff77f` |
| 13 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/get--d54da4fb757d858d7c7d6f5a.md) | 91 | `declaration-track:d54da4fb757d858d7c7d6f5a5ebacee8b48af447a7e55120d38980bec31cc7b8` |
| 14 | `def` | [insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/insert--84bc0f99c3278105863016a5.md) | 94 | `declaration-track:84bc0f99c3278105863016a54f32ea56ff6f02fb53eb2c9689754ea1ac0a177c` |
| 15 | `theorem` | [size_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/size-insert--243bee64403577b1ce7d292d.md) | 98 | `result-track:243bee64403577b1ce7d292d5635d32e7bdb0367c4f4e52f55c86addf015f9c9` |
| 16 | `def` | [max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/max--564806d8f83f8aaa94d02254.md) | 103 | `declaration-track:564806d8f83f8aaa94d02254fafbae44293c491220ece6c4dcae435f79ff7867` |
| 17 | `def` | [popMaxAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/popmaxaux--a9e95a4ca3b3a19807045b6f.md) | 106 | `declaration-track:a9e95a4ca3b3a19807045b6ff9912e604d92fbed26da546142e13a57fbad67b6` |
| 18 | `def` | [popMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/popmax--2196a25a971d4df86adfcf03.md) | 121 | `declaration-track:2196a25a971d4df86adfcf035e03155443750507b7faf9c6998f6dba4a4c071b` |
| 19 | `theorem` | [size_popMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/size-popmax--7b9fdf6e595f56f2e97feeed.md) | 123 | `result-track:7b9fdf6e595f56f2e97feeed440547e1daaaaf629eb154c23af4f9798bbc6016` |
| 20 | `def` | [extractMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/extractmax--86fdc32d779953fb21e33de6.md) | 127 | `declaration-track:86fdc32d779953fb21e33de61ad67ea5722a09e4141f53a55df5e9fcc3a9374a` |
| 21 | `theorem` | [size_pos_of_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/size-pos-of-max--c24adf93c6fc2bfeb9152213.md) | 130 | `result-track:c24adf93c6fc2bfeb9152213440e2aeafe738efbf956fa106f5d7a931f7af863` |
| 22 | `def` | [insertExtractMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/insertextractmax--b335ef9fed86290909d6787b.md) | 134 | `declaration-track:b335ef9fed86290909d6787b95b6c065ec0eb647fb7baa1aed582d256b00bc41` |
| 23 | `def` | [replaceMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/replacemax--1ccf9f39b88c432fff657d64.md) | 144 | `declaration-track:1ccf9f39b88c432fff657d64f05bfb717370c87edb5fe1aed62ef0bb1cacc2ad` |
| 24 | `def` | [decreaseKey](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/decreasekey--13f2b52afa770bcf49b53a07.md) | 152 | `declaration-track:13f2b52afa770bcf49b53a0780e5cf39df9dbefccd5ddce6b93d3d8a2b013993` |
| 25 | `def` | [increaseKey](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/increasekey--027468494e83a80102f43c11.md) | 156 | `declaration-track:027468494e83a80102f43c110192654890f861ca1f7840c923fb695d80eec66d` |
| 26 | `def` | [Array.toBinaryHeap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/array-tobinaryheap--022615afa1c2baff30d353d2.md) | 162 | `declaration-track:022615afa1c2baff30d353d2f819a30d003ec2a90c63e27f5ee00a1ff48fb45b` |
| 27 | `def` | [Array.heapSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/declarations/array-heapsort--ec10569f6cfcdc59de71bb1e.md) | 166 | `declaration-track:ec10569f6cfcdc59de71bb1e26c34a041b2cdf64383b6b2a226b65ff39f12163` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
