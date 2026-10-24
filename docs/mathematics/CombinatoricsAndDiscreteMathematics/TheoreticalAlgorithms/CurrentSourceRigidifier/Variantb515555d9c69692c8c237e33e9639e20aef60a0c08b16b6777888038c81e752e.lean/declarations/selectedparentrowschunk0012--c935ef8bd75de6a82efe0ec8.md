# selectedParentRowsChunk0012

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c0395de307073a1a91f579e6adff13ecdfa6c921e723bca4ad16b13e1edc2fb",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0012",
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
  "slug": "selectedparentrowschunk0012--c935ef8bd75de6a82efe0ec8",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118868,
    "line": 118668,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c935ef8bd75de6a82efe0ec8772238d856525e03bef7aef6046c3f3747e07681",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c0395de307073a1a91f579e6adff13ecdfa6c921e723bca4ad16b13e1edc2fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118668–118868.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0012 : List (String × String × List String) :=
[
  ("formal-neighborhood:623d0825ef96d3c38b4ec685ff8a69d5530b5816a46353aa3e778cee263269bc", "formal-neighborhood:0ccdc80bd326968deef91fab9c8bfd76dfe8da9272155d21fce72a35eea6a389", [
      "formal-neighborhood:0ccdc80bd326968deef91fab9c8bfd76dfe8da9272155d21fce72a35eea6a389",
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:6254dd15bcf67a39380161653d756e5fd829c6ed9cdeb93e72da2837aa758fe0", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:626ac6dfa468e3b24121da2a41d9690b0de41f7bf747ce93f87d9df3f8ead485", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:6270b8e10d8deddb1f159052d91515ffe2ba2458b059ad11e550d3ddb24cdf77", "formal-neighborhood:5deba10c7de76533a48be8715bc92ca0c307b8f1c75a44dc0e3a77cb3dddd193", [
      "formal-neighborhood:5deba10c7de76533a48be8715bc92ca0c307b8f1c75a44dc0e3a77cb3dddd193"
  ]),
  ("formal-neighborhood:6280481d2ea1b3ed0d8742cf7c3eff06507a822b20739df410aac6160376dcb1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:629ba085dac4c61b02faaf17d4ac27007f1490de83b3bc87e6e33d9044db9129", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:62af08b45ad825c9bcb7cf9dddc18a3f3ef0179cc8d1e675a9c06a5886635bb5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:62c022cabb8fc05ef97d3770ef18239a216663f3ab700a7c0f7fdc4f6ba8e5ae", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:62e59466143bbb622afd4e5ea6525b0c67eea99dc5746c233c51c74f8f2e82c5", "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d", [
      "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d"
  ]),
  ("formal-neighborhood:62f4acfe806180d185a2afa6c645d44a3b970733d0e8b8b9e073475221f5da2a", "formal-neighborhood:125c36571e6c8e08671cc3a07899c40b1f2820c0c0768f4cc6bd9dd7a692717e", [
      "formal-neighborhood:125c36571e6c8e08671cc3a07899c40b1f2820c0c0768f4cc6bd9dd7a692717e"
  ]),
  ("formal-neighborhood:631ecb0bed42d6f4a6b29e3c404776f7716cbddff9f172981204fd5224875fe7", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:6368f30388f32d9ef04105b6ca5b20b4f3d3034208db6e2d6863e06f64aa7b51", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:636c36c34537ebddbbdab5a509c01a7427755a8266b8514420aeb48e8e008156", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:63a40d7abca2589243906eec078a7b6d7e57cc4b59febdf50c6975100ea49421", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:63aaccbd6e4c1642f7c606c86eb5f54ece1ec9ecc25b1125cf6d43a32fe3c6ed", "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1", [
      "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1"
  ]),
  ("formal-neighborhood:63c0376df88ad3301f6b84c38e66fe362310f3e17bf327cea4210b447ca4b4d7", "formal-neighborhood:9518bfd5a87145ab3f9bf941dd78bb35bc48e986636765a03c320a29ff7c873d", [
      "formal-neighborhood:9518bfd5a87145ab3f9bf941dd78bb35bc48e986636765a03c320a29ff7c873d"
  ]),
  ("formal-neighborhood:63d48dc4b7419c176741e94eb62e720fa5f01ce97a2350ad99c30f47620ac4bf", "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270", [
      "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270"
  ]),
  ("formal-neighborhood:63f82f6d7c6378079a656d40902d8bef06a3e578233ca4147fa86003dcefbdac", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:63f89a9fc37924d6350adf4741cb3122f0915a098e68d40790b4fcbc5b8ed211", "formal-neighborhood:97aa7ccfe06364471db5ec2b85b3507cb57f47077245b4d2f24251df215dd5e9", [
      "formal-neighborhood:97aa7ccfe06364471db5ec2b85b3507cb57f47077245b4d2f24251df215dd5e9"
  ]),
  ("formal-neighborhood:64293fabbcd231174587ed87b24dabe7b7fd1778c4164b08064e34cce24b0b26", "formal-neighborhood:f77ce8ee3c0075ff90458a9608e699b81fc093a68f2ba1a8e7e8703a34021fd3", [
      "formal-neighborhood:f77ce8ee3c0075ff90458a9608e699b81fc093a68f2ba1a8e7e8703a34021fd3"
  ]),
  ("formal-neighborhood:642d0ca4c13ef3e537dcb9f084582fedf56892e953907491842e6656305e7eba", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:644a0d4343ba2389bb036c79e4685b5e486a7f3293c98b03a79c04eea92c3427", "formal-neighborhood:9974e0eb7b3514c52de76d4342389baaacc3e7aa6afddeb9180684ed683fcd20", [
      "formal-neighborhood:9974e0eb7b3514c52de76d4342389baaacc3e7aa6afddeb9180684ed683fcd20"
  ]),
  ("formal-neighborhood:644b2987f5cf31a9dea92d3af3a6852bef05e3f93b7c48ec813910a4585d2e57", "formal-neighborhood:ee9563e021a1ef09817abd2409c79d336c6edd74701914595558746607326441", [
      "formal-neighborhood:ee9563e021a1ef09817abd2409c79d336c6edd74701914595558746607326441"
  ]),
  ("formal-neighborhood:644fa8ef4485d85ce091305ad000e9b83bf3affb386fc29be769029f58f22d78", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6461ec8074a494bb9363252f2cbe576eea65f5970e4cd0066aab40c2ae2d0057", "formal-neighborhood:31fc8ff5368e18e1518380110c88ff620c841b1d89ecd9a7316cf3f0d6c73539", [
      "formal-neighborhood:31fc8ff5368e18e1518380110c88ff620c841b1d89ecd9a7316cf3f0d6c73539"
  ]),
  ("formal-neighborhood:6463df2c2e718b8fc8fbfe88a7b315ba8155427312668c4dcbfbbddcec6acbb6", "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a", [
      "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a"
  ]),
  ("formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:648de3540437a7fe3912aa4de925378d5347cbc4ba5ea98bdb12263b33ce3809", "formal-neighborhood:48badc0115b6c01ca0edce134d9e127f8e44e7d7adf4aea267cf6cd18c40f303", [
      "formal-neighborhood:48badc0115b6c01ca0edce134d9e127f8e44e7d7adf4aea267cf6cd18c40f303"
  ]),
  ("formal-neighborhood:6493ffce9ee79574be6f29ad5b52f5103cbc373a19504d82bfa08214293583f5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:64ccf07f1848dc869218727b2d04556d6c88f6ea44167f284fbb8cd97ea6bd57", "formal-neighborhood:5bf76d0a0613306eb29631c8bbdb74f1c4b07ceaf885555e8b676d76194ddd49", [
      "formal-neighborhood:5bf76d0a0613306eb29631c8bbdb74f1c4b07ceaf885555e8b676d76194ddd49"
  ]),
  ("formal-neighborhood:650a169edfc0ed81594ca191fb794cbfb37ecc600de7a4e8772829e0c368fcc3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:653152451f7483e30e8c6408a96c9a8b4d6206e65f2c447956c5e400924a9104", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:6561e73fc25698bbf0707265e54aff268e4d48e788c4cc27777597d7e66ad7f3", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:65886461ccbb3612a4dc7a1783f391f8ed9bbeb27840591dc0d9ac65a0a4d814", "formal-neighborhood:71c0a9423f03a2cb8d5124081df7f7ec1306d64edf6d4ceabc7cc5a3f96dd5fb", [
      "formal-neighborhood:71c0a9423f03a2cb8d5124081df7f7ec1306d64edf6d4ceabc7cc5a3f96dd5fb"
  ]),
  ("formal-neighborhood:65b3b769618e83681592790567cb43816999c5031952ead76dc675bbb85cb2f2", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:65cccbd72df8f1c045724ea3e4cdc956a5bdd783e62c9d8b21b498ec9cbbe7b7", "formal-neighborhood:15dfb597c1618625ee5639b8b370404fabe5fb82d37c58746b4114b77522d1ea", [
      "formal-neighborhood:5a5361f8ca6524dfc9a196c1ae900b0f0af4d0c452f3361b21e291a1420d59e8",
      "formal-neighborhood:15dfb597c1618625ee5639b8b370404fabe5fb82d37c58746b4114b77522d1ea"
  ]),
  ("formal-neighborhood:65ebd0728ed1ed65870f41860516a6ddd8df18e88cac7244adb44dab11dc0dd0", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:6612efe3fe0c8cca128aad57e2645e14e798ecfd522b670d1489facb11c3aff8", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:662baf9c66e050c2855deaec83480e3baa9048f25b4f97a534bdd0f2e6865b7b", "formal-neighborhood:fba29b2cfc89703651bea943fec30795329904f40c493cf3ec8581895819c4a2", [
      "formal-neighborhood:fba29b2cfc89703651bea943fec30795329904f40c493cf3ec8581895819c4a2"
  ]),
  ("formal-neighborhood:662d8c075b9a4c3a33a559eb8757e5ee27d6b2cf308fcac814bd77900fa03593", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6680e42495ed2a34e92acc3b6b6d9aa7b00b3fbdf679e3b59a9af57ec895c14b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:66891dadbbbd585668cf6359a28a5fa7bd34e4c312a00276215ebcb7791cc77a", "formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca", [
      "formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca"
  ]),
  ("formal-neighborhood:66a26ec75b0d3d5bb43d63a7411d3721ba36612058fbd32aa4db7def7065c6b7", "formal-neighborhood:042d587954c58887d90ac83fe959d726370de15dbbc2f1334ab51d2f886eaea4", [
      "formal-neighborhood:042d587954c58887d90ac83fe959d726370de15dbbc2f1334ab51d2f886eaea4"
  ]),
  ("formal-neighborhood:66a2a9c9ab74560a9ec0595b068faa2bb0996f5b2bc27f5107434e3df8cf84d2", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:66a4ed2fc4c3ed607e4ff6f74fb344dbbcded7efc17508c9171c27a158d3af29", "formal-neighborhood:95d5e2da90944f8d6a8924fa343fe2ee3ccac6f500d69f0d2bb4df5e9c308606", [
      "formal-neighborhood:95d5e2da90944f8d6a8924fa343fe2ee3ccac6f500d69f0d2bb4df5e9c308606",
      "formal-neighborhood:3a6af848f023f9dd886082e88d386db119355e31fa59154f6571c606ad7f8324"
  ]),
  ("formal-neighborhood:66d99c0852cf16aa71694b783cb21bf4b64046a0d543ac032e2248daec3d4748", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:66fce6ffd69e5db0f30677e50cc2c21315d76c3af016a3d247614b6472cf88a0", "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", [
      "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7"
  ]),
  ("formal-neighborhood:6704f58abd45d3102d1310c431b4a583a78aa8c3d25b410f8e043909780ccd53", "formal-neighborhood:0491d77ed98e0851bae05e8408af482e37402104734fa6628899de003b398081", [
      "formal-neighborhood:0491d77ed98e0851bae05e8408af482e37402104734fa6628899de003b398081"
  ]),
  ("formal-neighborhood:671a764f517edeb00689ae6097f050e2c552a4b787825fa55271e7d11fded031", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:672484ca4e43206b42642fa84ae253c9a3b89a375e589c6a06640cb69c13ec02", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:674b875a7590699b1e2d7dfb7553fffd8bfe1750d0d1f0671c7c451c848f3c8a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:67514bae55069f068d18f12a39d3630cef0cc4e950225f247bc98086d9569df1", "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398", [
      "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398"
  ]),
  ("formal-neighborhood:67a38052612ec295ca0cae939abf30b8b5edb35056c20f5d1cb4b805aefa9f60", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:67b0f4194b02645cfe8310b38ac4da714241f4cd83e056622614ab822001fc3e", "formal-neighborhood:faa763dca853bc9b756bce2fe236668e733cd9a039803ae53672ba149b7d21c4", [
      "formal-neighborhood:faa763dca853bc9b756bce2fe236668e733cd9a039803ae53672ba149b7d21c4"
  ]),
  ("formal-neighborhood:680e5b4c4f49cb641b34ea679ce26169377cba38876b13b9a11f021f75627d22", "formal-neighborhood:6f597c085b221e68b44e86e90a1afe5490768799f24e76513e6722adc5ba7ed0", [
      "formal-neighborhood:6f597c085b221e68b44e86e90a1afe5490768799f24e76513e6722adc5ba7ed0"
  ]),
  ("formal-neighborhood:6829ba20c3ed21e036305ef29dff773ea8c1c0a4b7f878b7e00819e8b6cccc0a", "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d", [
      "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d",
      "formal-neighborhood:5adc76236da3d931eca8bdc698c0f47b622de9d6854b692969214a8b41711da6"
  ]),
  ("formal-neighborhood:683fffea4a737fb0f7f95a51916b79b1e792d2cda314902c2759566615080196", "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398", [
      "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398"
  ]),
  ("formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:6890bb5c712be7adc85d4c481e60ae9e9210a76a38d56da0c0d1b09001e14436", "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970", [
      "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970"
  ]),
  ("formal-neighborhood:690ee13be9ca5eb5efddea7ddf1033da2bb7c8cfe12540293442f80d6226a90f", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:69367dadccad952ab3517c6ee311c7c708984204cccfdc337a3e0d6635e1d1a1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:693703135543b6870887c181b26b94250c4a6eb366d158974e40e3607dae5043", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:694827734bbc4e17a636d497af8f28f47b3ef00c011a42a528926fae61c7ae42", "formal-neighborhood:7e40518b1954bca6f6bf4fab80de78e8eea4fd3c34f309d22cd94882509e6f75", [
      "formal-neighborhood:7e40518b1954bca6f6bf4fab80de78e8eea4fd3c34f309d22cd94882509e6f75",
      "formal-neighborhood:e715575969a98c46aa47725dec5e5221254b669521b37bf9c6a8850d08cce3a6"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L118668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
