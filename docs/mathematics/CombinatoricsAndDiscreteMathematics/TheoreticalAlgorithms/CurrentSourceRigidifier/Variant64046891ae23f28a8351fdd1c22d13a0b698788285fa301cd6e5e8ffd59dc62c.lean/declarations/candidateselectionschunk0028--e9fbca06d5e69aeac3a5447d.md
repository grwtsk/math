# candidateSelectionsChunk0028

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d85841185b4b74d7a9c46e2716c285000d0f96cf80341446ce876fa2215613c",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0028",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "candidateselectionschunk0028--e9fbca06d5e69aeac3a5447d",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54056,
    "line": 53687,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9fbca06d5e69aeac3a5447d551fb9fd18ddf6b6da9fc9aab54d134fa59d7f07",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d85841185b4b74d7a9c46e2716c285000d0f96cf80341446ce876fa2215613c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53687–54056.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0028 : List (String × List String) :=
[
  ("name-candidate:6780d45e3a280056c0d96df8a3024b4199a29f7efcba4a67cc7c196e32b7016c", [
      "name-candidate:26dcd44b41405f12af658fb8966bbfb1c548f6756c6ea9293a61a5c7af6fc63f",
      "name-candidate:6780d45e3a280056c0d96df8a3024b4199a29f7efcba4a67cc7c196e32b7016c",
      "name-candidate:93e93cf36ba0a99587af3a3f195656bd0d09a7149db1a730d6cfca83264320de",
      "name-candidate:dd6d7a0e7b1e984bcc693b775c2f169f3f9c60af7684261a28d1df650b0f985d"
  ]),
  ("name-candidate:6fd35c60bc0c832baf7e19a50ea383a9a590c2d4d16e6a3aeaa68bc54a0d8491", [
      "name-candidate:0b79169af0710225fd345fa6cbab76146b0a296e7b80f7677d14ed6d8088fc0c",
      "name-candidate:6fd35c60bc0c832baf7e19a50ea383a9a590c2d4d16e6a3aeaa68bc54a0d8491",
      "name-candidate:8a073426149febf2404e1c1c3dcb33e0c715a9e99c046aedd17d47437e62f506",
      "name-candidate:9c8501e0bbac06d14714bfe1f728fd65d40c4e0f1d6a51b856f5d58c9804d560"
  ]),
  ("name-candidate:215c4ea8005ec0ef0257fdfd4850f62eee12a6ac244ac892593ddca2e921aee8", [
      "name-candidate:07f5dec6a4837d217f09dfb8ff9f544e4cf79e93bbe447736f0c0437a185efb7",
      "name-candidate:0a634361349252777c9e346cd9b5f930d5b8644b1ce6884eb345b9a2054ceb19",
      "name-candidate:215c4ea8005ec0ef0257fdfd4850f62eee12a6ac244ac892593ddca2e921aee8",
      "name-candidate:ccf202481125a6538a1d93651a7da7fe4d99299aeb6ea6128593a8e35c670d5e"
  ]),
  ("name-candidate:a58f5fa30dd943ce378077f421069d90c8f3dd89df4dfd38ab8095d64e83d32b", [
      "name-candidate:a58f5fa30dd943ce378077f421069d90c8f3dd89df4dfd38ab8095d64e83d32b",
      "name-candidate:dcb597b96376bec766dc951614537a11fde9f6c23e7d1da59ebf4d269998348f"
  ]),
  ("name-candidate:b1645bc6ee7d5c9e71ae8b00767bec00b9f28683d877f1bbbbcc8b5ef26a8a25", [
      "name-candidate:b1645bc6ee7d5c9e71ae8b00767bec00b9f28683d877f1bbbbcc8b5ef26a8a25",
      "name-candidate:d38900aedb759c09f527b01c902b8ab4a14a5ef9952cb2aa345633d78df13271"
  ]),
  ("name-candidate:4eb01e145086e1726bce0d9fcb2185c38cf2e423a26b1f8f18a98306c3d8541e", [
      "name-candidate:49e556668c428e8647cef49b174bd288fc1e7390178cfb2e272be7242856db9e",
      "name-candidate:4e53bc2dc871538eaec26b388ec9f58c98f9af09090e5cba63b66f2e6b83e30b",
      "name-candidate:4eb01e145086e1726bce0d9fcb2185c38cf2e423a26b1f8f18a98306c3d8541e"
  ]),
  ("name-candidate:ef6f770f96e807eddd11c2ffa102afb52a306cb73cff41470d10802b8996ecb9", [
      "name-candidate:9478fdaf36e512447a15c1b602b90c4682404c802d5681681a3f5985ce546968",
      "name-candidate:94fa5a016ecfe878fda734c235db9e17d26402b110eba57a50422fb0d8df9d51",
      "name-candidate:ef31df6ab8df5d78900073bbd3059e5dc1af0c9a5fdd7ed156fa2bf43c5c43c6",
      "name-candidate:ef6f770f96e807eddd11c2ffa102afb52a306cb73cff41470d10802b8996ecb9"
  ]),
  ("name-candidate:187c422293409656ad7b0e694d97a7fed620c05c9ca612723c434b5075be5d25", [
      "name-candidate:11dde3933c135a5d30d2260d526624d3204309c543a55ad7b04ff07d7cf6740a",
      "name-candidate:187c422293409656ad7b0e694d97a7fed620c05c9ca612723c434b5075be5d25",
      "name-candidate:6b0613449b5e5d7e3e3366592d9c267e9a5a8a58c9659dc2cd238c18c7893532",
      "name-candidate:98a568bc7b576af752f63c2599f611d4e12232dc967df59dc86b42f8ba2b235c"
  ]),
  ("name-candidate:4cfcfd5e9bb00a28bf5a3965f91cb4e5d2c55e576e878b660b25ff9cade7a0a3", [
      "name-candidate:335c995b2df5bfc277ab72a5e7efe185ed9ef221ca6a8aeeb258ec598761cb25",
      "name-candidate:4cfcfd5e9bb00a28bf5a3965f91cb4e5d2c55e576e878b660b25ff9cade7a0a3",
      "name-candidate:6845108ef9826b61fc893873758b5a4f1485938350397e7b9676a760f037e03c",
      "name-candidate:8906048d395f49d66eaa119ac3125c1188e8d8452e9b74aa8bde5b64fcb1caf0"
  ]),
  ("name-candidate:a9009eb28d09999c125a1747e66962fb4129c98392b5d52bd857c861f9c70d4f", [
      "name-candidate:74acdeeac8de15bdba10fbe977389e77dabefcba8f66859a450650eddb2c3a6b",
      "name-candidate:7fb49d612d9aeea95150f8fe2598607cbfa18dd1d7da9d8064aa842516e59c5d",
      "name-candidate:8927a4847ea3ca3d96d974e29c8a4b993bfb9aed4590c09af6f6ffd0b75f1acf",
      "name-candidate:a9009eb28d09999c125a1747e66962fb4129c98392b5d52bd857c861f9c70d4f"
  ]),
  ("name-candidate:46e50c99f7717938841fa193d3931f14f4545d04e6ba4992bf3b11947df19c44", [
      "name-candidate:46e50c99f7717938841fa193d3931f14f4545d04e6ba4992bf3b11947df19c44",
      "name-candidate:6de172b06709ea281e446fc8b26d93b7ed2e782de9dbfd2b5c357095d41360b5",
      "name-candidate:c11032eb86e6fa0e5dd1ca419ee4c73f898420d1445f2e7c6d3573dd987a1fdc",
      "name-candidate:f93158f14ab7669e025fdd08c48d4d3e22ba97cb6f7fc7728d958c904af25183"
  ]),
  ("name-candidate:51394765492d5b808141ac9a856ab8a234b974dbd9fba8705d19bf359c0650d3", [
      "name-candidate:51394765492d5b808141ac9a856ab8a234b974dbd9fba8705d19bf359c0650d3",
      "name-candidate:71874faffacf764a586350d0c83e983509b6a13850b208d4731c5cf79fe846bb",
      "name-candidate:bd7ec5a1d6f3bd8b70fb79848fabf0e81fe5e3a03bd284c20c276f5421795509",
      "name-candidate:fd4bceb767d91aeebe492b63d744238a5e8cf7f60dc29dccaeca351c1e67db5e"
  ]),
  ("name-candidate:bdd5fc92021b80926a016da825edb020ee943c1a748eb136de459917d6f91e2b", [
      "name-candidate:8bdc44d62222344f0e1d2d00f9700dd94195de8b6ef0744a7e55d63fef32b94a",
      "name-candidate:bdd5fc92021b80926a016da825edb020ee943c1a748eb136de459917d6f91e2b",
      "name-candidate:d6570fc36c2e39571baa6b2b3be0a10b7fd11154cd50d23da5178c0f4fff2c74",
      "name-candidate:e08940a7608cf0d01c3bd9e317463efdce58eba2cf2a2a66b90ad9f3b866e65f"
  ]),
  ("name-candidate:d8ccf1949c6224e6556dff1df7580a82c7ffeeaf68b44b2c2d15531ba1d3f9d7", [
      "name-candidate:61453936162cc774953197051af7895683e2fd44e97538b3c7e776aac4c27f87",
      "name-candidate:6daa70659e926f2d07fae95b2e296a6c9514722b1d704eb8fa02dc895d4340c2",
      "name-candidate:d8ccf1949c6224e6556dff1df7580a82c7ffeeaf68b44b2c2d15531ba1d3f9d7"
  ]),
  ("name-candidate:886abec3d87635604000d76bbe2fc99610f0fdf608f3a74cce8f5d47cd51b3ae", [
      "name-candidate:19bad4849ae6396be2bf14e196ddac4ebbb6c7efb654d9ead0bd23438e394f76",
      "name-candidate:51c2468df25ef3573ccf4bdfcee71cda611f61b1be08f9a2451307832b108bc2",
      "name-candidate:886abec3d87635604000d76bbe2fc99610f0fdf608f3a74cce8f5d47cd51b3ae",
      "name-candidate:eb07627eede6f8e026d72147f21c449147ca2d4e0ad34d779265c522b48fee29"
  ]),
  ("name-candidate:6729684b0d3157b4ebe5a5cdf79b54caa689236318504c2201e5232092ebdd7c", [
      "name-candidate:1d1941f5518aef50f218efb0036dcb929bd7880299a84de89e66702fa8237f31",
      "name-candidate:6729684b0d3157b4ebe5a5cdf79b54caa689236318504c2201e5232092ebdd7c",
      "name-candidate:a131426b8a8cd591267f8e99e6500af276d3e4b6f6b2da2fc90403c88ddc5afb"
  ]),
  ("name-candidate:e0b56ad0221b8226b5d509d0e50466363202d13be94bfe8b150912ab7a2f314b", [
      "name-candidate:e0b56ad0221b8226b5d509d0e50466363202d13be94bfe8b150912ab7a2f314b",
      "name-candidate:f1bf29a6dc36c82256baded9cbbd6753ad13c4a165f62e120f9d11808ca5de25"
  ]),
  ("name-candidate:16886dd57fb907c67d4c33f6971bb8e3d847383319100d0d0621408c005a302e", [
      "name-candidate:16886dd57fb907c67d4c33f6971bb8e3d847383319100d0d0621408c005a302e",
      "name-candidate:ace543130c6beb6d247da069eee1106e6f8b25b32d06d28bf1eb8e88acbc5fb2",
      "name-candidate:dc4d6c69ab653c3eb91516e73f7d9bf962c735c57927edb5a7528d0e4a91eb64",
      "name-candidate:ff9709a1a4b9b9c19fade2b61049a9889721a94e8ea9a5ae9773169b9e2ee7a3"
  ]),
  ("name-candidate:813b115805d50874b77aad0526334839ef9c46fc41fdb50f54a81e1e149f9ab4", [
      "name-candidate:27a5f3a28af6e5443eefc63e1142d254c3660c2d31a4c562cbc48d339f0af311",
      "name-candidate:813b115805d50874b77aad0526334839ef9c46fc41fdb50f54a81e1e149f9ab4",
      "name-candidate:9adfc8569319905e5f7c6b6114506b4e2882db4d3afede117fd6d65f3f1e1d1a",
      "name-candidate:b079efcda7e4eb0f4dc2900573e901077e10ff2c3cef1c57e441aebaceb86cca"
  ]),
  ("name-candidate:e6852e44debf02730c400058af4a9e9a234842844e535d2a0f215365f0249d02", [
      "name-candidate:0a1f17e5bf120f32b1220b564d6e5837d1e05cde8905b4f9cba9c48ddd9c9631",
      "name-candidate:7e6913dcd8b76719a5133191fe943d02103d83751d4f4c05581500e928c3f6a5",
      "name-candidate:8d3ed6b7dc14b3916fb4a35f7bf72d22aafb1f772aeedfb2dcd3e07ce3933dbc",
      "name-candidate:e6852e44debf02730c400058af4a9e9a234842844e535d2a0f215365f0249d02"
  ]),
  ("name-candidate:6b41bb67ff30df1043eed91e932df4cc8f1323f7ab1d26c710a19d104282aca8", [
      "name-candidate:46861b64d31fa81f6aebce18cda85c7256028867e46cb1d6be445316756cfc7a",
      "name-candidate:6529598453344e6c4ec947828c0bc680094fac40fdd335c936fa308001992728",
      "name-candidate:6b41bb67ff30df1043eed91e932df4cc8f1323f7ab1d26c710a19d104282aca8",
      "name-candidate:af79c2cc1877674f4c50f249d8eda026153cfb984331d9603cae888e03cf7880"
  ]),
  ("name-candidate:8d00e7af070a7b3ee8a04af45787c5e54313816303a760f563f4fbb140954c1c", [
      "name-candidate:74724daa63b8dae9b5714a23f94c9808bdf3d16448b476b18a67084cdc07a1c1",
      "name-candidate:7a8e35760d146ecffbb7f89548f8f619ef773dee900f826e325ab504c050f85a",
      "name-candidate:8d00e7af070a7b3ee8a04af45787c5e54313816303a760f563f4fbb140954c1c",
      "name-candidate:bee0fe42a671de651fb94cc2bd9f5f9fc82a325fa89ef58e58e70015ebf1dca3"
  ]),
  ("name-candidate:4f3d3703523a3e3039db7dad97cfca9107c7f8ffb76f29f6612908dbaa803904", [
      "name-candidate:4f3d3703523a3e3039db7dad97cfca9107c7f8ffb76f29f6612908dbaa803904",
      "name-candidate:527d38a2228436ff7d2029f8a2a84538fe394063333c780ee338d1837ba272c3",
      "name-candidate:8e513c022ddb377b3ac04bf0be7bb8fbbc48a9f106327dfb4be328d7897de213",
      "name-candidate:dc7942777e027bb23f7d94d363d9caf4b2f40b491b9c82e6017ffb90b1c05eee"
  ]),
  ("name-candidate:9bc5925eba26414b3ca96aca7bd39904737d30eeb0ae681b92fab0af85dcb0be", [
      "name-candidate:64a813a6204134927076607da13e6017f8b138ae4e0edfd483bd543f4b8ccc30",
      "name-candidate:9bc5925eba26414b3ca96aca7bd39904737d30eeb0ae681b92fab0af85dcb0be",
      "name-candidate:aa859a23362759c03d4a471944e609fa9de44b59f946d67b842338dd8870069a",
      "name-candidate:b002e9abe9d469db2e4a3f3e87b73a2e7348e8983a7ce567482831e10d5e097c"
  ]),
  ("name-candidate:8fc8afc711a815f593a683a71c61dc052d218476497383bf331e32f94ab10e97", [
      "name-candidate:065916bc83d7904756a8498efc72019b8af59ae58ac7a014dfcde02bbfd2401b",
      "name-candidate:6c38d18a06b5a62ef8d8768828fb69e8e5bad566b0e9e7db9ef062109e0fc0c9",
      "name-candidate:8fc8afc711a815f593a683a71c61dc052d218476497383bf331e32f94ab10e97"
  ]),
  ("name-candidate:2b6e497e131f08849120d73ab9c0867649f6b746a3c9153cea0e90eac045b771", [
      "name-candidate:2b6e497e131f08849120d73ab9c0867649f6b746a3c9153cea0e90eac045b771",
      "name-candidate:35f69933ab17ee8837fb500a48271ea9ae216c3472addd2a0d606bb79ca4af24",
      "name-candidate:bdee3f30020f2fe17fbb1e960b20a048ad3e4708d7025ac8a34b309ec21f5f79",
      "name-candidate:ccfcda657a13d0c84ba9fa7cb7ab90f65d1723c6abf62547b33ce2d6a5a6bd2e"
  ]),
  ("name-candidate:e4c62815169b8e7f192595d2c0cdab40d3284483a0bf820d07c3d0bc60bead02", [
      "name-candidate:33967a7d9ac3e67a765885e55215e6f843fb2f133197705c96e8e9a7ca2c1f54",
      "name-candidate:3da53dd2c4dc64766a84e065c6174d11cae9afd54ccfba03d770a49cf41fcb41",
      "name-candidate:e4c62815169b8e7f192595d2c0cdab40d3284483a0bf820d07c3d0bc60bead02",
      "name-candidate:e7bfc0e76112457141ff704ac83943b3773d68d9e587341d42a312667c1b9d07"
  ]),
  ("name-candidate:a8de8a6d1a8dbdff1a1a90ef7ef7780a04d2633afad83bdbed2568d0949be811", [
      "name-candidate:115e3a8f04c77658d6ea6d9a467cd51049b6c372e2a88ab2d871adac3885da12",
      "name-candidate:200ded9325f2432e99c55169159571b4758f958611b4cdfbe9ac3fe00515677a",
      "name-candidate:a8de8a6d1a8dbdff1a1a90ef7ef7780a04d2633afad83bdbed2568d0949be811",
      "name-candidate:d196475539e12c99b4496c3b9b747f6f29b028abbaff23bcdb4719ade11ef3a7"
  ]),
  ("name-candidate:9bf8c5159e8f504674e12fbbc0dbcc61d3af76124c6236ebb1b10187aa0b2091", [
      "name-candidate:84e7f9754bbfe22646736ac50a6b38c34c68283b8cc7af2062f599152dd0f985",
      "name-candidate:9bf8c5159e8f504674e12fbbc0dbcc61d3af76124c6236ebb1b10187aa0b2091"
  ]),
  ("name-candidate:25bd6de785591f2ecb5ba70d248fc6ce47b86a0b031cffa3dc79ff235ae07b50", [
      "name-candidate:08c1391901d9a94eb29848d6c2845b7665bbebcbb88f2023dbf959fbc5e0d7b9",
      "name-candidate:25bd6de785591f2ecb5ba70d248fc6ce47b86a0b031cffa3dc79ff235ae07b50",
      "name-candidate:3ee08afef8d05bc755da1ff967a61fb9b50d39def301b53919314afb8c4ea277",
      "name-candidate:5902f96e82d62d146134f1836e236f5d3fadee348712d5aafb95a0dd6bb0a1e9"
  ]),
  ("name-candidate:53d2f88142b1b5a03bcd64f29b8a2b36cb16b792efbe948d54e5e7abdced27ca", [
      "name-candidate:17974ddf91bf4ab92ac6ad83d98e5b62cc8d65bd629103388a791d11c9547880",
      "name-candidate:53d2f88142b1b5a03bcd64f29b8a2b36cb16b792efbe948d54e5e7abdced27ca",
      "name-candidate:65bf7facc737da1c04aa211c8024825400b3a15210b0b1fda7a6996e58dd5fa6",
      "name-candidate:6f1ef87f89f48b238da9e407822a61e0368444e72a487a0f602f493f3ace1002"
  ]),
  ("name-candidate:fd93cda722cf48f53473705e6adbd66173de3a1b942da34d26a29c961c222655", [
      "name-candidate:692843480655b50c7d06fcd7629af06296b606dc0bf4da4307a93cf20b383f26",
      "name-candidate:9d5903ea735c5913504269aa1e9623869ed76cf9ab46b9a1a33ce96efb0e9456",
      "name-candidate:f06fbefe36e7aea352e7958d00b5593055953e9366ed344017cc48fbbc055c04",
      "name-candidate:fd93cda722cf48f53473705e6adbd66173de3a1b942da34d26a29c961c222655"
  ]),
  ("name-candidate:a231626db59408a4958fb75a1f934aadcf1c4c6d06ec361c21b4da5f668616aa", [
      "name-candidate:a231626db59408a4958fb75a1f934aadcf1c4c6d06ec361c21b4da5f668616aa",
      "name-candidate:d27dfde1091904572b539ee7d46b26b757de3ceb1ff33f47ac7d6ed154a2cf42",
      "name-candidate:ec33933a6eb8672fa27e76ef27542b31bec201810650e9e94688770b0082ae5c"
  ]),
  ("name-candidate:a5ba0fe1ab43a42935f25e75653775102777e4c3eb43dd33ac7fbcf43715a34e", [
      "name-candidate:07eedc86886c4d3694ee9d511813f0bc9671dfd4fd4710aec31da58d356b4187",
      "name-candidate:a5ba0fe1ab43a42935f25e75653775102777e4c3eb43dd33ac7fbcf43715a34e",
      "name-candidate:c470abcb6cdb1f05b99486cb6cb44787a1b2f6db454ef2bd6d98ccee5f7aebe5",
      "name-candidate:fd784887c86ffc80768d2885c432e929116e37c09a736c5b96a5130d3d9d8a3b"
  ]),
  ("name-candidate:deff57db299d8236706b1bd8bcd4b7bb516a712f7269605c331ec155fb84bfbb", [
      "name-candidate:2cede502e7bf8b8aba4370af6618e18ab0dd42e352408485bd003102dc009957",
      "name-candidate:7eecc128851f3def782bd8208d8808a1f9835d319b7ea4f2b4a5b9f64d2803d4",
      "name-candidate:87d936944220c355763ea4789cd6b03935f66d04976a69b505a9c01656519cc2",
      "name-candidate:deff57db299d8236706b1bd8bcd4b7bb516a712f7269605c331ec155fb84bfbb"
  ]),
  ("name-candidate:2bf8f1521572a4794e7562acf29e2cb97c3e03ac2f9954797a9f8981e4a6800b", [
      "name-candidate:2bf8f1521572a4794e7562acf29e2cb97c3e03ac2f9954797a9f8981e4a6800b",
      "name-candidate:afb2721d8746f734e01517d75db22c45b9fb36009594659a105675efa41a5086",
      "name-candidate:dc04da180c5cedf65f3219d2f3a50c6e43e3f87adf22730221955eb47dc6292b"
  ]),
  ("name-candidate:34385442526bb615626067dcdc9e473110fa6fbfe1760799d591288110318f67", [
      "name-candidate:34385442526bb615626067dcdc9e473110fa6fbfe1760799d591288110318f67",
      "name-candidate:47cfcbd92a38f91b75ec205f6e22dbf4139f05d1cbe7a75a47f23dba400a087b",
      "name-candidate:603b2faab0e6a251fbdb0de9f57b9408cf05d13939808d3d19069e2f3b123d86",
      "name-candidate:614784423c2b627a350e69407bf815fa1206a58e923e621764249108aa24c87c"
  ]),
  ("name-candidate:32f1a2854586e26ce6d5e0825a0ee9fc8c35b15885618e3f2de98852f58e893f", [
      "name-candidate:0b11a611578018ebd1d32abdf32135eedadf0f7beba05341db45826677a45436",
      "name-candidate:0cec9007b4b17f09b362bef4b819028fa628ccae53b6011ebeddd514018f898c",
      "name-candidate:1a705bb84ae2adda41e795ae5eb6e3b8a2ed5891d3a8e1296bb2360e66d21a0b",
      "name-candidate:32f1a2854586e26ce6d5e0825a0ee9fc8c35b15885618e3f2de98852f58e893f"
  ]),
  ("name-candidate:3076a840ce4dd7152c0fc36ce72b7724fafe9eb39705a88b6aa5a5ad45bc39e7", [
      "name-candidate:3076a840ce4dd7152c0fc36ce72b7724fafe9eb39705a88b6aa5a5ad45bc39e7",
      "name-candidate:3bd200848f3d52a3836d59e74a7d91f15a738b81ad5abed03ca5253a79e41ae9",
      "name-candidate:56a7857c873120710e67256f3edc08151c234f8d2ab47dc6c2d180f3f8633e69",
      "name-candidate:97a0c29f23a7d26324c2f30773e28dda4c73b614e97cca439a56332ae8675e52"
  ]),
  ("name-candidate:9a87fcdeeface6937f54e445845bb2525ac0e5c4f08b7a37249bd7160ef8d1e8", [
      "name-candidate:02bed8093dc6a3e94021790cef64c05c1c9773612e98fe753f49a1e217c2d975",
      "name-candidate:42aabd60955fa0a8143f52cc53ac6b733f778c5434198b5907f7a6d09d237476",
      "name-candidate:6e3b4b7297e01400b2e48d1ff6d74e57e10c745bde7e3a643117efa6b3f68c1f",
      "name-candidate:9a87fcdeeface6937f54e445845bb2525ac0e5c4f08b7a37249bd7160ef8d1e8"
  ]),
  ("name-candidate:dceae8e5c63ad23a862ee210a8c9c011c73fd9465209307881514914e5d402b2", [
      "name-candidate:50e18dd4b28f2bfb39767558a4701bfcfaf4057f3e1f2c430b1e33b869a40d2d",
      "name-candidate:875eba0b434da660be8024acaedb698ed4a9310115999dd0eff4ff09185ea832",
      "name-candidate:dceae8e5c63ad23a862ee210a8c9c011c73fd9465209307881514914e5d402b2",
      "name-candidate:e63d16f5fd7ef7c6c014397bd8f20c7abce90f935ff4814660f99d119d577f19"
  ]),
  ("name-candidate:ede64ab08c11983024e9e054856ced9cfa03dac8e4a2c3d3576e22b7e2eb01c1", [
      "name-candidate:223d57ac4b7448bc3abfd6ffe47c853782e28ebdd6d78ec28bfe02c0660e3d20",
      "name-candidate:95cd43ac4b514c5b93c5bc0b7c6ee0434a6459984a8675a68ced7bf64e02b1c2",
      "name-candidate:ede64ab08c11983024e9e054856ced9cfa03dac8e4a2c3d3576e22b7e2eb01c1",
      "name-candidate:f30868d6ed4d3bcb6b8efd8e2dc6fb892c3d30bf32e5484047c9fc399e49addb"
  ]),
  ("name-candidate:a27ecc9f7f02fbe8f4d34f9fee02e7344a8d9bb446c544bfe3d91b259a73de4e", [
      "name-candidate:60ac34eec94e7b2b5d2d93d2325d1ac9d88fabc52f34a08e48db23c50fecce05",
      "name-candidate:9bda9b27697c767386c9dba498d02bce1437c66ca3d94d40e2c6fdf3975a0022",
      "name-candidate:a27ecc9f7f02fbe8f4d34f9fee02e7344a8d9bb446c544bfe3d91b259a73de4e",
      "name-candidate:f095ebee9fe8dc3ca668569cc7600ba91a159c644f2e4c03ac2f08905cd04021"
  ]),
  ("name-candidate:6c65b1e15e0a4470c5204baab11469509020b78a7b4bf7fed69466f6bbfb1885", [
      "name-candidate:1995a5c967db0092c6754ae261d88ed5601d6f3703c43c95438dc78b6e9b3189",
      "name-candidate:5cab245d77e76c4846197451fea87acbd2a0a95dbbe29e9d2dfd0e75c43bedad",
      "name-candidate:6c65b1e15e0a4470c5204baab11469509020b78a7b4bf7fed69466f6bbfb1885",
      "name-candidate:7e8bcc8c9b5570bb2b900a08cd1da9e381ff7fd3b3f1e347ce40b11305116cfa"
  ]),
  ("name-candidate:5ee24977f575ff5a0f5eec1bf8e93e37564bfad6eabbe3ae91b68fa31203700c", [
      "name-candidate:0b3a49a5621932ffd4406c1e408a1af5d5f9de7ad18522c77a5a42a975e10b20",
      "name-candidate:4c3a1d505f72f39bcdfc92fb44893b885ec1ebc6ea48591d5c9f69b707256669",
      "name-candidate:5716057b04bd56fea594f687ef33552f95251e3eac5a7c968ae3a5d60ca0b82a",
      "name-candidate:5ee24977f575ff5a0f5eec1bf8e93e37564bfad6eabbe3ae91b68fa31203700c"
  ]),
  ("name-candidate:4f4cc57d809e383163dc4fa524b9faa78affc5f9378329f6791217ef4d5aa1cc", [
      "name-candidate:1336ad051414810efef076ad397d51094730e6223889d8c5dc06730cd5fe63a7",
      "name-candidate:426bfc082010a0d898961b9b41c83a6e93eaff6f420d09e672818c86e95ae32c",
      "name-candidate:4f4cc57d809e383163dc4fa524b9faa78affc5f9378329f6791217ef4d5aa1cc",
      "name-candidate:d32beb6ae49c3f7b9737b883bcd560975dc02912b4d8df58f50309dfd11103fb"
  ]),
  ("name-candidate:a19085a90ec87c1e2afc474ef09bbf37043a30a46817e512b3e698c5233199eb", [
      "name-candidate:a19085a90ec87c1e2afc474ef09bbf37043a30a46817e512b3e698c5233199eb",
      "name-candidate:c22b273518c88e2573e4bcd6579d77ec491b89b1a71f924192d10e90501a1037"
  ]),
  ("name-candidate:103f0eb7a5dbdc845d9495b3f3b23bc1c1795edb929cf01d41aa50332f6e2fca", [
      "name-candidate:103f0eb7a5dbdc845d9495b3f3b23bc1c1795edb929cf01d41aa50332f6e2fca",
      "name-candidate:65017d727de07ba7499809ed24ce2331bb880e7ddc60669bfa8719f7cbe4a419",
      "name-candidate:78ef18f21d832cdaafc60b6f7f8237d46ea17742b5cfaac7eed11339f5c26cc1",
      "name-candidate:ca84e98882ad5bc6c235276a3e837372de5aea5c57a328a579fcc23671914350"
  ]),
  ("name-candidate:6c91b0e4b8d8610ff13fc54dc3d6622c95a5596ec1cf45a5bb4ef4cb2b16cf47", [
      "name-candidate:0bdfedf1d911ced1a6b7f43a042c1a72203d3672f8b4876d357d7cba4b7e8e94",
      "name-candidate:6c91b0e4b8d8610ff13fc54dc3d6622c95a5596ec1cf45a5bb4ef4cb2b16cf47",
      "name-candidate:731d5bcb9710ce7a7ff23f240e48f1fe6199b18c4268126a528c90f08c423da6",
      "name-candidate:82b17ec9ccf665d76d0953751234f6f9382ba289294ac068ca3f282872414504"
  ]),
  ("name-candidate:54db782f188b4574fc2cac4a9afb53487879fafe32648098b08238c56f1886dd", [
      "name-candidate:54db782f188b4574fc2cac4a9afb53487879fafe32648098b08238c56f1886dd",
      "name-candidate:5d9e2e59562b7768214feeea21b0ffd87912e6ab95a50de7cdae9465308a1de3",
      "name-candidate:8fb82c688d64a8e7e25e8ae3c438f6e4a19c4f323d0d684c3137b9be9ecd3d80",
      "name-candidate:acad7198d2cb0d6767784b962a9c296534af75b883910b6710eb25a257853923"
  ]),
  ("name-candidate:ca991892d8f510a9e2ab0f204c431e4d29dad9c384513d22eb5f9517cec0a8c5", [
      "name-candidate:60f3c4d8dabdf280bf87e02ed4c2b4a05be1c761ed5bcf50f552d402045bdd72",
      "name-candidate:ca991892d8f510a9e2ab0f204c431e4d29dad9c384513d22eb5f9517cec0a8c5",
      "name-candidate:cb6d1332a8acecad4cc09b4b8f647b066e3696a846a9481b0753d5ae237b7b16",
      "name-candidate:eeb77d19e3fe3b57e3949af2477c5286b39196922e07ddf963477fedfd4982ef"
  ]),
  ("name-candidate:9f5e6d470fe04d5524116eeddada72f29c005eab277ecd00860da141aa6e342b", [
      "name-candidate:45c66a584c84731d2e49350dff33909e86c2693a359c511d9a6d974a489ee72d",
      "name-candidate:604443d640e8310dcde7bbfbb162508b37a664d7b24606722feef0c9681d87b5",
      "name-candidate:95e511fafc28a713ed3a74a6c6685d953d2c7a792b385bf3e7356cc293eb2ce3",
      "name-candidate:9f5e6d470fe04d5524116eeddada72f29c005eab277ecd00860da141aa6e342b"
  ]),
  ("name-candidate:414eedbe37dde6bd819b21f822416d385c4a35601a6259986a7d7832d945ef9e", [
      "name-candidate:414eedbe37dde6bd819b21f822416d385c4a35601a6259986a7d7832d945ef9e",
      "name-candidate:4dd9fd196abefe6495998ab0bbc4f7da75c525869c0b361ed8eee9d590707db0",
      "name-candidate:b667601c253dbed1ad38fc1b3ac8025f91527d5e17fc50cec7df54dc6073b4fe",
      "name-candidate:f7487e65223173948558f87f9277b0fd09e1102d5aa46b997eff3e63291cb0d1"
  ]),
  ("name-candidate:e7fe659b9db253209ce0a2d769f3fb03146ab915509f63f4a662a00be06f837d", [
      "name-candidate:4355d4b370b0bc0b4bba8303b439032b0b172dcfdce2267ac5ca7a388439cecd",
      "name-candidate:489567a9df33ffe479342a5f96638335a317776a3a3a5f0b3ad7a33da5df8b2e",
      "name-candidate:6292f33a2cef95ebd21dbdd3e4b21411adcf999583a0ae92f2d25b449714abfc",
      "name-candidate:e7fe659b9db253209ce0a2d769f3fb03146ab915509f63f4a662a00be06f837d"
  ]),
  ("name-candidate:149bcf02845dad7ff9641c421b66099f077e919005a5276b58e320674c547ad8", [
      "name-candidate:149bcf02845dad7ff9641c421b66099f077e919005a5276b58e320674c547ad8",
      "name-candidate:62c27b97ccf73d8b3161457bda504aad3df2c4e61d7ca193dd44ff3810023325",
      "name-candidate:670aad453e35eb2eb04ed62ee065c07409943d5e68b7aba1734dcdb247e62824",
      "name-candidate:8792917a65dcd1320c4410b9f51d578decbb642dcfe506ab2a74552ecc811432"
  ]),
  ("name-candidate:ec450eda354e4324f5928c2ae01efaa6a9eed394f297ccae6ceb7a8db28515c2", [
      "name-candidate:6177cb832a1e0362f120123ee099242dcc16dc35fb2b6e99bd9183e9f95824d2",
      "name-candidate:963a46bc8592410d43868a805ca16a5c22d9f62077670d2c0b368e46c1b876b4",
      "name-candidate:d44fffb08719ea35ca4e539ea2bf4a635761918c1a44e51cbb17be79b651db12",
      "name-candidate:ec450eda354e4324f5928c2ae01efaa6a9eed394f297ccae6ceb7a8db28515c2"
  ]),
  ("name-candidate:28740a225d40d6b961b95939313833f09578f91a19a50d69eb89b953daf920a3", [
      "name-candidate:28740a225d40d6b961b95939313833f09578f91a19a50d69eb89b953daf920a3",
      "name-candidate:e1c09311d856828f54271f8d2f6fe7d308e49cc37fb055f09b5363ca78129e92"
  ]),
  ("name-candidate:1cd5bf6e339f773920c4dccd8f0c47e25f9789ec0a8c9a4c303f56a664d59ac4", [
      "name-candidate:0de32bcb76fa8b403d4e5f0b2be90d03ecf0832a0cc96e422e311c914ccc948c",
      "name-candidate:1cd5bf6e339f773920c4dccd8f0c47e25f9789ec0a8c9a4c303f56a664d59ac4",
      "name-candidate:41508b15a1cb5c8619ce3cfce15321d4b59e38999c5d3f2c734c12b533f2a513",
      "name-candidate:fc7e3b43f671c9d2b05d4dfe617a3fd7bdd4a88f23035fab2e20f7304c3d4cb3"
  ]),
  ("name-candidate:6a65a87df4d7933c1a42bab2e82376143758802ce6aefb9ab8e9abd2c50f46a9", [
      "name-candidate:0c6ee80ce06c5a71ccb39bbed6c78abd81427ff61b540adee2e92e6e78dd009c",
      "name-candidate:37bedaee586214739dda46125394534d5f5071050401316f34b6c93ad34893aa",
      "name-candidate:6a65a87df4d7933c1a42bab2e82376143758802ce6aefb9ab8e9abd2c50f46a9",
      "name-candidate:dee515e08e82e550055d31b0fd4061dd6a89b50a18f6e932dd139f55dcb510de"
  ]),
  ("name-candidate:8588732a20324351df987fdfebda1e7b6c1bd22b95286c24cf62eeadcc7dde77", [
      "name-candidate:280a3e18be78ab139e54354e4693406ac49f3aa08f38d10436b0cd59761c1cac",
      "name-candidate:8588732a20324351df987fdfebda1e7b6c1bd22b95286c24cf62eeadcc7dde77",
      "name-candidate:de4ce5e0b74223a1c5adc4d02cf31f028ab1df3839a9e6552cd0f6532127419a",
      "name-candidate:e5183fe45c794d295e0dde77f1ed4a33992fab4f49c2d79c1f2a5318df4e9ee3"
  ]),
  ("name-candidate:cdcdd4444336e0758dfef6a35967f650e6ccf0e384c8c275a38d9e7743d5376e", [
      "name-candidate:2d132695bd88d36a268a3b88bd936b9c9d0736995c53a77cf3c2af6c91c52181",
      "name-candidate:3fa92285805ddcc85524c40844c62b6cbd5e9bacdbd78fcd8610d84e28c5f54e",
      "name-candidate:cdcdd4444336e0758dfef6a35967f650e6ccf0e384c8c275a38d9e7743d5376e",
      "name-candidate:e26a75c3d77ed85dc6986611d460ba1bacb6cedfa69c17634d2495693d4418fe"
  ]),
  ("name-candidate:9a4ae8b6612e2ba1dda1c063ff2613c23a5d4dd2263aff42cf0090365b06ad8a", [
      "name-candidate:00bf6e83506c97f29aafaf9f9874c1590fccb4673398f47d3978ca324a655e7a",
      "name-candidate:9a4ae8b6612e2ba1dda1c063ff2613c23a5d4dd2263aff42cf0090365b06ad8a",
      "name-candidate:a4c617a97e121cb25e916d625f37fadf3708a9fd48c150c5ffbaf77b8fd0a931",
      "name-candidate:c76d3d327b93994198aca3956e1544d2f21c633431937fb24df99cc2f3b33417"
  ]),
  ("name-candidate:2e3667ca86f7fa37fe9021b8ae126647b5a4697c1fa321aca14cf82d18f0db97", [
      "name-candidate:2e3667ca86f7fa37fe9021b8ae126647b5a4697c1fa321aca14cf82d18f0db97",
      "name-candidate:5fd4eeabc12a880004c213d6ef291dde932eb460450cf9268ec75e16ae1dd34f",
      "name-candidate:84e55ceb1e5315aa1e45220f3c10043334d04e7ff939b24aac4ea255246c9b04",
      "name-candidate:94cecb0fd57be87a368c7fcfb9e1ad3019805355229ce1dc0d3dc28ffe1a132a"
  ]),
  ("name-candidate:2834c84b355ff28658d9ef7d66256fc670a46a7461de03177c8010d1ec0deb51", [
      "name-candidate:0a1c6b382091eea19abf1dfb16843a30095e332b3747ee769ecd6f4ff3567688",
      "name-candidate:2834c84b355ff28658d9ef7d66256fc670a46a7461de03177c8010d1ec0deb51",
      "name-candidate:7f8bf0f71b6f97699f554eddfb3ad9055d21273297de1238df3a2b402221a28e",
      "name-candidate:ab40ebb5f1b2a8a8c9c2f42f41695b260aa6b93629fccae514e2ae4309fb13cf"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L53687).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
