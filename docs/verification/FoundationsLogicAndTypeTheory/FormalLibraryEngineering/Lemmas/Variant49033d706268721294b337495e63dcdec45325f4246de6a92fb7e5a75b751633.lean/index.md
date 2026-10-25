# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a709939782da0a1016d1b99c1949dd826d33f3cc",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a709939782da0a1016d1b99c1949dd826d33f3cc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Bitwise.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [shiftRight_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftright-eq--6c96366b949b7548278e51ee.md) | 24 | `result-track:6c96366b949b7548278e51eec9be19e560d8cc93a52f022cd05b6443bc1e00dc` |
| 2 | `theorem` | [natCast_shiftRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/natcast-shiftright--dc3675aaf268af5233b0e8d0.md) | 27 | `result-track:dc3675aaf268af5233b0e8d001baa09abc54bfd84a8d27124db9c339059ca0f2` |
| 3 | `theorem` | [negSucc_shiftRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/negsucc-shiftright--ef3f24bc5973339e0be266c0.md) | 30 | `result-track:ef3f24bc5973339e0be266c064fbc8d2169be443d15b6926f39e39439bd522c3` |
| 4 | `theorem` | [shiftRight_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftright-add--9aa2df603047c72156cffc6f.md) | 33 | `result-track:9aa2df603047c72156cffc6f54abe7d7471f34f404af3263f8c74c8a4066e8a6` |
| 5 | `theorem` | [shiftRight_eq_div_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftright-eq-div-pow--b780da42e70ab4e4690c3033.md) | 44 | `result-track:b780da42e70ab4e4690c30338bbeaa17429aaf308a487ebc43de0107b01154e7` |
| 6 | `theorem` | [zero_shiftRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/zero-shiftright--0ef1768db144effc35c14c2f.md) | 53 | `result-track:0ef1768db144effc35c14c2fe119f1b3fc499eb4d2a6497b629a2b18807b2755` |
| 7 | `theorem` | [shiftRight_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftright-zero--25c656c3f729ad34f1d028d0.md) | 57 | `result-track:25c656c3f729ad34f1d028d05fad47d80dbc71f3cd27230e8084d66d2ea43a85` |
| 8 | `theorem` | [le_shiftRight_of_nonpos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/le-shiftright-of-nonpos--cabdd69e3d6907e691609277.md) | 60 | `result-track:cabdd69e3d6907e69160927748c40f911200bc438eb59d185e48b3a84137f02b` |
| 9 | `theorem` | [shiftRight_le_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftright-le-of-nonneg--95cf731238d0c58ca2b7a391.md) | 74 | `result-track:95cf731238d0c58ca2b7a391e35e96cfbbb9ffdba6822f5a5045979c589a7d97` |
| 10 | `theorem` | [le_shiftRight_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/le-shiftright-of-nonneg--15ea45b2791dca42d2aa8dd2.md) | 87 | `result-track:15ea45b2791dca42d2aa8dd2d8b327a2388705096c6f439c36026b492ce0e83f` |
| 11 | `theorem` | [shiftRight_le_of_nonpos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftright-le-of-nonpos--8a6706912a51899faa5f3fed.md) | 95 | `result-track:8a6706912a51899faa5f3fed7016d6fd9282a51e702cffb01f75090839c788e5` |
| 12 | `theorem` | [natCast_shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/natcast-shiftleft--738ea93aa93101d8612d0b31.md) | 104 | `result-track:738ea93aa93101d8612d0b31faeaa1c8ce02d19411454a73f22756f43a234f0d` |
| 13 | `theorem` | [zero_shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/zero-shiftleft--506a6488bcc74e546a32fcf4.md) | 107 | `result-track:506a6488bcc74e546a32fcf46dfbfec72870daccfcf49155f65ab5b6291b46c3` |
| 14 | `theorem` | [shiftLeft_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-zero--9977906c46266f88c32812e2.md) | 112 | `result-track:9977906c46266f88c32812e2f979c59190142e3d47b37641249faf74c222eed7` |
| 15 | `theorem` | [shiftLeft_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-succ--dd726da4bb38f8e485172596.md) | 118 | `result-track:dd726da4bb38f8e485172596e7ee82c0424f067f4f8198cf37b2b5f84c88115a` |
| 16 | `theorem` | [shiftLeft_succ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-succ--5dadd11f6424eaf68f368ff0.md) | 130 | `result-track:5dadd11f6424eaf68f368ff042715f066e220ff43e343e1dab331c41c2709c54` |
| 17 | `theorem` | [shiftLeft_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-eq--a430b31d1280e1bbd93e77d6.md) | 133 | `result-track:a430b31d1280e1bbd93e77d6d18b78d28599d79720162f059eb5fcc4652083ee` |
| 18 | `theorem` | [shiftLeft_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-eq--cdbcfad73d76eddf0a97aa53.md) | 139 | `result-track:cdbcfad73d76eddf0a97aa532a4bc3c4a7a03e9fe8f3bef868187b2da5dedc83` |
| 19 | `theorem` | [shiftLeft_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-add--862225342536de88eeac66e3.md) | 142 | `result-track:862225342536de88eeac66e3f32766f967aea223e12011eb730e58217be14536` |
| 20 | `theorem` | [shiftLeft_shiftRight_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-shiftright-cancel--9659b083e4c55e4552fa29b6.md) | 146 | `result-track:9659b083e4c55e4552fa29b6ce212f3892f177bdcc7a61d3de02065e8e1bc32d` |
| 21 | `theorem` | [shiftLeft_shiftRight_eq_shiftLeft_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-shiftright-eq-shiftleft-of-le--46e859fa23ad274b19584ca2.md) | 149 | `result-track:46e859fa23ad274b19584ca2e4902b5fc9a49fd6dd33a0eae3f0ce02603f8c80` |
| 22 | `theorem` | [shiftLeft_shiftRight_eq_shiftRight_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-shiftright-eq-shiftright-of-le--47b7ebe314b19e88184aeb81.md) | 155 | `result-track:47b7ebe314b19e88184aeb8175b11d414ca48f6d7f2b35d40ce6b7afa5f88716` |
| 23 | `theorem` | [shiftLeft_shiftRight_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-shiftright-eq--ee6745ce7502c271e6ffef47.md) | 160 | `result-track:ee6745ce7502c271e6ffef47794403f88447051f5c7cf873f1df77f0a1923cb4` |
| 24 | `theorem` | [shiftRight_shiftLeft_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftright-shiftleft-cancel--c38653db5fa40fcc149598fb.md) | 167 | `result-track:c38653db5fa40fcc149598fb0e3d9a9207ff8c7dd9408c534eefd42e249e3294` |
| 25 | `theorem` | [add_shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/add-shiftleft--a09de8841a776f04a298dee4.md) | 170 | `result-track:a09de8841a776f04a298dee4deb09ce81b582a9703b3a7f8af1093e7d560927e` |
| 26 | `theorem` | [neg_shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/neg-shiftleft--134e942747b7943447274042.md) | 173 | `result-track:134e942747b7943447274042ee4079e051ea8e07d708cc7dc70d42007aed65ce` |
| 27 | `theorem` | [shiftLeft_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-mul--7573007ea9560efce95c7ef5.md) | 176 | `result-track:7573007ea9560efce95c7ef53c011b9f93377ba53ac2740d2bccf7c33700a767` |
| 28 | `theorem` | [mul_shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/mul-shiftleft--f85b3dd6447e75e8863593b2.md) | 179 | `result-track:f85b3dd6447e75e8863593b22e3929d1ed2501d9aaab1fca8fb88c9b6209b3fe` |
| 29 | `theorem` | [shiftLeft_mul_shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-mul-shiftleft--9064b4843abda8f7463ac1ad.md) | 182 | `result-track:9064b4843abda8f7463ac1addd133e2f310f794bd69626cb1825df8f586c08c3` |
| 30 | `theorem` | [shiftLeft_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/shiftleft-eq-zero-iff--bc072e2e56ac127eb2526361.md) | 187 | `result-track:bc072e2e56ac127eb25263610faaea3850cdef397c35f21b4797e9c8f6839ee0` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant49033d706268721294b337495e63dcdec45325f4246de6a92fb7e5a75b751633.lean/declarations/instance--5ec3199e3a364712cb9ee242.md) | 190 | `declaration-track:5ec3199e3a364712cb9ee2422653dfb63f0f837e479953cad61260e39546f31f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
