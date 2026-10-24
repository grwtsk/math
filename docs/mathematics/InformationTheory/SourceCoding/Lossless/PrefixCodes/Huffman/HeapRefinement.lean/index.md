# GRWTSK.InformationTheory.Huffman.HeapRefinement

[Complete source index](../../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/InformationTheory/Huffman/HeapRefinement.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72fb149c7256c4d4cff8f7731e83005382dbcfce`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [UniqueMinima](declarations/uniqueminima--6c49838d1567bdf76dbe9b6f.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [uniqueMinima_perm](declarations/uniqueminima-perm--d6d6c525801e610d2cd4e18f.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [unique_minimum](declarations/unique-minimum--c64fb8bd233a21bbc23c3e71.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [seedEntries_minimum_mem](declarations/seedentries-minimum-mem--f100e53f1bb7a966785c7ab5.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [seedEntries_unique](declarations/seedentries-unique--4384dde55df81dc55c06fddd.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [alphabet_minima_nodup](declarations/alphabet-minima-nodup--a1623dd9373c1a6a40c752c8.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [initial_unique](declarations/initial-unique--334826179db8fb47dca1c5a3.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [merge_unique](declarations/merge-unique--5e9a9174df1b021f11088305.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [insert_unique](declarations/insert-unique--5f6b32a291ea588bec0ddf2a.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [normalize_perm](declarations/normalize-perm--39ecc2eacda7e84b81a07329.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [Pop](declarations/pop--394eba87c1e3eabdce1707f2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [normalize_pop](declarations/normalize-pop--3001be3e7b9176608bdc0ea1.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [normalize_two_pops](declarations/normalize-two-pops--d60243b6d097d54e6ff6398e.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [normalize_sorted](declarations/normalize-sorted--2d7e502af60cb5ef1813975b.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `inductive` | [HeapBuild](declarations/heapbuild--fdfb74e11b522ecb275ae795.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [heapBuild_refines](declarations/heapbuild-refines--2a8ff35b83392215706000ba.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fromWeights_heap_refines](declarations/fromweights-heap-refines--f3d85b19abff3b902d4df6a9.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [queueMass](declarations/queuemass--eb9e02affafae7459beb93b2.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [queueMass_perm](declarations/queuemass-perm--bbf7930a5423e3f2d27949ce.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [queueMass_insert](declarations/queuemass-insert--96fdf82006d3220b9cbf8841.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [queueMass_order](declarations/queuemass-order--e622b04187d2c78b26fdf440.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [queueMass_merge](declarations/queuemass-merge--ffbcedafda45bc0c63cc67fe.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [popped_pair_le_mass](declarations/popped-pair-le-mass--6580821b32eecd460ef4423a.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [heap_step_mass](declarations/heap-step-mass--1b30f98753dcf5f7a582b8d9.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [heap_step_unique](declarations/heap-step-unique--f58eed0268b3ea5f0133c843.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [seedEntries_mass](declarations/seedentries-mass--6e7ab2f8b43de8d392569100.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [initial_mass](declarations/initial-mass--f95581a96fba02be9efc8881.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [live_minima_distinct](declarations/live-minima-distinct--80bbb5d55b9656e9bced751d.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [live_rust_python_key](declarations/live-rust-python-key--891a4787f6e6d7fdd73c383e.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [live_python_tuple_comparison](declarations/live-python-tuple-comparison--c63d7b5e09b23767db513e9f.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
