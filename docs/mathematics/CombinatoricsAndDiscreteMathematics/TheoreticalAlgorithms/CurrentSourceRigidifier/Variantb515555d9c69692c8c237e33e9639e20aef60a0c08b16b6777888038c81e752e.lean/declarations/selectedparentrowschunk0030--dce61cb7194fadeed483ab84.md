# selectedParentRowsChunk0030

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:397771f424148794cb583669c20cf61a77f979e5dd41bbf48013cc63ee4cf3ef",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0030",
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
  "slug": "selectedparentrowschunk0030--dce61cb7194fadeed483ab84",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122461,
    "line": 122261,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dce61cb7194fadeed483ab84f723ee5ce218079647351b9113530f78919411a4",
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

Occurrence: `declaration:397771f424148794cb583669c20cf61a77f979e5dd41bbf48013cc63ee4cf3ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122261–122461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0030 : List (String × String × List String) :=
[
  ("formal-neighborhood:eeec2116e44891d73a0392c2c59c8d7eced1504ddee26b5bb0a39f4007e48652", "formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca", [
      "formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca"
  ]),
  ("formal-neighborhood:eefd997890461fc4043cb54c8d69a31e2a123b20b98767a29bf164306453ac58", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ef0b87e9a048de520872cc183d05898b29237000e6fcb2a550a16120e31ed651", "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f", [
      "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f"
  ]),
  ("formal-neighborhood:ef5b2fac0e76b973bf07892fb67fc8658d8c1e238e7908beb8f857a4e970f1cc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ef62be48913e179de861ff17a4a0a104d8ec638b3d3fb18621dce39664061a18", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ef6b3777b0f728ce110b4eeb887cf17e072ebf5547833a9312dafa8ae34192e0", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ef70ba25cb79e38aa483dbaa911b33356028c3efea4003d780ef8c4a83201dd6", "formal-neighborhood:ca85785ad178ee9532837d58c9b30735e918b968b519f814d7b7525221e72663", [
      "formal-neighborhood:ca85785ad178ee9532837d58c9b30735e918b968b519f814d7b7525221e72663"
  ]),
  ("formal-neighborhood:ef7bf3d947c05429a93e59e0b67e702dab603b4c3de2a9d963950835a872b9dd", "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa", [
      "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa"
  ]),
  ("formal-neighborhood:ef811ec3520e18a11229a871b3ae1e898843f9f50457d3b6b3e3573057e6e147", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ef9ed8811f1d3c5b12eeebfde958ce09a4dbc947af8cd6b4e202d95bfed0ab98", "formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1", [
      "formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1"
  ]),
  ("formal-neighborhood:efcd0007c38b85774a56ff2d5932de1040bf76991f37f1ff2f9eec60b5f1596d", "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1", [
      "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1"
  ]),
  ("formal-neighborhood:f018637b7ef799f542b092cb09d1463f919c47b76e7ef6c4842f32b312389ce1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f026713de2ba9ab3d1235b5accd5c3c5b8ff57b7998f93e70076cb2257b23a41", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:f04d5a49885994fbb7cd090560186f3b669b1fde6fbafabb018350de1dffdafa", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f0556333794014f3138da00f0ca87cdda4295700cdb72b72b161fd2a6307b620", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f0642dd0b9c1f15bf48edc55e53051a891467c1c5a7225209bb07de598b6301c", "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1", [
      "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1"
  ]),
  ("formal-neighborhood:f0d3ad0876a55a76f4bd0f4fdf760ab906a51d8ca12b06d53035098a32b09246", "formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012", [
      "formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012"
  ]),
  ("formal-neighborhood:f0df38bda4b1b775f45e1770281903cf058e7e1286e6c2f49aa1d75cdfe7a671", "formal-neighborhood:03119b8b9a163fb1f7b01d512938a4c0a3954a0d9f28bd3740c7a2a24faa7377", [
      "formal-neighborhood:03119b8b9a163fb1f7b01d512938a4c0a3954a0d9f28bd3740c7a2a24faa7377",
      "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138"
  ]),
  ("formal-neighborhood:f0ed3ea069124561f7b39423286351489918ce7bc2748bb4032863fc0136e50f", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:ce5e9b44c10d9aabe0a64fa6eb48272a2bdb3fef0da42b7e2c81de59e7841ebd",
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:f0f9cb65a6d2d1bb4146000c4d090287f2d16b834408a7e325532194c0db98c7", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:f114b11d5f1d899160d5c3ea15b462b128e2318f32a63a81d7dfa9ac95277a57", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:f116cad0544afb183c1a6c76dfbcd8dd3896cd36a82c708cf452b918b527bb51", "formal-neighborhood:f9b41d4d3cfb0790461c799eab88d978600ec802be5d0840087f75ae1c8657d1", [
      "formal-neighborhood:f9b41d4d3cfb0790461c799eab88d978600ec802be5d0840087f75ae1c8657d1"
  ]),
  ("formal-neighborhood:f11e290a2b78a8206e4f9764fa54bbf985f5cf07bee9e0e447e058aad0c63a3b", "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1", [
      "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1"
  ]),
  ("formal-neighborhood:f126b8d3e655aa1833ff78ff4d5eb8304b7bd19f517348b2f444c45aeca626b5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f1379c0ae9358d4820d0f9032ae52be66c51572680252b647bd7d3563f407f1d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f151d6930d88db4f75ab79b914da7eee1f9ca63c94616c02c12066d7191899d9", "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c", [
      "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c"
  ]),
  ("formal-neighborhood:f169c2a489dcd4c656ffa05d57312d4f3f1ab280e7926d485b0cca3178dca3a3", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:f16a3859a2e5f4e9cb7056b1d651a2e783de0f2af2a2a3b8fe9367ece6fc73d7", "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f", [
      "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f"
  ]),
  ("formal-neighborhood:f1aaae7823230eb058da5b185c099e893fff73c2492cd8362518d4f5b45f4342", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:f1b43e38c6295312e4b16876a6ee65677662676aec0beea30eaf57279b5bacb9", "formal-neighborhood:3240e8737ea9f5c516a8f1c498474c93ca146ef50ec95beea6a344b1e110f00d", [
      "formal-neighborhood:3240e8737ea9f5c516a8f1c498474c93ca146ef50ec95beea6a344b1e110f00d"
  ]),
  ("formal-neighborhood:f1c03782ee8dd3217a16c86e2599d4282d3295f68a34c0e4984ce0017201c6c6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f1c78f0e793d119942531feed2070564b7c6c2aa01ee940e65ebea6d52303a1d", "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c", [
      "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c"
  ]),
  ("formal-neighborhood:f1ec852db17d95a7c0820494d6fc120afaca3793d11bd445f62a7e9622f1e0a6", "formal-neighborhood:2a151e0e8527ec5014f4e09c420b4fed4937ee14b63912267cbeccadeadd1c46", [
      "formal-neighborhood:2a151e0e8527ec5014f4e09c420b4fed4937ee14b63912267cbeccadeadd1c46",
      "formal-neighborhood:5adc76236da3d931eca8bdc698c0f47b622de9d6854b692969214a8b41711da6"
  ]),
  ("formal-neighborhood:f2216d2a8c49169086897408ab6745a81004bf246aaf3caf57daf9c5598300ed", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f24c0b13ff51bcbfffb4eac7ee248266cb5fcbbab8e44c06a924557233d3e878", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:f24d8d566fc605c3e45fda493c13d8cf168a9d89cc3c67b4211062bda04c7c24", "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0", [
      "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0"
  ]),
  ("formal-neighborhood:f2609e7c18157a9b83a07f01ebabb427d05e75ffb573ac249ca45c8274cc51c0", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f27cbd79e352a0273eeb484e54d1ea4d61d382e045f08eebf3a6774efe914862", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f2afd9d3e6d8f443f166b4747595aa34b4fd7a042e8158524daa3696ef1ab44f", "formal-neighborhood:422f384220a38b93568b14953643dc4a5ecc7a1ae03dad6da25e7507804f9ab5", [
      "formal-neighborhood:422f384220a38b93568b14953643dc4a5ecc7a1ae03dad6da25e7507804f9ab5"
  ]),
  ("formal-neighborhood:f2c2446219fc895c43e63dd73fa8ea4569632f8d1823be317f90ce7555894193", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:f2c5afb7e24025495e8bf2ab9e496bead2c29b477534f56c57e8289dbca6f5bf", "formal-neighborhood:80223206eb9786e6c0e5e4ccf657659f7d7cceb40cd70394a5bf9a04d4c766d8", [
      "formal-neighborhood:80223206eb9786e6c0e5e4ccf657659f7d7cceb40cd70394a5bf9a04d4c766d8"
  ]),
  ("formal-neighborhood:f2d25d41c69ae4bdad86d5cb88bbde4d65e287d79a16ab8b4e896e26450820b2", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:f2d9b2527817f05ba79b094972b7316ab2a4664214c76a0a4adc668940b6cd83", "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8", [
      "formal-neighborhood:bf95b7f4e26977085cd239c81ccd88f35a3aad012952f493b67694f156b2cb9c",
      "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8"
  ]),
  ("formal-neighborhood:f2e8365c984b751022da3dc2040a5186be9b7207811eee857e524f4c3278b539", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f383fcd9568153f2ebf58244d99bcaf8947f311b05f7e6a74c87f89f7a16d109", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f3a3fee67786afbf094015a9efdc22c861b4854d9455cb738fe89a2199c6df63", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:f3ac1291a3a3e35275deb82c4f494df6dedcd737f4a314e3da6e7b3491da9099", "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c", [
      "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c"
  ]),
  ("formal-neighborhood:f3cd02791eb907e4d6d3dee01802a804f72da287e822e6cf6e51c57cd9eff2c2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f3e078852abcfde6619e7303d6d3e264db444ac93c8f99ad05ff8bd54b196b88", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f4102a0533c03a3481aecc2139c849e76d65aef22431161938e987e5c1349a06", "formal-neighborhood:f2c2446219fc895c43e63dd73fa8ea4569632f8d1823be317f90ce7555894193", [
      "formal-neighborhood:f2c2446219fc895c43e63dd73fa8ea4569632f8d1823be317f90ce7555894193"
  ]),
  ("formal-neighborhood:f42eb86478e3e2f1d23eb7046f6901c1bfea06fb2d228ce1824b8ef748fea228", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f4732e55306ba42e55440c145763fb044d30d074b2787228c0c5abafaebc022a", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:f484af3179d66937dcaee2a0809237c904f0ab1501671f24149ec9140b5634a4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f503c1dcdb2e060f69459c6d2ca85e041f6de2fe0f5cdc2012ef9371a23f047c", "formal-neighborhood:6dab67dd7fcfdcef3411db88148c0312b0d6c0536443896f685d5d6ea8666bfe", [
      "formal-neighborhood:6dab67dd7fcfdcef3411db88148c0312b0d6c0536443896f685d5d6ea8666bfe",
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:f50c5ba742a7e04d55e30b2036055e0e91b9154726675e765148e4c18a8daada", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f513a89cf196b90c05cb275bcfb5ad326234c174c66dfd968a54cec2d6c891b3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f52c0be019aabb045733d6060982c3be509920702d5c67cf6c9e326574933488", "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5", [
      "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5"
  ]),
  ("formal-neighborhood:f570d90dd2e70af98d5acf7046066a673e5f1cc0c57012e7eaabaf2a96f3cfd1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f5989207d9a127ebb08609aa124f7f5e79b21ca3e86f5df33b14b294963a4f76", "formal-neighborhood:18de0ee2a2b088c54dea1387b37bdb0bc7d883e4ccb6a20ce8de2d3b1b130cde", [
      "formal-neighborhood:18de0ee2a2b088c54dea1387b37bdb0bc7d883e4ccb6a20ce8de2d3b1b130cde"
  ]),
  ("formal-neighborhood:f5d2e59052fc977ff5dd106bc1e39f74b303a5314eaafc5926eea4e0cd86f3d3", "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0", [
      "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0"
  ]),
  ("formal-neighborhood:f62d0951a7169cbafdc8013ba35d3373cd5333adf66b41119c3b3d2b1632be38", "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100", [
      "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100"
  ]),
  ("formal-neighborhood:f636d64539379fe39ccb5c0ea2c2d707be777bf49f754b89761a5afdab0e2225", "formal-neighborhood:f2c2446219fc895c43e63dd73fa8ea4569632f8d1823be317f90ce7555894193", [
      "formal-neighborhood:f2c2446219fc895c43e63dd73fa8ea4569632f8d1823be317f90ce7555894193"
  ]),
  ("formal-neighborhood:f64a3a1499d8c14f316ba2dc271ce98e375ff8d01311c0ba747fc11878755beb", "formal-neighborhood:719286ef6eb354f4b05ec86b688e34fa80cf96d0457974ccf2b698ce9fa8a513", [
      "formal-neighborhood:719286ef6eb354f4b05ec86b688e34fa80cf96d0457974ccf2b698ce9fa8a513"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L122261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
