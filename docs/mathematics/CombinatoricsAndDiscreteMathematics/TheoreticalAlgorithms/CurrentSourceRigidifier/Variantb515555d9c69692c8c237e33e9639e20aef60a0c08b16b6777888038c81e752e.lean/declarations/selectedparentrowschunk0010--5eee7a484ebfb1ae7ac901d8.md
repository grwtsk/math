# selectedParentRowsChunk0010

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11fa6ff9424bfe5010975787b978e74d5b8d0303f0c2995d386dfa5acfa01700",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0010",
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
  "slug": "selectedparentrowschunk0010--5eee7a484ebfb1ae7ac901d8",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118468,
    "line": 118269,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5eee7a484ebfb1ae7ac901d8cc23bbb22b4b2016e28774f44f3eaf3f70b1eb81",
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

Occurrence: `declaration:11fa6ff9424bfe5010975787b978e74d5b8d0303f0c2995d386dfa5acfa01700`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118269–118468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0010 : List (String × String × List String) :=
[
  ("formal-neighborhood:50552809ee489002579efe70efe6877e8d4810d02d07170799dadea2dc6af2b4", "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c", [
      "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c"
  ]),
  ("formal-neighborhood:50d7e4866e707b3b809f0c7e08138830fb62a1fa58baa43f30be6b91ee6a0857", "formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977", [
      "formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977"
  ]),
  ("formal-neighborhood:50f1a1660fc7a8c18bd4ea026a3cee9090cef86d62ab3516fa0b49930c8c5584", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:517c029a042fbc644c36f8b20618ecceebcd34abbdfa54499bae0f92364ada4f", "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391", [
      "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391"
  ]),
  ("formal-neighborhood:518c0ebeed4654a834e530e58cd1bbd466f86ab4e6271430f8d22863bdc2695c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:51b54a0e8e36d33fb50b699ea05b6a8bee28b3ea62dfcc890510ca4d75440807", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:51d32f06137c297d0d5a43bc0ae027c108700ce19f874b05c6503c79549ab227", "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596", [
      "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596"
  ]),
  ("formal-neighborhood:51e3ec29e4a3e327725b87cfa033668b6f876ba2b57c46c49e47ec63be8e5860", "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb", [
      "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb"
  ]),
  ("formal-neighborhood:520c0d1d476e0a1ed63947ffe625ffc1d8c55c44a6ffe74737f7fe8b03835984", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:52bff48783846734fd6b6dff7a6af1d56c95f139ef31788df6eb287502331edc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:52c0e6ecdb531a8711f4b72af59602ddd92e8d50eeb24504fb6f1ae77a6c12f8", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:52d20b2b5d1da82c2f3a0ce9312fd5790a1b9fa2ffe8baa02848c9f18c0e7392", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:52da12cd61c536697259e0c6c2200826f0d67dd2aabf1277995dfb3cd5b2e070", "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1", [
      "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1"
  ]),
  ("formal-neighborhood:53158056af45cc0a48212a5cf45fb198f596b33ccb2473a6abb72af2f2e4849a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:5316d42f0fe5c77c90139cba6f9b8d4dbd545f3836a8804b330516c10c84b46f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5334bfdea047351bb7c418a534db74efcc6f9f12051a61976164fcbd130512a0", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:533dda88253f20b8a9173a63e7b07bbf62181aad5d644e9ad5c5a5cbf2cc1e06", "formal-neighborhood:719286ef6eb354f4b05ec86b688e34fa80cf96d0457974ccf2b698ce9fa8a513", [
      "formal-neighborhood:719286ef6eb354f4b05ec86b688e34fa80cf96d0457974ccf2b698ce9fa8a513",
      "formal-neighborhood:5adc76236da3d931eca8bdc698c0f47b622de9d6854b692969214a8b41711da6"
  ]),
  ("formal-neighborhood:5345a2493c156fbc179723178f5ba2c71baf2912db2949750805cc90e61b0022", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:536d3ff8f428cc66f22882f85e23ecddc6ab322969c272f2ae93c102e7744ee2", "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1", [
      "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1"
  ]),
  ("formal-neighborhood:5371e1d4f2502e0544b55a6685e4cfd6dd97ded20e1d0a14770839e4b81ee5d5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:537f85abc2ac34a1af4baca10366e7f0c1249ca68e5e46952224a312236ea350", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:53af517841ff4c0b139a392d9258fce9337817da4621bdeba54826d97ae3da2b", "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da", [
      "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da"
  ]),
  ("formal-neighborhood:53c0f0c23f8fb6560a51567c5623fcb4d66f6e34231af0f6bcb5090b60484da7", "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138", [
      "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138"
  ]),
  ("formal-neighborhood:53d6e58460049fc4fa44e15ffa631e5358e1f6cb0bc1b7e885f6131bd91efffd", "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee", [
      "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee"
  ]),
  ("formal-neighborhood:542cb69ae1342aeb06c0dcb9ab69f528990361e945e02fbd1bd28afd02aa8b34", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:5463ebd80c3e53f3aee2dbd5181ce930e27aa6497fc46c84bbe9761b1706b177", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:5489ad930cbb408bdada8eb6a48042062c785b9df0ba127b6f3f22ae759aca60", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:54a43cb8d3d0ca0c695cae438ef8193ee7df6575547a7fab60f63c49a2b16995", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:54a76f2b8bc6f615a922d2480c864c4bca26cfaca20b9a2c51186613e1e8b7b1", "formal-neighborhood:1bc4dd98895fcec7a2c498da264d6fb2ba53cf167bf9d32684f8a4261285fd00", [
      "formal-neighborhood:1bc4dd98895fcec7a2c498da264d6fb2ba53cf167bf9d32684f8a4261285fd00"
  ]),
  ("formal-neighborhood:54f9f11e41fedff19af41cfa748c1ddcd3599f38d0b7dd3d33e9ad77de1b8f98", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5504bd55b246c16d0855ec1cda715897f098f30e12a5529d892aa24a7e0617c1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:552882edd1fe9773ebe6d5f08b8929e80bdd4a1067927f7dc0a94231fc4e0a24", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:554574ed5f0ff36d7fd701efb5fbf9743e0341a58742f488e71f9085e25542dd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:555405b889362439a06e6bd7bb95018460dee90f0273331679b6995296c35a7a", "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5", [
      "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5"
  ]),
  ("formal-neighborhood:555ca50e342e53b63b106b3394b60299964cc16ef9836bfed441a3888e09dd88", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:556fce1b4c2c216d282478f5ecb6f37fd0939e100204d9bfaab24bf3151d9ce1", "formal-neighborhood:6c978835c396eb444f4edc3aee53a4a306223a44f08f8d1135170808a8ba8275", [
      "formal-neighborhood:6c978835c396eb444f4edc3aee53a4a306223a44f08f8d1135170808a8ba8275"
  ]),
  ("formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:cbc90c7a7d7eae75a808c448fb4379bde60c63d3549cfae7e48aa2e979d4a9ee",
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:55ff9fcd92bd5a2148b27e235f38cb395a15b16aa011c9f4c883d06553acadd8", "formal-neighborhood:5adc76236da3d931eca8bdc698c0f47b622de9d6854b692969214a8b41711da6", [
      "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27",
      "formal-neighborhood:5adc76236da3d931eca8bdc698c0f47b622de9d6854b692969214a8b41711da6"
  ]),
  ("formal-neighborhood:565dc7955225d063ef3cc039f1e67d6433acb8bf1053ce2ff94a521b17cbfce2", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:6b3f54387fc92b3dfa54e15580c0c35b0c612f13f8e4b6c91c9abf932934f727",
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:56915565b1fb7e3496bed53dc2c8b9cc95bcf3a016a6850c4357fdda6ab7f4d9", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:569e9aedebcaaa5ab16d288e85cb67278d742650699808f4ee221e6d65e0ba8a", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:56b7bc3814d638f4f26c09c1050650e001170b1b60c01adf5d3d06fea13ff9bc", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:56d727c6bc87fe24afd44c650100680cfd35e9405039c001835e07fc995eccef", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:56eb4439fab35bb615709b5e19f1c917ed1d2b06895725612df8baa60f9c00ac", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:57260dedc29a6b817541a0c71d61e0c3d10f65be19bcd22df4479aaa6b27c502", "formal-neighborhood:97aa7ccfe06364471db5ec2b85b3507cb57f47077245b4d2f24251df215dd5e9", [
      "formal-neighborhood:97aa7ccfe06364471db5ec2b85b3507cb57f47077245b4d2f24251df215dd5e9"
  ]),
  ("formal-neighborhood:5756590556f07034f8c4d128a139ef003f80bc78f4df204ecc2351b2c0a617f6", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:575862caf38ec37dd0547a89dbc474bf22f9875946996985799bfcee4aa81205", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5794fc340f646111a5ee8f0f7c8a367dc7d31669cefd1827797024c80f87d0bc", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:579b9c88c428b8b39bdac02877857064385934118de5cda614281d0e0f3dcc13", "formal-neighborhood:cb744f31bf42f89245f03084e7bd9f53649295a493d24a83adb700a6e54e5690", [
      "formal-neighborhood:cb744f31bf42f89245f03084e7bd9f53649295a493d24a83adb700a6e54e5690"
  ]),
  ("formal-neighborhood:57a688effb93a34eeb1aecaa1c0199a0a71cfc5c575600049ed2d75f69cdb37c", "formal-neighborhood:48badc0115b6c01ca0edce134d9e127f8e44e7d7adf4aea267cf6cd18c40f303", [
      "formal-neighborhood:48badc0115b6c01ca0edce134d9e127f8e44e7d7adf4aea267cf6cd18c40f303"
  ]),
  ("formal-neighborhood:57d9959ae7f06009cd9686b15a421f5c68ab082f427416a367cdcf89b8904d3e", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:57f5c917c7419b90a78ca2619b3dbdefdc21a0179da9873b56c5de49ae8b29f3", "formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca", [
      "formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca"
  ]),
  ("formal-neighborhood:5809e5c5b5be80abac97b81914e895af93c0a94707e26b443bf2e4e169ad107b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:584404fd3d952575771b3c18d390214c1008b46e52509592c6b2245547aacc84", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:58449db037cf64445c7a1999a08689ef3167db58b7454d93fa95d6ba40bcbdb3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5864222bf1118f950c9c41fa2e37a43a84986f9b770477ffb8e41e2338eaf4bc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:58683b4c41f36d91b12c6006d706b8821d5a7772ef31a536dc3efea5d0be51cd", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:58bf2f8dd5288656e6a879a4b5b231e992af391c02b79e14442701fdba92b238", "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1", [
      "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1"
  ]),
  ("formal-neighborhood:590bd6e1d6de3c694e97ffc9f47d1116bf7600caafa409acd36ed3776eaa1298", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:59311b34e4a0a2c283101f325c8757a0277935f9d975de63a3e35f3d907b9890", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:594a1e5b49e4ac39b6571aef7610620234f2ee96cf1058bf6441efc9c34f8164", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:594b36791dce52458780b255cef18a1e917c7d57716878fb64988237e956957b", "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", [
      "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712"
  ]),
  ("formal-neighborhood:594ebd303dcae75cddf9f721d816565510d451424fc9bc7526e924fab4e87671", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L118269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
