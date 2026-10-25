# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Encoding.Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02b6f9f3d7a5b946b855d127ab46b607a1a46f26",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02b6f9f3d7a5b946b855d127ab46b607a1a46f26`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean.json)

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
| 1 | `structure` | [Encoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encoding--d86d7599fd6a713d140e5a85.md) | 40 | `declaration-track:d86d7599fd6a713d140e5a85e95508c7685b1531906f7c468f940cd52a12dd59` |
| 2 | `theorem` | [Encoding.encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encoding-encode-injective--c40ba375360833607f55e6c4.md) | 50 | `result-track:c40ba375360833607f55e6c47aca7ca96665bcf7e60aed38dc3bfa00990d4b48` |
| 3 | `inductive` | [Γ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/anonymous--7d2fa00fb94a45e68423e311.md) | 55 | `declaration-track:7d2fa00fb94a45e68423e311996f6759d13398abc689f7635af5b9c1a8d58d52` |
| 4 | `instance` | [inhabitedΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/inhabited--9d2e016108cfcb3a6315eaa5.md) | 63 | `declaration-track:9d2e016108cfcb3a6315eaa5473733dcd2a1a8617f4cdcbdd72b0e6eae16498a` |
| 5 | `def` | [inclusionBoolΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/inclusionbool--27814c50840a35b4bfd5cdbf.md) | 67 | `declaration-track:27814c50840a35b4bfd5cdbf65fc63744b1493d3e9c915fb25384410f78644b6` |
| 6 | `def` | [sectionΓ'Bool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/section-bool--cccfe0d06f7349a8b7d79e50.md) | 71 | `declaration-track:cccfe0d06f7349a8b7d79e50cfc4305642970e4c3965afc5fb3b75a115cb92c6` |
| 7 | `theorem` | [sectionΓ'Bool_inclusionBoolΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/section-bool-inclusionbool--4447acdb79fe72e92ac9c9f4.md) | 76 | `result-track:4447acdb79fe72e92ac9c9f46c3979e65c010e8c16607173d25185dae0938825` |
| 8 | `theorem` | [inclusionBoolΓ'_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/inclusionbool-injective--658d87d18f97ab2c67c000e3.md) | 79 | `result-track:658d87d18f97ab2c67c000e31576042f0f121d3ddfa112649ce22ac199656302` |
| 9 | `def` | [encodePosNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encodeposnum--7dee8822bd8246937f4a3fa5.md) | 83 | `declaration-track:7dee8822bd8246937f4a3fa5d5a004aa2e9d7646ecf95499df07e2fb87fa05c0` |
| 10 | `def` | [encodeNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encodenum--0d60db66ad487b20c792bbbd.md) | 89 | `declaration-track:0d60db66ad487b20c792bbbd9aefb530cb760bf4e1779d526405e608d4aeebb6` |
| 11 | `def` | [encodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encodenat--5c93879772a4a2ecd435f241.md) | 94 | `declaration-track:5c93879772a4a2ecd435f241faa03960ecd1af671d35fcab6e068a7d52a8eae6` |
| 12 | `def` | [decodePosNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/decodeposnum--b4fab2097885f489fa7f6666.md) | 98 | `declaration-track:b4fab2097885f489fa7f666629075b53b6efe9a5e1697aa956c3692d992ea1a2` |
| 13 | `def` | [decodeNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/decodenum--9cda19bc1a91650bbb23148f.md) | 104 | `declaration-track:9cda19bc1a91650bbb23148fa73968eb120281e502f1199c2c9e676f294f272c` |
| 14 | `def` | [decodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/decodenat--73b50f4e5903b5b21f352bee.md) | 107 | `declaration-track:73b50f4e5903b5b21f352beeb3ca7de1e723fce435d04ef7875fea9e082e1bc1` |
| 15 | `theorem` | [encodePosNum_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encodeposnum-nonempty--973f9043014025bc76a9dfba.md) | 109 | `result-track:973f9043014025bc76a9dfba655fe6c4348dbb152480fb67afdbb419a945d2a2` |
| 16 | `theorem` | [decode_encodePosNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/decode-encodeposnum--77b5b6472809ba419de2dcd2.md) | 113 | `result-track:77b5b6472809ba419de2dcd290c5a78977b371ab9f49cc523fe219208ca55054` |
| 17 | `theorem` | [decode_encodeNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/decode-encodenum--dc43847a49b78cb888066afc.md) | 121 | `result-track:dc43847a49b78cb888066afcd528d3594807676d9dc716bc0b1340cd9ab2d032` |
| 18 | `theorem` | [decode_encodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/decode-encodenat--27d3a45282bee63bc7c0c363.md) | 128 | `result-track:27d3a45282bee63bc7c0c3632dacf00cfe4434c54a776fb672c65d6a040b73f4` |
| 19 | `def` | [encodingNatBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encodingnatbool--8d712a8cd87bf4d550a8f874.md) | 133 | `declaration-track:8d712a8cd87bf4d550a8f8747723cec805464e4cc033284eca7386a2743c0cb9` |
| 20 | `def` | [encodingNatΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encodingnat--ac002030eb305ba6936574d9.md) | 139 | `declaration-track:ac002030eb305ba6936574d907f3037aba72173fdaa8aa731004864d753758fc` |
| 21 | `def` | [unaryEncodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/unaryencodenat--1be33f9012d0df2dc7c2a1f2.md) | 145 | `declaration-track:1be33f9012d0df2dc7c2a1f23441f7b381cb4f37978ee2d42a394c4c1896376e` |
| 22 | `def` | [unaryDecodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/unarydecodenat--4f54619ebc83aa120aad0e96.md) | 150 | `declaration-track:4f54619ebc83aa120aad0e969f69574a2ffea3414ff1c99be16d18dd6a403c93` |
| 23 | `theorem` | [unary_decode_encode_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/unary-decode-encode-nat--62d7b1e3968c76fdd499f37d.md) | 153 | `result-track:62d7b1e3968c76fdd499f37d4425c90c8ed3c0dbd0615d3bffcd95dd04479a3b` |
| 24 | `def` | [unaryEncodingNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/unaryencodingnat--82001c9dd0b0d088c49e8e27.md) | 157 | `declaration-track:82001c9dd0b0d088c49e8e279bf865ca75a4a56116ffd031801ae91ffe187544` |
| 25 | `def` | [encodeBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encodebool--ac8bbc46794f28fd466fe3a1.md) | 163 | `declaration-track:ac8bbc46794f28fd466fe3a15856785b285624a396cd2b2d27c4619cc22fea49` |
| 26 | `def` | [decodeBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/decodebool--306bf6b475583e2372d6e237.md) | 166 | `declaration-track:306bf6b475583e2372d6e237302efb6a780cc51cd9876678dea8c01bb3226dc4` |
| 27 | `theorem` | [decode_encodeBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/decode-encodebool--9db273ecde3fd5ff40c0a565.md) | 170 | `result-track:9db273ecde3fd5ff40c0a56589955f4ef2f9f6509e232bba06b4339c3ce9cb63` |
| 28 | `def` | [encodingBoolBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encodingboolbool--d85ee5abd691937ac00260d6.md) | 173 | `declaration-track:d85ee5abd691937ac00260d69f18b9af0d7c6cba3aaacd1ce2f028624fe4fdbc` |
| 29 | `instance` | [inhabitedEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/inhabitedencoding--1216a0641bd8da15df508bdb.md) | 178 | `declaration-track:1216a0641bd8da15df508bdb8b43ffe7733cb756f5bc1ce9886ee486dc6f21d1` |
| 30 | `theorem` | [Encoding.card_le_card_list](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encoding-card-le-card-list--673ab9db2fbb29b141b6e8e7.md) | 181 | `result-track:673ab9db2fbb29b141b6e8e70b2518531ae63266623a83e85198cb4d27763bdb` |
| 31 | `theorem` | [Encoding.card_le_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encoding-card-le-aleph0--a4d65d0d594be02847a6678b.md) | 185 | `result-track:a4d65d0d594be02847a6678b58eb1dd2a931400021914b6494b1cd193036210c` |
| 32 | `def` | [encodingList](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encodinglist--5f9f30f901fe682f11290518.md) | 191 | `declaration-track:5f9f30f901fe682f11290518a6c410f25f126b8b019ea73195fa515bcef3b67c` |
| 33 | `def` | [encodingProd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encodingprod--55cf61a54eb1d6cdfe10c06b.md) | 203 | `declaration-track:55cf61a54eb1d6cdfe10c06b5d1180d5c46d49432181498e3addc96a1c5cf5d0` |
| 34 | `def` | [FinEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/finencoding--a4537dfcc0101683a084ccea.md) | 215 | `declaration-track:a4537dfcc0101683a084ccea5f13673e57207facdc5a8ff4abbb8255400141c5` |
| 35 | `def` | [Encoding.Γ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/encoding--8565bb1373a5f17cf658153c.md) | 220 | `declaration-track:8565bb1373a5f17cf658153c9a60a7a1ef8e1ad1193cad6a63d76589e276231f` |
| 36 | `def` | [FinEncoding.ΓFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/finencoding-fin--b114fa9c80fd113e4dd3ac92.md) | 225 | `declaration-track:b114fa9c80fd113e4dd3ac928ac6e5f68e81044158801b5aa5b88adce0f6b5d6` |
| 37 | `def` | [FinEncoding.toEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/finencoding-toencoding--30b86c9c3657edad9af5a5bd.md) | 231 | `declaration-track:30b86c9c3657edad9af5a5bd3f14a618a2ee7aca14b82d57df4a463cd71359c0` |
| 38 | `abbrev` | [finEncodingNatBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/finencodingnatbool--a68894bd951f8f365c7ea65a.md) | 236 | `declaration-track:a68894bd951f8f365c7ea65a033389cd68d4b253b8a43c675f5dd4cd2a13118e` |
| 39 | `abbrev` | [finEncodingNatΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/finencodingnat--f7bb1958c93e41d5115121ad.md) | 240 | `declaration-track:f7bb1958c93e41d5115121ad60c0a41d7b5013b7b76fabb664a3067601f52338` |
| 40 | `abbrev` | [unaryFinEncodingNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/unaryfinencodingnat--23e421570652fe4aeb08652d.md) | 244 | `declaration-track:23e421570652fe4aeb08652d231b317918d762e74049b08ab4ee3f4f0a1155d0` |
| 41 | `abbrev` | [finEncodingBoolBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/finencodingboolbool--79aaad1944b238f6f6a23c4e.md) | 248 | `declaration-track:79aaad1944b238f6f6a23c4e98d29eb0a0a9bd1fa8459feb7d275c09bd3f1477` |
| 42 | `def` | [finEncodingList](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/finencodinglist--1b70044b543a6f923913aa5b.md) | 253 | `declaration-track:1b70044b543a6f923913aa5b469189678444de80670b22966850db637339b96f` |
| 43 | `def` | [finEncodingPair](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/finencodingpair--facd06f58d36da3da0118084.md) | 258 | `declaration-track:facd06f58d36da3da0118084566b7ae590b1f02edbe49cc828d28c7fc6cf0667` |
| 44 | `theorem` | [FinEncoding.card_le_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean/declarations/finencoding-card-le-aleph0--09c3e9171684f3cd6920ba20.md) | 264 | `result-track:09c3e9171684f3cd6920ba20aa44bea0942111fcbb7359b295dacf4a2d6eb052` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
