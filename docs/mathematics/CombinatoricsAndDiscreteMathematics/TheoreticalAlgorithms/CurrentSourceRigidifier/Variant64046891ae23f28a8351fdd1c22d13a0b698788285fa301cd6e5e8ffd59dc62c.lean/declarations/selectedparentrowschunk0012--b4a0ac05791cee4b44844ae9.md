# selectedParentRowsChunk0012

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0114f8b9107c3f362a95802126e09268108b38868deadfef0a74c7c54328e72",
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
  "slug": "selectedparentrowschunk0012--b4a0ac05791cee4b44844ae9",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134610,
    "line": 134409,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4a0ac05791cee4b44844ae93ece393219822b761bcade3ee83dbd88e2f34dc5",
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

Occurrence: `declaration:d0114f8b9107c3f362a95802126e09268108b38868deadfef0a74c7c54328e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134409–134610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0012 : List (String × String × List String) :=
[
  ("formal-neighborhood:5dec12a7332cc700e2d36e3424c3b7c7b8b003db9d466638e9e29ef3fa6a2638", "formal-neighborhood:71c0a9423f03a2cb8d5124081df7f7ec1306d64edf6d4ceabc7cc5a3f96dd5fb", [
      "formal-neighborhood:71c0a9423f03a2cb8d5124081df7f7ec1306d64edf6d4ceabc7cc5a3f96dd5fb"
  ]),
  ("formal-neighborhood:5e232afe281570e69f875d62727b30397f5ff3bc4e619d390ae9bb78fcc9de59", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:5e440dc185f89e12e3205b6cb2a83a5509240af590f1a14db6e310d80f0825f0", "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa", [
      "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa"
  ]),
  ("formal-neighborhood:5e982f880672c7e7c2d6f5cf6efdaadde4d3e96bb50912d00c0b54c42d80bd0b", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:5ec8c89bb9d4ae14d6062de006a40f999ae074268ecfb2fa6fcd7e79ac4499b1", "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c", [
      "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c"
  ]),
  ("formal-neighborhood:5f01398f67f16e58e539986e31add8e0a3a6e033eb2d7598dd62a238a3c3f5a5", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:5f0e79b9a929695c482c89d160ea348cfad6ea747a4f4547ef82e32aae94b176", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5f3e77404f350c94791f28fad1d17aff847971ed91ac79e4845cd89e0a586568", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5f576bf1de1f2a5fda65a42b47824a00afd344a78f4e959e5250d15f951b900c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5f6706d6782e19ad7e575c7d54476f819f99921a380a072906cdf3edce9415bf", "formal-neighborhood:b505c853fae9be013d5dbd3e0e8be41dc36e76108050e48af60f7880d854dd95", [
      "formal-neighborhood:b505c853fae9be013d5dbd3e0e8be41dc36e76108050e48af60f7880d854dd95"
  ]),
  ("formal-neighborhood:5f81eb08959e8403e52176704fde22c00a700810fae5dbc990c349bf9fead8ba", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5f845afcdbf5921efaea9ef54386696295238d77933e8594800c8d2f70b03c73", "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596", [
      "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596"
  ]),
  ("formal-neighborhood:5f9b542a27b3c864904fd5ce248e014afaae3aa55787305d138a30921c0a9616", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5fa4ed80a71e35b4eaee8e464f78ca52854f8322c5758cb83f4a9194be16a2ca", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:5faadeab586abe8856d4f28e31732cbc7698d19a78b53375cc0de37b8139e10d", "formal-neighborhood:18de0ee2a2b088c54dea1387b37bdb0bc7d883e4ccb6a20ce8de2d3b1b130cde", [
      "formal-neighborhood:18de0ee2a2b088c54dea1387b37bdb0bc7d883e4ccb6a20ce8de2d3b1b130cde"
  ]),
  ("formal-neighborhood:5fac0a6cb47704ecaeef7e85d385b4ed065d443283ed632942aed2831af9d5bb", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:5fba01cbbb583738e436f0d2677f3038b71f491d41441b9b6fc6cd9c767ae7c1", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:5fc77da5e1a41faac56c2f26289bdc4c0c49187e02ac15e2039e1f8ad362e23f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5fcec39a498b37cdee644ea03302ed42e9bd1a0109f5f9a692b6dc1ba92ebcaf", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:5fd3ddd5a48de73514d4aaac95887fbf572c38059237ddd61a011df49fd284aa", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6007674d37c932e807ca88ee4effdb7cfb31b8e2592358852a8a3b008b41f555", "formal-neighborhood:f2e8365c984b751022da3dc2040a5186be9b7207811eee857e524f4c3278b539", [
      "formal-neighborhood:f2e8365c984b751022da3dc2040a5186be9b7207811eee857e524f4c3278b539"
  ]),
  ("formal-neighborhood:602dd9d848cce922a17e7813157574dd32889902b7640d7d0eade7b854a52ca2", "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0", [
      "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0"
  ]),
  ("formal-neighborhood:605cdb324b77be117be0349f337b5a1373bcf378295b54f3208affe1970d7351", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:60936612ad18fcbda2ff01751d0d389006e20cca41e71814ddeb4fcbe890fc15", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:60d7da185431020ee2d7e97c7cc8bac3bdc50f4341063fb916ef8d2391b8b818", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:60fb8da087058e03d0e9858260fd7d8a600c12088abfa67b711c9e7d9fe1d53d", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:6121c4e813f7edc4803f7711cda26ebf1e46ab29d41ae3d57310fc55206e0e1d", "formal-neighborhood:0c6d72d7d7e6ca454643cc76e186fa702eee3a2abfe93f6dd2ec7766534575da", [
      "formal-neighborhood:0c6d72d7d7e6ca454643cc76e186fa702eee3a2abfe93f6dd2ec7766534575da"
  ]),
  ("formal-neighborhood:61494f1140c86f071a5ce78e24e75aeb8b272c1303415a2620ca5ba5caeab4d6", "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f", [
      "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f"
  ]),
  ("formal-neighborhood:6154924b7a9f0f6f598b8f372eef62367e759d3772f8a6f9656185c5aa3554ee", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:6165bbc2f0a53afc140af12d8a9cdc426e70ecd55db21b571d6bfe4805ebaf6a", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:618f466fa311ef6df6f4639f17e8924c2682806b6c3eaa678e5b379e6456c60b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:619e5859944374f1abb94d76d6df852063e8d0d142f36dc7cb4f358e29a6c93b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:62157bbaba1e06afd5ae6cef26425b439b8841dc395578d9d831a5c113d0583f", "formal-neighborhood:a9c1c6487e1a36787b98fd201c202e9a2742f6e9fc4e777bb71f526e7cdf192c", [
      "formal-neighborhood:a9c1c6487e1a36787b98fd201c202e9a2742f6e9fc4e777bb71f526e7cdf192c"
  ]),
  ("formal-neighborhood:624c3beb5287a5cd4e9d19367db967eab647f139b3a0d7d291ea65d63c161d8a", "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138", [
      "formal-neighborhood:e227f0c6cbe8aa3cd6de9a500e58273b47b24df0cf64a144a6f98a8c9773849d",
      "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138"
  ]),
  ("formal-neighborhood:6254dd15bcf67a39380161653d756e5fd829c6ed9cdeb93e72da2837aa758fe0", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:6270b8e10d8deddb1f159052d91515ffe2ba2458b059ad11e550d3ddb24cdf77", "formal-neighborhood:5deba10c7de76533a48be8715bc92ca0c307b8f1c75a44dc0e3a77cb3dddd193", [
      "formal-neighborhood:5deba10c7de76533a48be8715bc92ca0c307b8f1c75a44dc0e3a77cb3dddd193"
  ]),
  ("formal-neighborhood:6276fda36f747b9e443eb707b92ebf06b8ceb0509591674e7c84db275777a8e1", "formal-neighborhood:06c19ab993811c3a112975fe7a04ca5db7c57b2ff4492815a86fdff58267c6f0", [
      "formal-neighborhood:06c19ab993811c3a112975fe7a04ca5db7c57b2ff4492815a86fdff58267c6f0"
  ]),
  ("formal-neighborhood:6280481d2ea1b3ed0d8742cf7c3eff06507a822b20739df410aac6160376dcb1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:629ba085dac4c61b02faaf17d4ac27007f1490de83b3bc87e6e33d9044db9129", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:62a234246307abc95042bb01213a1ca89b61fbbcc4c505a7e73e761a3fa3c78b", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:b1630910a3f907f4116ae3438edf3d18a7e55194540faf9916a00a6c819ca81e",
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:62af08b45ad825c9bcb7cf9dddc18a3f3ef0179cc8d1e675a9c06a5886635bb5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:62c022cabb8fc05ef97d3770ef18239a216663f3ab700a7c0f7fdc4f6ba8e5ae", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:62ed32ab930e402da60272870a39f8048061f63d9a23e18ded179abaf15dee46", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:632c0eb852da8745889b721ae7636feb73c9efde818f2938d86d355829315bf8", "formal-neighborhood:a18c7e2c39ba0410b67b5b22b07e50f5f1fb3bc49e5e7e4bea0179711b062dd0", [
      "formal-neighborhood:a18c7e2c39ba0410b67b5b22b07e50f5f1fb3bc49e5e7e4bea0179711b062dd0",
      "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37"
  ]),
  ("formal-neighborhood:6344868144b77136690833854380a5faa316a4b314ddeb3c2a4a8be7f34c36ee", "formal-neighborhood:bda1b664290f6f43c41d45aaf35a118aaeab821d8839769dbe40507332b284b7", [
      "formal-neighborhood:bda1b664290f6f43c41d45aaf35a118aaeab821d8839769dbe40507332b284b7",
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:636c36c34537ebddbbdab5a509c01a7427755a8266b8514420aeb48e8e008156", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:63a40d7abca2589243906eec078a7b6d7e57cc4b59febdf50c6975100ea49421", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:63abc700ddc87ff2677018406c4853edc8b9ada0cb0739849b7dc453d7265e5c", "formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977", [
      "formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977"
  ]),
  ("formal-neighborhood:63b0abcf3da7715326588042389afd4dc3c132e20a5577603d4d1c24f2a1c265", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:fed4d3d4e96e32edf94744db129a08a36fd509ba6c7251a305fda41b7cefbbd7",
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:642d0ca4c13ef3e537dcb9f084582fedf56892e953907491842e6656305e7eba", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:644fa8ef4485d85ce091305ad000e9b83bf3affb386fc29be769029f58f22d78", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:648de3540437a7fe3912aa4de925378d5347cbc4ba5ea98bdb12263b33ce3809", "formal-neighborhood:48badc0115b6c01ca0edce134d9e127f8e44e7d7adf4aea267cf6cd18c40f303", [
      "formal-neighborhood:48badc0115b6c01ca0edce134d9e127f8e44e7d7adf4aea267cf6cd18c40f303"
  ]),
  ("formal-neighborhood:64917aa33f68799f24fb047b54229b46a4d01c509ca5b4aa09aed68fece4a351", "formal-neighborhood:19e1e8636e3bea5bc4889684ffda26b327369d8cc6704579ea1343c59ca4e3d3", [
      "formal-neighborhood:19e1e8636e3bea5bc4889684ffda26b327369d8cc6704579ea1343c59ca4e3d3",
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:6493ffce9ee79574be6f29ad5b52f5103cbc373a19504d82bfa08214293583f5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:650a169edfc0ed81594ca191fb794cbfb37ecc600de7a4e8772829e0c368fcc3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:652df123d5573b530247c43c0d17172ab29115e317536ab2d89afc8d1c673172", "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398", [
      "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398"
  ]),
  ("formal-neighborhood:654dccfaa31b78fc0fe1dfbcd8738c2b535e390b3657610cab46e4c7a4fcb1a9", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:6574915c1cd8eff151e25b4ec66d8a3ae04661866a5a92aa8d94d3efda7c3b5c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:65886461ccbb3612a4dc7a1783f391f8ed9bbeb27840591dc0d9ac65a0a4d814", "formal-neighborhood:71c0a9423f03a2cb8d5124081df7f7ec1306d64edf6d4ceabc7cc5a3f96dd5fb", [
      "formal-neighborhood:71c0a9423f03a2cb8d5124081df7f7ec1306d64edf6d4ceabc7cc5a3f96dd5fb"
  ]),
  ("formal-neighborhood:65b3b769618e83681592790567cb43816999c5031952ead76dc675bbb85cb2f2", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:65df0d81e26931007d9a57537b0d25216f6876cbc9053936c8eed578524fdf8b", "formal-neighborhood:87da7d8d533baa94c298f871020ea7d1ca4a3751108e317cc1b02244e853200f", [
      "formal-neighborhood:87da7d8d533baa94c298f871020ea7d1ca4a3751108e317cc1b02244e853200f"
  ]),
  ("formal-neighborhood:65fced357d01acd8e7180782840ef3c8d86a477cd2ef6d1fabefca6ea3410dbb", "formal-neighborhood:8592af13237a6039328d4eb0a583959069690765d57e996cc2bdf8bb6b63bfc1", [
      "formal-neighborhood:8592af13237a6039328d4eb0a583959069690765d57e996cc2bdf8bb6b63bfc1"
  ]),
  ("formal-neighborhood:662baf9c66e050c2855deaec83480e3baa9048f25b4f97a534bdd0f2e6865b7b", "formal-neighborhood:fba29b2cfc89703651bea943fec30795329904f40c493cf3ec8581895819c4a2", [
      "formal-neighborhood:fba29b2cfc89703651bea943fec30795329904f40c493cf3ec8581895819c4a2"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L134409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
