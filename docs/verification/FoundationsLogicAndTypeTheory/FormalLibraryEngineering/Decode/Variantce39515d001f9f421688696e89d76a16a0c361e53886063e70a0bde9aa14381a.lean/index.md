# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decode.Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc57b651fd837df6444072e94373a22f84b723b2",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc57b651fd837df6444072e94373a22f84b723b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ToString.Macro` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Toml.DecodeError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/toml-decodeerror--bf2a4c1632e6fdb70e3eb10c.md) | 32 | `declaration-track:bf2a4c1632e6fdb70e3eb10c4dea70e1e119f9c683f17fda7cdef2c3cb184e04` |
| 2 | `abbrev` | [Toml.DecodeM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/toml-decodem--4f71310d5e59d5644e1446c3.md) | 37 | `declaration-track:4f71310d5e59d5644e1446c342d4728b5226cfc40bb3480ae466f8f7d02560ba` |
| 3 | `abbrev` | [Toml.EDecodeM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/toml-edecodem--78e70b3b107e02091bf8ea98.md) | 40 | `declaration-track:78e70b3b107e02091bf8ea9884974adadc66e49f06fa57239e6963558eb625ed` |
| 4 | `class` | [DecodeToml](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodetoml--6cedecdee9def219344032be.md) | 42 | `declaration-track:6cedecdee9def219344032be639b397bceb870ad712d71b5d3614afdcb92b002` |
| 5 | `abbrev` | [decodeToml](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodetoml--7da66b4a349fad385e0ff400.md) | 45 | `declaration-track:7da66b4a349fad385e0ff400548e2326a3eec903a732bf6cff2c420b73034a71` |
| 6 | `def` | [ensureDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/ensuredecode--890a15e72a7e757909a6fbfe.md) | 51 | `declaration-track:890a15e72a7e757909a6fbfe51e2f1df48d1a769bf150e20edee4a47a42b569c` |
| 7 | `def` | [tryDecodeD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/trydecoded--043d9801a286c7db2c9d06a5.md) | 56 | `declaration-track:043d9801a286c7db2c9d06a599f574d3fd14549d6cb808bd8b59fca6d1c61982` |
| 8 | `def` | [tryDecode?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/trydecode--b04968528e04c764bbac008f.md) | 62 | `declaration-track:b04968528e04c764bbac008faef9706610dcf0cfe3a941f5f78846986dd51656` |
| 9 | `def` | [tryDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/trydecode--153f6b7fb25adbcfe3db4aaf.md) | 68 | `declaration-track:153f6b7fb25adbcfe3db4aaf8a4696b6f857dff9ffe6c28a498e4c20dc12d4c8` |
| 10 | `def` | [optDecodeD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/optdecoded--4086585afedebd54c3dbe38f.md) | 75 | `declaration-track:4086585afedebd54c3dbe38f3e4d45125d325e378d2655723b50afe1d4e429e6` |
| 11 | `def` | [optDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/optdecode--8749440a5e00248acb6031d9.md) | 84 | `declaration-track:8749440a5e00248acb6031d9190eb34c22c3d8d568cbd90f72bfd1a97823ecbc` |
| 12 | `def` | [optDecode?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/optdecode--5bfd1e0d3291aa6042411ac7.md) | 92 | `declaration-track:5bfd1e0d3291aa6042411ac7523f349512121b9eb8a978a659daa3eb50c68bca` |
| 13 | `def` | [mergeErrors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/mergeerrors--c2dedf89689cd4607c27d96c.md) | 99 | `declaration-track:c2dedf89689cd4607c27d96cddd1d0a550fd8615eb90809f5c8a61eb92c414f6` |
| 14 | `def` | [logDecodeErrorAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/logdecodeerrorat--48beda1b7ad9428d5b87a1a7.md) | 107 | `declaration-track:48beda1b7ad9428d5b87a1a77ddd31c21b64cf297c18778fd88fc7db67494665` |
| 15 | `def` | [throwDecodeErrorAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/throwdecodeerrorat--0be7ef9958e14746f168e922.md) | 110 | `declaration-track:0be7ef9958e14746f168e922da36dfb4d7df5fea4c81c3207107e0bc244eb6a1` |
| 16 | `def` | [decodeArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodearray--53e4f20b8d0a3c5e65a277b5.md) | 114 | `declaration-track:53e4f20b8d0a3c5e65a277b5960372833210e9834ca4bc5c4f42c8383cc3d35c` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/instance--ad124be3a4f57cce0345b8d6.md) | 118 | `declaration-track:ad124be3a4f57cce0345b8d60fde229d517ab707ea9739698fb5ae786f823aa7` |
| 18 | `def` | [decodeString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodestring--ed603eb1856129513177fd8b.md) | 122 | `declaration-track:ed603eb1856129513177fd8b8060ef5e775a88ab40d3910a5326599df9e53ebc` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/instance--1cc2b2a6646ad45979c161ac.md) | 127 | `declaration-track:1cc2b2a6646ad45979c161ace956c3b8c86989c9c20677c3a768eea3786470c6` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/instance--b0a0c8840bb7848d4d53b45a.md) | 128 | `declaration-track:b0a0c8840bb7848d4d53b45a6c1b82378e0aac2b3e874efef465112211230ccc` |
| 21 | `def` | [decodeName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodename--0724df8e655de2993b8d06d2.md) | 130 | `declaration-track:0724df8e655de2993b8d06d21c2efc2bbf6fbe779c1da9b40a75f61a998db09e` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/instance--a8f38ce644f3c11e4de81643.md) | 135 | `declaration-track:a8f38ce644f3c11e4de81643e0df41b11f9ebb24661166142d2853b86bc599cf` |
| 23 | `def` | [decodeInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodeint--6a72e350ef3744e84a2f87de.md) | 137 | `declaration-track:6a72e350ef3744e84a2f87de44bfa35574ce633331cd3649c3248b04b742e781` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/instance--c6a9521bfcfa01d382a7f1b5.md) | 142 | `declaration-track:c6a9521bfcfa01d382a7f1b5d751f436c32f313e9fe413ec18cf40ac5870e845` |
| 25 | `def` | [decodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodenat--a5b6b636cf676653201f9fd9.md) | 144 | `declaration-track:a5b6b636cf676653201f9fd96e1113168f6a484259928fb53404e8ba3aa09626` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/instance--ac3520202804e13a5b36fe61.md) | 148 | `declaration-track:ac3520202804e13a5b36fe611b7446fb61c56b290c0188debed5de87040e7fb7` |
| 27 | `def` | [decodeFloat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodefloat--b2bc69fe75ca3d149a86e13e.md) | 150 | `declaration-track:b2bc69fe75ca3d149a86e13e372bf6f3c47bc957ca80102ab4e736c542341269` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/instance--53894abb1489e4de8d5cfd0b.md) | 155 | `declaration-track:53894abb1489e4de8d5cfd0b75a46197b2017c3267c174f7dc0d8b64eac3f555` |
| 29 | `def` | [decodeBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodebool--f9b894ec9e3d8dbac941149e.md) | 157 | `declaration-track:f9b894ec9e3d8dbac941149eefd732aa5f07fbb542859f474efa5727dc645d5c` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/instance--1e2ffb474cf2f890d1c233bd.md) | 162 | `declaration-track:1e2ffb474cf2f890d1c233bd0f0a81fc708b0cfaa4abb2bc8726360f7da7aace` |
| 31 | `def` | [decodeDateTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodedatetime--d4f52f8db026e5eee5d3a7fe.md) | 164 | `declaration-track:d4f52f8db026e5eee5d3a7fe9285aadfce0ec463325ad0a32b2efeb2333b3fcf` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/instance--a1784c6d8634665c3b6b7fbf.md) | 169 | `declaration-track:a1784c6d8634665c3b6b7fbf0785f0fb86e820c73dfdf52dbe2e71b93b0aa927` |
| 33 | `def` | [decodeValueArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodevaluearray--b0450129749160d7e570e964.md) | 171 | `declaration-track:b0450129749160d7e570e9648a6bc6f7a1311a223375a9008f59151d92d8c83f` |
| 34 | `def` | [decodeArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodearray--0f5d173f79c7a6ba0f89f82c.md) | 176 | `declaration-track:0f5d173f79c7a6ba0f89f82c5e807e2daf3f535143d103d37310c40515bc2e12` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/instance--859b3eb5cc752f08529b290e.md) | 179 | `declaration-track:859b3eb5cc752f08529b290e190644b70a4dfcb61801d7d50a41b91df2f0ca48` |
| 36 | `def` | [decodeArrayOrSingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodearrayorsingleton--bdc09ac9ebcdc82ae34cdb8c.md) | 181 | `declaration-track:bdc09ac9ebcdc82ae34cdb8c61c4be10b4c6589f4b9ce9cdf758c142ef70d308` |
| 37 | `def` | [decodeTable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodetable--45aa7708e87ffce67329e89c.md) | 186 | `declaration-track:45aa7708e87ffce67329e89c9840a80fa172b8530854125fbcb04287130959ce` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/instance--2e7e0ddad8118d1b8a496f84.md) | 191 | `declaration-track:2e7e0ddad8118d1b8a496f84766df27d7969b6c5e616ae05a2c73ac104045bab` |
| 39 | `def` | [decodeKeyval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodekeyval--272168546b1ac8ae2a4f2635.md) | 195 | `declaration-track:272168546b1ac8ae2a4f2635ecb7cc3121cc9749b6e9b057c2ffbfbb3364122d` |
| 40 | `def` | [decodeValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodevalue--5e0b367c10b3dc21b1af03e5.md) | 205 | `declaration-track:5e0b367c10b3dc21b1af03e5642ca46620774525e7dfa8b4b71bfbf371c1d3fa` |
| 41 | `def` | [decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decode--aca37779395330e68f8e9d2d.md) | 210 | `declaration-track:aca37779395330e68f8e9d2de0028365261728d85fd4e269e74f27de84eae456` |
| 42 | `def` | [decode?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decode--63ceb8263122eec15e558e98.md) | 216 | `declaration-track:63ceb8263122eec15e558e98b4cd9b33d78e7bce407b44e66bbf30ffa95db941` |
| 43 | `def` | [decodeNameMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/decodenamemap--2f028cbb9ac0521c7b99d727.md) | 220 | `declaration-track:2f028cbb9ac0521c7b99d7271e6e3db294a5ffda7b02ff37ba12aebdc83d11b0` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/instance--b15d365389df0302cda3dd0f.md) | 224 | `declaration-track:b15d365389df0302cda3dd0fc97514243fa3546e3d327820f8f69e4b51cfa866` |
| 45 | `def` | [tryDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/trydecode--def1b9562c2cafd1d30de640.md) | 226 | `declaration-track:def1b9562c2cafd1d30de64058f4a6c7305a188fe87de8f594a2389a626cd8a5` |
| 46 | `def` | [tryDecode?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/trydecode--1a319d957c592b16c51418ec.md) | 230 | `declaration-track:1a319d957c592b16c51418ecfbd8c2fe3f9c8f280678786c5651a049dd46881e` |
| 47 | `def` | [tryDecodeD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantce39515d001f9f421688696e89d76a16a0c361e53886063e70a0bde9aa14381a.lean/declarations/trydecoded--00594a8ded3088290caff565.md) | 234 | `declaration-track:00594a8ded3088290caff565a072b178b8efaf45468d5c927f420d5c9160eb49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
