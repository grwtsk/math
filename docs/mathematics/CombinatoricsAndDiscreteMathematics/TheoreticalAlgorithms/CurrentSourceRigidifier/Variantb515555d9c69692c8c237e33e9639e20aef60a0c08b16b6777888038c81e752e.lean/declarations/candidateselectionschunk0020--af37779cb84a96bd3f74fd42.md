# candidateSelectionsChunk0020

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:981b40aa22ab63104675b8cdf84f8da15488707667e7aa629b9fc1f995b45ffc",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0020",
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
  "slug": "candidateselectionschunk0020--af37779cb84a96bd3f74fd42",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48507,
    "line": 48139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af37779cb84a96bd3f74fd42860ed5c8d362541f9e7f4e89ea80a22895e6332b",
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

Occurrence: `declaration:981b40aa22ab63104675b8cdf84f8da15488707667e7aa629b9fc1f995b45ffc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48139–48507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0020 : List (String × List String) :=
[
  ("name-candidate:a9f5a45dc582d9d7479c8b56bed7b391e96008b6a527e2e1a9bf47408dac2f32", [
      "name-candidate:79ebd0b4d8fe7491dd6b60452258f314dc21166f0d09e94033b13bbf72312fe9",
      "name-candidate:a9f5a45dc582d9d7479c8b56bed7b391e96008b6a527e2e1a9bf47408dac2f32",
      "name-candidate:ab1d8ef48fafa4535a98260ef64bdcbb716000da8c5fad4edb07e7dfa38a5d6b",
      "name-candidate:f177bd777bc2dc64472435ed7d0fed1149ab381630af7ac7c1c82ef70bdfb112"
  ]),
  ("name-candidate:ff44533fcaf6a3d99ecb03f1034e2cc0335c92f7aa0b7adf313a06c7f7cf3c33", [
      "name-candidate:10734f40454a92f502a55c4eb56e14d77cab92f5e7bac41d3f8e1c46372e7486",
      "name-candidate:3a61efb06eccfd0f9c23af749124e86271bccda6592df7f42a7fe91e277948d0",
      "name-candidate:e49f8a46de4835c37e70d41b854d48dd05c32819a013a152f402e694e6ce8bdd",
      "name-candidate:ff44533fcaf6a3d99ecb03f1034e2cc0335c92f7aa0b7adf313a06c7f7cf3c33"
  ]),
  ("name-candidate:974e777e46262e3d3ab3ff744f761eb1c0e0cf676f1887b33599801ee3e7bead", [
      "name-candidate:2e89e2384a4c336ed8bdf65d68c366d03fbd8027ef6ec95eb97242dab4cdc846",
      "name-candidate:4c1e102646032a3a5c5cef14625c51c547a0deb272f9f9378cd549bd0ccd3f69",
      "name-candidate:974e777e46262e3d3ab3ff744f761eb1c0e0cf676f1887b33599801ee3e7bead",
      "name-candidate:99e0692af229c354dd011c860b4e04ddf27ea756e4c6eef14837b7c1c81c8971"
  ]),
  ("name-candidate:3236765c07f9b359a9664d19e2c5731dbf419eb1cd5e5ff0e7032c0fede8ae1d", [
      "name-candidate:1b7fb5a55ddf082e64a2c067bc3acf097e421d777a03d371b3c008960c5ec110",
      "name-candidate:3236765c07f9b359a9664d19e2c5731dbf419eb1cd5e5ff0e7032c0fede8ae1d",
      "name-candidate:e7fb3fb77cafc58d6f8ae089b300ce7855f9451068422c744142717d28da5832"
  ]),
  ("name-candidate:cc40fad43ea2bb5194d8ca0d3c8abd910e4067d9f1768a7666e00511b11292f3", [
      "name-candidate:79b6e6c04c36e20b5bcc13bb344eb5bbd2ed0251ad1d82613da24370e0d2c0e3",
      "name-candidate:7f905890cba42980c6033a004b04aec0ca30ab1e716dc318545525c7420b46fd",
      "name-candidate:9a948e7446b940959a9978e3956d2cc89a0220cbec9cf7f8bcfea8fbe4e3dcd6",
      "name-candidate:cc40fad43ea2bb5194d8ca0d3c8abd910e4067d9f1768a7666e00511b11292f3"
  ]),
  ("name-candidate:5fb8e2402a1dddc04601e85451b344c310820577f8eb572a9a6a428eef195b0e", [
      "name-candidate:13eacb8ad1ed182c114b745e84b38fbe6eccee3611b4384ad856a7e419e97ccf",
      "name-candidate:508d03be1ec21ae8d8f6035ad7d19ee14cd1a3158a7ade9d67b08af5b45de565",
      "name-candidate:5fb8e2402a1dddc04601e85451b344c310820577f8eb572a9a6a428eef195b0e",
      "name-candidate:93179fa6ce34cd7b7bc27060d21e696ccc2a718553324f0d0be0a87c5d2029e4"
  ]),
  ("name-candidate:2e0cab401023685d90f0a1e587cf6a21a2612537975c232a21b7a3bfae405b20", [
      "name-candidate:2e0cab401023685d90f0a1e587cf6a21a2612537975c232a21b7a3bfae405b20",
      "name-candidate:b6c53ae297563bd807510619f3eff350233fd7bf9a268d68f5b69c725142a252",
      "name-candidate:e13f9b24007412642433a24d0aa048a84bac9dfedab04c417dd1cdd49298f89a"
  ]),
  ("name-candidate:da9c23dca9e018f392c5d4980212fe65eb8d3b88b28b5fd8fa4332119170b6e7", [
      "name-candidate:706c2bddefccbdb77b70ae81c057e48a14d1739cd1f1e7e335b72d895bcfb623",
      "name-candidate:9ab52663c2c62ba71d3256d211d3787411e61b22c8f5c171093939c934862889",
      "name-candidate:c2b146876f065a5f52eb2262a292921540f0c7efc8428882d6743b5d3d46e2da",
      "name-candidate:da9c23dca9e018f392c5d4980212fe65eb8d3b88b28b5fd8fa4332119170b6e7"
  ]),
  ("name-candidate:da8101a81ada6a619c268bf65834665fdb1e308e65a4366df6dbfcb3b2849b88", [
      "name-candidate:8cc18240c0df232ba507bcdee3bf48838301ce15cde91acea3586219d6fd5632",
      "name-candidate:a07223bbd70e7b3c0dad88d9a7cc4dfe2b0573e582154596d901a5fd324aeac6",
      "name-candidate:da8101a81ada6a619c268bf65834665fdb1e308e65a4366df6dbfcb3b2849b88",
      "name-candidate:e8708c2fc9a07be4e35335c79993af1dcf07a12e1f7143de55e0afc3547b2e5e"
  ]),
  ("name-candidate:d11e1b37ede50d84f29be4664a52185ca3890d1456b6c5c6f7974855c59f1311", [
      "name-candidate:0adfc6988c43138e5d90b33ab79aa74c6ff26da10e3b1a5de7243b1e768b165a",
      "name-candidate:c48478c736a3d1ef7115178c16db4c6e232ecff3f7b673234eb57a888dff3f66",
      "name-candidate:d11e1b37ede50d84f29be4664a52185ca3890d1456b6c5c6f7974855c59f1311",
      "name-candidate:e482a9787fda7a88278d21d5f7c8209396caa97620dfe3b8c67d8427cebd4dc0"
  ]),
  ("name-candidate:ffd7686a720e16c522b01785c023f4ab3518b54a3687dd297ed3b39eeec7053d", [
      "name-candidate:875d0ed24adc411e07c3613ca65ea1362841e7a71ab1b593bf7f40badc1e7e32",
      "name-candidate:9cb96e6f026cb7f7efa937d7d8b8f19cd3384df07eba33756f809f6bd33dd4f0",
      "name-candidate:d58ac04bf91a11a2f472127e9324816909665dd13876a85dc4c71a885ef92b23",
      "name-candidate:ffd7686a720e16c522b01785c023f4ab3518b54a3687dd297ed3b39eeec7053d"
  ]),
  ("name-candidate:313c72dd4987c65818fe057c9d8b30d8b06edb2a27695d4dd59a9bb13a58fe62", [
      "name-candidate:313c72dd4987c65818fe057c9d8b30d8b06edb2a27695d4dd59a9bb13a58fe62",
      "name-candidate:4ccf9e197dae27a33ddc003c333a2213503abbc88f3c07e146cd20ba63858ed0",
      "name-candidate:7cc65b10a6c30dbacd77bcc93516d7b489295167c99a6a7fc7dce0004c5eea09",
      "name-candidate:d9fe4ad106b17f53ced5ed6386afd4e577df0e715484f976a21e9e62b1aeaa87"
  ]),
  ("name-candidate:fdaaac0c618ff230cae0fabb5a1030d84457c30dc51852690197565bfaa28857", [
      "name-candidate:a3ee619e9f1300d917064f96cc1c5ac8728b665a539c94f1b908edddc2e41ec3",
      "name-candidate:b2191861f1744c5d0e9f1f90a4d78bb9f9e48aa084e1cc7dad73b04588443d69",
      "name-candidate:c54b07dd72ce74701b8e3210c4c6838ccabba212df4de18d96725d2669a0035c",
      "name-candidate:fdaaac0c618ff230cae0fabb5a1030d84457c30dc51852690197565bfaa28857"
  ]),
  ("name-candidate:436fdb98b3cdc8009b3b360dec871894eddcb3639c466999abcf0479268b707e", [
      "name-candidate:15ade6bcd13c79cef5a5cdc08240d71aba257a054fb33e3f93cb0aae09ae7d14",
      "name-candidate:436fdb98b3cdc8009b3b360dec871894eddcb3639c466999abcf0479268b707e",
      "name-candidate:a9b20548dde2f5f17c0c4a8303b330c900acf96ffd3930d31b4fd6dfe805be9c",
      "name-candidate:ca106196a9bd438c8f61ac9ba580a351103e7732a25c41b5054c161328de0ccc"
  ]),
  ("name-candidate:4769eb2d959e3518e4b5d031e3c5ac007166fce9ec6e2a89ea598dbf7d18de4f", [
      "name-candidate:134c8f10386ef212977b9a24b8955b6ae7cb89f8f9d309e1cf64290668320819",
      "name-candidate:43a0a7aff9065405a4e121d9eb810e22e7e3b3752f6ac4071949f994702abb72",
      "name-candidate:4769eb2d959e3518e4b5d031e3c5ac007166fce9ec6e2a89ea598dbf7d18de4f",
      "name-candidate:e4f83fc9181844fa03d6688453c48483463d70136520dd1ad08412d9b84e06e8"
  ]),
  ("name-candidate:56214afb0e0b3f8a8bc3e0e2f1e942e8c1a717c43a584e67a4ea9aaf04b7c78c", [
      "name-candidate:12e341b258b406d1539771e416def76cc44fb77a2a0a9425b5478609c4dfc18d",
      "name-candidate:56214afb0e0b3f8a8bc3e0e2f1e942e8c1a717c43a584e67a4ea9aaf04b7c78c",
      "name-candidate:797c88f12db69be6fc0f78e4b02132339b500441186898a8310a820b0530dd02",
      "name-candidate:ef5a6aa8fb71a24c93602ed035a69fab894fd741ab073ae8c3aa7778fa90734f"
  ]),
  ("name-candidate:9ea60b4f085c3cdee852f47c9b8b9d36073caa9a0412a177f06652b93839dbdb", [
      "name-candidate:49df93c81e7d5691422fe4fc7185180d6190a41fbc61485a35133c56747a71ed",
      "name-candidate:9ea60b4f085c3cdee852f47c9b8b9d36073caa9a0412a177f06652b93839dbdb",
      "name-candidate:d63b23ecd9cb58572cc7ed99451da0bd729a15c0560a1494d9d4678e1b589ef3",
      "name-candidate:fdafcb80cf69159c632aff71e08d63c9bcf725ff4ebaacaf6f4585dd8c7d2ca7"
  ]),
  ("name-candidate:7f132701ff902e00df6b2aafeb49c8abd77fe5055bf76169ec54b10538999db1", [
      "name-candidate:090e0fa4366a32571f7fcb3b22a680e9663e69f28898c2e1467893a74596f101",
      "name-candidate:4dd8018c9ca3a6e136e0faa07434f4e0a9acc5c498922e41553826c264cca47d",
      "name-candidate:59e4f48edbcd545bb6d82a54f882a98880df48c2e3ccc949a925aa0760a35d97",
      "name-candidate:7f132701ff902e00df6b2aafeb49c8abd77fe5055bf76169ec54b10538999db1"
  ]),
  ("name-candidate:dca9fbee10e2f7d40301cb5ef619e4f0a03ee5acd0c972444e0b989736858089", [
      "name-candidate:0fcf540fe592ac6963ca2e1dcbeddf70cdad45b434938197a76b7b1fe4805bf2",
      "name-candidate:59c25ecb8aeedb13db78f6036f1c8fabd8e844932f8fc0289e26c8c4c3e19227",
      "name-candidate:dca9fbee10e2f7d40301cb5ef619e4f0a03ee5acd0c972444e0b989736858089",
      "name-candidate:de04b1beeaca9517dd23e572b604018be309fc25dc919a37e8c2bcc04169ff96"
  ]),
  ("name-candidate:eace973dbbd28d1aca41b55c0bae8821b69d0c36219ffe17046b0be4d879853d", [
      "name-candidate:193e9f6dc15a84417cd6310693e4462337c324238d4d69696510d86dbd773fc4",
      "name-candidate:40149cdd5e35511aed8a56756ee8b86cd0ac6c812063133c0c239df0775f335b",
      "name-candidate:9e2c5ea75896487c8df49940c26ac402ee4d97f3504d8f7cbc605651a3219f6f",
      "name-candidate:eace973dbbd28d1aca41b55c0bae8821b69d0c36219ffe17046b0be4d879853d"
  ]),
  ("name-candidate:04571e96f121093bdf6f44eff55f075550bf85de0db6cbe52c17b296d6241dea", [
      "name-candidate:04571e96f121093bdf6f44eff55f075550bf85de0db6cbe52c17b296d6241dea",
      "name-candidate:0be078866f19b4f22630d8a20f9e026d120084ef0e3a42643b7d64a821b49e39",
      "name-candidate:2acdaf1ae9722fbe9c6ecbb89245844bd09ae780db3595096191eeb2c6446e70",
      "name-candidate:ccb66a196a4518f29fd3ad3af983c985c15cec6131c3d827e159a761d727f677"
  ]),
  ("name-candidate:a34befc6267e0e70512f96274a92ba903a777dd62dde1b668b9203104005e830", [
      "name-candidate:2a7a3ed4b396e10aadbc26249137f0362bc31a303d8aa593486032434668e560",
      "name-candidate:73213a98ec39d0d13304cde724ecea091bf2170963e8f4e5943b1ad9863bc626",
      "name-candidate:a34befc6267e0e70512f96274a92ba903a777dd62dde1b668b9203104005e830",
      "name-candidate:d7ad96e1e3df53eba11398080e803d8dcda8af0cd34597b04f5ca32571176f2b"
  ]),
  ("name-candidate:7cfef1f3a3147350a1f98bfb0d91a4becef6174e4df13d23f569a23ad8372df5", [
      "name-candidate:1a1e092894ba1676615ae1558ebf329c726e65b9a20b3702cd5ebac32e3afba4",
      "name-candidate:7cfef1f3a3147350a1f98bfb0d91a4becef6174e4df13d23f569a23ad8372df5",
      "name-candidate:ca6ce093cf578a520cd1da422c849aab519f1334501387679698bec7d588e273",
      "name-candidate:d35a999bd137a97eb377329699b28a209899a1ac86c9704d3a6df4188abed907"
  ]),
  ("name-candidate:0ac663876605aee9ff08b2516accadc1f39503a41fd09d44e26dd5f9f3bcd99e", [
      "name-candidate:0ac663876605aee9ff08b2516accadc1f39503a41fd09d44e26dd5f9f3bcd99e",
      "name-candidate:432e6c0c8d420455d4b33f8ed49e3116a2bb4b2446b6dab1a07de98f6901859c"
  ]),
  ("name-candidate:afc31abce48052cf950368e2bbe21d3e86f64195995a67ff8aa9599d336cc9fb", [
      "name-candidate:afc31abce48052cf950368e2bbe21d3e86f64195995a67ff8aa9599d336cc9fb",
      "name-candidate:c04d49fbfa1622e381c4938f8182aa949a6a8e1b5d0530afdda76ab219fd4a92",
      "name-candidate:cc062e9bf44a1b8572789639aeeb1b6bf89d9ca6c6af37ecf65138126f79ab94",
      "name-candidate:fbcfdd4f5fc9f6138919e314ce60a55e1126f3d9f93149afd227faabd57777a3"
  ]),
  ("name-candidate:5b547d9551fb591ef9d878fdf2a5e8a8742d9cf44e0cad0673ebfb8a42f9b4f1", [
      "name-candidate:59fc5e3cfdc57c7164e9b0c6df41ad9ff5650259f9a89076c2f4933fe57d3fb5",
      "name-candidate:5b547d9551fb591ef9d878fdf2a5e8a8742d9cf44e0cad0673ebfb8a42f9b4f1",
      "name-candidate:953584562e9df7fb998abdf31f656b4eed12ffec5562dd32fe7a565148cd6ca2"
  ]),
  ("name-candidate:ecc9635b64671979a760c538d69b5db0e10df4d81c894d02be993ec6cd4b138b", [
      "name-candidate:438905bd771a512fc519e4df55cbe88ac4f9df8e1dd27b97de087b5f0cf5eaf1",
      "name-candidate:b847fdf763660f33d6426291223c12d4990f3e667dc911a2fd7ec73b55498191",
      "name-candidate:b880328d589b3c9b9009383d0d35ee98c0254bce7edde339dc074e1416b9c384",
      "name-candidate:ecc9635b64671979a760c538d69b5db0e10df4d81c894d02be993ec6cd4b138b"
  ]),
  ("name-candidate:ab95642927e712a2a0b3e27ca4f0373948b3fca9779b48a77b887aa2f4f19a1f", [
      "name-candidate:8c3f2eef90ce1bf380d124441e557788b56ef3b4dc0efd452ef05d81555b2870",
      "name-candidate:a4e399d8dcfc06d6a135795fd2795629631291c0bce136134144a5380c6e9821",
      "name-candidate:ab95642927e712a2a0b3e27ca4f0373948b3fca9779b48a77b887aa2f4f19a1f",
      "name-candidate:ac4bbdfd0d27115780322239e51296a87ba324c7c1cf3634e23fd4daa5731dd8"
  ]),
  ("name-candidate:23c4b6a614c63676886d94384a33d182eb3f1e8268dbf5cd3756cc0e7edc4e43", [
      "name-candidate:23c4b6a614c63676886d94384a33d182eb3f1e8268dbf5cd3756cc0e7edc4e43",
      "name-candidate:862a17d763455b2ec51de0260ed660a3fd055f7e9e93640cde742e94f6da30ab"
  ]),
  ("name-candidate:39257afaf21c19a9d652873f4a034a4eca0dc163cea8a36aa749a37a23b6bf4f", [
      "name-candidate:27cecfe9a96b6786e4f2b9aea9f73328124f2f8a546a5a09c7984508b584b830",
      "name-candidate:2e5687d85a96e8c2a14f223662e417dd8b0e0d6c5301a6706dc87ebb5ef90118",
      "name-candidate:39257afaf21c19a9d652873f4a034a4eca0dc163cea8a36aa749a37a23b6bf4f",
      "name-candidate:a4db7eee6f5761c7eccc0c4495050e1ad2e5609921f036a1c0d7fadeaaeb869a"
  ]),
  ("name-candidate:84119bc0c47d44b4a72817178b1a231ece4247fcaf6893911c827c16e8f1004b", [
      "name-candidate:1be96ac12be4736d58edc43091af495454b9399197f6de43fc8070dd312fb426",
      "name-candidate:3cd5532717e3c523405dc23ded4e214cabb88c15e2333dc26641d95a3d862088",
      "name-candidate:45999bfee6f64270759d164011c35ad2308179fa103faccc7e43d6d887258c68",
      "name-candidate:84119bc0c47d44b4a72817178b1a231ece4247fcaf6893911c827c16e8f1004b"
  ]),
  ("name-candidate:acc4a73e54ebbc96585ccc7602fb09877e708f1e2ed733baa80b952d5d2b0eba", [
      "name-candidate:22d0bdb537e4ca8ff771a98e7374c593e3a2d34df9602d47f88ecde4463e7af7",
      "name-candidate:acc4a73e54ebbc96585ccc7602fb09877e708f1e2ed733baa80b952d5d2b0eba",
      "name-candidate:c31ac0ed278322322ab5c1ef811923354dac521cb34b1af7ddcbe8b72da18648",
      "name-candidate:c899b6b02a27cea3040f59f01cea05c9f985dbdb0bf6a4b437c5712668d96dc4"
  ]),
  ("name-candidate:79fb44c40c9d9a7011fe6413ded7825f8d4f1ede8b76485a2cef3b835b127558", [
      "name-candidate:3285af5f1b548c306711c06b5c4d2654dcb82dac84743b6822f6201ed514402a",
      "name-candidate:410d6751778d3265eb236cf0c6455f44366f8802e27464ab028af990c5e8c16a",
      "name-candidate:79fb44c40c9d9a7011fe6413ded7825f8d4f1ede8b76485a2cef3b835b127558",
      "name-candidate:bedd3c0bd89a44b1d5daa33cae6e90440450b7f365ad6a51d435621f699ec77d"
  ]),
  ("name-candidate:92d44aa1f15af9791ac7889c71f08e1b7e3f096c8a91a2283d91f8285a788c91", [
      "name-candidate:92d44aa1f15af9791ac7889c71f08e1b7e3f096c8a91a2283d91f8285a788c91",
      "name-candidate:a8fc62ff711363c687c12c96f20a491befc7c391787086f7df2ae068d3f9902a",
      "name-candidate:a908023196037e769f7da1842f54ce70fc1c5bd7f44bc150718c6b530ca813cd",
      "name-candidate:dd8fe94bc52843ccafdcb608c8f643bac454f47dc693ebc463b12a8bb78b9bc1"
  ]),
  ("name-candidate:6201cad41f205d1fe75daf73a8b0122a5600156019bcaf46f49080053324c384", [
      "name-candidate:6201cad41f205d1fe75daf73a8b0122a5600156019bcaf46f49080053324c384",
      "name-candidate:cf6399ef9ecc11c6c7a075d5d18d909063404840b7f253a4a008725ce501a244"
  ]),
  ("name-candidate:0d7bc7e9f91117f33c0c96c06dd9689a4c7aa7421d929c659713101ab3d060bf", [
      "name-candidate:0d7bc7e9f91117f33c0c96c06dd9689a4c7aa7421d929c659713101ab3d060bf",
      "name-candidate:afd475d65e7f5b5f4a4d637f4dbf3eca51b69b0033e6a37348c0bacb06f78f44"
  ]),
  ("name-candidate:f374a250efda61b713cd98c32c6a808217346a0fecac73f284330ad2307c9c5c", [
      "name-candidate:48eff4323bff0b0de875081b137cc171a2ab92d3c1b6e9a2c748609039410edf",
      "name-candidate:4bc2546623d65fbd50406ac0827789277729c7d8d4d2e6a916e1c0c4029ed622",
      "name-candidate:9232a1307a656fb9194355d53483e116b56cbadfe456b97700b500605085a052",
      "name-candidate:f374a250efda61b713cd98c32c6a808217346a0fecac73f284330ad2307c9c5c"
  ]),
  ("name-candidate:7dbead046dd2f93a912f5f3da6d730bc865f4f4adc873d9bf32806907d677309", [
      "name-candidate:13b83e982a300d52d96f2f52ecfc049fde045aba3c9202610a1f6cb4e824879d",
      "name-candidate:7dbead046dd2f93a912f5f3da6d730bc865f4f4adc873d9bf32806907d677309",
      "name-candidate:9f1d63ed675f414212e0892ab4de2158f12c3f81ad8ed530a9e8e57a8dc895b6",
      "name-candidate:d5fdb16ceadefe24e18dfdc651b20866525fe198e7b17de0434734abb4ce7380"
  ]),
  ("name-candidate:6e6851b8dea19426290c9b569424764e728b99e878b0d7c842ac72efa2a298a1", [
      "name-candidate:6e3f4cb50fb745c6103ad8906e95730d3c7f3f8417356c6a97e6999c933979c5",
      "name-candidate:6e6851b8dea19426290c9b569424764e728b99e878b0d7c842ac72efa2a298a1",
      "name-candidate:af2cc8186112ac7900dfcfde3ce1a4165719e7b945246b943b6d665285a3abd3",
      "name-candidate:f16b21e67e31ba6c67139de6e63463c41d2f334be1a6b75c37f4da09207b3fd5"
  ]),
  ("name-candidate:87581a10c553a23082339a6021d739358240c79fe8ad808e870369b18f9260d9", [
      "name-candidate:25c2ffeb3069e1fbc896f0df5f4c0ce52bfc648590fd146d3c4451d4b6350376",
      "name-candidate:87581a10c553a23082339a6021d739358240c79fe8ad808e870369b18f9260d9",
      "name-candidate:bcf431427af3df021123df91a9664e21fbc0f9b4d59162f6886710c968e7e3f1",
      "name-candidate:c2e9538fc5e81ad20e567616be0f6cdc238009a3f3eabddbe70f1ecd8a7b86b8"
  ]),
  ("name-candidate:ba66856fd33dff34d4d4e076043a2bce50587fe3d15ac842f7c99e008e7bf88e", [
      "name-candidate:5e4d204af9dc73e1444449d4126a92242c028fe321a7b0628b61592c6c3ff3b1",
      "name-candidate:8918ded3a39149724ac22addbc8439d713c8e462014ddfeaf7cdcc2758dcc7a5",
      "name-candidate:b598fe21f3ac8f48eeff59f4e23c7bbe076b48d4454e197bba30b0daa17bf3cd",
      "name-candidate:ba66856fd33dff34d4d4e076043a2bce50587fe3d15ac842f7c99e008e7bf88e"
  ]),
  ("name-candidate:d10fb00b9d41542173d332ac97e3f97a27a24a6ff1d9fb78ea08a1f22ce619e5", [
      "name-candidate:262bf77f2857e486fa02f092c451a8b6281853d439437e60f924e78256000378",
      "name-candidate:9799804459394a46ef397a85de9b189d63fcc1d448d36c90dc600be6f01d9928",
      "name-candidate:b17a5ef29cc5bfee3ae7b92472f2c3fd394cf06621c7529f3031e7e92ed10de7",
      "name-candidate:d10fb00b9d41542173d332ac97e3f97a27a24a6ff1d9fb78ea08a1f22ce619e5"
  ]),
  ("name-candidate:c458f46bfa0a75c8e04724eab679f9bd2d4012b76d69e3e057ac954f19aac949", [
      "name-candidate:3d1e8469ee0514dbcfcc59313f39a92c729d59b685176b4e063a7acd1eced9c4",
      "name-candidate:b69a6ac4d3f5b668477fe1ef0d3b0542f69fdee2990f0a98092a05850cb20bad",
      "name-candidate:c458f46bfa0a75c8e04724eab679f9bd2d4012b76d69e3e057ac954f19aac949",
      "name-candidate:e47ea674f86500f7dafc3f7a3d9bdfe38a58e276eaf4927567f45ba6b32a10e5"
  ]),
  ("name-candidate:7dd2cfce79d544bb4fc6e878903192726fa109818c790904b4fb3741a0cf5bc2", [
      "name-candidate:7dd2cfce79d544bb4fc6e878903192726fa109818c790904b4fb3741a0cf5bc2",
      "name-candidate:989e9fd3db611a7c9b7e3ecc6a62c50f70848c36645df2ef4ef4afbef69b05f0",
      "name-candidate:e65881c6e82f0d92d7d30bd2cb993e6d7a34d5927919800e0459ae72e4e92f9e",
      "name-candidate:fa3836ae5fc237f329da77c20929de79950653d135085529c5974bb7126ce919"
  ]),
  ("name-candidate:921a3b2f5560f6c119fd6d2871a841a1dd0edaec12be2a62a2856c7d7c62042f", [
      "name-candidate:921a3b2f5560f6c119fd6d2871a841a1dd0edaec12be2a62a2856c7d7c62042f",
      "name-candidate:9ba43f6586a024057a818853221a46598037259a4a591a7367aa84aa6cce0fa2",
      "name-candidate:fe4352a21f415a1a1274293fa358e0a460a846365c878a9ab7a78cf2d2e53386"
  ]),
  ("name-candidate:3260d6114330b8910863fe6914630d262dd4b8e21e5ac39398c012b3d1929cef", [
      "name-candidate:217ea0b81a340ee9d6b10153b081381fc3e6d0a41ae9b1b731c278efb465eeb8",
      "name-candidate:3260d6114330b8910863fe6914630d262dd4b8e21e5ac39398c012b3d1929cef",
      "name-candidate:b7a49b136a091693e5d7c96ca0575f98c0e51e99284f0c05ba679c60624c6d4c"
  ]),
  ("name-candidate:9dc3e74edac2b7ede864540b0e3f8f2d383567b592614b6530b02535aa638d22", [
      "name-candidate:7e1e26babb90fad761a9d70ffe075bc8b4e97a6de0a2efb78b84bb50cdcf254f",
      "name-candidate:9dc3e74edac2b7ede864540b0e3f8f2d383567b592614b6530b02535aa638d22",
      "name-candidate:dd2ef6c152e7b9e50553dff8baa2a457080e7fd37afaab17c1205deb777bf499",
      "name-candidate:ff6efa7d77c4dd576432e61272b1f77aa1806a1e180ff7702c706b7e48d0799c"
  ]),
  ("name-candidate:7e2dca9f8b6eacae1a721c6836a67a0a1aa84c44394be75e6f9e7a8340b7758f", [
      "name-candidate:08492475e3bde1050ba35751c8ef690aa6c16a409a279c78d36b69603a255803",
      "name-candidate:468398ca9c918f5ce0bdcd6a7758ba50d388684aa357a676eda0e927dd86967b",
      "name-candidate:7e2dca9f8b6eacae1a721c6836a67a0a1aa84c44394be75e6f9e7a8340b7758f",
      "name-candidate:7f778dbe66a41a985c61e1fba4f0d91208048ea95b6eb07c4b12a26a60558b65"
  ]),
  ("name-candidate:de88f2b1fdfedb0aba108be2ec8578a082c8cce1868131ea9c99dde7dd1c88c2", [
      "name-candidate:4ba265c0104195566a3e3e5605514313c7bc23400b0fc9d37514f319ade224e0",
      "name-candidate:de88f2b1fdfedb0aba108be2ec8578a082c8cce1868131ea9c99dde7dd1c88c2",
      "name-candidate:eb27961e20cf49c426b97a7be536af626b2a60a05040d7b5075d86175ec2819b"
  ]),
  ("name-candidate:c48475f0b2a0e90364abc9780d17596b51b5838412d34117850bd4ae317c1f7b", [
      "name-candidate:7299d3d158f15cb060b7db0e0ffaad3fe7569260c94cca2f1383a267362a461f",
      "name-candidate:902a926eb53ad1991dbb8675030706ea9d937719660f6b4de8160d51eef76c50",
      "name-candidate:c48475f0b2a0e90364abc9780d17596b51b5838412d34117850bd4ae317c1f7b",
      "name-candidate:d10d2b350a6e843199eea8a0edf367efb75c2dbd3f6567da1eadfc21d8a585a5"
  ]),
  ("name-candidate:e415bfd884ff6901a6301a2fea6740c8240c071d2e0155e3b068c104eb5739f3", [
      "name-candidate:5a333310eea09f12189fb0f498986d46b827f579b9f6b14b87d1766bfc4ecd68",
      "name-candidate:e415bfd884ff6901a6301a2fea6740c8240c071d2e0155e3b068c104eb5739f3"
  ]),
  ("name-candidate:58f6408f1f7fe10056f6ab54ce7003d3ea146aa3c332e7808da0d714efdaaad4", [
      "name-candidate:58f6408f1f7fe10056f6ab54ce7003d3ea146aa3c332e7808da0d714efdaaad4",
      "name-candidate:68674d3d19fe5de2f0453fe4b299610d8d6958688d0031cef954264a7bc29575",
      "name-candidate:6d6f7e4daace17545837e60df36269e30f3ce3c28ca03b816149925980b38e72",
      "name-candidate:ad2cd4769cca2148332b9f0cf5b87112db61f493503399feae12d3a99486337c"
  ]),
  ("name-candidate:2c9cda7f205d5621135bc8a8dc0b1842acd88ce5340cf84e9466049462298eb1", [
      "name-candidate:27e3e75550b7514d38c70586828e31250fdf2dfbe2f666d65e0940a6cee40a62",
      "name-candidate:2c9cda7f205d5621135bc8a8dc0b1842acd88ce5340cf84e9466049462298eb1",
      "name-candidate:928304444978c1f164cde7fb38d3b1d6ea6b6bdbea71bbdd53a12f3553ae87ab"
  ]),
  ("name-candidate:2bfc8a138aea4722de1b3e3a97d210b5d38ecc31bd4eeb7fbf44363b880f1b5d", [
      "name-candidate:04627c6fad0ce4345afd54d7c34e3fd3291c809f5a63b882c3e7e4e8db069ecd",
      "name-candidate:2bfc8a138aea4722de1b3e3a97d210b5d38ecc31bd4eeb7fbf44363b880f1b5d",
      "name-candidate:9ff43ac0807c3c6b492c4ad088a366b90be959a852246e4f8faeece81f9332e0"
  ]),
  ("name-candidate:0648c3fc49b906f0f485467309b41c6b2f3bfb107769f04951676f613ef0169b", [
      "name-candidate:0648c3fc49b906f0f485467309b41c6b2f3bfb107769f04951676f613ef0169b",
      "name-candidate:52fd4523329c4c1648b8c60c08fc79cea3cf8da4a01a3aeec4b276276c9a699b",
      "name-candidate:58b457980209876bdda82aef23972a62c8e38cc96b4df257244f2f3cd6baf1ec",
      "name-candidate:e5c7ce48cc93caa0775fc9109040503f7b01737493f2279ea9777816fa346c89"
  ]),
  ("name-candidate:f066aa20b7d672a9dc2d84fcf77b663ab890b4b21bb14e6e1cf07844c20d255a", [
      "name-candidate:582d5ed139e85d9063d5ab05cd2ab85b3fad08d8e204012e3444f6875c2d5915",
      "name-candidate:8baf8e68cf075a31a0e64eb1772053884a61ae0cf2220f2ba4da0c2eadfe2024",
      "name-candidate:f066aa20b7d672a9dc2d84fcf77b663ab890b4b21bb14e6e1cf07844c20d255a",
      "name-candidate:f46647c973b90e8a68352150a6e2a62cc83cc8450f6c0d43e7892897775efd67"
  ]),
  ("name-candidate:69482d3d0aedf32912a369e1cde31b27dc4809f04df55efa96bdfa6af1aebb22", [
      "name-candidate:69482d3d0aedf32912a369e1cde31b27dc4809f04df55efa96bdfa6af1aebb22",
      "name-candidate:8782595b524f57e3008163f73cb5be46a7ed01a6e8a76d9c6f2857bad8b02197",
      "name-candidate:e09843a42b3d955299b0ee8f7030cbb5701a17f49224993632a00a69b3e18713",
      "name-candidate:e5d8e81b4e4d3902ec8a3bce65d2bf730c196510be2b70b242c9b2f23438aba8"
  ]),
  ("name-candidate:d390d58146d092fe7b4987d9018b46f90210be2a58fc543b2c18eed20aab78c8", [
      "name-candidate:4c9346d4ff7ba9559a94fa9ba8e9b5cdb7ad66db88bbe167a73177ea0e1fce65",
      "name-candidate:61b0677122c794bde287be7443d198b93cb992bc92f99efd1f12fbae80b59a85",
      "name-candidate:91b873d03562dbb70c08fd0b67c04810b4df09035760b33b1ecab6b9de7fab7d",
      "name-candidate:d390d58146d092fe7b4987d9018b46f90210be2a58fc543b2c18eed20aab78c8"
  ]),
  ("name-candidate:e13a8edd0f03dbfd7121fba700cd134e3fd9e5912bd21f8395473e104a075e67", [
      "name-candidate:2a371b0e52578dbc833819a1372ef854bde66f65a6622d48e86c548c575e8b0c",
      "name-candidate:e13a8edd0f03dbfd7121fba700cd134e3fd9e5912bd21f8395473e104a075e67",
      "name-candidate:f35756f3ee21dc4787f6a9d87eefcebecadb9911891f75142cdc7d2e2102171c"
  ]),
  ("name-candidate:16c0d219ecf461955aa1a9a64381c9a0d91d7402b25370f5574d3631079e024f", [
      "name-candidate:0cb77bf7aefdb47f7dbbb4dd01f025cbbcca442dbaafb4e75d2eb38bd9546653",
      "name-candidate:16c0d219ecf461955aa1a9a64381c9a0d91d7402b25370f5574d3631079e024f",
      "name-candidate:30f431b0d4ed710ddf13462fd6ed43a99a9256a69f048775fc88e55eab74a5b6",
      "name-candidate:5a8d6a8195146021e293de9d9a2799bb445345673678dbec5abdfeb87e592f56"
  ]),
  ("name-candidate:dfc56b98487bd53fd48ceec60059c5fec78d756ec82ff684900694060c747c5a", [
      "name-candidate:5ca5b52947031692cf0ceccbd3e913230bc60cc90cb270944dc5ee027bdc91a4",
      "name-candidate:89fa7aa40aa5316cdefa9e0f3884f51d0f36fc3f1beea85130e9bc40d703a2b4",
      "name-candidate:dfc56b98487bd53fd48ceec60059c5fec78d756ec82ff684900694060c747c5a",
      "name-candidate:eefdb244a4658273a0276631f8bad55acfa7cd17223b53bc77400e5f20c1e748"
  ]),
  ("name-candidate:54f3f1210d4993b1ff28bb8506ecc6a3eb6d50e1c26b9acfed9b9e0c7c8f9a6f", [
      "name-candidate:4cbc5b426e9b0ba83b9992642af0378446e70c0e7a58f90340def082832a8455",
      "name-candidate:54f3f1210d4993b1ff28bb8506ecc6a3eb6d50e1c26b9acfed9b9e0c7c8f9a6f",
      "name-candidate:638d076c02e36dd64d43d5365c1e31ec3886d0132f2d291ef94946093d99a920",
      "name-candidate:860e597a6664957561afccea346313ae906c184bcff2a9c3574ad3dd4d2f2de1"
  ]),
  ("name-candidate:dbe5bee66ccd568aff0d5333346b81c5e9aed073a6a7c79022c9e9ffa72e789a", [
      "name-candidate:25c09cb192fe71473c07fc7860ca71356e3ed7aa0159c72543062b15fca231db",
      "name-candidate:dbe5bee66ccd568aff0d5333346b81c5e9aed073a6a7c79022c9e9ffa72e789a",
      "name-candidate:df1f65e733cfb2bbd03b0a4e06c3ca69f9695fe8a759dca1ebf3e24e2d7e56a0",
      "name-candidate:f930478d0b04ee8a6b450a513c5e9eaff4a81ad74ad006970180daedac4a6c66"
  ]),
  ("name-candidate:af86db32df8448cb4230cfcfaace5a94ee641dfa39e6816e7b3184d6587cecc9", [
      "name-candidate:5bf855433c1be9dd26d42a77381d0a68c44050669850bd4a6f2901e6008feb0a",
      "name-candidate:84bf2af211bfe74efb09f0b54dc48c4a355c69fe16c9d7142f9994291821b68e",
      "name-candidate:af86db32df8448cb4230cfcfaace5a94ee641dfa39e6816e7b3184d6587cecc9",
      "name-candidate:f9e4808d1f89bd567df86d658aa418ae3c89ad3bcd687c5c1989d08aaa2828c8"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L48139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
