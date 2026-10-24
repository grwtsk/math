# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31016d3295513fb05ccf1ef08ac93028afd31ddd",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31016d3295513fb05ccf1ef08ac93028afd31ddd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean.json)

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
| 1 | `structure` | [BinaryHeap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/binaryheap--3d55e837666426f02ab655eb.md) | 21 | `declaration-track:3d55e837666426f02ab655eba766805ec412be1d4b73761ab885e4fc1fc36fef` |
| 2 | `def` | [maxChild](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/maxchild--d39043184cb2c355df156f66.md) | 27 | `declaration-track:d39043184cb2c355df156f66053d0e8c24a2582e19575223b59a678b425b2d05` |
| 3 | `def` | [heapifyDown](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/heapifydown--da2135bcaa09aece675fe126.md) | 42 | `declaration-track:da2135bcaa09aece675fe1269ccdfafe56301b139dd0831a89e17ae15c0633ac` |
| 4 | `def` | [mkHeap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/mkheap--cb29fe816a49b8d3329adcf1.md) | 62 | `declaration-track:cb29fe816a49b8d3329adcf1c8e0ddaafd2849e34beef4d9d99d0675fa897111` |
| 5 | `def` | [heapifyUp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/heapifyup--10851ade5cacbabb88dfa222.md) | 74 | `declaration-track:10851ade5cacbabb88dfa222a3c990dddffb0e6afe03ec886ab1824e6bf246d5` |
| 6 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/empty--1aaccbb7e0b9dc6b35bc9df0.md) | 85 | `declaration-track:1aaccbb7e0b9dc6b35bc9df09c7e69bbbd371f74baef5302cc4206748a01dbca` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/instance--02b0d896ca2fe824f70d4e91.md) | 87 | `declaration-track:02b0d896ca2fe824f70d4e91582ddc34d8d83d0ca75e45424eaa4f5abdda5fc7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/instance--b42732abbe305c56af15db67.md) | 88 | `declaration-track:b42732abbe305c56af15db67ac350154f77653d438d2818521337c53f3767118` |
| 9 | `def` | [singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/singleton--ce49ada68d17412221d2540e.md) | 91 | `declaration-track:ce49ada68d17412221d2540e6efdfdb70bb5eb320956dbe8197feb2565f51d2f` |
| 10 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/size--7ffbc0ab933d4fa5b13397cc.md) | 94 | `declaration-track:7ffbc0ab933d4fa5b13397cc025c88891090b3733c96aa1eb5cda5cd88f59d96` |
| 11 | `def` | [vector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/vector--316955ee8696f490f4e8cf80.md) | 97 | `declaration-track:316955ee8696f490f4e8cf806c55cd35d18d87ab921f38373238a0509b0ab291` |
| 12 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/get--3dc87dec5cb83d3ad183d10b.md) | 100 | `declaration-track:3dc87dec5cb83d3ad183d10b22e812908eac69ad3c46de78cf2bed23a4a1c266` |
| 13 | `def` | [insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/insert--29708288493902cbf34eb3a4.md) | 103 | `declaration-track:29708288493902cbf34eb3a4df5523982811fb21a30be682110246a263de2370` |
| 14 | `theorem` | [size_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/size-insert--53a5459c1f39cfff7292ddd0.md) | 106 | `result-track:53a5459c1f39cfff7292ddd012ebb9b4944b0ef27088e026bec9eedaae0b4e47` |
| 15 | `def` | [max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/max--b82c0a65faf505c1a4de08e3.md) | 111 | `declaration-track:b82c0a65faf505c1a4de08e35cf1ce52dbf73b7ba8fdc24e03f7839bc63c79f9` |
| 16 | `def` | [popMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/popmax--a7d9884d4a29e4fc52b42bf9.md) | 115 | `declaration-track:a7d9884d4a29e4fc52b42bf9531c6c19ad892014ddc7e139b1b3fca63eeece10` |
| 17 | `theorem` | [size_popMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/size-popmax--fccd94b554d65233985aaa3a.md) | 125 | `result-track:fccd94b554d65233985aaa3ab8b30e4e56bb9586cf60d9aeeea0f4297549c77f` |
| 18 | `def` | [extractMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/extractmax--4c82acc264f95be6d2f50dd8.md) | 133 | `declaration-track:4c82acc264f95be6d2f50dd829c44e92a6de3f8ae1f3c5e05b603e3851af021a` |
| 19 | `theorem` | [size_pos_of_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/size-pos-of-max--5c29573a22cc3dc774ae66bb.md) | 136 | `result-track:5c29573a22cc3dc774ae66bb1db3d9104c54211934e7d32ff59ad11a46448fc5` |
| 20 | `def` | [insertExtractMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/insertextractmax--fbe8c2a7d73ee830fa21c9ee.md) | 143 | `declaration-track:fbe8c2a7d73ee830fa21c9ee7c2e0f76eeaebf7b778fe23131f786e278d724fa` |
| 21 | `def` | [replaceMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/replacemax--6e93e2cee6e6febf48d4731d.md) | 153 | `declaration-track:6e93e2cee6e6febf48d4731dde877c760d59c6ae74ea74e88896b94719909f3f` |
| 22 | `def` | [decreaseKey](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/decreasekey--71a59fdee20782537e193cd6.md) | 161 | `declaration-track:71a59fdee20782537e193cd62e644fc5e98ccf0aa0453f426d51ce299d67eafc` |
| 23 | `def` | [increaseKey](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/increasekey--63988d84fe7513af69ce2601.md) | 165 | `declaration-track:63988d84fe7513af69ce26019faba3e384320a2385d108549948c5eab1267983` |
| 24 | `def` | [Batteries.Vector.toBinaryHeap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/batteries-vector-tobinaryheap--92abfcbe925932b838f546b3.md) | 171 | `declaration-track:92abfcbe925932b838f546b3748ff0063f7f713611dd8b51c0cabb70245e94a4` |
| 25 | `def` | [Array.toBinaryHeap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/array-tobinaryheap--ee83e5e13441eb2ee83a0294.md) | 177 | `declaration-track:ee83e5e13441eb2ee83a0294621a2a170cc62aca26ae535bfb15506a1f929790` |
| 26 | `def` | [Array.heapSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4af1161cc5a7ceaf170eb76c85e52cfa9863970a969adc67ba69d31390efc1cd.lean/declarations/array-heapsort--85bb8b7258696ec45d75fe2a.md) | 182 | `declaration-track:85bb8b7258696ec45d75fe2a67445f7ab5bd381bc7e0698a057e51c82533e929` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
