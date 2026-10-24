# Verification target: GRWTSK.InformationTheory.Huffman.Builder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbaee12eb4084f25f0e46fa0bfa91a719191050a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/Builder.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbaee12eb4084f25f0e46fa0bfa91a719191050a`.

Source path: `GRWTSK/InformationTheory/Huffman/Builder.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/Builder.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.Tree`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Entry](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/entry--6be8822c42d8364a63657236.md) | 16 | `declaration-track:6be8822c42d8364a636572368f6b2268ea53ab72f0c61f76297570a35b60f0c9` |
| 2 | `def` | [Entry.before](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/entry-before--c9b7f34913c0ebce4cbe3c71.md) | 24 | `declaration-track:c9b7f34913c0ebce4cbe3c7183e115c720e1658b46dd8fe5033fb632f9ecc0f4` |
| 3 | `def` | [insertEntry](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/insertentry--85f29aa120d8539ed67557e3.md) | 28 | `declaration-track:85f29aa120d8539ed67557e39f09d2a0799de3f263df69bd23da0443c741be8a` |
| 4 | `def` | [orderEntries](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/orderentries--f0f03fa7d2535272b9394898.md) | 34 | `declaration-track:f0f03fa7d2535272b9394898d407baed88627e46591e1192ea8e5dcaeea4fa7e` |
| 5 | `def` | [queueSymbols](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/queuesymbols--ceaf1696e14c97b3fa5ae957.md) | 38 | `declaration-track:ceaf1696e14c97b3fa5ae9579d65fa058ea4c5a21f655d51cf20c2e024277d02` |
| 6 | `theorem` | [insertEntry_length](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/insertentry-length--76e43e8feee753bbce0d0f30.md) | 41 | `result-track:76e43e8feee753bbce0d0f3029b6d58ddb26160175953f99372af66f334d69f4` |
| 7 | `theorem` | [mem_insertEntry_symbols](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/mem-insertentry-symbols--7a4befc29eac0a85d0c9fe14.md) | 49 | `result-track:7a4befc29eac0a85d0c9fe1402ec419180f7af951bafe69033be949d9afb9b52` |
| 8 | `theorem` | [orderEntries_length](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/orderentries-length--f1c881f87ee9d74b7a649ff7.md) | 62 | `result-track:f1c881f87ee9d74b7a649ff701c8f1c3d374db176d6b115b97785a682e6f4784` |
| 9 | `theorem` | [mem_orderEntries_symbols](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/mem-orderentries-symbols--0a8ec90f105e2bd2df4b3180.md) | 68 | `result-track:0a8ec90f105e2bd2df4b31805a3689255536478b810d86a95512d518788d6093` |
| 10 | `def` | [mergeEntry](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/mergeentry--a47b3e6ad17dd504e33c449b.md) | 76 | `declaration-track:a47b3e6ad17dd504e33c449bcac792a2407995e7c5cdd1ed646e3db2733ec424` |
| 11 | `def` | [buildFuel](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/buildfuel--b410606ffbb27d5f511b8e71.md) | 84 | `declaration-track:b410606ffbb27d5f511b8e7169dc92ab32cb043bc202e5da064a0d1f4128025b` |
| 12 | `theorem` | [buildFuel_complete](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/buildfuel-complete--c8019d02ea46a1d922653723.md) | 91 | `result-track:c8019d02ea46a1d9226537237a242f67106fbab6a2a18b23bb2f8fd4cc410e71` |
| 13 | `def` | [alphabet](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/alphabet--42d6f17b5348f5282f144a81.md) | 124 | `declaration-track:42d6f17b5348f5282f144a8135dd4453d2219cd2464fafe5a7a0973e2b812bdd` |
| 14 | `theorem` | [mem_alphabet](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/mem-alphabet--4cd8b42966aba9a35f1c938b.md) | 126 | `result-track:4cd8b42966aba9a35f1c938b8d2d4269eeb4a55135949d855d44fe7d7d6aa3f0` |
| 15 | `def` | [seedEntries](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/seedentries--72e67a78742f7e618f84f285.md) | 133 | `declaration-track:72e67a78742f7e618f84f285711f82effa53104186a7b9f48e69805ca24d7b12` |
| 16 | `theorem` | [mem_seedEntries_symbols](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/mem-seedentries-symbols--cfba8cfa18110785db8b01d5.md) | 141 | `result-track:cfba8cfa18110785db8b01d55137d1d5595a204df90dfd0d58008915bae0cbc8` |
| 17 | `def` | [frequencies](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/frequencies--42d12600c5718a2394120c1c.md) | 171 | `declaration-track:42d12600c5718a2394120c1c5283ab8732ccd96ed0027bf726c90a88e362ccfb` |
| 18 | `def` | [sourceEntries](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/sourceentries--08b3a738f43e5679f346d474.md) | 173 | `declaration-track:08b3a738f43e5679f346d474ff62278c986c89989a3f8dde78f459104234672f` |
| 19 | `def` | [fromWeights](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/fromweights--911c27ebd78d743857fa680e.md) | 178 | `declaration-track:911c27ebd78d743857fa680e3d21a22565b58bffe715571c6553db100ab28411` |
| 20 | `def` | [build](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/build--17cf612cef4d63d4200506cb.md) | 182 | `declaration-track:17cf612cef4d63d4200506cbd0d39f378537ba7184fcf0cc5dbe8fd0ddcbfcc9` |
| 21 | `theorem` | [sourceEntries_symbols](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/sourceentries-symbols--98ef334e8235b94d5a0a5de7.md) | 185 | `result-track:98ef334e8235b94d5a0a5de727caaa9e22700a6837dad8721413ccf345954704` |
| 22 | `theorem` | [seedEntries_zero](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/seedentries-zero--f1e938d496378c4a1f575c57.md) | 190 | `result-track:f1e938d496378c4a1f575c57427b78ede3217c73ffc2538c7c559a4e675f575b` |
| 23 | `theorem` | [fromWeights_zero](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/fromweights-zero--6779afda864612016fed2393.md) | 196 | `result-track:6779afda864612016fed23938db442a76df5616b3ec742e2fbd93afee87aad6f` |
| 24 | `theorem` | [build_nil](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/build-nil--62ffbb4130847f9c2e0e7169.md) | 199 | `result-track:62ffbb4130847f9c2e0e7169b437f51a8e7b560d243caea5dcb5b79f10636478` |
| 25 | `theorem` | [fromWeights_complete](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/fromweights-complete--f1907805c2a0658baccf1bfc.md) | 205 | `result-track:f1907805c2a0658baccf1bfc3e91d0fa499fa0128bcf1a7c442ae3a5d4339391` |
| 26 | `theorem` | [build_complete](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/build-complete--1f534c33c4bcd4d0970c7b36.md) | 231 | `result-track:1f534c33c4bcd4d0970c7b36efe58b9413e42484151854979d7ea38fd44efb77` |
| 27 | `theorem` | [build_covers](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/declarations/build-covers--357196baf649289b260ea9d8.md) | 244 | `result-track:357196baf649289b260ea9d821fa67ec9c0589e3e2cc149cdf49cb1abfb43243` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
