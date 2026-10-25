# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Counting.Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18b7076c3ff276d8bf3a35a7de5a4c0dfc495258",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18b7076c3ff276d8bf3a35a7de5a4c0dfc495258`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CountableEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/countableencoding--612a54a9ce4562c4a9c52142.md) | 15 | `declaration-track:612a54a9ce4562c4a9c521427397b4cd82779b1c14ca0390107e185e1c7718ef` |
| 2 | `theorem` | [CountableEncoding.encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/countableencoding-encode-injective--64e9a70812fe59dc7bbdcc29.md) | 20 | `result-track:64e9a70812fe59dc7bbdcc29c32e442f64dd13e8ff63c19227a6d042bff49da2` |
| 3 | `def` | [decodeByPreimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/decodebypreimage--769f007693f778d4fd39f436.md) | 29 | `declaration-track:769f007693f778d4fd39f436dcd95193956b2cb67ec4f77e7cc301cbb9682f7d` |
| 4 | `theorem` | [decodeByPreimage_roundTrip](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/decodebypreimage-roundtrip--3d24e15b740a55101dbce6a6.md) | 40 | `result-track:3d24e15b740a55101dbce6a6c65bad5b83a9b241c29a5ca8ad04a206bf365ba6` |
| 5 | `structure` | [PairingCodec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/pairingcodec--34218e0f90c238bd97aec551.md) | 54 | `declaration-track:34218e0f90c238bd97aec5511e30ed62003488d1b2274123611a2a0fee7d1e74` |
| 6 | `def` | [tagEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/tagencode--2d6ba7e0e9e62762688837a0.md) | 61 | `declaration-track:2d6ba7e0e9e62762688837a082de2f7f5d397eb322d5d8cccc9274eadae747bb` |
| 7 | `def` | [binaryLogicAtom_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/binarylogicatom-countable--d68688a0f78cdd9f0ca7e409.md) | 64 | `declaration-track:d68688a0f78cdd9f0ca7e409dd21b93e2be94bbf21cf783b1343e4b7d35db37d` |
| 8 | `def` | [encodeTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/encodetree--8d8cc07dec3f8e4856a68050.md) | 98 | `declaration-track:8d8cc07dec3f8e4856a68050a5ad4767e7f62a33f1a491a3cc302c75ab6c7929` |
| 9 | `theorem` | [encodeTree_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/encodetree-injective--b16bd23d1472c14dc4d1a024.md) | 107 | `result-track:b16bd23d1472c14dc4d1a024298c21d4a19b72472e80075c33c7a440f2fd0174` |
| 10 | `def` | [decodeTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/decodetree--39ca28cf466ddaaf0f78a1d6.md) | 155 | `declaration-track:39ca28cf466ddaaf0f78a1d6c20b921645fbd2cccef571cdbb9a5523295a18e8` |
| 11 | `theorem` | [decodeTree_encodeTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/decodetree-encodetree--980e31731cfe158586669b6b.md) | 161 | `result-track:980e31731cfe158586669b6b9bbb99299af0691369ab2b444bd12b8f31cfc605` |
| 12 | `def` | [binaryLogicTree_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/binarylogictree-countable--b82d58b3274c33ad93ebe520.md) | 171 | `declaration-track:b82d58b3274c33ad93ebe520f2acd62379c9cfd95a1679f8111d069d683db086` |
| 13 | `def` | [natMatrixAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/natmatrixatom--90d5500e931d3ca6c798deb6.md) | 179 | `declaration-track:90d5500e931d3ca6c798deb65c227c71d6c6c53b121e227c9707e9ac47de5fc8` |
| 14 | `def` | [natLeaf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/natleaf--55766987b17cc2d8f39ce9c8.md) | 186 | `declaration-track:55766987b17cc2d8f39ce9c85f2eb2cc825e762ede8044b9fc2debf1f613a583` |
| 15 | `theorem` | [natLeaf_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/natleaf-injective--3151d85a7d2f344a913a85a3.md) | 189 | `result-track:3151d85a7d2f344a913a85a3d7a9ec16ed8c39d4aa693c39a66c91f75f43e486` |
| 16 | `theorem` | [binaryLogicTree_countably_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0.lean/declarations/binarylogictree-countably-infinite--ca78482b9363f564d0c1c11e.md) | 198 | `result-track:ca78482b9363f564d0c1c11e230ef6d63bb17d49b7d7b5372931bdee83f81e41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
