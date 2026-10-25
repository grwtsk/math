# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3658a99be34b09d78f5b1d4b8b911899fbcd8f3b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3658a99be34b09d78f5b1d4b8b911899fbcd8f3b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Slice.InternalLemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Internal.iter_eq_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/internal-iter-eq-iter--21cb69004754ed7f792d411a.md) | 22 | `result-track:21cb69004754ed7f792d411a96d4bfc6468a94e298b0b81b131a2cc4f895939a` |
| 2 | `theorem` | [iter_eq_toIteratorIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/iter-eq-toiteratoriter--5f0ca3720f667be25019adf2.md) | 26 | `result-track:5f0ca3720f667be25019adf22f2068b02b3edf74e294aad1476b296e0f57e3f5` |
| 3 | `theorem` | [forIn_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/forin-iter--f1ef04c0b0e83506b95db5e9.md) | 31 | `result-track:f1ef04c0b0e83506b95db5e91152fbb368ee3c80a3589e9c45ebd853771886b8` |
| 4 | `theorem` | [foldlM_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/foldlm-iter--9f649d279e3fe70a5e579de1.md) | 39 | `result-track:9f649d279e3fe70a5e579de15df4d9072119936c4be4a61b201f574140199d92` |
| 5 | `theorem` | [foldl_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/foldl-iter--b8cb3e9b54008c0ca9242450.md) | 45 | `result-track:b8cb3e9b54008c0ca92424502c182a847705307147a5722291bf169c48feaed7` |
| 6 | `theorem` | [size_eq_length_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/size-eq-length-iter--9d664597cc7ff85f0bfca1be.md) | 51 | `result-track:9d664597cc7ff85f0bfca1bee4a02e567cecf52c74e2b09a5a4e82039b063040` |
| 7 | `def` | [size_eq_count_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/size-eq-count-iter--80c00368b6101e501b46fbf0.md) | 61 | `declaration-track:80c00368b6101e501b46fbf09a9e2a9f1eaabeda1ba41604893af171af8dddfd` |
| 8 | `theorem` | [length_iter_eq_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/length-iter-eq-size--4c2e9477b22e0cb09dfa702e.md) | 63 | `result-track:4c2e9477b22e0cb09dfa702e7a801a99d834cad37dbab5a5e532c4f5d9f23b67` |
| 9 | `def` | [count_iter_eq_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/count-iter-eq-size--1953420271767ebd6ac6987a.md) | 73 | `declaration-track:1953420271767ebd6ac6987a31846419db3bc74dff448b92a1502d61d504e87c` |
| 10 | `theorem` | [toArray_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/toarray-iter--cc6177a7b21a8eb08c776d39.md) | 76 | `result-track:cc6177a7b21a8eb08c776d395c0a373c6991b9b09ca81aada347340d1258e343` |
| 11 | `theorem` | [toArray_eq_toArray_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/toarray-eq-toarray-iter--d48c0270ee2f37e188ca2ad3.md) | 83 | `result-track:d48c0270ee2f37e188ca2ad3ba13a93157412db84d6acae57477da26bd0ed847` |
| 12 | `theorem` | [toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/tolist-iter--29f467d3a967dbb09acf78dd.md) | 90 | `result-track:29f467d3a967dbb09acf78dd86972bd2d54fa40250085d92bd21b968f8e3254e` |
| 13 | `theorem` | [toList_eq_toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/tolist-eq-tolist-iter--34e1361f9f20f962e159379c.md) | 97 | `result-track:34e1361f9f20f962e159379c9a700810bd1009dc6899c1d839ca5595030ce4cc` |
| 14 | `theorem` | [toListRev_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/tolistrev-iter--55eee50e8e29d5879bcda77f.md) | 104 | `result-track:55eee50e8e29d5879bcda77f06352fffde0141ab08657f36acd48496263f5809` |
| 15 | `theorem` | [toListRev_eq_toListRev_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/tolistrev-eq-tolistrev-iter--7e5da4ced8325743bd7a5c22.md) | 110 | `result-track:7e5da4ced8325743bd7a5c2231376fd6b19e908e9d2d7def7abd8305c163d609` |
| 16 | `theorem` | [fold_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/fold-iter--62b43682b59822f21ef7f2ff.md) | 115 | `result-track:62b43682b59822f21ef7f2ff0c05e4e759568cd2db1929da8d37d42cec557837` |
| 17 | `theorem` | [foldM_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea.lean/declarations/foldm-iter--329e36ef4bb6a717e7aa005a.md) | 120 | `result-track:329e36ef4bb6a717e7aa005a73da173eddb0d15c4b5977ac9ca4e3b64f242ef5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
