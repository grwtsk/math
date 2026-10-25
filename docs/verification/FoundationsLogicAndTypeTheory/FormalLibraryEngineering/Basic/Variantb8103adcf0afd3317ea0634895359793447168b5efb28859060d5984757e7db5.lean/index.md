# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6cb9a2ca7ac6828ae3de5b21811a585b93d9df2",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6cb9a2ca7ac6828ae3de5b21811a585b93d9df2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean.json)

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
| 1 | `inductive` | [Int](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/int--aa718bb56f373125b3bbc3fe.md) | 54 | `declaration-track:aa718bb56f373125b3bbc3fe44a4e04d06c18946ed226fadeb6f14ca75b7fbc5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--f748abe59178bd39622a36de.md) | 71 | `declaration-track:f748abe59178bd39622a36deb7c931c36cb47a6cd5f94a6d69dfc5b51f5a5ec5` |
| 3 | `instance` | [instOfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instofnat--f54f314df12892d257125509.md) | 73 | `declaration-track:f54f314df12892d25712550946ee25fefd0bc37059865f846b11e7ea66572a2a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--87f5d6b81654747c1968e3e6.md) | 84 | `declaration-track:87f5d6b81654747c1968e3e6b85c4588fb696a7162cffbe897490bd449af5d61` |
| 5 | `theorem` | [default_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/default-eq-zero--e13d4c5a268dffa862d47f8e.md) | 86 | `result-track:e13d4c5a268dffa862d47f8e5b3f8405e9618dc2d5207ff33c940d834af2ba88` |
| 6 | `theorem` | [zero_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/zero-ne-one--18fd06b52df9416c3ae35404.md) | 88 | `result-track:18fd06b52df9416c3ae35404c5e696b378b9589315612a740fa3398c5edd7b9c` |
| 7 | `theorem` | [ofNat_eq_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/ofnat-eq-natcast--2382b76374a078d7f0dfceb0.md) | 92 | `result-track:2382b76374a078d7f0dfceb0d65c6b1b63ce6114a12020e0b7651cc283eb859a` |
| 8 | `theorem` | [ofNat_eq_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/ofnat-eq-coe--f79db0998f577a6bcf3a3a73.md) | 95 | `result-track:f79db0998f577a6bcf3a3a732a12c31baf61abd0feef6d461d0fb2ca73162b9f` |
| 9 | `theorem` | [ofNat_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/ofnat-zero--93bf3e16663045d41448af32.md) | 97 | `result-track:93bf3e16663045d41448af32685efec3d3e41560c44eac495819a4bc992c7255` |
| 10 | `theorem` | [ofNat_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/ofnat-one--3e027f537945ec5ee6554095.md) | 99 | `result-track:3e027f537945ec5ee6554095ec93e575d116d080e36ac50a0fe7f638d0a40d08` |
| 11 | `theorem` | [ofNat_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/ofnat-two--f4fd11e4994af368c62fa7bc.md) | 101 | `result-track:f4fd11e4994af368c62fa7bc0be9b49733d5fbd7c36ef5d04b990c39fc73a50c` |
| 12 | `def` | [negOfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/negofnat--d6fe61dc103dbfb9c63c49e7.md) | 111 | `declaration-track:d6fe61dc103dbfb9c63c49e765c0646bf5ae3090905f2e278afa7746c07b5bb8` |
| 13 | `def` | [neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/neg--db57d23f22412d4876f235c7.md) | 128 | `declaration-track:db57d23f22412d4876f235c70b470ccd569606ab9bd8705c60725f4c6266ce9d` |
| 14 | `instance` | [instNegInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instnegint--b6f91725a5bf4f25c282a7e4.md) | 142 | `declaration-track:b6f91725a5bf4f25c282a7e405fd4e51e29e930fdebd1c5fdd93afa7e6dd877b` |
| 15 | `def` | [subNatNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/subnatnat--307f233e18084d1fce2a65e2.md) | 154 | `declaration-track:307f233e18084d1fce2a65e2e9ee01c118208a18d59b16362237d685cd82bebc` |
| 16 | `def` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/add--8498a57c2ea4d86b1950973e.md) | 171 | `declaration-track:8498a57c2ea4d86b1950973e380ec662b5816b7b71e8397b051d0925ac3f28f0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--a6dd5ea8876eed55c478c72b.md) | 178 | `declaration-track:a6dd5ea8876eed55c478c72b11b171bfe40ab4efdcf1ec33ac044f5d1f42880a` |
| 18 | `def` | [mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/mul--e77b71d9696baf6236d61564.md) | 194 | `declaration-track:e77b71d9696baf6236d615647bed9ca7495f187e822054639622c95fcead971b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--e7f18be1bca9f21a31d81e6a.md) | 201 | `declaration-track:e7f18be1bca9f21a31d81e6ae70ff46c0da061a3de50eeaf7d605d3cbad3ed1f` |
| 20 | `def` | [sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/sub--ff29c4561995f8f66d8643e3.md) | 217 | `declaration-track:ff29c4561995f8f66d8643e3bcd3a81670661271a646def6a0f432f989d86b5f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--c77dc362906771608adcba54.md) | 219 | `declaration-track:c77dc362906771608adcba54b31e812ca9fb4c4fded76767c02db32fcf195c44` |
| 22 | `inductive` | [NonNeg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/nonneg--cedd020cb7778351759f5930.md) | 225 | `declaration-track:cedd020cb7778351759f5930a9dfc671843457136ef788393c3aff5cea55f3c7` |
| 23 | `def` | [le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/le--ccd29cad2fb307c6a53632ab.md) | 236 | `declaration-track:ccd29cad2fb307c6a53632ab65c53b56bafaf168bd9f2580aa858e403a9a495e` |
| 24 | `instance` | [instLEInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instleint--725170da165f56a02fd4193a.md) | 238 | `declaration-track:725170da165f56a02fd4193a39bc66fc50e1dcc62b10e5bb118769994874e929` |
| 25 | `def` | [lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/lt--4eeb68c6d45c1c011b11ba74.md) | 246 | `declaration-track:4eeb68c6d45c1c011b11ba7406ae55efea7319b770c0a52a355167163b815712` |
| 26 | `instance` | [instLTInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instltint--554f53db4cd73888be2e46a6.md) | 248 | `declaration-track:554f53db4cd73888be2e46a66e74910dc31bbb30b5a59e6b932011ce52713e3e` |
| 27 | `def` | [decEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/deceq--d9d40b44579967bced7d4924.md) | 264 | `declaration-track:d9d40b44579967bced7d4924937bf58860fbb9a56d652197943c4b4cb62ad926` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--131a579ec8a77047afdefd8a.md) | 276 | `declaration-track:131a579ec8a77047afdefd8a12dffe01eecaddcaa7c5ddbfeca5f88dfa949da2` |
| 29 | `def` | [decNonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/decnonneg--b4d619492a1d645dde7b3b04.md) | 289 | `declaration-track:b4d619492a1d645dde7b3b04987633809ff064b92eb2d76087c05725fa889415` |
| 30 | `instance` | [decLe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/decle--8c99068a390283e5c6959555.md) | 308 | `declaration-track:8c99068a390283e5c6959555919c457d1d4712478c2dcb5089ee7dac9420716e` |
| 31 | `instance` | [decLt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/declt--30aa4ec2e7e7a4fc84a57b1d.md) | 321 | `declaration-track:30aa4ec2e7e7a4fc84a57b1dfbc5ce885213eb7e4b9fea778266a87db1660aa1` |
| 32 | `def` | [natAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/natabs--cbc69d2f93f6ae0a35c70c07.md) | 337 | `declaration-track:cbc69d2f93f6ae0a35c70c077fcaf2018f46c20475116fcb56093d37bc0c0f81` |
| 33 | `def` | [sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/sign--982641ef25ee816449ed5c94.md) | 359 | `declaration-track:982641ef25ee816449ed5c94f9b2fd5b82e0f7e1c8686112a7d36136a38d0fb1` |
| 34 | `def` | [toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/tonat--c6e1bcf55cd9d8afb2bc3bac.md) | 375 | `declaration-track:c6e1bcf55cd9d8afb2bc3bac1ee07c91e0d0f453b03a4ff9b5f2d63359ecfc18` |
| 35 | `def` | [toNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/tonat--ee9484f126812ab277b82c54.md) | 387 | `declaration-track:ee9484f126812ab277b82c545f244eb2aa1b00cda520373047a91f3b47d9c65e` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--dc6f1c0cd077c33ee7cd511a.md) | 397 | `declaration-track:dc6f1c0cd077c33ee7cd511a4c5198fc61a9f4e73c999479ae27308d55c32dc9` |
| 37 | `def` | [pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/pow--e0a2c37b1f921cb7d8e5dbec.md) | 412 | `declaration-track:e0a2c37b1f921cb7d8e5dbecd588569aa0354d264830e23432d6cdf502fc9e1c` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--7a8beabc0f0cee83dc5233c4.md) | 416 | `declaration-track:7a8beabc0f0cee83dc5233c4ba457d48589a4bd50681cbd0b8992f3c23d5352b` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--e879f8c79d184b1aa969c1e9.md) | 419 | `declaration-track:e879f8c79d184b1aa969c1e97f02983529b696f853fcc4a9302a600081c642d3` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--59f66db67d0364db5bc18843.md) | 423 | `declaration-track:59f66db67d0364db5bc18843ad6ee77e1404ecb27596ce583f94717f18446e7b` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--cc4468750b86f8a0890e2120.md) | 425 | `declaration-track:cc4468750b86f8a0890e2120dee067170bff926841d9fbb4871e532738eacaab` |
| 42 | `def` | [beq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/beq--3d3ab48f7da0bfda1ac92564.md) | 428 | `declaration-track:3d3ab48f7da0bfda1ac925645bc8f3b3eefbe78565efe2c4713ad8c49bf6f89c` |
| 43 | `def` | [ble'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/ble--18caa8eb593773ea2c51f7a0.md) | 434 | `declaration-track:18caa8eb593773ea2c51f7a0fdc88e2005d04428f655877812e681b35c2248c2` |
| 44 | `def` | [blt'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/blt--e91235e190f927238d1df624.md) | 441 | `declaration-track:e91235e190f927238d1df6241f92ce794157dfac018ac2dd8ec0e617c41c1351` |
| 45 | `class` | [IntCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/intcast--5008ae30fbd047aa11bc5af1.md) | 459 | `declaration-track:5008ae30fbd047aa11bc5af1fb2db93e77c3655f9e4e0d08afecd944fb7b5750` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--9d068394a34bac4cec35d7d4.md) | 463 | `declaration-track:9d068394a34bac4cec35d7d42914efe17604704a07a35fae78aa57a4f6940b78` |
| 47 | `def` | [Int.cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/int-cast--155281b15d7ac041eeee5eef.md) | 466 | `declaration-track:155281b15d7ac041eeee5eef437a418e2d8dafdaa3e59c175bc95c7441643748` |
| 48 | `theorem` | [Int.cast_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/int-cast-eq--58ff2e2989244ffdc8b5289d.md) | 469 | `result-track:58ff2e2989244ffdc8b5289d8cd192648c48ef8a5663f47e03b98d0f3a96eeec` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--8af9b0daa61881f6749a9554.md) | 472 | `declaration-track:8af9b0daa61881f6749a9554bed613d07d5385b7be05cd80a7a0a955ed06948d` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8103adcf0afd3317ea0634895359793447168b5efb28859060d5984757e7db5.lean/declarations/instance--a53916a5d8ef155c297a9457.md) | 475 | `declaration-track:a53916a5d8ef155c297a9457698758f201425f3da378c4239e46fa8de39281d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
