# selectedParentRowsChunk0024

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:287b3b5612f2a4e41cee48900b2bd9e28bea6443ecaab29a99e0eb19cd523813",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0024",
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
  "slug": "selectedparentrowschunk0024--e19268584436b84b002305e2",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121264,
    "line": 121064,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e19268584436b84b002305e25f8c81536a58b20ff334ff549fba31e62a80eb01",
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

Occurrence: `declaration:287b3b5612f2a4e41cee48900b2bd9e28bea6443ecaab29a99e0eb19cd523813`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121064–121264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0024 : List (String × String × List String) :=
[
  ("formal-neighborhood:bda1b664290f6f43c41d45aaf35a118aaeab821d8839769dbe40507332b284b7", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:bdaa31c9842e1bd4f9ad9b6f6e9adcdd0b99dfaa499de478a4a10ea8ff8342fd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:bde855a7a474106229e9806bc69e020dfc506af7153c973eb0b0f1c002991d5d", "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138", [
      "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138"
  ]),
  ("formal-neighborhood:bdf28d430716b9f2cd2873984a82dee07377df52b8e38cba1aad604fa168efef", "formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977", [
      "formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977"
  ]),
  ("formal-neighborhood:bdf9fa55cb247fd9319b990f1ce99a1853e0f7101926f5eddd100654425672f9", "formal-neighborhood:1556182a1aefb4fbd6c807eaa1b23be738d7a2424def3b080955b193e507964b", [
      "formal-neighborhood:1556182a1aefb4fbd6c807eaa1b23be738d7a2424def3b080955b193e507964b"
  ]),
  ("formal-neighborhood:be25a092eb1e16be880b1ed6658c0b054b656ce065603844aed46400bffd435e", "formal-neighborhood:171700bee02ab42afbfe4f37c193af6b28d7c96d81eb9f562b94ec046746a131", [
      "formal-neighborhood:171700bee02ab42afbfe4f37c193af6b28d7c96d81eb9f562b94ec046746a131"
  ]),
  ("formal-neighborhood:be71a374695c51f22207cd5da6d7e8f5c0ecce7e6e26f909e7c1472f2da06726", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:be8730899cc47e150e89175c6c16397679e671a2cfa9f00ae1de4ff45c9e0b46", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:bea09f4f8042392cf54e1618159eb6f67d9eb1679efe3be75b7d81df9d5b538c",
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:bea09f4f8042392cf54e1618159eb6f67d9eb1679efe3be75b7d81df9d5b538c", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:bedb845793a102fea56b86920891cf25f1182241b58e0f84db0b7fe4d55728d7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:bef2b4a1f37a18c3bfc20d9bedcf7ff45083585191cc1ba5092a7edce269689e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:bf051d428b18bd9109bb373693babacfd8dd03951d99e735a00b5c103b258b79", "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5", [
      "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5"
  ]),
  ("formal-neighborhood:bf1a0c3e9573c7e7b961af9f2b533b74bf7bc00224f6efcab14788d87046fe89", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:bf3f5f8ed26b048ae41c6dd5d05bfef81ca9036081e4818a9af40014d9d2776e", "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", [
      "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712"
  ]),
  ("formal-neighborhood:bf71a1034edec35e2dddece83a200f6c2c8ce4f53a4b161021618dc5455dfeef", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:bf95b7f4e26977085cd239c81ccd88f35a3aad012952f493b67694f156b2cb9c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:bfc0bb80ef2b8efced339675bc5706e5c2f4b6ccd0071110f8dfd27877390bf4", "formal-neighborhood:b505c853fae9be013d5dbd3e0e8be41dc36e76108050e48af60f7880d854dd95", [
      "formal-neighborhood:b505c853fae9be013d5dbd3e0e8be41dc36e76108050e48af60f7880d854dd95",
      "formal-neighborhood:ce5e9b44c10d9aabe0a64fa6eb48272a2bdb3fef0da42b7e2c81de59e7841ebd"
  ]),
  ("formal-neighborhood:bff55652adde2c008eca83841b0138cb5ed627d11aaedade9c1bada881abe06d", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:c00c18a1d5d2b479023659164e0540f504d1f09f4345bf4fa383123d535ae261", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:c027523179d31738d3ae86e3b6f96261e843a5198090b9c290a41c509d4ce753", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:6254dd15bcf67a39380161653d756e5fd829c6ed9cdeb93e72da2837aa758fe0",
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:c05f848318e1c8a678f94a44e362a1b0cb9b61aacdadc1054ebfa3bef28e4313", "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f", [
      "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f"
  ]),
  ("formal-neighborhood:c06aac3de35bb5858359a89838b1e93aab0eec128009b0e3c6c0fef65f3b1538", "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1", [
      "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1"
  ]),
  ("formal-neighborhood:c06fa2efffdc55bd365b84db06afa457b5d266e52c0d6106626bc14c6a84c87a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c07cf21f428e8b1c9afb3050cc3297a92ab23bbfd031690b615a239c2a57cef1", "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c", [
      "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c"
  ]),
  ("formal-neighborhood:c09a25f0d46c7668c74f4f25c91db22bac6a56e95462da2417107da2a8965592", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c0f6ee08b10ef915d5a2930b9b5cc411dfea7f3173dc007b50a778b7c9efa556", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c113190350a1c16702f37f9b0410f99674dc02fee20f1b404ea098bf226cfe95", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:c11612c7a7d96872b18dbce186e6019b12d6bffbb70807d0bef4feed461ecebe", "formal-neighborhood:d53d79831b35f984bfcf9490e4d0df53c04a929461795ace845b7013b3bed576", [
      "formal-neighborhood:d53d79831b35f984bfcf9490e4d0df53c04a929461795ace845b7013b3bed576",
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:c11d34334029b5ee91bbe6dc0f94008e4d2ffacaf37d4c4471f2d55dc1cfb39c", "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446", [
      "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446"
  ]),
  ("formal-neighborhood:c1778a6c3676075be0842d6f9a7c9ab6900929166c1bdd66da85621a17daf5ea", "formal-neighborhood:f383fcd9568153f2ebf58244d99bcaf8947f311b05f7e6a74c87f89f7a16d109", [
      "formal-neighborhood:f383fcd9568153f2ebf58244d99bcaf8947f311b05f7e6a74c87f89f7a16d109"
  ]),
  ("formal-neighborhood:c18625552098dde674f976557e0c2dbece3cc9251c712a67f82f4ab3ae54e6b7", "formal-neighborhood:c76f2ea6c00c8a71326cdd4e46d83bbde6fab3d77efc9a4d2e30f336a9929727", [
      "formal-neighborhood:c76f2ea6c00c8a71326cdd4e46d83bbde6fab3d77efc9a4d2e30f336a9929727"
  ]),
  ("formal-neighborhood:c193787cf0e26a5cf8838ec9e25c807382e1a338b94fcbfca67b1b8ce41d8ebc", "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2", [
      "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2"
  ]),
  ("formal-neighborhood:c1c5bfdfe14c2fd2df932d6869a4d784bc8a09c03160156114983290b456fc44", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c1fa7ea685d96582c79c3325f00631405fff6b50e972dcae7e90298263855dbf", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:c200feba2fff17095e608468bd9a9cbec11c443bd67240fee4f06dc0253baa9a", "formal-neighborhood:f7ba8f6b5eefe4ee97a6ea8086c368075995540395b402c4fb2d7ab53f867967", [
      "formal-neighborhood:f7ba8f6b5eefe4ee97a6ea8086c368075995540395b402c4fb2d7ab53f867967"
  ]),
  ("formal-neighborhood:c26359b0a69d8dc07d4cf932ad21f8eee7a11e94104bb6c402457aaff96f142d", "formal-neighborhood:a963a472d8e7d0c502971cba23f57aaf880fa7afb3b59f4a2f9d7b5f77f868bd", [
      "formal-neighborhood:a963a472d8e7d0c502971cba23f57aaf880fa7afb3b59f4a2f9d7b5f77f868bd"
  ]),
  ("formal-neighborhood:c266cb002699c87f37f207129aa6a2b401a335a33bafaa082a5ef2ad83908fa4", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:c26c797a043826a2abd2467cc68296fa5726141dfb01963da2d2ded0485a62a7", "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446", [
      "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446"
  ]),
  ("formal-neighborhood:c2880bb0210587e69a1b379463b1e9e265a8be0860d71eab75e109f8c0a91816", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c291b5ccb19c7d7cf3301913fe1f6de561a4bc1ad1953a3352c63a33414bb5f4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c2abe4dc5248fdcaa8a9d9d38a165d651c7acdeea49827d52f8b68309eba6847", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c2ad0c659f1b3d830fda6df7bc51ab98041191082b2aa93b8c538928990f5a5d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c2b16327a684c6e18d7cd26fb2721f6cd687439354638365335da689beca0048", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:c338139dc8846d91076ea5d456467b7a2412f0cf7b2e149e1d4cbbf79a0662ac", "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3", [
      "formal-neighborhood:48b8e654208679f2d0c6705044708ad3072026549e8b9776397f59e3584e2971",
      "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3"
  ]),
  ("formal-neighborhood:c33fc7da38280a422804cfb4cda173d603eab31f804c9622c745f08f2fc8e052", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c34a444635598a1cb4f2af7d5d180ed912fa72e2ff7f4fc91657d68fa4ecca77", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c34c09321c63d7fc1242f530f3690a1ac03aca23f5cc265aa6f11c59677cc830", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c3699931d89a64f5229e48da2db8a4dff0b99d006a2266cf17a5e6f65c5ea0bf", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c3958b72ca506c2cf608394b15da61a119383f37497a2c0d5b2f9934abe25a5e", "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0", [
      "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0"
  ]),
  ("formal-neighborhood:c39f60843263957e9767b72c77eff79c3d75ed5541b0e7479c0310e088fb4a91", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c3c5ff1308e9d2d6a07de3d573664e674e7b5cb63a273e610480b9382c5bee94", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:c3d46dddbd04d214b0eac23289f988ceac58a253101542c6a422cc1bb6c284df", "formal-neighborhood:f77ce8ee3c0075ff90458a9608e699b81fc093a68f2ba1a8e7e8703a34021fd3", [
      "formal-neighborhood:f77ce8ee3c0075ff90458a9608e699b81fc093a68f2ba1a8e7e8703a34021fd3"
  ]),
  ("formal-neighborhood:c3f44ac4cf9b41891c34973aed26802ffef70e633cd9d3210692c7e802f91b38", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:c4073472eea37e8b05742136e4dafbf044861173c4d1fb12c29d131690de145c", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:c4299a03c23226abad0af9856a0d4aafe9c9d3308779163216ef4b0a9265299f", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:c4513fd48d7d931a68d9f821484293959428ab8304efbe0c461725bf2fc1335a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:c46abe676565a691754d74eb2715d3f620e163e39d7831182469fbe02a64acd6", "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8", [
      "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8"
  ]),
  ("formal-neighborhood:c470fe468bfaac199be03ca67ed70e79e266e1b28aef4d0896177baf976fa980", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c4baeccc1af5f5f1944538c123ef36e1dfe8f32f81c1a3d6639b4dd9907f9761", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c4bcc6d881796f2e4f47b4bea36a50722ca6b25dda91104cc3330dc104050620", "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f", [
      "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f"
  ]),
  ("formal-neighborhood:c4e0373d529d9c100d2c06de1ce550553483dc017ea824179b9ad4ae10410f83", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c4e4e4fcc197d0072e52e042beb0dc4469e40e44abcde22cb2d82aab49c4e251", "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f", [
      "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L121064).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
