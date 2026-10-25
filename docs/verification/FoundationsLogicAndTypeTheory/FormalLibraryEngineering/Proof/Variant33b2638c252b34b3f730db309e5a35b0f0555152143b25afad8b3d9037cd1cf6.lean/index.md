# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proof.Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac07915ce268e22268366fb3a895f376aa2244eb",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac07915ce268e22268366fb3a895f376aa2244eb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Order` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkLePreorderPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mklepreorderprefix--cea84a2940349297107b1dca.md) | 15 | `declaration-track:cea84a2940349297107b1dca5c38358abdc57b1d9d5bd31db60f38b951a9548c` |
| 2 | `def` | [mkLePartialPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mklepartialprefix--71556ec13ef35b690b3cb4f4.md) | 22 | `declaration-track:71556ec13ef35b690b3cb4f4b1752c09cd6b124fe3524ea885c638b79fd3d22e` |
| 3 | `def` | [mkLeLtPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkleltprefix--a5b105ecd4965f06208d6c3b.md) | 29 | `declaration-track:a5b105ecd4965f06208d6c3bb63e4651c1ab1538fa5069a2bc83a8954e1140b8` |
| 4 | `def` | [mkLeLtPreorderPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkleltpreorderprefix--ccea659f2f277e66e43c1c9e.md) | 36 | `declaration-track:ccea659f2f277e66e43c1c9ecfbd1e6c92cf42880b14e3d40506a22c621e6699` |
| 5 | `def` | [mkLeLtLinearPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkleltlinearprefix--a48ef08215c75941b449aac6.md) | 43 | `declaration-track:a48ef08215c75941b449aac6a813c4f16c5d8169a0d38224dd0db5422cba692d` |
| 6 | `def` | [mkLeLinearPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mklelinearprefix--0854b8f291daf4077c445462.md) | 50 | `declaration-track:0854b8f291daf4077c445462b5372f56fd3612fd0f81fb2a5afe2933996fae06` |
| 7 | `def` | [mkOrdRingPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkordringprefix--8eb5cf534c9c9e4e11277e13.md) | 57 | `declaration-track:8eb5cf534c9c9e4e11277e13ea233cc70ba7e6bce30e5408e216a62948e898a2` |
| 8 | `def` | [mkLinearOrdRingPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mklinearordringprefix--7b3b03ff2d73aad69c950c7d.md) | 65 | `declaration-track:7b3b03ff2d73aad69c950c7d1760c640e36d15618c7268b2fc8054e8dd61e8ab` |
| 9 | `def` | [mkTransCoreProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mktranscoreproof--8e342416b7046c8d77d14421.md) | 70 | `declaration-track:8e342416b7046c8d77d1442196f087acf2a2caf3fd0bc7329bbdb1a593434a70` |
| 10 | `def` | [mkTransCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mktranscore--0c86be421793c90e84c7d773.md) | 85 | `declaration-track:0c86be421793c90e84c7d773152354a7ee023a7178e14d2a7cea97d42f014c0a` |
| 11 | `def` | [mkTransOffsetProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mktransoffsetproof--33e37c8ef25a3cb7b0f43cde.md) | 92 | `declaration-track:33e37c8ef25a3cb7b0f43cde589ecd1b81ee8c4888a1e59297a12a02e7693f9a` |
| 12 | `def` | [mkTransOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mktransoffset--57c4584e40c41e683cf8def2.md) | 109 | `declaration-track:57c4584e40c41e683cf8def282a5b0629622f3e63667bc2d82b09f4bfc0e86fa` |
| 13 | `def` | [mkTrans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mktrans--83f69ada280e2e31abd5170d.md) | 123 | `declaration-track:83f69ada280e2e31abd5170db9b26b4395eeb8083a4f968293923fd68ed62c2b` |
| 14 | `def` | [mkPropagateEqTrueProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkpropagateeqtrueproofcore--57f19c470ddd811de1c6b9c6.md) | 129 | `declaration-track:57f19c470ddd811de1c6b9c62a8bc2c018c805f06199868bb282d1b219f4439e` |
| 15 | `def` | [mkPropagateEqTrueProofOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkpropagateeqtrueproofoffset--15ecd86e8d8a4d6fec5080ac.md) | 137 | `declaration-track:15ecd86e8d8a4d6fec5080ac896b95f7d3b69d56589d02017c4a8489bfbf5780` |
| 16 | `def` | [mkPropagateEqTrueProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkpropagateeqtrueproof--ad7c63a38dcf663917cbeb26.md) | 150 | `declaration-track:ad7c63a38dcf663917cbeb264b15302547d6f42098bb6810f14bc33eefed4ecd` |
| 17 | `def` | [mkPropagateSelfEqTrueProofOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkpropagateselfeqtrueproofoffset--a1aee2fb0c9d9a8ac85f4faf.md) | 156 | `declaration-track:a1aee2fb0c9d9a8ac85f4faf0679a39bcf90520117d48906ddce925a3dd72923` |
| 18 | `def` | [mkPropagateSelfEqTrueProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkpropagateselfeqtrueproofcore--a6fc9aa8025b7978383c8385.md) | 163 | `declaration-track:a6fc9aa8025b7978383c83858a95a32f04d798b7cfaef78808e149f944c04b53` |
| 19 | `def` | [mkPropagateSelfEqTrueProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkpropagateselfeqtrueproof--52edb79d94e49af184aabbbf.md) | 171 | `declaration-track:52edb79d94e49af184aabbbfb331d4c4cf2982da27aa5b77ebe9221c09c33e64` |
| 20 | `def` | [mkPropagateEqFalseProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkpropagateeqfalseproofcore--c6fb55688f7c5ee4e5e17ba3.md) | 181 | `declaration-track:c6fb55688f7c5ee4e5e17ba3c3e6237b41423a64b856311273eedf0b78ca7b51` |
| 21 | `def` | [mkPropagateEqFalseProofOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkpropagateeqfalseproofoffset--90bae371173af1729ee1d7cd.md) | 190 | `declaration-track:90bae371173af1729ee1d7cdd181dca91248928d5ddf15a26622ed4dc3ff2146` |
| 22 | `def` | [mkPropagateEqFalseProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkpropagateeqfalseproof--477eaa2570e5fc7e3ed35f21.md) | 203 | `declaration-track:477eaa2570e5fc7e3ed35f21f4f4256566fbb70321d5b7b777a04cc5b87aa02e` |
| 23 | `def` | [mkPropagateSelfEqFalseProofOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkpropagateselfeqfalseproofoffset--882fd75ee5dc1ddb29ad71e3.md) | 209 | `declaration-track:882fd75ee5dc1ddb29ad71e359635f40b589d391bef705905fa73e62eb6741cc` |
| 24 | `def` | [mkPropagateSelfEqFalseProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkpropagateselfeqfalseproofcore--e449bf63da81642147b51e90.md) | 216 | `declaration-track:e449bf63da81642147b51e90946613ffb5e0422388fa3e0335585f54457e68cd` |
| 25 | `def` | [mkPropagateSelfEqFalseProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkpropagateselfeqfalseproof--24ba97e580c67cf8fd8f480b.md) | 224 | `declaration-track:24ba97e580c67cf8fd8f480b26c564cdf3b25914ad2da8e6fbb8938b8ae3664e` |
| 26 | `def` | [mkSelfUnsatProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkselfunsatproofcore--06687f0c214ad0619c22a500.md) | 231 | `declaration-track:06687f0c214ad0619c22a5006a419cbc083f39a943c562bfb56cb9063bd142b4` |
| 27 | `def` | [mkSelfUnsatProofOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkselfunsatproofoffset--da51f8f7721dbd1f06723288.md) | 235 | `declaration-track:da51f8f7721dbd1f06723288314156dc91a8cc4906e4171970cd6ee36f091fa0` |
| 28 | `def` | [mkSelfUnsatProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkselfunsatproof--183105c258901fcc1f6a87c1.md) | 247 | `declaration-track:183105c258901fcc1f6a87c1c4ca1d093b316e55728d122dfbf65f9f03baec89` |
| 29 | `def` | [mkUnsatProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkunsatproofcore--dd014cffd0d2e9b2d363a34e.md) | 253 | `declaration-track:dd014cffd0d2e9b2d363a34ed501b8077b6deb202b3c98d921903996440b2c45` |
| 30 | `def` | [mkUnsatProofOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkunsatproofoffset--08c1b86465e9b350c7bc375c.md) | 259 | `declaration-track:08c1b86465e9b350c7bc375cf4c0bf5384a8802e6d072c7aa8c20c4c2da9db78` |
| 31 | `def` | [mkUnsatProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkunsatproof--9ed28901782f42332e00ffde.md) | 273 | `declaration-track:9ed28901782f42332e00ffdeaa33032b5a86092199ad4435a9c387307dbe72d8` |
| 32 | `def` | [mkEqProofOfLeOfLeCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkeqproofofleoflecore--0fe30e84c92aea8dff4b249c.md) | 279 | `declaration-track:0fe30e84c92aea8dff4b249cbbdc473c3bd4035884319c8646bb9634ad28505b` |
| 33 | `def` | [mkEqProofOfLeOfLeOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkeqproofofleofleoffset--02ec7b6c1ee2ffd6c9953554.md) | 283 | `declaration-track:02ec7b6c1ee2ffd6c99535542d6b3e26b2e9b95574df005b3c776a1518406523` |
| 34 | `def` | [mkEqProofOfLeOfLe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/declarations/mkeqproofofleofle--a05a0e3bf64d3a32484ceade.md) | 288 | `declaration-track:a05a0e3bf64d3a32484ceade415ffe8c6e3889b73c5e5d25ac7b9017bd2148e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
