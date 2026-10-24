# Verification target: GRWTSK.InformationTheory.Huffman.HeapRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72fb149c7256c4d4cff8f7731e83005382dbcfce",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/HeapRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72fb149c7256c4d4cff8f7731e83005382dbcfce`.

Source path: `GRWTSK/InformationTheory/Huffman/HeapRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/HeapRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.HeapOrder`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapOrder.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniqueMinima](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/uniqueminima--6c49838d1567bdf76dbe9b6f.md) | 18 | `declaration-track:6c49838d1567bdf76dbe9b6fe638ad37dfc0339d818e80604e7c58d39fd8893f` |
| 2 | `theorem` | [uniqueMinima_perm](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/uniqueminima-perm--d6d6c525801e610d2cd4e18f.md) | 21 | `result-track:d6d6c525801e610d2cd4e18f1c7f5b5ac0783aa022c2cbd0d53c8da75903db90` |
| 3 | `theorem` | [unique_minimum](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/unique-minimum--c64fb8bd233a21bbc23c3e71.md) | 25 | `result-track:c64fb8bd233a21bbc23c3e711cad0dbffd501bca15c49b96d4b815d88f9f5844` |
| 4 | `theorem` | [seedEntries_minimum_mem](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/seedentries-minimum-mem--f100e53f1bb7a966785c7ab5.md) | 42 | `result-track:f100e53f1bb7a966785c7ab5feca9d2229e42086c5abca4ed993bd22d6b09e7e` |
| 5 | `theorem` | [seedEntries_unique](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/seedentries-unique--4384dde55df81dc55c06fddd.md) | 55 | `result-track:4384dde55df81dc55c06fdddaeb7c2417b4316e10802a556ede60d83bedfeb73` |
| 6 | `theorem` | [alphabet_minima_nodup](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/alphabet-minima-nodup--a1623dd9373c1a6a40c752c8.md) | 73 | `result-track:a1623dd9373c1a6a40c752c85f878365624badfb1291dc932c2e812a6a2f5dcb` |
| 7 | `theorem` | [initial_unique](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/initial-unique--334826179db8fb47dca1c5a3.md) | 88 | `result-track:334826179db8fb47dca1c5a3401cfe4097a407ff3833ffcb18461804f6fa8e55` |
| 8 | `theorem` | [merge_unique](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/merge-unique--5e9a9174df1b021f11088305.md) | 94 | `result-track:5e9a9174df1b021f110883050833fd41f37f7cc79b87d6c26eced2bf09b1d4f8` |
| 9 | `theorem` | [insert_unique](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/insert-unique--5f6b32a291ea588bec0ddf2a.md) | 107 | `result-track:5f6b32a291ea588bec0ddf2a6dfed24a7c049ff64f16f68c3b526abd783858a7` |
| 10 | `theorem` | [normalize_perm](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/normalize-perm--39ecc2eacda7e84b81a07329.md) | 114 | `result-track:39ecc2eacda7e84b81a07329dbe27fc1cf457c69cff09272266e9b77efae5b76` |
| 11 | `structure` | [Pop](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/pop--394eba87c1e3eabdce1707f2.md) | 125 | `declaration-track:394eba87c1e3eabdce1707f2d63a9c54e2a290a5998bcce2db23f49eb130f83e` |
| 12 | `theorem` | [normalize_pop](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/normalize-pop--3001be3e7b9176608bdc0ea1.md) | 129 | `result-track:3001be3e7b9176608bdc0ea1490bd5b6af540ba0d586ff2a85da2504d748bccd` |
| 13 | `theorem` | [normalize_two_pops](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/normalize-two-pops--d60243b6d097d54e6ff6398e.md) | 147 | `result-track:d60243b6d097d54e6ff6398e6a44dfe71f72888286d6904f5375284b9b67225b` |
| 14 | `theorem` | [normalize_sorted](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/normalize-sorted--2d7e502af60cb5ef1813975b.md) | 156 | `result-track:2d7e502af60cb5ef1813975b91056f2b487bbeff82d636c9a831e8546c7bd764` |
| 15 | `inductive` | [HeapBuild](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/heapbuild--fdfb74e11b522ecb275ae795.md) | 166 | `declaration-track:fdfb74e11b522ecb275ae795979bfd9b0dd77a15337e96ae6391235829b16fdc` |
| 16 | `theorem` | [heapBuild_refines](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/heapbuild-refines--2a8ff35b83392215706000ba.md) | 179 | `result-track:2a8ff35b83392215706000ba5f5bca2cbb48b53aa89b922516415d330b646c59` |
| 17 | `theorem` | [fromWeights_heap_refines](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/fromweights-heap-refines--f3d85b19abff3b902d4df6a9.md) | 210 | `result-track:f3d85b19abff3b902d4df6a9f0e91b6900676e8c2b49f9da36b1c80b6410028c` |
| 18 | `def` | [queueMass](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/queuemass--eb9e02affafae7459beb93b2.md) | 217 | `declaration-track:eb9e02affafae7459beb93b242454a1a5a2a645526223b6ed43381f053e262c5` |
| 19 | `theorem` | [queueMass_perm](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/queuemass-perm--bbf7930a5423e3f2d27949ce.md) | 221 | `result-track:bbf7930a5423e3f2d27949cede184cdd06457b8d84cc36e7fd95397ab59e44e6` |
| 20 | `theorem` | [queueMass_insert](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/queuemass-insert--96fdf82006d3220b9cbf8841.md) | 229 | `result-track:96fdf82006d3220b9cbf88411a3a86d27f28240d7b04cc66642f3e2a62a8bd9a` |
| 21 | `theorem` | [queueMass_order](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/queuemass-order--e622b04187d2c78b26fdf440.md) | 233 | `result-track:e622b04187d2c78b26fdf440fc8f7f804dedad9991ac77a5b402291a88f7cbdf` |
| 22 | `theorem` | [queueMass_merge](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/queuemass-merge--ffbcedafda45bc0c63cc67fe.md) | 238 | `result-track:ffbcedafda45bc0c63cc67fe22308eb23b6a931d34930740218dbfe47ea4d081` |
| 23 | `theorem` | [popped_pair_le_mass](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/popped-pair-le-mass--6580821b32eecd460ef4423a.md) | 247 | `result-track:6580821b32eecd460ef4423a2741d0a840e309c70d5c251b721ddb4ce59547cc` |
| 24 | `theorem` | [heap_step_mass](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/heap-step-mass--1b30f98753dcf5f7a582b8d9.md) | 255 | `result-track:1b30f98753dcf5f7a582b8d9524b8adbae9fdd2b71ca06dfa9addc3f3ec46677` |
| 25 | `theorem` | [heap_step_unique](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/heap-step-unique--f58eed0268b3ea5f0133c843.md) | 267 | `result-track:f58eed0268b3ea5f0133c843fd107a757fb5b24ab08a1002a54112011e2c8475` |
| 26 | `theorem` | [seedEntries_mass](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/seedentries-mass--6e7ab2f8b43de8d392569100.md) | 277 | `result-track:6e7ab2f8b43de8d39256910041840a3cd624ff08cdc0386b8e74cb1c84e50764` |
| 27 | `theorem` | [initial_mass](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/initial-mass--f95581a96fba02be9efc8881.md) | 289 | `result-track:f95581a96fba02be9efc88816fff8fa17d3ff4445bb604b908556bdddebd2b99` |
| 28 | `theorem` | [live_minima_distinct](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/live-minima-distinct--80bbb5d55b9656e9bced751d.md) | 295 | `result-track:80bbb5d55b9656e9bced751d022ccebb257f97c021479288d4337acd45c2acd8` |
| 29 | `theorem` | [live_rust_python_key](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/live-rust-python-key--891a4787f6e6d7fdd73c383e.md) | 301 | `result-track:891a4787f6e6d7fdd73c383e9f7f4bf1a6d961b0615a01d2d7e7baa54794a7dc` |
| 30 | `theorem` | [live_python_tuple_comparison](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/declarations/live-python-tuple-comparison--c63d7b5e09b23767db513e9f.md) | 310 | `result-track:c63d7b5e09b23767db513e9f52b49aed40ae93dd49891cfb82c5b380b7f66d74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
