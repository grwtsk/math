# neighborhoodModelCandidateSelectionsChunk0001

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a8aae69ea9fae56c3da48f18f8ede9136f67129e5cc77c9df66656919634404",
  "kind": "def",
  "lexical_name": "neighborhoodModelCandidateSelectionsChunk0001",
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
  "slug": "neighborhoodmodelcandidateselectionschunk0001--a41529531c7a5f718e428b85",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130096,
    "line": 129639,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a41529531c7a5f718e428b85319be6d68040d3a0c90b1752a8bd51d712b3998c",
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

Occurrence: `declaration:6a8aae69ea9fae56c3da48f18f8ede9136f67129e5cc77c9df66656919634404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129639–130096.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodModelCandidateSelectionsChunk0001 : List (String × List String) :=
[
  ("neighborhood-name-candidate:95d1dc1701cad63bad15945fe5a868c3f461f4cf1546f3ca37fba6fcc4225eae", [
      "neighborhood-name-candidate:059cb59d603893eb802491f8b2373ecb617e98ee1f2c9be09123f5a33aff4c31",
      "neighborhood-name-candidate:22445f7649987eaba911928a339e93b754eec26054b4711c87b2ec21784dc634",
      "neighborhood-name-candidate:95d1dc1701cad63bad15945fe5a868c3f461f4cf1546f3ca37fba6fcc4225eae",
      "neighborhood-name-candidate:c1f85bef9251e5854448b9261d4f43cc35cbe4355ded7433d57ed5ce79d0903e",
      "neighborhood-name-candidate:d4ecbccf4d78cb8103ca2cb490bf0a15b70896a18b9ce68c618fabc1ae1c497c"
  ]),
  ("neighborhood-name-candidate:300470b42a2827f7c20e9afde79fec3488d09333c0bb4169b80ca9e870836cd0", [
      "neighborhood-name-candidate:300470b42a2827f7c20e9afde79fec3488d09333c0bb4169b80ca9e870836cd0",
      "neighborhood-name-candidate:43d427a0fe08d88dec15b119d3ff3122e76e6b674b56efabe189b0f67fd472d1",
      "neighborhood-name-candidate:783fde96e4303a89ab16e251c53ab096feea15fb6f7564b47c354c08d2583795",
      "neighborhood-name-candidate:9969b4ad064126fc492f47d5166c3ffc0f1aaab741d13eb33b47c542d1d4856d",
      "neighborhood-name-candidate:b03808b697e00cc4178d56db875076bf9e2638ea6cbffecd4e0db435a9251b17"
  ]),
  ("neighborhood-name-candidate:689847a20563895c85e4b3a0ddd8ab26973e0692989b999671785b514965f5b8", [
      "neighborhood-name-candidate:569eab8853d1fb0d211d73a490ad4cea845169ad936710f500c10ce09625c194",
      "neighborhood-name-candidate:689847a20563895c85e4b3a0ddd8ab26973e0692989b999671785b514965f5b8"
  ]),
  ("neighborhood-name-candidate:13cd393b7526e621ce59f9a72f73b0ccc61c5b33551c21cfc9c0413ca9c76c62", [
      "neighborhood-name-candidate:13cd393b7526e621ce59f9a72f73b0ccc61c5b33551c21cfc9c0413ca9c76c62",
      "neighborhood-name-candidate:ab19a95e0841e8e6374c42e834ce9f138dc08c04739ebf0c333b70ec05887fdb",
      "neighborhood-name-candidate:b0cb94e9791af50f1e61294b26263b5bcb19484ffefc7fea0df08715c1786da4",
      "neighborhood-name-candidate:ba2bb1bf753ccb58ff0ceb6b0612767966752bbbedf94e49a80d6740f15a61ea",
      "neighborhood-name-candidate:d19e23aedb530b79008849dddac2d67219f7af1ec582e7c26c4a5ffdd085105c",
      "neighborhood-name-candidate:e6887a78ebc9009beb40880e506874c77c17213d255c891c5e1a88b129ea9319",
      "neighborhood-name-candidate:f9170843935b68266b5ba04b6d8412723fd951a26016ac3d5380c9ab52d456d6"
  ]),
  ("neighborhood-name-candidate:0dd43fc860eaaa69d8d12bc87db1106d2bd47af33ba13773debfd02db3556690", [
      "neighborhood-name-candidate:0d8a778ecacbccf9fa6de0e804b9fb5aacf8ea236a8ecfd57b0950fe315c0cc6",
      "neighborhood-name-candidate:0dd43fc860eaaa69d8d12bc87db1106d2bd47af33ba13773debfd02db3556690",
      "neighborhood-name-candidate:61c7100d13d96cb5b07b52ed7b7445e8fef79185c7fd5362af98225a48082b93",
      "neighborhood-name-candidate:9b414c57872112a5b08b227670b4ae08e1ca051efddaa9b32cfc0f3ccb02094d",
      "neighborhood-name-candidate:ad410861ad94ab0f91472c9867817972fbf5127403bcc69b9c89c669d405edb8",
      "neighborhood-name-candidate:d42bf98491efec3d05cae13f2e7b3e2b6dac03f1769c12f026b3b8353ac04ba5",
      "neighborhood-name-candidate:f26e4c430c489a786d815b2b7ac4000f34461ccf30c675723426903f6d6decf2"
  ]),
  ("neighborhood-name-candidate:20f5ad9cf931439992d5d7d04e3904d3c1be7ca36d15b40b6f187e7dbfd38be4", [
      "neighborhood-name-candidate:06031b8f4b16082e360086b60bd087b23762d1efbddf50ee50fda451752a86ca",
      "neighborhood-name-candidate:20f5ad9cf931439992d5d7d04e3904d3c1be7ca36d15b40b6f187e7dbfd38be4",
      "neighborhood-name-candidate:352576a64cf8bbaca3d64057e066b150b7e1bb904f7021c91c10dfcc4aa929d2",
      "neighborhood-name-candidate:53bfdd8b211934727b9c8278e662aefa038e1c46bd3f7f41efe9d3a46e761664",
      "neighborhood-name-candidate:6e9b51ef05bb67056b81fb0148312185a54640e9377288dd382bc62f6d07434a",
      "neighborhood-name-candidate:7c6c792cf1fbc8c56848ea7072bbc3c189c4082d20eecd3d8441eaf8aaeb8fee",
      "neighborhood-name-candidate:8970353114bbba8df50f843b0c85de9256893e43eab720c06752995789cf71fd",
      "neighborhood-name-candidate:96de547c8928a5fc7db5faa467c54737628c862b3c0e453e5d967814baa8813c",
      "neighborhood-name-candidate:c8dc70c76388fb5ad6d5786e7a3e6372e936f2fa073ef82d5ae3df80c7982513",
      "neighborhood-name-candidate:db231bb4bce665ae2f1b5822ff62eece5cd323c8d9cac8b2ff797865488981c3"
  ]),
  ("neighborhood-name-candidate:53dbb2d2949b6aae8642b13b963b0b4727fbe83aae239edafe1c0d51ad179cf9", [
      "neighborhood-name-candidate:53dbb2d2949b6aae8642b13b963b0b4727fbe83aae239edafe1c0d51ad179cf9",
      "neighborhood-name-candidate:ce11281e8540e1382e10af53a058efd564eb1e3e74cf6a63cf99423b3a150df3"
  ]),
  ("neighborhood-name-candidate:4c002012922c9f3d1c69f156cc792acbc86320b444737e067088026fbd81054e", [
      "neighborhood-name-candidate:01d1d1a2598dc0314c23d33dcad7033c2b5e81aded194b2ffe27e00a8af69376",
      "neighborhood-name-candidate:4c002012922c9f3d1c69f156cc792acbc86320b444737e067088026fbd81054e"
  ]),
  ("neighborhood-name-candidate:06a0548f195b3cac967ec1d8fb190dced636052784d559754baf6ab88a104e99", [
      "neighborhood-name-candidate:06a0548f195b3cac967ec1d8fb190dced636052784d559754baf6ab88a104e99",
      "neighborhood-name-candidate:b31a99f513269eece3599cc904a0e003a5b244d1cad843b2e7bb5dbeb0aee51a"
  ]),
  ("neighborhood-name-candidate:144fc967f6b889ef6847f278f52e5f11b5f17236f2457e6ee878f0de2b69be0a", [
      "neighborhood-name-candidate:144fc967f6b889ef6847f278f52e5f11b5f17236f2457e6ee878f0de2b69be0a",
      "neighborhood-name-candidate:c939ea938c8376bccc542b7b2e07dc0cb4a27a6fbd5565d1d6cfbcf9adebf5b7"
  ]),
  ("neighborhood-name-candidate:77ab6cf5e77301458c9f8c3ae6997c9a3b1a244955d3b3d5eb9742b7f84c3869", [
      "neighborhood-name-candidate:1b5ed6f1d2b8706aa89597cfa0f0364d686b4beb864bb179b0c73c67863c2056",
      "neighborhood-name-candidate:77ab6cf5e77301458c9f8c3ae6997c9a3b1a244955d3b3d5eb9742b7f84c3869"
  ]),
  ("neighborhood-name-candidate:03f588c699b687710c64d04f3d1f7bdd52beb5b5be4766a516dec2fd4b16b8e7", [
      "neighborhood-name-candidate:036236513fad45a41f85c1a0ef40f1694f185dbd0d912ad26050bf8dfd5c301c",
      "neighborhood-name-candidate:03f588c699b687710c64d04f3d1f7bdd52beb5b5be4766a516dec2fd4b16b8e7",
      "neighborhood-name-candidate:184009a3b08eec2ca19a0907cbef6f12f9bfa21175a8548aecff7f13590438a6",
      "neighborhood-name-candidate:3e034ae73ac1fc9d62dabfebe98c18e912a0edfde9c90a6d261163b173e78413",
      "neighborhood-name-candidate:7c6f34bb2a691a947124a0a48d392c356a7c61fa2ffeaf611e9b4d69301af640",
      "neighborhood-name-candidate:8a240b91f98f2c813ccf8c5c58267ab2884518b9a07f17c837d1184fb9b2c15e",
      "neighborhood-name-candidate:8e294d4409102ff8a2828075d3ff87b399b158d4b2914b24ffd0e62ccbec24c0",
      "neighborhood-name-candidate:9eb06e8bcb082a431d12ed0d5e2db2eb034babf1732452dab383746adb9f0a4a",
      "neighborhood-name-candidate:b194f32f617929c4e05afdae8536df152d524423a747f837fd2e1077ece05b7f",
      "neighborhood-name-candidate:c94ef30b80e383a2fc3df78322cba0cbc4237802bbb66e4ebcdbf7de53c3d313",
      "neighborhood-name-candidate:e3da5e6ffc274f753f65a57ece55cdd4c2e61924002a2c0614892e7ad77db5f3"
  ]),
  ("neighborhood-name-candidate:ea8b9ab62bfee2bcde89de3caf603005f7aceb7b5619c7a23166ec9341fff741", [
      "neighborhood-name-candidate:ade070107560389e080d987abb8f47e709f3b79bf9b2ccbeb1a302b832817ccf",
      "neighborhood-name-candidate:ea8b9ab62bfee2bcde89de3caf603005f7aceb7b5619c7a23166ec9341fff741"
  ]),
  ("neighborhood-name-candidate:6d6d577213281efc1b5254ea3574b4cbef60e9656775b049c3d7eefd2980ff7f", [
      "neighborhood-name-candidate:34370e716c0f7d4037613bd65b0ad47e86dd910d41bd41d1d74b90a49c3ed6d8",
      "neighborhood-name-candidate:6d6d577213281efc1b5254ea3574b4cbef60e9656775b049c3d7eefd2980ff7f"
  ]),
  ("neighborhood-name-candidate:2d4c678800e156e3e1a66695da431c4d121318efc09860d91125d082ab3434db", [
      "neighborhood-name-candidate:1bffc5d3336999e029fc3c0161608e975ca36c887f9a707b5babdd8e81e7109b",
      "neighborhood-name-candidate:2d4c678800e156e3e1a66695da431c4d121318efc09860d91125d082ab3434db",
      "neighborhood-name-candidate:4fda3f72ded401e25cc1ddac9d0b0ebb0312912893a92b455b47721362af01a9",
      "neighborhood-name-candidate:7cac2cb4eb65ee44d3879a264041b76625f8faf833cc35f55f37da4733b3f645",
      "neighborhood-name-candidate:bff4bbc99a6a6ad51a0ea18d2ed59005ae1fffe98886e43b96193e0b31d19635",
      "neighborhood-name-candidate:c76d818d997329c0eb2a305641e5c1ebff585e5a74d3152c4c3475673cecea64",
      "neighborhood-name-candidate:cd7c2c7d5d111a7818e82f513ba5019f1da0c09ae392632716571a67487621f2",
      "neighborhood-name-candidate:dc9197065f2bfc033dde0e74311408709b5b3ba0144fe6c859f9948ada9618ae",
      "neighborhood-name-candidate:f289d32bb1c70a7540fb124104da77b4d27e02b9fcb48313f6d313213e74058c"
  ]),
  ("neighborhood-name-candidate:68593f932255af507cab949f2dd56fb4ac90b755028bd031080e2eb006bc0858", [
      "neighborhood-name-candidate:3e485d8a4c92dd6951ccc6110304f8c210ec91ebead297fb0753464bc7f6c42d",
      "neighborhood-name-candidate:454a4fd9e49aa9fc9b488bf11381bfc1e34577ae9da8ed43301d47699f26f5cb",
      "neighborhood-name-candidate:55c61ade62f8c3a93563750c54588e31ef598acba01e5eea0286afd923daf374",
      "neighborhood-name-candidate:68593f932255af507cab949f2dd56fb4ac90b755028bd031080e2eb006bc0858",
      "neighborhood-name-candidate:7fb6a35971151db67008ccd90cda27d91d2c247dcc1b2abad2849694d3b0f568"
  ]),
  ("neighborhood-name-candidate:d4eb2b9516d9bdfe440548f1d17d2a320166a17b03310dfa7a91b5b81f77124f", [
      "neighborhood-name-candidate:35beab120100ea097d92966784fbac33ed656f2b99d0c2a4b5ac936c5bec423b",
      "neighborhood-name-candidate:6c1a24f31e0c7eb22ba591df53ab1d7c1c843f3279ba10afd2ea774ff5dc83aa",
      "neighborhood-name-candidate:70f34e5b2b4937497fffb22151d222d843c72eb807afe1e33c52e6ee6d9cf4b0",
      "neighborhood-name-candidate:7d688ee0e16ee2b4fc55db64267d6821af95af0edfb24d631629909ad4d08200",
      "neighborhood-name-candidate:86ae716ce2f396cb5cf7d22405ef7554bb1b83917e859d3c7a0e6ac3c1711cfe",
      "neighborhood-name-candidate:cb9a5ba0c7bbfdbea460b0bdea5bcede4c8efcfb8a18372265fa902e3b116b77",
      "neighborhood-name-candidate:d4eb2b9516d9bdfe440548f1d17d2a320166a17b03310dfa7a91b5b81f77124f",
      "neighborhood-name-candidate:e44e576b03d0101fe76e19418b8b7764703e6df275ab38e998c35aeef9745299"
  ]),
  ("neighborhood-name-candidate:2c4bcd4dd090bc7916b30b6d948cff0aa6e04cafb10bf10c1566f5947c40aa14", [
      "neighborhood-name-candidate:1d802a605307b414cae8708a2ebb71d8ba64bdf96523ccfe432ca4ab79f45236",
      "neighborhood-name-candidate:270a19602f14a0c17746f9ec0dbfb2c427acd8e56042f32d5689130d531ddd21",
      "neighborhood-name-candidate:2c4bcd4dd090bc7916b30b6d948cff0aa6e04cafb10bf10c1566f5947c40aa14",
      "neighborhood-name-candidate:60c8bb18e3931dab9c55278b751691b8546804598aa8b3ea189a3da53770a004",
      "neighborhood-name-candidate:a13d5ecdc8d97cb410fad1f49fa42454cbb1c889c9ca232732b111e781316180",
      "neighborhood-name-candidate:ac4e00480557c249abf886b5c18a6829628d6d64d77befd3b522e15c39b2c976"
  ]),
  ("neighborhood-name-candidate:191c3559fdc7a9cb7e6bdc6af6b874ffee28fab0f53ab6061bd232482a36b56e", [
      "neighborhood-name-candidate:0493428b1b7164b735c7e24afff160a1bf784584131f4ba71c971cdf1285b5c4",
      "neighborhood-name-candidate:191c3559fdc7a9cb7e6bdc6af6b874ffee28fab0f53ab6061bd232482a36b56e",
      "neighborhood-name-candidate:3ea088516b734f9056942ec44d3314b541309f22ed0a7d66aa845c7ab890c840",
      "neighborhood-name-candidate:4994b819a7ff30dfbf0add720e27e460a0674a256583635cf2c0f43d573a7ac0",
      "neighborhood-name-candidate:609d5a294d6835c54fb2f8fc50df19cc3a558811d05723fd6931a2bdcfb27ad8",
      "neighborhood-name-candidate:68f1873198bda6104490a7bcda7985364eedeb27f0ca40a3cd39db9621451332",
      "neighborhood-name-candidate:7124c4a63d83704d999c202834862474ddd7f126ed6bf46429f5f703f8e6a375"
  ]),
  ("neighborhood-name-candidate:3ddc08cc7ebdd19a080f32dbe06fd150d29342f617745c7ed99e99152ef0c632", [
      "neighborhood-name-candidate:3ddc08cc7ebdd19a080f32dbe06fd150d29342f617745c7ed99e99152ef0c632",
      "neighborhood-name-candidate:de5da823bbd99ebbab928a035197063b4ac3e88ceb3251c57b7ad4119a9e5fcd"
  ]),
  ("neighborhood-name-candidate:1018353b0e5ffa640440e6c1ffe54ab66d9efbc8d4d9bcc8df8a58b48c6a692a", [
      "neighborhood-name-candidate:1018353b0e5ffa640440e6c1ffe54ab66d9efbc8d4d9bcc8df8a58b48c6a692a",
      "neighborhood-name-candidate:17ee5d2e4a562b061f3cc7556e52c282abf62c9df2dd70321e3ef8c917f2a6c9",
      "neighborhood-name-candidate:2e9ba25e9450d5a0af7aab611cab88c26ca610666bc371eed044a2404ffbda9d",
      "neighborhood-name-candidate:347b7647209cb58a1e13723f3d0e5a9f7d92a198e9bea9abca59e402709cba14",
      "neighborhood-name-candidate:396303847e099290e7a261d22aa222cd5fd247b070a18e65d6d93d03e73ac14c",
      "neighborhood-name-candidate:403d07ed2f7de9e4a976fdaea21362ee36d3d238be1f527e027621b83ec3170b",
      "neighborhood-name-candidate:4f649c98eb7403a10011cad78053a8c2036297f456a8c5e864cb941838213a5d",
      "neighborhood-name-candidate:9d25ea62a4105c65bc5c2d10c10e8b721f207b4eb32e3cac84b359c19d93247f",
      "neighborhood-name-candidate:b67d7878e90d2f0660ffd856c3e857d398fff57c7678c5de1bac880e5300e965",
      "neighborhood-name-candidate:b7899582239f6732fd37a2e42d9cec03a4a82ef2e0b392b53e5c41d7114615b6",
      "neighborhood-name-candidate:cda3d7b0f6b6a3a0d05ca548cbabbfd34dd6f0a59519bda610d386578211254c"
  ]),
  ("neighborhood-name-candidate:f1fed3022e4b4d8a9171998be3928a70f51a47cde3ca3c5c2ebae56029419f26", [
      "neighborhood-name-candidate:079fb75f6fac49d2fd7d9204b184f39bcd2e79511c1a4db45524c1f0f6a630b7",
      "neighborhood-name-candidate:788bf18056bd05101f8afca306f759bc0eb5be2e673614ec370e04213c9e5f44",
      "neighborhood-name-candidate:8262931183fb2d5dd86fc50fc621131abcf5e69612f0e16383a8149dec2c0b0c",
      "neighborhood-name-candidate:a03d5021ea93d56a9c7c57c35dbf6aa925888b5d0d7f04d63b92fcd5a7123a37",
      "neighborhood-name-candidate:b3e7d2ce06085f606ee9d88d1cd66b30d6b959459946e50239af5cb011afe755",
      "neighborhood-name-candidate:bbb4d26bf38e1a698317525c47d1d2ad35b43f14c23440548bb2bf6964924888",
      "neighborhood-name-candidate:c136e5aa21247cc3f0f71d1a4b385f34cd55b616a70a0c6961716a74dd300f7f",
      "neighborhood-name-candidate:d378d6936f6173101f20dfc353ba648b22ac73fe275555b875c1a105c586056f",
      "neighborhood-name-candidate:ef01f08f5e478fcbbfcf0badb6d95a0d3dff68274db7cbd5a1bcf86356aac1fb",
      "neighborhood-name-candidate:f1fed3022e4b4d8a9171998be3928a70f51a47cde3ca3c5c2ebae56029419f26"
  ]),
  ("neighborhood-name-candidate:80aceed09ef6f8f6ff1f121c7aa53906021cad574d89ec799904185735e46bec", [
      "neighborhood-name-candidate:80aceed09ef6f8f6ff1f121c7aa53906021cad574d89ec799904185735e46bec",
      "neighborhood-name-candidate:fa72f02c897e771fc384f104d209b8c8da7034b5027decf3609566633d3d1025"
  ]),
  ("neighborhood-name-candidate:5180ee67850edad60dee7794787d91ca545aa143abe219927b727f33a78dcd7d", [
      "neighborhood-name-candidate:03c70a50cf103f122c5277bcb07192342c60f30f2877dccbbcfba89c55a2dabd",
      "neighborhood-name-candidate:5180ee67850edad60dee7794787d91ca545aa143abe219927b727f33a78dcd7d",
      "neighborhood-name-candidate:71a82331901bb9d40f7bd41e7fbb7f039e1824b9a5718e4b5cc92953755cd6ae"
  ]),
  ("neighborhood-name-candidate:bf668c0a851571330b6ea7ae2bc17dcecc3014fa8d635bc248d0fe03ea3d9ce8", [
      "neighborhood-name-candidate:233a03a5961c524bf37b416c1d665a2fd24e13d2460193fd3c25f7ffb641c29e",
      "neighborhood-name-candidate:3940952d1aef2ad5ec413b38c3cd218c5a924816a7103d5fbee05dee40042aef",
      "neighborhood-name-candidate:5d47ba2afcd68f01a1899e6dea36fa6724dec92c4edeb7ea1b0fcf5c18cdd5b7",
      "neighborhood-name-candidate:6ee5c7d40305dba4a67d2a75ff6734a6848a34a826054535218a570ba38b636f",
      "neighborhood-name-candidate:bf668c0a851571330b6ea7ae2bc17dcecc3014fa8d635bc248d0fe03ea3d9ce8"
  ]),
  ("neighborhood-name-candidate:15b2c69a8978cf9e687f06ccc685abeed3d5f7c27faafcf68c87567d91923329", [
      "neighborhood-name-candidate:05bc4ea8ba78797d6532586e14322e22e668e9310e7cd25a1e8d279186cf85ae",
      "neighborhood-name-candidate:0d17931ab319ec2ab7d023accfc2b3da460c3be96c2b2e9d17db65603d28b9ed",
      "neighborhood-name-candidate:15b2c69a8978cf9e687f06ccc685abeed3d5f7c27faafcf68c87567d91923329",
      "neighborhood-name-candidate:b1f6af22917b7b7d08f5699c1103cab7c210fdddef09ec24d3a238125dd26f16"
  ]),
  ("neighborhood-name-candidate:3d65adeb73f6df19ca8277ad72ad428a5baec3bb25861979bc8636d7d0bf57f1", [
      "neighborhood-name-candidate:00fccd2116e1b151f203301eb5f4efefe1e2b114a8c4a947f1d70b368138a097",
      "neighborhood-name-candidate:0816931f8e9d100f6dd4f678e59e1cda6ee8a2ed0046d0d38b28d4a7976b6de3",
      "neighborhood-name-candidate:0ae882edbe2a23775a50c3dbff5fc33ef5c453215f960e33534bba0a3d0b123d",
      "neighborhood-name-candidate:24142e63b5e08ba577e8923d0f94a68b59801d3d5bb58099903287b0372ab6a1",
      "neighborhood-name-candidate:3d65adeb73f6df19ca8277ad72ad428a5baec3bb25861979bc8636d7d0bf57f1",
      "neighborhood-name-candidate:415219f708b7f0ab156cf7cfa89bf429295db214b582460d52c3141a2912890e",
      "neighborhood-name-candidate:73d0b22543e18091c0fe676fbe442c815b121829c2b83996f53f4ebc09810d2b",
      "neighborhood-name-candidate:884efa72badb321492c8570dee3932318faf4d71e59fa61ba3ac254de3f96d9e",
      "neighborhood-name-candidate:918de37fcd4bea4d8346a1b94cd78aebd8691860077fe9bf61e7efd22874c863",
      "neighborhood-name-candidate:bc56e0e05e3aa42f2652077601946bd877fbaa6ea9819cfb5d30f3cf20a039e1",
      "neighborhood-name-candidate:d6f9761d13c07ac6d2bdd39b394cc91da6d81eef9959ffc04ff6c779e517d9bc"
  ]),
  ("neighborhood-name-candidate:dd901741a77f4aee780c2aaad965f61003dcf7290cb3f97ed222393b7ea39ef2", [
      "neighborhood-name-candidate:4853e171518f61e5493f82a48db02ff1d91602e7859070f2e322cd56378c59d0",
      "neighborhood-name-candidate:635142c5dcedb6b573cf3fe2aa4e80dfacea93ba86f84f95ec80623b934b0036",
      "neighborhood-name-candidate:7823790232fbca38773009d59d4022dfacd121d3f9f972703596a8f72d595657",
      "neighborhood-name-candidate:9f068c16b396b18edcd5e095a3ec9d18e1bd725bf4fef2de817c68d820019fb3",
      "neighborhood-name-candidate:c2661b1a13fd98b57912fd7e08419f17dfdd5a271a74c079fab07b1d0c5403ef",
      "neighborhood-name-candidate:dd901741a77f4aee780c2aaad965f61003dcf7290cb3f97ed222393b7ea39ef2"
  ]),
  ("neighborhood-name-candidate:d6c35dbdf80598f75cd3695b8c22d2daaa806c5792755d414e485f5e5cbbb99e", [
      "neighborhood-name-candidate:3fb06e04bf328b575b8dfe2e5a07b5d878b874818bf9f8cccadc022aed8e0c0b",
      "neighborhood-name-candidate:4f86da6daae91d1bb49225a1200d478be8902767702bda3fe5079e668ddc772a",
      "neighborhood-name-candidate:93614e61fae533a0c94ea8a462d8c232129b58fa95ea8a1a18b608f2d1619eb2",
      "neighborhood-name-candidate:d6c35dbdf80598f75cd3695b8c22d2daaa806c5792755d414e485f5e5cbbb99e",
      "neighborhood-name-candidate:e1cbcc9fb9f7f124f93d546b35da6da8b8d082db3e7765a66616d01a01d634e9",
      "neighborhood-name-candidate:e6b5fb20dbe257e97abbf96bc4a2674a1b599efed4ca0c0b31b83d4c03b84924",
      "neighborhood-name-candidate:ee8a34f37e7026bf51c3f7a67003f24936b2f040afc7e45c3017e4947563b821"
  ]),
  ("neighborhood-name-candidate:b5cd9cc35a25925efc699b734e2ee4bbe099cb38b24df8d394ccf3fe39060225", [
      "neighborhood-name-candidate:04f5140d658ba5fe204c493d008ed95afb2a1d67fa1e62f7c8590ab39819e1a0",
      "neighborhood-name-candidate:0c8e57715a88aca0992b5e8ae0a04ec77339281329e6fffa3146e0ca46508700",
      "neighborhood-name-candidate:677668fd531433ee528b4cd6151d77bdb46386c6f9e60a193c69d883e61fd4de",
      "neighborhood-name-candidate:86798a945a4c7ab29f95701df60d10bbd894cf1c069c0015671c6cc3f7d1b241",
      "neighborhood-name-candidate:b5cd9cc35a25925efc699b734e2ee4bbe099cb38b24df8d394ccf3fe39060225",
      "neighborhood-name-candidate:f766bf6f7959b78e083bd598bce103e6d967b7f6db04421842daaf65f82ffe1b"
  ]),
  ("neighborhood-name-candidate:8cb2bf954696e89603ee49eeb98fa611aed31eb95897df9864c54b72dd740585", [
      "neighborhood-name-candidate:6b849ae857a9d2d5a4c2f24611ea454ae0e5e3e13d60f39938eb194284fd1b21",
      "neighborhood-name-candidate:8cb2bf954696e89603ee49eeb98fa611aed31eb95897df9864c54b72dd740585",
      "neighborhood-name-candidate:96177c9535c7ec1a231b92dfe1c02692bc40e1dc995f06d747d7d8e318627f03",
      "neighborhood-name-candidate:c538cc135feb400d4faf17a342a2c4899bff87508aae07bf7168820101f28088",
      "neighborhood-name-candidate:f002193b4e666caaade001219ddc10dfefb2e008cf53c43aa13c26d7241cbaa0"
  ]),
  ("neighborhood-name-candidate:1a2c291de885cb13c0589077080a5d092b3ca56a2b0ef3355747c93056fa9a1e", [
      "neighborhood-name-candidate:1a2c291de885cb13c0589077080a5d092b3ca56a2b0ef3355747c93056fa9a1e",
      "neighborhood-name-candidate:614bb819ac5806a909de7262f3df41bfd47de5625176066b4a7d353170546f2e",
      "neighborhood-name-candidate:bb19cb79dc363a86546da034573695daf2acc952f8e4ccfe5182a43cfcc2d48c"
  ]),
  ("neighborhood-name-candidate:2df499e31854e9b6744668684704c08e7ab0e9f9d87119a47226378c03dc2c27", [
      "neighborhood-name-candidate:2df499e31854e9b6744668684704c08e7ab0e9f9d87119a47226378c03dc2c27",
      "neighborhood-name-candidate:c02ae491c39cbc0ed54e7631fd9595c88bd2f3344e34747bcf7031eb2cb4b83b"
  ]),
  ("neighborhood-name-candidate:a4c07351a992cfacdeab4323d69a56c7b1de12839aac5823216a7ea4495338e4", [
      "neighborhood-name-candidate:073bb335cc897aa984831aacbde25bbd4f66bdfcf12bb9c0eaac6e361109a4a7",
      "neighborhood-name-candidate:82199b1e9e1616a39dc2e91f800f142b6339be2295663fb354aabc5e1b503b73",
      "neighborhood-name-candidate:a4c07351a992cfacdeab4323d69a56c7b1de12839aac5823216a7ea4495338e4",
      "neighborhood-name-candidate:ba6a47a210de826dec71c266d43d305cb3a942964287796d35fa50297e711aab"
  ]),
  ("neighborhood-name-candidate:fb0749cb58680be7c518c39d03f6d41b389be75daff78968c57a93a05d1c87ed", [
      "neighborhood-name-candidate:2f98391f98bf17de8125c89bf55f3c4d8998777fad0bdc1577c539e51aa7638e",
      "neighborhood-name-candidate:610913b301034abc0b3df9fa68ed6b29ce037b1e35916e17903ef453e049bbb0",
      "neighborhood-name-candidate:666e43daf65bdc4b6b4293eb78d4199c887194ddd184c87e872a49ba2e3ad2da",
      "neighborhood-name-candidate:d5d6d86fbcebb72c982c94048ec3abdf0496053c332ab82a6d1f7c0c3c5e9308",
      "neighborhood-name-candidate:fb0749cb58680be7c518c39d03f6d41b389be75daff78968c57a93a05d1c87ed"
  ]),
  ("neighborhood-name-candidate:cc92b003d4e3d89a422f146091ace3fc9fa3a7e8088d29d149e2dfaf1bf0592e", [
      "neighborhood-name-candidate:082798b89463862e58de7ea6b154815566ae23d6eb8e775dcb07219e646e38ef",
      "neighborhood-name-candidate:24904eba212cd917f285e7145c0c2a6b6fc72fabf0ac432cd7d914551e74b2c9",
      "neighborhood-name-candidate:25ab15f5726c5beb6d41a9c6cce9060a2be3738ca8dc1ef7a68e1a2eeb89253c",
      "neighborhood-name-candidate:2f67e8c64479927b4f3b77f66322e46a6880103430bbb0e022e69d6ca008d368",
      "neighborhood-name-candidate:9b9e8f63af2d87d8b4a9cdf8a1cb2f2f2240a98e927e42d5bf5deb2c34a49f34",
      "neighborhood-name-candidate:c06279cb5bb68e8860d68a2327f7d50a482c0e91d019cf41aa0774a5ab2050aa",
      "neighborhood-name-candidate:cc92b003d4e3d89a422f146091ace3fc9fa3a7e8088d29d149e2dfaf1bf0592e",
      "neighborhood-name-candidate:da85de5d7827500a4e7c24ad450dbdca8d62ce75ed005811f21b9be6b6d8e488",
      "neighborhood-name-candidate:e4c13ff62b808e16d4042b00ce8fae778b9b5f1e303d6deb17e09441b20e7877",
      "neighborhood-name-candidate:f629ac36ec9b70be5871a739dc35e66b9d66fc47bf4c4a667ac47f72b230e31b"
  ]),
  ("neighborhood-name-candidate:8da231e3e2b84b9e24352653ad783271dfe133221880ed6bd0dfaf70c500ef23", [
      "neighborhood-name-candidate:0f1b3512af082f3086c3ef3b9936b3385f1a0f37aac8dc84957e4ac8da80738d",
      "neighborhood-name-candidate:558cbb2d2ba138504d088ae517293dab39ebbe8585c783549fe3a94ef3e79a27",
      "neighborhood-name-candidate:61c79ef8bd6e877284b3dde87f3d84b43ffa35ebde0c1152e5485b31f1bbda15",
      "neighborhood-name-candidate:7f37909ddda5a98e8ea92e11dc015d97eda8d5609b8de9e2d769642990c35c6f",
      "neighborhood-name-candidate:83d1f8b804a07c528f5e4e0644689572dd6c03177cb6c36e53e9b8f527193a83",
      "neighborhood-name-candidate:8da231e3e2b84b9e24352653ad783271dfe133221880ed6bd0dfaf70c500ef23",
      "neighborhood-name-candidate:c27092743660adaf68ed149c332052d107d15a17416765a20501b1b2869f140d"
  ]),
  ("neighborhood-name-candidate:ae5ca0b63d74ec65f908f1dea3d9a9d8a4a95b3836f41170e2364bc93d24b818", [
      "neighborhood-name-candidate:33cd26a096f7220f4996ba29bb7123a2ea022cb2d6c62ec5e85dee12c0290887",
      "neighborhood-name-candidate:ae5ca0b63d74ec65f908f1dea3d9a9d8a4a95b3836f41170e2364bc93d24b818"
  ]),
  ("neighborhood-name-candidate:fbc5970170a70c28913fdc23d4c56ce50bd8633060ac6a15c46faf1e53c98681", [
      "neighborhood-name-candidate:2082716d9bad873c2035671e78d81cf6ae06d71387847152c1b608e8b333a34c",
      "neighborhood-name-candidate:2b7c9aa8b7d8c6496ac7e7e3fbbd9e3d199ff1a994f9bafe1cdad12c3abdddb6",
      "neighborhood-name-candidate:31944c2290c366dcc952c7edecdf43d21deb4dd7d18806486fd34cf3920a3a34",
      "neighborhood-name-candidate:3b096ccdef397a79632005289a564a9abf15337274b3c182c4b824a0af8e2f03",
      "neighborhood-name-candidate:add32d41809aff581722f84ee8dbd9695ea6452c7d892ef275a910a579dfb09c",
      "neighborhood-name-candidate:fbc5970170a70c28913fdc23d4c56ce50bd8633060ac6a15c46faf1e53c98681"
  ]),
  ("neighborhood-name-candidate:415111f415d3e5062c6d25e2c49f4626c66bbf535d5d6e9d7ac1bdea6c8b6d33", [
      "neighborhood-name-candidate:39fdac91fb11e75305502c30c007bce7ee7c64147ceac5a41d0812aa9c6cf6ca",
      "neighborhood-name-candidate:415111f415d3e5062c6d25e2c49f4626c66bbf535d5d6e9d7ac1bdea6c8b6d33",
      "neighborhood-name-candidate:67ad9378011a63381e20c3a7ef5741107bede0157d13a776e0cbaeda4fa2fbec",
      "neighborhood-name-candidate:6fa9cc03b2e5b2670d0dd4121d5cda151a129faf7856a5117188b33a21ddf002"
  ]),
  ("neighborhood-name-candidate:5c4bbb88ca61eb3ecb0c32c68d6121fd7fe80a508e6f51f5d4c8b0ead1b9b4c7", [
      "neighborhood-name-candidate:34201fe26046851b83c34bed2e1baee1167990de69892601c1e1975d64ef16c5",
      "neighborhood-name-candidate:5c4bbb88ca61eb3ecb0c32c68d6121fd7fe80a508e6f51f5d4c8b0ead1b9b4c7"
  ]),
  ("neighborhood-name-candidate:a440d183ee8b1d4b2218d8939271c067884e0b98cb2bbb0496f09a5e40751164", [
      "neighborhood-name-candidate:a440d183ee8b1d4b2218d8939271c067884e0b98cb2bbb0496f09a5e40751164",
      "neighborhood-name-candidate:c327f51100565f53dd6326349e0e421fb5ad1c804d1c3a0d799d48f69b1e49d8",
      "neighborhood-name-candidate:da4a79396ac2be0cc42d789242b507b1576beebe2e34f7a50c8e539b53366f7d"
  ]),
  ("neighborhood-name-candidate:b6ac68e822349d09245ac9fa686f084317ea1787943172ff17edcb5166c287df", [
      "neighborhood-name-candidate:2d9c394b5c77b61cb3ce8f1fe7efc97eb64b277b4613b7e219f89a180b309e2c",
      "neighborhood-name-candidate:b6ac68e822349d09245ac9fa686f084317ea1787943172ff17edcb5166c287df",
      "neighborhood-name-candidate:cf6d37fe65f834ecffb70349a2af438e968f27568cbc58802284957d2c637a52",
      "neighborhood-name-candidate:fd379846c553fcaba803cc5c8f5142b2a397b4f63277b862875dbf3e9ff4f3f6"
  ]),
  ("neighborhood-name-candidate:4f3cc9eadd5cb2312c90d8ffc5470c031ffd93514e895f6a4d627fa160f706d8", [
      "neighborhood-name-candidate:4f3cc9eadd5cb2312c90d8ffc5470c031ffd93514e895f6a4d627fa160f706d8"
  ]),
  ("neighborhood-name-candidate:e8b6c73ab504ec223ec2122de3b9dd16d021af516bcfec6ea8edf3cac48ed76e", [
      "neighborhood-name-candidate:56317e3055e0eb64afe9255a169f0c9018aaa427bf0d46459a0c4b92f7f6639d",
      "neighborhood-name-candidate:e8b6c73ab504ec223ec2122de3b9dd16d021af516bcfec6ea8edf3cac48ed76e"
  ]),
  ("neighborhood-name-candidate:b7194084841d69402f0fd437b297f553edc2a7aafdc06cc1fcbc8883b7fd046a", [
      "neighborhood-name-candidate:02a0ddeb880010ebab95e0add4cf705ca9f120aff194308c28e98588f52adebf",
      "neighborhood-name-candidate:384f01a1d35091f6cdf6d95e973ea7822a96d9304d1dc3f3c3120f0ac1916af0",
      "neighborhood-name-candidate:3e3760e97a9a01021b16a9cf81e93acaa282cd5e1f7b5ebec331cadff870a7cb",
      "neighborhood-name-candidate:b7194084841d69402f0fd437b297f553edc2a7aafdc06cc1fcbc8883b7fd046a",
      "neighborhood-name-candidate:b7ca038239f3172143714f497e639aa09e2b9ba9447f81af283be33eec746e08"
  ]),
  ("neighborhood-name-candidate:ac6ef6148601ffca01f409fd449dadf69c7959cfe0a5e9504cee6904f9543c7b", [
      "neighborhood-name-candidate:012df58ae1aa65320d2ce55c4e4d92cb5ca7b0c4b08cae0c5919348de0c47b78",
      "neighborhood-name-candidate:13aa456dbda3664143deb42a314ab94b9fcc84a8fb07fd86a3185e39a58c025b",
      "neighborhood-name-candidate:4494037cfa7471f3c889a6b35404ea658900191488c038da66d6dc68935f6435",
      "neighborhood-name-candidate:50817d19a5339b7e012e3d9dc38e87301d00eeffac9acaaa65f13064a62de539",
      "neighborhood-name-candidate:655301fa5ec09f4c1a9ea5058e676da492cec6d77e47553e745e30c07a104e4d",
      "neighborhood-name-candidate:65e317ea4f3134399caeaeb03eebebbbc18d1b8ced000a413dcc95a957a29a35",
      "neighborhood-name-candidate:76df5a4fd9ee8e2de391bfe558893944d41640289872dc9da8669bfb1e4545a8",
      "neighborhood-name-candidate:939898b0a70f2aa152d39bb6d20b56c60ddfbc859ba74447f690972316a7f737",
      "neighborhood-name-candidate:a19e21d1aa67b3a32e061a834ea7f5c69324ff81b9a01554e55166542a686e65",
      "neighborhood-name-candidate:ac6ef6148601ffca01f409fd449dadf69c7959cfe0a5e9504cee6904f9543c7b",
      "neighborhood-name-candidate:db7673cdd6fbf679af644604965dd5ed289be4bf90f01da7c5ba2b826d0f5684"
  ]),
  ("neighborhood-name-candidate:6fffa630085a7324fdcffa344464092715d994c22ecf10ef50e6dedbd8bbaeaa", [
      "neighborhood-name-candidate:0681358b20e1be95e40063b9bf2676396a1d0d72dcd251cfc21586ef4ff22a75",
      "neighborhood-name-candidate:6fffa630085a7324fdcffa344464092715d994c22ecf10ef50e6dedbd8bbaeaa"
  ]),
  ("neighborhood-name-candidate:952d6c9f8f54a20f31c144d04674b29f248e1e439c1e47f5d9403e097ae55ead", [
      "neighborhood-name-candidate:952d6c9f8f54a20f31c144d04674b29f248e1e439c1e47f5d9403e097ae55ead",
      "neighborhood-name-candidate:bd44aea97c263bee354862747005bb2e7fc38342daf71ee863239818efb2eebc"
  ]),
  ("neighborhood-name-candidate:750b7608db72195916ff819453bd6150ca64078b91a933fcba5f8c8d9318cc5e", [
      "neighborhood-name-candidate:65cb3cbba341f1eadbe7a38cca8912b5a468367416b0a1dc9f500d0352c887d8",
      "neighborhood-name-candidate:750b7608db72195916ff819453bd6150ca64078b91a933fcba5f8c8d9318cc5e",
      "neighborhood-name-candidate:cdb0e18715669a9850410b0d60d22bd81d871a94f7f762f8103c0af7a865a68d",
      "neighborhood-name-candidate:dd12bd45a151bfd7be05bdf92f129638e951f13d91871a59284c3bb9e564c88a",
      "neighborhood-name-candidate:ff94d30b38998eb8bab92305aadeae193d47e9aa382dd81f96a5d970da8a3c5d"
  ]),
  ("neighborhood-name-candidate:94e291281bf34b9527a421ca3c2be3a3c300385d5270a6016897c6b89c15fb54", [
      "neighborhood-name-candidate:257f8fff9bcf2168fcc39ed96b16d1d79e8537fed85d62c436d02aa90ad626f4",
      "neighborhood-name-candidate:5e9258940019a0815712ebfebfc7de6377953a9f3bd51d10f8a29efbd9a54545",
      "neighborhood-name-candidate:6020e8b95876d6572ad506f60597d56f7387cb303ddf0f825ce3858c0242bb4f",
      "neighborhood-name-candidate:94e291281bf34b9527a421ca3c2be3a3c300385d5270a6016897c6b89c15fb54",
      "neighborhood-name-candidate:a25818479550c33894c0bd1a3557b06a12c479b74176f2b8286fece81956b079"
  ]),
  ("neighborhood-name-candidate:99ae2999218c1724272f257b61bf77a39ee8ccd596905d4263bced86d4769e28", [
      "neighborhood-name-candidate:5e5163de12340267360538073b23cb285e529b1df63ef1c120ee8115ebef2a0f",
      "neighborhood-name-candidate:774acfa044561abe63c5f0ba99465499683823e3cd27657eaf73f4cb4d2fe98e",
      "neighborhood-name-candidate:79ca939abb8b4549a799487b0c5aa458c254752555dc87344950e48e64e4bf4c",
      "neighborhood-name-candidate:7feae39a4fe0723494ea2d9bf5259b2fac5e510b0a726f57a3e7737d03b0e058",
      "neighborhood-name-candidate:99ae2999218c1724272f257b61bf77a39ee8ccd596905d4263bced86d4769e28",
      "neighborhood-name-candidate:b74942d7be0c79abbb5d5992bb93537b916ff8f3c349a1edc302888efa22fca4",
      "neighborhood-name-candidate:c082c4979bff76292674f430639129969a1ac1ccfbf5de080ff154b415b31d8f",
      "neighborhood-name-candidate:cae7ae8d92b55aa0e7e89d0e3ab75c04f41a57020668b9e4b56cab9ac8e2031d",
      "neighborhood-name-candidate:fd0f608b0cc381a110b5fa58dd300147648ae451b8321034897bb754ae5b01e0"
  ]),
  ("neighborhood-name-candidate:1b4a69fbb97444b6483d8e694614909300f5a5f5ad233c03d6cddca4fecb89e4", [
      "neighborhood-name-candidate:01a6f25b588877511b235d62427e6b75ed6f54e3a741ff7be5c48e1a88125037",
      "neighborhood-name-candidate:1b4a69fbb97444b6483d8e694614909300f5a5f5ad233c03d6cddca4fecb89e4",
      "neighborhood-name-candidate:4a71598843b92b9e044c6d4627ec40a51731f803e5df01f42c735423b8fccaa9",
      "neighborhood-name-candidate:77d211e08246a2d29acc5871ebb79200bd040bf3b704f6dcc23673e721eae378",
      "neighborhood-name-candidate:793ecde8b9b6f264d5b608bd71f9f33122749668a29d995a1fa5341b9c565c76",
      "neighborhood-name-candidate:9110230b7d5f671a5de67ff46ab4f8dd971024e49d7e96e001cccc4b9c8cee13",
      "neighborhood-name-candidate:986153bc07c3f9c2f69bcd5eb21792ce65c31c388b23b51a454bae33e35f24ef",
      "neighborhood-name-candidate:b130bdced25eb8d009e4d1d1d670c36676f4b238e91a00e249d8b2504bde0034",
      "neighborhood-name-candidate:ced4d601ece0d6684ab168703c5c4aad7f9451e9460f727412d67dbc177324dd",
      "neighborhood-name-candidate:f9bda895281e448a48edd9b57a30b96bf9e1a30103976d54da6e212633afb69a"
  ]),
  ("neighborhood-name-candidate:397b2453d866a252242cfee8834b2bde0edf08f12bfc98a234b2104a975d23b5", [
      "neighborhood-name-candidate:397b2453d866a252242cfee8834b2bde0edf08f12bfc98a234b2104a975d23b5",
      "neighborhood-name-candidate:466bf1ff342e99bd4145fcb88da74f34cd4a43d4e6146108241171e5e26319f5",
      "neighborhood-name-candidate:716ac1fff3543018308391b8cc4ceba3cd83e5522bbdfec0d564d3f2a1b585f0",
      "neighborhood-name-candidate:9988c3484e83058deec558cfccdbbd501f6f799f976ea2f0f4acaa30e4a43bad"
  ]),
  ("neighborhood-name-candidate:1abc1dc3a93d1cafa09f8ef42c31cd0abd2049613b5bc27611f19f6805f632db", [
      "neighborhood-name-candidate:1857df96866af291fd8641703b4d3aaf7c14398eca8ef33342f09c95caab0a4d",
      "neighborhood-name-candidate:1abc1dc3a93d1cafa09f8ef42c31cd0abd2049613b5bc27611f19f6805f632db",
      "neighborhood-name-candidate:1aebde7e3d0104cc37a6495af47cf3de3793b159d6de6ee58b121cc235042dac",
      "neighborhood-name-candidate:305b4c1bfaad5cda68e6558451f53851903e9cdf74fbf09384b9e89669bae424",
      "neighborhood-name-candidate:dbb31fcd87ffe4faa1598b0f3f76c2f551a0b07841c26b0da7e6ed4199f53d58",
      "neighborhood-name-candidate:e3b21ade0fc7d03fbbc2d6f16ebfadc377ede15d0c8131a4ab1ce20ce0fc49c9",
      "neighborhood-name-candidate:fe5ad04cb6fc283606304bddc68546559096f9b945d8757565a1b7aaef1eaeaa"
  ]),
  ("neighborhood-name-candidate:40f166e6c064fc978d169b291be421f4cb4deeff68da0e620d5ca865a7f1d6c8", [
      "neighborhood-name-candidate:35a5f8fb5008c7956eda00aeb121c853d1a067acf741a0d270cb137c26894173",
      "neighborhood-name-candidate:3ac7695766ea47f21b8b621ea5b4d7e7723a2b5d2514911cd848c9f28eeac30c",
      "neighborhood-name-candidate:40f166e6c064fc978d169b291be421f4cb4deeff68da0e620d5ca865a7f1d6c8",
      "neighborhood-name-candidate:8255fb517beef32b4a27e6c392eee46d3458b7a4e9431bce66e7972e414a3f20",
      "neighborhood-name-candidate:b95c13a7f4ebc4e298a520c9e270da1e88426a9ee70e138c8f99796e6d323aec",
      "neighborhood-name-candidate:c650fba6d27f178b9a48bdc7f8db79c8d62b61af3ba03aa551ba7758e0450dc7",
      "neighborhood-name-candidate:da9cb853b3bcbc4fc52f7a490d33481e0f13ad0bb076c7266fb7f4571fb7b4cd",
      "neighborhood-name-candidate:eb6fb550c7d4eb10063f2885055ec3854876831f53bb174e1e652f7b790ceff8",
      "neighborhood-name-candidate:f63b4867f92e2367de0c079ae97fab12949323b9f6d698a6c98729e205619d1f",
      "neighborhood-name-candidate:fcfc0fe6772e809ec11fc0b877521558123b54955792ad4e13cc26ba7a404fa9"
  ]),
  ("neighborhood-name-candidate:c7ab6e653eacf5fabb66b938a45b699a41415b1e1800625cb46cfa66b77dbf01", [
      "neighborhood-name-candidate:1010ad402b7f5431d96678723884a77fca04a604cf1b4c09b6ebdd113f336204",
      "neighborhood-name-candidate:1b8e406d63e74151befcaf9140c2125fffe57eb9a9cca7955dde0e9f1400232f",
      "neighborhood-name-candidate:2601b4eb3cb75966f902f56045e41b856cdcefbd17997778da682a9739f6448f",
      "neighborhood-name-candidate:c7ab6e653eacf5fabb66b938a45b699a41415b1e1800625cb46cfa66b77dbf01"
  ]),
  ("neighborhood-name-candidate:5f70f48b294f799d1f98434fde2c50227afa2af7ecb1b6f1df13ece983faf4ed", [
      "neighborhood-name-candidate:35af376932b3db376f4db91b51337f4a3343f066016a6a39b9126ba5617536b6",
      "neighborhood-name-candidate:5f70f48b294f799d1f98434fde2c50227afa2af7ecb1b6f1df13ece983faf4ed"
  ]),
  ("neighborhood-name-candidate:2c826dd2b8d53520d76afc077e4a053aca8df2366bca69197b3aa79cf5582973", [
      "neighborhood-name-candidate:1b5ed65ae33c58d7f3664d83ddd3e73644460e6b69f37d594ea3da95fed9e67d",
      "neighborhood-name-candidate:2c826dd2b8d53520d76afc077e4a053aca8df2366bca69197b3aa79cf5582973",
      "neighborhood-name-candidate:8da8ec6f822b8f3133b690fd60639270677f31669ed3d16218d2cdf6d10b9916",
      "neighborhood-name-candidate:e355c172dc4f09c024d65c00b4a0652d506098edfcc0536ea96fb160fa45d06e"
  ]),
  ("neighborhood-name-candidate:f24272e103665ad3cfaddfdc47c4bc364c8b5caa7c9af1c67cd77da6fbfb230a", [
      "neighborhood-name-candidate:d41dc183025050b2a6df841f18733e0a0dbb995c8e4fb8a23b48c0ef095a3775",
      "neighborhood-name-candidate:f24272e103665ad3cfaddfdc47c4bc364c8b5caa7c9af1c67cd77da6fbfb230a",
      "neighborhood-name-candidate:f9905d67d3e4914ef5439921867f1fc78c513874f10e4700b4f0107eafab0dfb"
  ]),
  ("neighborhood-name-candidate:6a341350fd097996baf02a90ec450a58328ac9bcce7f605fea3b16bb94204f57", [
      "neighborhood-name-candidate:6a341350fd097996baf02a90ec450a58328ac9bcce7f605fea3b16bb94204f57",
      "neighborhood-name-candidate:f2240b83e9ad58a4f1ddc45f06dc4485a41a24d8da93f0ab86c74b412b435278"
  ]),
  ("neighborhood-name-candidate:08c52cbbd02302263227ebeb0b026c9f8c71c81ced11fb02a9c6ff6b08056b12", [
      "neighborhood-name-candidate:08c52cbbd02302263227ebeb0b026c9f8c71c81ced11fb02a9c6ff6b08056b12",
      "neighborhood-name-candidate:2b50ec13499e6c47ec1d09d9b3a24559f4fff453f9f02d9e47eb2b01fa941a50",
      "neighborhood-name-candidate:4cc47db4266da22492e83bd522f0680646f1e6cd9d8c1b817e26312978a5c317",
      "neighborhood-name-candidate:9cf450aa1b2c4a374e5022550ad0d7f0ae88068115a9b333c1e207d554ef6089",
      "neighborhood-name-candidate:bf596282a555ec121c245277671c9bec4d9a3f628bc1a07ccb852d8007423c84",
      "neighborhood-name-candidate:efe5318455dc6b7d39f665d0fd5fbf4f0e7cad0215527295eeeb5f8b68f01eda",
      "neighborhood-name-candidate:fa5583629aabfc0b2544d0de7f156589ee0e3301961aab5ff7b2d9b8375700d8"
  ]),
  ("neighborhood-name-candidate:2a45f439c7969dcf12985c63d267c0363435298660b75cba0e5259b814cba155", [
      "neighborhood-name-candidate:2a45f439c7969dcf12985c63d267c0363435298660b75cba0e5259b814cba155",
      "neighborhood-name-candidate:48df9dd57f6dad7b88c817965dae30a87c251e4caa9ef34bba2b342b9a5233fb",
      "neighborhood-name-candidate:9e13a5a4f270026acaa1c007c7e253da5e01a9ce9c413176c00fa999df3cd492",
      "neighborhood-name-candidate:a35c1af4dc7330033f31a4f16511c5a29d97e1fae05ed2449b49f4a7d7c45593"
  ]),
  ("neighborhood-name-candidate:53291c936171e32a7a4341dc7509ad9aa3837132019fdf5f1d34fa29cd889aac", [
      "neighborhood-name-candidate:13ef2733b17d13f98f7a8deb8d40267c82748f261ba84e9c34c45d2ae71e42b3",
      "neighborhood-name-candidate:261372e00788f344b91106aa7edce7d3b14c88972fed4e28d15f3fc2b5bc5e03",
      "neighborhood-name-candidate:53291c936171e32a7a4341dc7509ad9aa3837132019fdf5f1d34fa29cd889aac",
      "neighborhood-name-candidate:702813deba2bf2d418da395fb14cf2b23976fbf5eced9dc017283f4ab1e3cd4a",
      "neighborhood-name-candidate:a06bcba3d545f17827d09405c2862ec6e26b73620b90c64699999469b52936ba",
      "neighborhood-name-candidate:aaee8e61f7d26cd04279dcfebf23f11761b5d4f6fa5458f972a17ebc9601b8f8",
      "neighborhood-name-candidate:fefb09c55ff2fbbca1701a74288d327e0d49e37892535b8d57197a79f1138099"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L129639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
