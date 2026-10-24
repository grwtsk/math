# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryHeap.Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bad79cf647bfc75fc03516db7f61a4593cbb92b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bad79cf647bfc75fc03516db7f61a4593cbb92b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryHeap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/binaryheap--a11a553e52f56f939029a5d8.md) | 19 | `declaration-track:a11a553e52f56f939029a5d80eb8a2b456aa30741466c74512c058769e1b6700` |
| 2 | `def` | [heapifyDown](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/heapifydown--04f78e109559a01a041bb5bc.md) | 26 | `declaration-track:04f78e109559a01a041bb5bc0932e737895ec1d14986828e66e5308c3fbb7dde` |
| 3 | `theorem` | [size_heapifyDown](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/size-heapifydown--e2a52f7aa1089ddf4e0c17fd.md) | 49 | `result-track:e2a52f7aa1089ddf4e0c17fd247f1415b0f3c05ffa712ec79ecf0919b179b19b` |
| 4 | `def` | [mkHeap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/mkheap--13f8f663d631dfe4450c99c0.md) | 54 | `declaration-track:13f8f663d631dfe4450c99c0e1db6ee701d3bf22654eb060decc374c9c74d053` |
| 5 | `theorem` | [size_mkHeap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/size-mkheap--ea9a7070978c7fae219fbdc9.md) | 64 | `result-track:ea9a7070978c7fae219fbdc99401023c52dbd247f26f91cc80d0c9dc087fbc04` |
| 6 | `def` | [heapifyUp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/heapifyup--fb5621cba109c180c91966ec.md) | 69 | `declaration-track:fb5621cba109c180c91966ec267a3b9b4653a55263bc6c2c9f928d36b70186d3` |
| 7 | `theorem` | [size_heapifyUp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/size-heapifyup--4e8ba0c50115cc83e0dcb426.md) | 83 | `result-track:4e8ba0c50115cc83e0dcb426b15b86e3b9238755e9614c7aa53fd9b0d41c984e` |
| 8 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/empty--5de2a250ba8c3f367453edf3.md) | 87 | `declaration-track:5de2a250ba8c3f367453edf3cea1d360febe43f9a9e4bf8fd0dc32dfb811b0b3` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/instance--e1cb3d775a985cc4ad3032d3.md) | 89 | `declaration-track:e1cb3d775a985cc4ad3032d3b7fbc9153d421a5e56c7eda95c906e9574447a2a` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/instance--8067abc9c8a89a4a4104058b.md) | 90 | `declaration-track:8067abc9c8a89a4a4104058b3a335e6b7df16d1cc8a87ac6ba12411f1b127aea` |
| 11 | `def` | [singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/singleton--6c62040ea309f160a94a94bb.md) | 93 | `declaration-track:6c62040ea309f160a94a94bb66be0c5f642fe732fb3575c7c0a41dc9511da1f9` |
| 12 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/size--76031ca856c8c876b6174183.md) | 96 | `declaration-track:76031ca856c8c876b6174183838f182b533c4c6550a57b35e6d3c48fafbcb94b` |
| 13 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/get--223aa632f0be14ae17df0953.md) | 99 | `declaration-track:223aa632f0be14ae17df0953b9b065391516ab25e5d2b901aa8a3a9bc724ca80` |
| 14 | `def` | [insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/insert--369d7d63ef7bf3c17f612d0b.md) | 102 | `declaration-track:369d7d63ef7bf3c17f612d0bf193204b3fef035478b1d975be2287a6e6f68091` |
| 15 | `theorem` | [size_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/size-insert--6dfbd09d0dd1b870cc04a15b.md) | 106 | `result-track:6dfbd09d0dd1b870cc04a15bff7fbd31c28a21110d5b0d211f918bba1fb1fa74` |
| 16 | `def` | [max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/max--d877a7d6176c0cb1f636d557.md) | 111 | `declaration-track:d877a7d6176c0cb1f636d557f4dc82c71344547ca4a5735f9b38c765e20c67e7` |
| 17 | `def` | [popMaxAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/popmaxaux--221e1685bb5cb7e6c083fdb9.md) | 114 | `declaration-track:221e1685bb5cb7e6c083fdb945ed534daf5322e8793b4bd064b3d69e5d2bd787` |
| 18 | `def` | [popMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/popmax--a38e02fa8ad6d2e1e168dc0a.md) | 129 | `declaration-track:a38e02fa8ad6d2e1e168dc0a34d86074e52d10a195b7ffea916aa5b7aedffcb6` |
| 19 | `theorem` | [size_popMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/size-popmax--096adde5c68b070e6e9249a2.md) | 131 | `result-track:096adde5c68b070e6e9249a27336e9c7df938c2afbcceb8f693aa9d2573ab1c9` |
| 20 | `def` | [extractMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/extractmax--e547871306a87ccaec01e61f.md) | 135 | `declaration-track:e547871306a87ccaec01e61f0e3593ff64855070088e1b4d51a56c33979b456e` |
| 21 | `theorem` | [size_pos_of_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/size-pos-of-max--6706f45b7d5c15e71d8ad0fa.md) | 138 | `result-track:6706f45b7d5c15e71d8ad0fac6ad203dd94eb1a8e31d4a718e27e302bd73707e` |
| 22 | `def` | [insertExtractMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/insertextractmax--a5caff9d30fa0b8f524232ff.md) | 142 | `declaration-track:a5caff9d30fa0b8f524232ffe62ce3bf780892666f2c3cb8bdaf36575978f14d` |
| 23 | `def` | [replaceMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/replacemax--e3faae5e5c4b4e3d216eb027.md) | 152 | `declaration-track:e3faae5e5c4b4e3d216eb027bc8845f06e6756c22f269103dd502f057bf96d91` |
| 24 | `def` | [decreaseKey](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/decreasekey--79d6d131e9498b7fcf1b3b46.md) | 160 | `declaration-track:79d6d131e9498b7fcf1b3b46c75ec467690adbb74c3e63c2c0c5f26409c02b76` |
| 25 | `def` | [increaseKey](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/increasekey--c801be90b002f79975532d57.md) | 164 | `declaration-track:c801be90b002f79975532d57ca9ad217e679e2ac7efce37d27ad18c8f469d18d` |
| 26 | `def` | [Array.toBinaryHeap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/array-tobinaryheap--b7c43705356a8aeebca1e975.md) | 170 | `declaration-track:b7c43705356a8aeebca1e97508c8f0652d16b39bed37098d3d0b0c35f90a387b` |
| 27 | `def` | [Array.heapSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/declarations/array-heapsort--f7727e13733c4f38a0635c46.md) | 174 | `declaration-track:f7727e13733c4f38a0635c465e8d9e0d26540b9b542a841dc9eeaa548ac7beb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
