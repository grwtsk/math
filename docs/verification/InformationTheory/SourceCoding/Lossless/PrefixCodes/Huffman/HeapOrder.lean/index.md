# Verification target: GRWTSK.InformationTheory.Huffman.HeapOrder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3f6d761b455ef63c0c6f3bb96ebf4669a159098",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/HeapOrder.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3f6d761b455ef63c0c6f3bb96ebf4669a159098`.

Source path: `GRWTSK/InformationTheory/Huffman/HeapOrder.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/HeapOrder.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.Builder`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KeyLE](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/keyle--00eeea7afbaa1e48c62c2bb3.md) | 16 | `declaration-track:00eeea7afbaa1e48c62c2bb33c4b74cee58d7a787ec57a9f4851c48ea0dfbbeb` |
| 2 | `def` | [PairLE](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/pairle--0e63ba73d2e0ff5428efa26e.md) | 20 | `declaration-track:0e63ba73d2e0ff5428efa26e9c3252ce6a8c079db3adda3438990f6b0a980daa` |
| 3 | `instance` | [(anonymous)](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/instance--90d5b2b9fc0a1f8ac57b8999.md) | 23 | `declaration-track:90d5b2b9fc0a1f8ac57b8999472147a8791072555435776867b7b5e5fcd26a50` |
| 4 | `instance` | [(anonymous)](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/instance--6b1cdfadae959b0998388545.md) | 24 | `declaration-track:6b1cdfadae959b09983885457c4e1ce8992f02a5d1326e51e86ca1f0de185eaf` |
| 5 | `theorem` | [before_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/before-iff--ea5edffe8263e0851178121e.md) | 26 | `result-track:ea5edffe8263e0851178121e73034ae766e92540e5f36c9660289fd9b93c603d` |
| 6 | `theorem` | [keyLE_refl](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/keyle-refl--e57a5ca8e5e7308c33d68ca6.md) | 29 | `result-track:e57a5ca8e5e7308c33d68ca6dacea33a8a5af1617190c42b043928b2580aaf6b` |
| 7 | `theorem` | [keyLE_total](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/keyle-total--fd4594301b84ab255daa6751.md) | 30 | `result-track:fd4594301b84ab255daa67514eb09a2089d418b0e22d7dcc314aad07075d5887` |
| 8 | `theorem` | [keyLE_trans](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/keyle-trans--9cb5631e4a923bd3ca0e8542.md) | 34 | `result-track:9cb5631e4a923bd3ca0e8542a5343ba197d8e84be707d287d9eba0b0c476ffb8` |
| 9 | `theorem` | [keyLE_minimum_eq](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/keyle-minimum-eq--6c686bdbb5f8409fe20b0937.md) | 39 | `result-track:6c686bdbb5f8409fe20b09372f53dabd163357e527be49aadc3326ba5e90e721` |
| 10 | `theorem` | [distinct_minima_key_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/distinct-minima-key-iff--131f4dc2c1989bf0d5274635.md) | 46 | `result-track:131f4dc2c1989bf0d52746355d6aa912190734d7a5b3e2a5a770d202606e4c3b` |
| 11 | `theorem` | [third_component_irrelevant](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/third-component-irrelevant--2db284082a50f0c9229c2854.md) | 52 | `result-track:2db284082a50f0c9229c2854170334b6f2870f78dde5305889b0169fd95fe288` |
| 12 | `def` | [pythonTupleLess](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/pythontupleless--5313bb6016d51bf0ac93dcca.md) | 65 | `declaration-track:5313bb6016d51bf0ac93dccae96565f66573b496d624c12bab68761158f62b88` |
| 13 | `def` | [rustTupleLess](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/rusttupleless--24f7877db8dd9b7c72c3a1b0.md) | 72 | `declaration-track:24f7877db8dd9b7c72c3a1b0ea06670142b4c32167cfed10a757a7248b55d905` |
| 14 | `theorem` | [python_payload_unreachable](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/python-payload-unreachable--d66c6975b28b36283bcd51c7.md) | 78 | `result-track:d66c6975b28b36283bcd51c7dd399aa85560a70718fb87336e9cc9f1412fa63c` |
| 15 | `theorem` | [rustTupleLess_eq_before](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/rusttupleless-eq-before--b0681c363dd5e88669d8dcb7.md) | 90 | `result-track:b0681c363dd5e88669d8dcb72ab339c5abbd3c830faedf22df9981cd76b147db` |
| 16 | `theorem` | [insertEntry_perm](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/insertentry-perm--53239f1481b6411fb2ee8070.md) | 98 | `result-track:53239f1481b6411fb2ee8070a9a977cd0470d78d0e83e1e8ee994dd805400248` |
| 17 | `theorem` | [orderEntries_perm](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/orderentries-perm--dee64db671b00b6ab781d03e.md) | 108 | `result-track:dee64db671b00b6ab781d03e90d59d73beb8b807fca6f1857c6662057334bc0c` |
| 18 | `theorem` | [insertEntry_sorted](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/insertentry-sorted--0c1277223593a1703327473e.md) | 114 | `result-track:0c1277223593a1703327473e07710f033f108f0a90defedbb1536aefb773eca5` |
| 19 | `theorem` | [orderEntries_sorted](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/declarations/orderentries-sorted--7114616d310d859faeaf82d1.md) | 141 | `result-track:7114616d310d859faeaf82d1607efe6f485c582c11802ea25951302dad685df7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
