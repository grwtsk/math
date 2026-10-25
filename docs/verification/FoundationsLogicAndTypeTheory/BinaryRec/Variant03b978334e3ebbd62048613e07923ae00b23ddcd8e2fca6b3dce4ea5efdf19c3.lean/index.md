# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.BinaryRec.Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "581f7beeaba2db079ce5820f0fc729a43b96c2f7",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `581f7beeaba2db079ce5820f0fc729a43b96c2f7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bit](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit--48e774db23abba3f96295c59.md) | 38 | `declaration-track:48e774db23abba3f96295c5906181ba2f61440eeb26ba60dea1102f04b39f12a` |
| 2 | `theorem` | [shiftRight_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/shiftright-one--2fe7e31ab356a26fb17a2516.md) | 41 | `result-track:2fe7e31ab356a26fb17a25161c3b3d8123a544be62aa5e7df510ba61c6a7d33e` |
| 3 | `theorem` | [bit_decide_mod_two_eq_one_shiftRight_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-decide-mod-two-eq-one-shiftright-one--fd36a059c682daa0984e1d84.md) | 44 | `result-track:fd36a059c682daa0984e1d842ee2192fa5029da7d4348f69f91015a15ea90eb2` |
| 4 | `theorem` | [bit_testBit_zero_shiftRight_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-testbit-zero-shiftright-one--10841667fe506c327b79f3d7.md) | 48 | `result-track:10841667fe506c327b79f3d79e2dd82f5159c3fe7e318deb6f7286d03f321a34` |
| 5 | `theorem` | [bit_false](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-false--d9e693f145d7a3841f52c35f.md) | 52 | `result-track:d9e693f145d7a3841f52c35f57dc86db272aa5b43c347f6a55e23c37c02e1e31` |
| 6 | `theorem` | [bit_true](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-true--2a040b03dfc977a1ffc977a5.md) | 56 | `result-track:2a040b03dfc977a1ffc977a5685132fa90b9ece34a21af951770231738cead98` |
| 7 | `theorem` | [bit_false_apply](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-false-apply--ab2f4f3e6e89e975d73c267c.md) | 60 | `result-track:ab2f4f3e6e89e975d73c267c2497da41ddbb867d1e177f29490f27b32466d736` |
| 8 | `theorem` | [bit_true_apply](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-true-apply--c6cdce9c0a87d7d2402d6a5f.md) | 64 | `result-track:c6cdce9c0a87d7d2402d6a5fc1dd20bd4cdbf58b83888f87da6e64c3112d098f` |
| 9 | `theorem` | [bit_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-eq-zero-iff--d1c83fbe7e39752850610376.md) | 68 | `result-track:d1c83fbe7e39752850610376c3f151807fb1e74aff3bf03330188d50a298be2c` |
| 10 | `theorem` | [bit_ne_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-ne-zero-iff--b7b259a1da435e70b2cb8848.md) | 71 | `result-track:b7b259a1da435e70b2cb8848055f0d9813aec0c54bdd708d9be3e466140545b6` |
| 11 | `def` | [bitCasesOn](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bitcaseson--ca0e28476eae17995a385780.md) | 78 | `declaration-track:ca0e28476eae17995a3857807a7a68773270144310a9b3da5068a191707ac0f3` |
| 12 | `theorem` | [bit_lt_two_pow_succ_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-lt-two-pow-succ-iff--f14ef2163495af94c16e7206.md) | 84 | `result-track:f14ef2163495af94c16e7206a8fe6cb62b76f67258041b68fbb7fba68bdd8f3e` |
| 13 | `theorem` | [log2_eq_succ_log2_shiftRight](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/log2-eq-succ-log2-shiftright--ba2b85b056a432d1fbd34952.md) | 87 | `result-track:ba2b85b056a432d1fbd3495264995ec6ecefcd22e68324dc92f890054a4ab847` |
| 14 | `def` | [binaryRec](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/binaryrec--570bca6586fd547f95f20178.md) | 96 | `declaration-track:570bca6586fd547f95f2017855139ee898ab395ecfa2b9963feb09404e35c5b6` |
| 15 | `def` | [binaryRec'](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/binaryrec--c155e74deb43196be0b367d5.md) | 113 | `declaration-track:c155e74deb43196be0b367d5318cdda29b272bd6e2de07b7304115f7f02e8867` |
| 16 | `def` | [binaryRecFromOne](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/binaryrecfromone--7376d23ab0e2ee2d64850784.md) | 126 | `declaration-track:7376d23ab0e2ee2d64850784b30647210a89e903746a7f04f085e7bbd4f72fae` |
| 17 | `theorem` | [bit_val](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-val--493f9a27df4ae5a56838fdae.md) | 136 | `result-track:493f9a27df4ae5a56838fdaefa37ef85ceaa1922f5c609d7fe743ffb29033ddb` |
| 18 | `theorem` | [bit_div_two](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-div-two--8de70eacd1e8a7e69064920a.md) | 140 | `result-track:8de70eacd1e8a7e69064920a94cb860305b744b2d1f7b30d91febd100853d3be` |
| 19 | `theorem` | [bit_mod_two](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-mod-two--21ab9cb2e28dd24fa1c18fdd.md) | 146 | `result-track:21ab9cb2e28dd24fa1c18fdd6b5fbe237bd001a12066fb3e78df75d6ee2d2718` |
| 20 | `theorem` | [bit_shiftRight_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bit-shiftright-one--fa072c407cefb38a9a43add6.md) | 150 | `result-track:fa072c407cefb38a9a43add64ae30f1470c398b0fe6b1eb2420297bbb0e4496a` |
| 21 | `theorem` | [testBit_bit_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/testbit-bit-zero--1148f351c5aef80775c8d62c.md) | 153 | `result-track:1148f351c5aef80775c8d62c96deb3e90351c93f1aa3658c84ff07a7414d9049` |
| 22 | `theorem` | [bitCasesOn_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/bitcaseson-bit--f43692296df011ce1bfd1112.md) | 159 | `result-track:f43692296df011ce1bfd111216ffe74ac1c3f93114adde3b3404dbf17eb010eb` |
| 23 | `theorem` | [binaryRec_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/binaryrec-zero--f070b9fe18e5e60a90f452b5.md) | 167 | `result-track:f070b9fe18e5e60a90f452b59b28255f8128d095e0d2ba7b8da53c6a280ef670` |
| 24 | `theorem` | [binaryRec_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/binaryrec-one--a507ff5fd4a399ece0aa65f8.md) | 171 | `result-track:a507ff5fd4a399ece0aa65f81c5b1fd225355241a64c40c62df6c28d06a78c82` |
| 25 | `theorem` | [binaryRec_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/binaryrec-eq--8ca20516f304cf8b67b39e45.md) | 174 | `result-track:8ca20516f304cf8b67b39e45d9ff5c908d31f79a447e682ccffd05237493dd4e` |
| 26 | `theorem` | [binaryRec'_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/binaryrec-zero--57db0409bdea9d04b5a462ab.md) | 190 | `result-track:57db0409bdea9d04b5a462ab98d0a74a31ff15744fd2605273f65eaa825916ed` |
| 27 | `theorem` | [binaryRec'_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/binaryrec-one--b5b674b7ad70e1b20ca3a27f.md) | 195 | `result-track:b5b674b7ad70e1b20ca3a27f96d906d1b166a205ea03650d6f7f589ee73f0c90` |
| 28 | `theorem` | [binaryRec'_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/binaryrec-eq--17c443e151b7b82318df7d75.md) | 200 | `result-track:17c443e151b7b82318df7d759b9fa9a82deb964a0b649f4b10f12321c2703b4f` |
| 29 | `theorem` | [binaryRecFromOne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/binaryrecfromone-zero--c83705315d40515043e0419d.md) | 206 | `result-track:c83705315d40515043e0419d2ac0e2e40a946514ad2fd7b0c01d37d0d7d8902e` |
| 30 | `theorem` | [binaryRecFromOne_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/binaryrecfromone-one--f4b4353fd854115cc68a2850.md) | 211 | `result-track:f4b4353fd854115cc68a28502a7cfd35ff8c5e5a9165501eff08c52dca2de307` |
| 31 | `theorem` | [binaryRecFromOne_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean/declarations/binaryrecfromone-eq--d1e2c6570bf876d311971005.md) | 216 | `result-track:d1e2c6570bf876d31197100567dfc363308a806d52e0e3214f183827a310f553` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
