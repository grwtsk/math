# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decode.Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "001478dfe774b36e5a6f72b66bc56e7edc1ef654",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `001478dfe774b36e5a6f72b66bc56e7edc1ef654`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ToString.Macro` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Toml.DecodeError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/toml-decodeerror--d62bbb7db4d3dabacb7a574c.md) | 24 | `declaration-track:d62bbb7db4d3dabacb7a574c6739faa5b5291ef7da6380f469493195221eb940` |
| 2 | `abbrev` | [Toml.DecodeM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/toml-decodem--fc776ad38fe119ebddfde13a.md) | 29 | `declaration-track:fc776ad38fe119ebddfde13ae2576337f45e364b95df5ffba8c8a8e15bc4cbd5` |
| 3 | `abbrev` | [Toml.EDecodeM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/toml-edecodem--67714f9d76a2e616cdbd1d38.md) | 32 | `declaration-track:67714f9d76a2e616cdbd1d38ab2ae1d89215ac8a1d4e509a4f4e1daed0d58fc2` |
| 4 | `class` | [DecodeToml](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodetoml--6f4f80c76b4dc2075ce2d1cd.md) | 34 | `declaration-track:6f4f80c76b4dc2075ce2d1cd15291607f73072927e92c21cb6931dee407ea261` |
| 5 | `abbrev` | [decodeToml](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodetoml--26d1f7d502413cc4d88ae9e4.md) | 37 | `declaration-track:26d1f7d502413cc4d88ae9e49dc8da34a0f2b78d52580797ddc188db1becf479` |
| 6 | `def` | [ensureDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/ensuredecode--96504efeb44469673daad19e.md) | 43 | `declaration-track:96504efeb44469673daad19ee1fc6d7d8fc1aa0ec188bf1d1bf8f5907f9cd8d2` |
| 7 | `def` | [tryDecodeD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/trydecoded--d628f9b55da3753f7a132309.md) | 48 | `declaration-track:d628f9b55da3753f7a1323097345a859f9d5c8a4cf15a29d950ec100ea06a36e` |
| 8 | `def` | [tryDecode?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/trydecode--3b721eec54b0d018ba79aa09.md) | 54 | `declaration-track:3b721eec54b0d018ba79aa09fb2885ab8d56874e63198684bcc75e13916c2531` |
| 9 | `def` | [tryDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/trydecode--0fd764802bca2d55c87472ac.md) | 60 | `declaration-track:0fd764802bca2d55c87472ac1f6de8c6b88ed6cad0bf3d513bd9fb8599af1592` |
| 10 | `def` | [optDecodeD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/optdecoded--b592c560dbdf659e498400a2.md) | 67 | `declaration-track:b592c560dbdf659e498400a2d015b862efc30f77361a8500622a1da9cda8074c` |
| 11 | `def` | [optDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/optdecode--e5c9c531511633179f7a8940.md) | 76 | `declaration-track:e5c9c531511633179f7a8940acdb809754d67df395389d739e332c0488a2c08d` |
| 12 | `def` | [optDecode?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/optdecode--b87782efbc772f29d9cf0841.md) | 84 | `declaration-track:b87782efbc772f29d9cf084106177a105a00d17e7e92dc03ae9332359a4c3c3a` |
| 13 | `def` | [mergeErrors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/mergeerrors--85e12f3c72365f3967c06a65.md) | 91 | `declaration-track:85e12f3c72365f3967c06a65410d6a9dba300a3588c03863d2c31a29cc1b11db` |
| 14 | `def` | [logDecodeErrorAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/logdecodeerrorat--f0ae1e6a8b324c1ea35de8f3.md) | 99 | `declaration-track:f0ae1e6a8b324c1ea35de8f39030bd6ccc9b2f7276a31aee282a85031b8a7575` |
| 15 | `def` | [throwDecodeErrorAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/throwdecodeerrorat--4b85b1e778126e9bd5b71651.md) | 102 | `declaration-track:4b85b1e778126e9bd5b7165121183d1057aa6fcbdffa4207b19eae299f860eaf` |
| 16 | `def` | [decodeArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodearray--ab6db64ef4453b3e21d97365.md) | 106 | `declaration-track:ab6db64ef4453b3e21d97365c3a4a222e48d69b65ae7b188963b5b8039b9a905` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/instance--c7ad7bd56a09d1d3dd914c50.md) | 110 | `declaration-track:c7ad7bd56a09d1d3dd914c5030543e6fb98e7fe52183f469f294285c6a96e6ca` |
| 18 | `def` | [decodeString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodestring--70fbf73220eb3665f5cd2a3f.md) | 114 | `declaration-track:70fbf73220eb3665f5cd2a3fc7fd537018c66a408cb144a03ce9072bd07d143a` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/instance--5c1b25d06a55605011770773.md) | 119 | `declaration-track:5c1b25d06a556050117707735def6ef2871bc198aa8ec6effaef5d6505532155` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/instance--fff4750d1e6ea83a8c29a9f9.md) | 120 | `declaration-track:fff4750d1e6ea83a8c29a9f9fd29fd92c5ea7c5706941347260860a81bb92c7c` |
| 21 | `def` | [decodeName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodename--71d2821133cef61243f9b9f5.md) | 122 | `declaration-track:71d2821133cef61243f9b9f5b6aabe1f00786aa57b34ebbb0c89f3b9e7ef93a8` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/instance--3e689d8e2dc7a1bd727749ab.md) | 127 | `declaration-track:3e689d8e2dc7a1bd727749abb652a4ae9e7f85f6eacf25d3f52e7b35a488f7b4` |
| 23 | `def` | [decodeInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodeint--71aafa98267592e9480a5579.md) | 129 | `declaration-track:71aafa98267592e9480a5579a78706306fb5192fe84d9d26050b1ac8c807165a` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/instance--c48096b5b6999ad9ba412036.md) | 134 | `declaration-track:c48096b5b6999ad9ba412036f628f89b95ddd8f6555616afc4ee7492d3e2ea27` |
| 25 | `def` | [decodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodenat--2b4200f47f16016cad230971.md) | 136 | `declaration-track:2b4200f47f16016cad2309712dd93db2f7613d983a82579173fe195510c26425` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/instance--b84ab59c3d5e3bca67f633c5.md) | 140 | `declaration-track:b84ab59c3d5e3bca67f633c50ef5f81f32f53703d2e1d8ffa9ae339dc5831e05` |
| 27 | `def` | [decodeFloat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodefloat--2da5323e03cd680445e564bc.md) | 142 | `declaration-track:2da5323e03cd680445e564bcc584f0feed46b469b3b3e8be8ab4c0cec616715f` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/instance--3c46f4f2505ede0af437c3b8.md) | 147 | `declaration-track:3c46f4f2505ede0af437c3b8daa8b80f45344baf24fcef69f0e42fff06309f9b` |
| 29 | `def` | [decodeBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodebool--306afc76104b6ec414f04464.md) | 149 | `declaration-track:306afc76104b6ec414f044643c938bae484a4c06fe4b0fa9cc84fc3e5982924f` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/instance--219d1db4cd8ba060b5c4f76d.md) | 154 | `declaration-track:219d1db4cd8ba060b5c4f76dfa03c0cf0545cbaabb31a107f25d0e93a9d8c7ad` |
| 31 | `def` | [decodeDateTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodedatetime--4ba1573db62892b3f99882d0.md) | 156 | `declaration-track:4ba1573db62892b3f99882d05aac8060a31c9fafd402eacbb3509d573fb518df` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/instance--d96d62d00cea15d855a43f37.md) | 161 | `declaration-track:d96d62d00cea15d855a43f37899b7d3c72c05e41dde65c38051bb8ded0553ad9` |
| 33 | `def` | [decodeValueArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodevaluearray--c3c470f68e44f967122ad726.md) | 163 | `declaration-track:c3c470f68e44f967122ad726c07eef7ac548beb468ca2a168ee140bb859e49e2` |
| 34 | `def` | [decodeArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodearray--21f58349cda398520d99c015.md) | 168 | `declaration-track:21f58349cda398520d99c015707268f42aa92b7f0ebaaf4e9046e73a42104703` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/instance--c86e01c1da33953a774a211a.md) | 171 | `declaration-track:c86e01c1da33953a774a211a8eb0e8044596ff7e6da11a396b679844fe472944` |
| 36 | `def` | [decodeArrayOrSingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodearrayorsingleton--f23d5b8c99f003ea74b8cf00.md) | 173 | `declaration-track:f23d5b8c99f003ea74b8cf002f4a738436aaaccbea79bb85929b65d3563ed926` |
| 37 | `def` | [decodeTable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodetable--cd6ea514e0c520e4d52fd337.md) | 178 | `declaration-track:cd6ea514e0c520e4d52fd3372bf4a841cf2fb8b6b1426b3c0abe7944f944e869` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/instance--9aaf5620ca29227c66deddd6.md) | 183 | `declaration-track:9aaf5620ca29227c66deddd641f6dc8d28ec1b80932634d61615e449cd87a411` |
| 39 | `def` | [decodeKeyval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodekeyval--4e2135aed2bc7fb9308fea48.md) | 187 | `declaration-track:4e2135aed2bc7fb9308fea486318952dc5ff557ca4d5e1e7dade40573c6294af` |
| 40 | `def` | [decodeValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodevalue--35fe586b287eeb4c01f46836.md) | 197 | `declaration-track:35fe586b287eeb4c01f46836513758702e5b56e503967bb077a25e8fa022d805` |
| 41 | `def` | [decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decode--ea535f781fc69eb08d47507c.md) | 202 | `declaration-track:ea535f781fc69eb08d47507ca291275aec69d98cac9970a4b025a0eed580d0ca` |
| 42 | `def` | [decode?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decode--66e4ae005ea600efaa5c9a4c.md) | 208 | `declaration-track:66e4ae005ea600efaa5c9a4caf8b19cf37db7d695770e0c3f09e61925f1850db` |
| 43 | `def` | [decodeNameMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/decodenamemap--f4ea1dc15aa3e90219f34183.md) | 212 | `declaration-track:f4ea1dc15aa3e90219f3418333975916119295ed301a5ca716dcde2c91966a1b` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/instance--ef730e25d436b742279c92c9.md) | 216 | `declaration-track:ef730e25d436b742279c92c975d870104f17b9255a1f26d1c6a8c30bc3bbb50e` |
| 45 | `def` | [tryDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/trydecode--b32c874be651117e63d954d0.md) | 218 | `declaration-track:b32c874be651117e63d954d01cd9ac8251ddd80e97344b0296ece11e87a859ea` |
| 46 | `def` | [tryDecode?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/trydecode--71f3df305647d00c555a4e2b.md) | 222 | `declaration-track:71f3df305647d00c555a4e2b2756ea2ad5bd74617d735a3ba2c3bac51121a657` |
| 47 | `def` | [tryDecodeD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decode/Variantd91d992d042b5681e775d60bf783395f7f8e4bd24af0d454422879bdab8e0017.lean/declarations/trydecoded--4df52bba909daf9bb50dc6d1.md) | 226 | `declaration-track:4df52bba909daf9bb50dc6d1d5de538aa1c58d1d2ec14ad9503aa193f0fc3ca6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
