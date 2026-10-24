# modelCandidateSelectionsChunk0009

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:542bd2edebfa497b132b3f2841c78f8cc9b461e2e12bae8554d3c4be7cb42a72",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0009",
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
  "slug": "modelcandidateselectionschunk0009--b869f89f3382baf9685f5983",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57762,
    "line": 57439,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b869f89f3382baf9685f5983d8366d7327ca7d7a5715e10a440259d0777de23f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:542bd2edebfa497b132b3f2841c78f8cc9b461e2e12bae8554d3c4be7cb42a72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57439–57762.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0009 : List (String × List String) :=
[
  ("name-candidate:c85ab76c332f8176054a72574653491b11b88c50ae7d1972a7c2515be8e90a47", [
      "name-candidate:061c17a129f2840e91df6f0c7f5327ed9f4d36b06252362476a5555d689f3a8e",
      "name-candidate:4d708cae99dbcddcf62fb54276c91848396397caaba04407f79593568a6daedb",
      "name-candidate:c85ab76c332f8176054a72574653491b11b88c50ae7d1972a7c2515be8e90a47"
  ]),
  ("name-candidate:029240b69381317476f21c64d9bf51d3e4a3d9ad289cedf1ef981241eb91a5b0", [
      "name-candidate:029240b69381317476f21c64d9bf51d3e4a3d9ad289cedf1ef981241eb91a5b0",
      "name-candidate:8ff4046733cd8991dbca5bc590c20980d2cdc0aa577fa6ccc4ab7c04896cae2c",
      "name-candidate:f06e154ae31ff55fc45f98a5c7569be8476c77a9ebfbb2dfc3ac9e3fb8eddd6d"
  ]),
  ("name-candidate:692d5682f3e41e55fed11ad4e629d466fcd2e72c9c039eb9d5bd586c86f3f3c5", [
      "name-candidate:692d5682f3e41e55fed11ad4e629d466fcd2e72c9c039eb9d5bd586c86f3f3c5",
      "name-candidate:a29d97730634f04d5657ede08bde01136831d017b2179f0a28bcd997c85531bf",
      "name-candidate:b09445d4b2251343e20a013ff14897b6c0ce3e1d929367afab7a38c66af75d55"
  ]),
  ("name-candidate:8cd74c064d2b47b769cb290fcb1b5be477172b222cd30d8a8c54afc886497191", [
      "name-candidate:12336ca9f554c090efbb1eb4041ca1ad32961d817e5f2c271d4671528cd7e152",
      "name-candidate:8cd74c064d2b47b769cb290fcb1b5be477172b222cd30d8a8c54afc886497191",
      "name-candidate:f5eb8f51a50dfa773a8c046c7995dc10b44b8947af4589773b72da9a5df82b11"
  ]),
  ("name-candidate:1ba6bd8a38ff7752491c6609c4d50054632d4669110b47c3eb9d1b0afa970fdc", [
      "name-candidate:0e9a7c1b662dcc09a31d0a0cfc25a0ca511a593046a657db34d4d8ca760e6aff",
      "name-candidate:1ba6bd8a38ff7752491c6609c4d50054632d4669110b47c3eb9d1b0afa970fdc",
      "name-candidate:9d7537556879d20da1688ecc6aa3163d2d8537439e2718ee3a03732bd32148aa"
  ]),
  ("name-candidate:ca2636887e62e5ea1befadf62a9dc0c2ce2f8a20ae370c762dee633a7894f6e3", [
      "name-candidate:3b0ec64cafedb1d1645d93f7676f88ca72b2134fc70fbb55835a9a32c95250fa",
      "name-candidate:8016e1e7614b3f015a0a8899e64e1a9297e14ee47b3ad9a336ca09dba214216b",
      "name-candidate:ca2636887e62e5ea1befadf62a9dc0c2ce2f8a20ae370c762dee633a7894f6e3"
  ]),
  ("name-candidate:2759416785ec8d585b445e1206d9cfe6555874b0f18ad754e37e671b2eb8fb4c", [
      "name-candidate:2759416785ec8d585b445e1206d9cfe6555874b0f18ad754e37e671b2eb8fb4c",
      "name-candidate:a6c7bb7a53508a1159e9d5dc60005f17f20ccf23e6045ac5b7433713a7c6137e",
      "name-candidate:d2851ec232791e5516e9ad226292058d7834e3b08779f1dd0c771e743a133d9f"
  ]),
  ("name-candidate:6bdfb1482d5e2527ddf79e228cba1492b11484f8d2aebd7a0a500e73d25a624f", [
      "name-candidate:1712243888babc558854e087c5fd017c6f529ac92ef498ba18478e79be990d55",
      "name-candidate:436cdd780bfb7b11fb57372531cf6d6342f5ce3821b90c6c38b772060fe3778b",
      "name-candidate:6bdfb1482d5e2527ddf79e228cba1492b11484f8d2aebd7a0a500e73d25a624f"
  ]),
  ("name-candidate:8739485c3963d00f0b38d6adca71384e6fb3ac443cba7aad6ba7ddb01b7f4972", [
      "name-candidate:118feeb566b2f1cc79c21f23094192ead595f067b1b64ba5713c99e098b1fbe1",
      "name-candidate:8739485c3963d00f0b38d6adca71384e6fb3ac443cba7aad6ba7ddb01b7f4972",
      "name-candidate:a301cc16b813ad8b353c19b18f3914489bfbe2604e3894c3ba27c77ab09ab12f"
  ]),
  ("name-candidate:dfea399d5688c0442c0559ec012c4bd79bb8f12a3b4d0f5d29e7ea7b3fbf72a4", [
      "name-candidate:6d50e49dfdf2f6f36c4dc92d634ed1e5beb923123a2bb9c229028efa40f95f80",
      "name-candidate:cbf537521a456f941efc20a6ceb5492710676d54730d048741116254e50a4a31",
      "name-candidate:dfea399d5688c0442c0559ec012c4bd79bb8f12a3b4d0f5d29e7ea7b3fbf72a4"
  ]),
  ("name-candidate:e2bd5f7af2ad60fa76f0849331ed3198aca167a091ef53292f7209b9a17c6a5e", [
      "name-candidate:3a38be7059ff183e155ec1bb19c31c35cf857699584e4f94a3d7a9b796f99e3c",
      "name-candidate:9291092739b4cf95b4afed0c156069ad0c31f6f8aff494a97e096467dbdd3d95",
      "name-candidate:e2bd5f7af2ad60fa76f0849331ed3198aca167a091ef53292f7209b9a17c6a5e"
  ]),
  ("name-candidate:3c04e56dffe3b51e25fa43da8bfaad02e75f0ce91e3b4ca796137386e096eb10", [
      "name-candidate:3c04e56dffe3b51e25fa43da8bfaad02e75f0ce91e3b4ca796137386e096eb10",
      "name-candidate:5f54ffcc132627d725a179ae4451ad90d7ae0038826491298fa24a4ec6589401",
      "name-candidate:c013a890c744261d1443674c0be9826c77c16da5ac7b43ff098dd81bb0f54a03"
  ]),
  ("name-candidate:8d7b655073ac25621dbb5460f72cde5603aea46f38e219de50b2f10d97e80b55", [
      "name-candidate:5ea84edc608dd642250eed5206ce7c7307dd58bed57c52fb0c551ec9452beebb",
      "name-candidate:79141fc287c3bd97eab54f2fd6aff04086621fdf1c6ce176debf6ed6e727b37a",
      "name-candidate:8d7b655073ac25621dbb5460f72cde5603aea46f38e219de50b2f10d97e80b55"
  ]),
  ("name-candidate:fe844875bc6a5f883986ea9d26e59ca3b2c83ecfda6c914c63e8984806237614", [
      "name-candidate:369115530b5ff092fb1ee3abe6d6abdaacc8d91df65146c5c01b09965f7a0b07",
      "name-candidate:42fe68be49441515028318f791ae74318aa7b36de8cb57637a5dca7c874de768",
      "name-candidate:fe844875bc6a5f883986ea9d26e59ca3b2c83ecfda6c914c63e8984806237614"
  ]),
  ("name-candidate:60de043dc4489a4f0b6dd84e360497ea6661e3a4ff25005c99435858d04d192d", [
      "name-candidate:59b652ea00d14cdab552c36404c06858fc5d5200509f91664e1290d4bccc3fd9",
      "name-candidate:60de043dc4489a4f0b6dd84e360497ea6661e3a4ff25005c99435858d04d192d",
      "name-candidate:ef376eb288c2c05e69184c463815d527b7a6c3ea95bdb09e2fe7ef7e937b21b7"
  ]),
  ("name-candidate:0885c619a5e145aeb1f320a627f6b12c9277bf53eba2d291727328318183b62b", [
      "name-candidate:0885c619a5e145aeb1f320a627f6b12c9277bf53eba2d291727328318183b62b",
      "name-candidate:2399d476c5d5a30466701ae1cd2aaa8e01bb8a69018bd07391653ae8b891cc00",
      "name-candidate:e82d8381a0798d6445c6149cac65d2afa3c43f95637b4464de1be017090277f0"
  ]),
  ("name-candidate:63685f30dd7716382156edd336a4fc9f40b031a69d2dbe8b20da9623b5038d7f", [
      "name-candidate:63685f30dd7716382156edd336a4fc9f40b031a69d2dbe8b20da9623b5038d7f",
      "name-candidate:8d3fde76053280098e91e8212ca9186bd23e64b422b785570d9a4bc1412c91b2",
      "name-candidate:a666968c1fa0150ff69b6df3b759c177d6b977a23291cc75d33c21096dee76df"
  ]),
  ("name-candidate:d8b72fd5ade38229f7f3f1b1eb090233ca2deb849a850e07ee517c2545a6b500", [
      "name-candidate:5db44d3740e2fe42b254dff4ff85bb06cdfa21081bb9f24a881c37467cc3dda9",
      "name-candidate:a49731aa3a7aad586d92d5c7b476813bafde34f8df5f202d0f8f0c6313758097",
      "name-candidate:d8b72fd5ade38229f7f3f1b1eb090233ca2deb849a850e07ee517c2545a6b500"
  ]),
  ("name-candidate:8129b3154bf7e23a587b222b28b77e5a6b91c1f95a8afde44a205964b2705334", [
      "name-candidate:31c104f95e74d5a6b18bb4e9600572ce6c8b84b7dbc997e2ccc244e2b0d2fe7a",
      "name-candidate:34dc44802d17d08b0c32f7f34de757fdc2b8f8486cfbe5f9e6bd05cb1d31eb5f",
      "name-candidate:8129b3154bf7e23a587b222b28b77e5a6b91c1f95a8afde44a205964b2705334"
  ]),
  ("name-candidate:480240b19a1628bcac64e4724a1ec8c7cb0b8cf58cce26b239bd2a4ea7961da1", [
      "name-candidate:480240b19a1628bcac64e4724a1ec8c7cb0b8cf58cce26b239bd2a4ea7961da1",
      "name-candidate:53a31d87e994bae53970de3cde1d05b97c5752f5c60e4a62871a04128144e6fb",
      "name-candidate:9b173f253d250b74126a08fe8f0eb187d4ceac782c8432361ee51c5d253342cf"
  ]),
  ("name-candidate:d99982bd765286016f91668eeeeac871574b10dd851bcc8b2a36fe14df160e4b", [
      "name-candidate:b83f6be50dc3b2e1752f8b51a23685c22dc92fc2c961f6d7b12b19b443598e88",
      "name-candidate:d99982bd765286016f91668eeeeac871574b10dd851bcc8b2a36fe14df160e4b",
      "name-candidate:e7306ed10788afb9d31e4548a2acab65cd7ebb42f5a0e51fb40ab55554e07ce8"
  ]),
  ("name-candidate:1e5f032a6f51edcfed07d676ccd84b5d32ab68e105ef67a79fed2594fc27fb4e", [
      "name-candidate:1e5f032a6f51edcfed07d676ccd84b5d32ab68e105ef67a79fed2594fc27fb4e",
      "name-candidate:9446215acd4a7288f0d9bbe6484b300e778c8e3b839d2b96cfe504c2aa43f29e",
      "name-candidate:a7ef8cf376b6d64acc5bd6882233e670bf19de5a55d9724735c81935ce61d2ed"
  ]),
  ("name-candidate:e1073614853fa5fc5bc20bf67c661eab59ae054fd25b6a70e75a2197c5b0c897", [
      "name-candidate:438dc17843027a509e6727db87e81d9e4130bb605d9406376312b7c1989690dc",
      "name-candidate:b33d9833d036801873e4d34bbe94b4db35ad6f18c03f49c3c6552482e89fb936",
      "name-candidate:e1073614853fa5fc5bc20bf67c661eab59ae054fd25b6a70e75a2197c5b0c897"
  ]),
  ("name-candidate:21e46d6e8bc9f009e5f46fd50217c7b066827e74743217077ec054fb65d95b34", [
      "name-candidate:06621ba71f653c208194be9cef152f705132a7ce807154f49d2ca421c171439a",
      "name-candidate:21e46d6e8bc9f009e5f46fd50217c7b066827e74743217077ec054fb65d95b34",
      "name-candidate:c1c06f487c570046d1b79b70551809bdf5e6a87f65024585b4f0a4cfce5841a3"
  ]),
  ("name-candidate:0aa8b76ddd09ed535fb7966cb8f611518d3ffdf5123e8e5fbdccbdfa9d5f9ee4", [
      "name-candidate:0aa8b76ddd09ed535fb7966cb8f611518d3ffdf5123e8e5fbdccbdfa9d5f9ee4",
      "name-candidate:8421c9748c75620a6726181819690da99fa24cfc11720dc4ad6c03ddfff3cced",
      "name-candidate:95bfe58cd1b461ec1436bb29dd90e2269f16c4481c351012077fec66cbf148e7"
  ]),
  ("name-candidate:44a5c0decd539f40cabed43095fa85dfe9fd016df457619932358edf60a58240", [
      "name-candidate:44a5c0decd539f40cabed43095fa85dfe9fd016df457619932358edf60a58240",
      "name-candidate:8fab56dee1fe1ca8c262a26e8b7225f630a47755b365e382277af9a716030ce2",
      "name-candidate:ac7c3bb7a2a797d19821b8e182f3f31b367624a4693ddb4a691a379b356c9e99"
  ]),
  ("name-candidate:6f8fd00bb7e31a5d59788d1f0f8a242d8a27970cdb2bfad98173d01db6e5e216", [
      "name-candidate:475ffb3ffef8059b41c8c9aa014fb694b7d861a1ef947ccb9fb4e246307d01bd",
      "name-candidate:50fb9e436d2338569b27523abbf274b23e5e37adba3c98ee80470a2a4969996a",
      "name-candidate:6f8fd00bb7e31a5d59788d1f0f8a242d8a27970cdb2bfad98173d01db6e5e216"
  ]),
  ("name-candidate:992d941f5fe5036df3535a4b589422610af630fb6ef46a0a74eec4b2e27e88f0", [
      "name-candidate:992d941f5fe5036df3535a4b589422610af630fb6ef46a0a74eec4b2e27e88f0",
      "name-candidate:ebeeeb752014801f3cae6f2bfb322ab638581fc0138bd95350cf336091554c2c",
      "name-candidate:f731272fa55e4278002775850a02c294cbc030989b2cfa379902836257ed441a"
  ]),
  ("name-candidate:80f400c70845133c2d4d2831f8770dc6bc3d5529c7b7a06f9b5e269b4b83dbb1", [
      "name-candidate:0cb48c69c2976bc918c2e796d52e413116c675720ad1e1ddb03d33fbd5ee4b03",
      "name-candidate:64f49297ac4727951c84a73aee42b007e75e3d32f622cdbf9825872ea577f6af",
      "name-candidate:80f400c70845133c2d4d2831f8770dc6bc3d5529c7b7a06f9b5e269b4b83dbb1"
  ]),
  ("name-candidate:9fa8a0965a0b19ce2061c8db3f9c3c528544fdfff778111e9d7dad4a8abeda7e", [
      "name-candidate:32f49b3db6be24056814bc34eb31d4f4f3ecf7d1d935fdb90573a809dfe8d043",
      "name-candidate:9fa8a0965a0b19ce2061c8db3f9c3c528544fdfff778111e9d7dad4a8abeda7e",
      "name-candidate:c7ddfffb518d8f4e8c8ab3cf4f339af4aebec66219fa2105f4a675ebe5ab2429"
  ]),
  ("name-candidate:3f881a4dd9f5bc0c11153137db787a729b136afcece00d532069ecf7cf295254", [
      "name-candidate:3f881a4dd9f5bc0c11153137db787a729b136afcece00d532069ecf7cf295254",
      "name-candidate:c7ba4bbc90ee040fdf006df133ae250e11111166bb76c72b0ee1be21db31efdb",
      "name-candidate:ee23932c712dfc1d362fdf57943ef44b21dac7a4b2549392aaaaaa17cb46608c"
  ]),
  ("name-candidate:581fbd816b637f3bf0b920467cebf0149a8e65de32026988694c5ed3754201e0", [
      "name-candidate:581fbd816b637f3bf0b920467cebf0149a8e65de32026988694c5ed3754201e0",
      "name-candidate:7b89e83a0d308eca7099de32cbc5887c331779c5a9883bb7b71a280ba9a1652c",
      "name-candidate:8f84a8948bf73def9fdda4f87eeda095c8e6e9e7a3d3a686d4e17f6c0e794050"
  ]),
  ("name-candidate:61f88c2d9b1428b4b457013aa2bae5f6fe296d150a673913ad3065e19bb172ca", [
      "name-candidate:2fbe810dfe44d8835d0160519106eae7def01871c129e7edee330f29dfc92e9d",
      "name-candidate:61f88c2d9b1428b4b457013aa2bae5f6fe296d150a673913ad3065e19bb172ca",
      "name-candidate:a8401789e59027f1ee08e4529015b1ee05ed5094322b1e04279aabb54c87700c"
  ]),
  ("name-candidate:c47aca3d157b2d9777e7367741a00723c1e29925d6632cfaf352f393da65dcea", [
      "name-candidate:c20f81ba92ddac95ac58f83be74773964dd4a5a664747a2d263b88beeabaa923",
      "name-candidate:c47aca3d157b2d9777e7367741a00723c1e29925d6632cfaf352f393da65dcea",
      "name-candidate:f2f8cc3cbf875bc967bf7d2584c76353b73efdd0fd84f4e968468fcbcf074a78"
  ]),
  ("name-candidate:61ea2757bcf83ded7a4539c4bbb4f7c3185e1a270a5984289edb50b6fe147222", [
      "name-candidate:396bcce6309e6e9887702904563b2654fcddb60bd46fa3f69378003023823152",
      "name-candidate:61ea2757bcf83ded7a4539c4bbb4f7c3185e1a270a5984289edb50b6fe147222",
      "name-candidate:914ed4c6df9dea0f39c125a36195825a20b7eab7393d7f57b969bcab476df1d6"
  ]),
  ("name-candidate:c1a728a1786969d888c834f5ca0a863f4083b978ddf56cae7004d18751dc4100", [
      "name-candidate:6d3bf78b37c3e3a1c4e11bf7014a2c35e6945bc9f0c331b462e07dbc6dd9e875",
      "name-candidate:a359a975a1eebc22f5d37fc29238d6f47ae6bdfdac0477aef07f61d9deb06750",
      "name-candidate:c1a728a1786969d888c834f5ca0a863f4083b978ddf56cae7004d18751dc4100"
  ]),
  ("name-candidate:daed694101fcfb22eebc51516fa9ad7bd170ea8718c9288fcab747b2db71008a", [
      "name-candidate:570141e7ad189e1f59723c37e0b8c108c508f313384a3129c262694f2313e5ea",
      "name-candidate:cdf022566957f6233dbb71214bb250601535df538697355137602afb697bd3e1",
      "name-candidate:daed694101fcfb22eebc51516fa9ad7bd170ea8718c9288fcab747b2db71008a"
  ]),
  ("name-candidate:faa8469e43652fe8d73792ec75157a20367ad39a6358b541cc5513b5e281142b", [
      "name-candidate:00dbb32e6372a418fe11e61cfda80326015371b69d651566177fd6ba34dc5169",
      "name-candidate:964fac18d2853b9b314d788eaa89c781aeb6f978b3fd69740449063faf2a26ea",
      "name-candidate:faa8469e43652fe8d73792ec75157a20367ad39a6358b541cc5513b5e281142b"
  ]),
  ("name-candidate:f16ef2eb4b433190259854b406373754c96c90829d15d5769ed3ae26be9754d6", [
      "name-candidate:ade36ab9548ce1d8711ea79cd19b9910ff6d706ee9df989542ad2712255022be",
      "name-candidate:e08fb9579d23bf3a7efc06a8a2f572e164032b69a1edbb9c9ef2a27c6b28b368",
      "name-candidate:f16ef2eb4b433190259854b406373754c96c90829d15d5769ed3ae26be9754d6"
  ]),
  ("name-candidate:d8212ee30ecae3bba036ea3245f143f75815c3cd7ffb2e7ed4af1ba28f1b5e7e", [
      "name-candidate:2e7769769e844464a0ebbafe1e57ab2bc412fa710144b27bb5b06a15cf46260e",
      "name-candidate:53d6e80634f4326bbbfa5b52a500e7c41a5b37fae5a8b2052c859688d8849ad1",
      "name-candidate:d8212ee30ecae3bba036ea3245f143f75815c3cd7ffb2e7ed4af1ba28f1b5e7e"
  ]),
  ("name-candidate:e96f26bbadd17c9e741012e959db8055eb7ab528a18bf508ab6a2340549325ed", [
      "name-candidate:1808783296d7f6edb65221934b3845cb4b058fa30fbdb4330639d0665c34a183",
      "name-candidate:e96f26bbadd17c9e741012e959db8055eb7ab528a18bf508ab6a2340549325ed",
      "name-candidate:fcb2c1a0e29175b20266c0fd2854e7df98a3ed0fbfd22c383663ad79122b8624"
  ]),
  ("name-candidate:8864cda5756462564380c1c04046fbc2704faf8c27944131588bc73ce7b4ad35", [
      "name-candidate:413f1acf582ce00236377072f86cede6d7373c718bfe4eb1c23ca4ed60924c17",
      "name-candidate:8864cda5756462564380c1c04046fbc2704faf8c27944131588bc73ce7b4ad35",
      "name-candidate:b55dd76904ea95dbbbbadbc10aea0cc6883e5c20a4381873cd7b9ef3a3a9f788"
  ]),
  ("name-candidate:c9096cc581bd1207e50c9d96d4af370fc995a832977bda460746a162ea738c34", [
      "name-candidate:18e3a4a4b331c4a84376a691f76c188230c37d2f503db472c1bb5eb41c62110e",
      "name-candidate:c6c5b9b63d710a4989e6508150ae1743fb31d8f478763343341f22b84141b9cb",
      "name-candidate:c9096cc581bd1207e50c9d96d4af370fc995a832977bda460746a162ea738c34"
  ]),
  ("name-candidate:226766cece9a27e5f4b4e15a02943a883d5c7fd58e36144119f60353980b719b", [
      "name-candidate:226766cece9a27e5f4b4e15a02943a883d5c7fd58e36144119f60353980b719b",
      "name-candidate:560ee8c0cf55758c333c1aca819074ac013daef5fb6f015f520be2fb44265930",
      "name-candidate:fb48aada99cc3c9ca94673f42431fda42c8b2773dd30cf772973a5904b0f3f00"
  ]),
  ("name-candidate:ec3659880801f14e073468a5ef4021397bf083474bd2a5e947b46ef1f9917f96", [
      "name-candidate:4f8cbcc6fa78dbe58747d1f3e58205a67f29372d0ad64dec015c98283d48b35d",
      "name-candidate:dcea0302a102e576bb60246b5a7be39db16e1eef8aef425206294b4cfb31fdf6",
      "name-candidate:ec3659880801f14e073468a5ef4021397bf083474bd2a5e947b46ef1f9917f96"
  ]),
  ("name-candidate:99842c5b7bd55011d8e200b78d431aa17d7eb4648490474dcc162f03237216c6", [
      "name-candidate:05e2f9def92c1d313566ef1993fa7827511c84a78b4f61bd136ddf7024476afa",
      "name-candidate:719ff3ce68198229f8082aa85bc3941b0068344e9c6f4b510943dfe3a6d77255",
      "name-candidate:99842c5b7bd55011d8e200b78d431aa17d7eb4648490474dcc162f03237216c6"
  ]),
  ("name-candidate:0ea7497d195567975331dcca5c5fbbef4924c5a481ba20efd0d829a5b59a53d7", [
      "name-candidate:0ea7497d195567975331dcca5c5fbbef4924c5a481ba20efd0d829a5b59a53d7",
      "name-candidate:74e04c553c1fb8abaedd107af1687390f0055c93598f0b03a0b8908405e1cd37",
      "name-candidate:dc93271d49e85196d06265deac3f5e034a47b4206729c1037eea11952341595e"
  ]),
  ("name-candidate:703b39e899d8ca701cd4d225150e19cdeaf750a8a8510a39e45eadbd1e3bf161", [
      "name-candidate:703b39e899d8ca701cd4d225150e19cdeaf750a8a8510a39e45eadbd1e3bf161",
      "name-candidate:76932943453a1f331594fc9f26bd4535ebcb29b8e20770dee12b46199b347f24",
      "name-candidate:8a02795220898f1cbc1d8e028c2075f385e30fa6c1ebcf1168ab3851a0e0a4ce"
  ]),
  ("name-candidate:da2ed05cf9de52124c03293ce7369f7fcf63d20e4307af63a36567001b918f28", [
      "name-candidate:1caf5df899df44d4d2ba2bf64600cd68a3e75e34f00abb467aa3a001090a6053",
      "name-candidate:d132fb454a86ef90f71314a62aa5acc26168decb9ee3327416d6c9eb7cfa9d20",
      "name-candidate:da2ed05cf9de52124c03293ce7369f7fcf63d20e4307af63a36567001b918f28"
  ]),
  ("name-candidate:f76492654a50bd6da1462ef8269cf47525c642767384467f3118e16b47fccbb1", [
      "name-candidate:79b8531913fbe19f46dabf5725ad8d5c5c89f4477e561a7b45bbd2e10fb9dd70",
      "name-candidate:a8548b7058faf75ef5bfa90050ea1fd9194fa8eca2e6657a0ad0a8dfe5f9ae66",
      "name-candidate:f76492654a50bd6da1462ef8269cf47525c642767384467f3118e16b47fccbb1"
  ]),
  ("name-candidate:4f2771d18f182dc67b2e89a617c86ffd09b619a6c702dee77b88114b36473107", [
      "name-candidate:4f2771d18f182dc67b2e89a617c86ffd09b619a6c702dee77b88114b36473107",
      "name-candidate:abdfb5e5b7b20b1e444340f404fff3938a6bf4c100d07a032dba0b0235bd0fd6",
      "name-candidate:f05171b04194291367e196dc80475a28cd55422833dc74493e8e538c888d832f"
  ]),
  ("name-candidate:487b5c3918705fc8110255df3af18252306f4ca86d41454f27dccec1208c1a9d", [
      "name-candidate:487b5c3918705fc8110255df3af18252306f4ca86d41454f27dccec1208c1a9d",
      "name-candidate:561875a445b53cd7881967854b1575bd6d7db80b5b669d845db3eaa4e585fa19",
      "name-candidate:97023d56a25cab4c09f4dfef8dd3016df013332727e1dbebdb52f76df21bc376"
  ]),
  ("name-candidate:3e7734f542706171516966c26b7fe50be3ed041df978d9eb3d3fa54d002917c4", [
      "name-candidate:3e7734f542706171516966c26b7fe50be3ed041df978d9eb3d3fa54d002917c4",
      "name-candidate:c36f75973a46815212ae3f9fa2543e2ead1efe569ba7336646fdb379d9dbe185",
      "name-candidate:dc025f1ad9b659e4bddba45603a63e059a01cf24cb771ddf4c6b8301f53b57bc"
  ]),
  ("name-candidate:3a6b7213167ddadcab130c3a4b3e4df6d2847ed8093e9fbee3cd03152548e952", [
      "name-candidate:3a6b7213167ddadcab130c3a4b3e4df6d2847ed8093e9fbee3cd03152548e952",
      "name-candidate:bbdf642fa1ebc7e936f73f66f9fb7c4a89b4587b7bd79c2d3285a4fb5ab407bd",
      "name-candidate:f85f0fb636567814d881fce93265f48b5edf14fa4d55aa1aaea8195c717b48bd"
  ]),
  ("name-candidate:080d3a7654abc836554867ea8449ad7388fcb8d1317038dd5e61d6dc96cdb1e9", [
      "name-candidate:080d3a7654abc836554867ea8449ad7388fcb8d1317038dd5e61d6dc96cdb1e9",
      "name-candidate:24cb8e198cd0bcb2442d66c5d92f37222056f4b29cbd69a922d6e153ecdd885a",
      "name-candidate:a87a78d7fd665a5423ab1adb56b114fcf7b91bb7042204fb72babe62b4e43fbf"
  ]),
  ("name-candidate:0fde5414ee70c7e5f4c8174c89cb1a2da17c96dae337151ac8e200c5cd8c6095", [
      "name-candidate:0fde5414ee70c7e5f4c8174c89cb1a2da17c96dae337151ac8e200c5cd8c6095",
      "name-candidate:3629e59f8eb7af5e3ac40419ec0fc2ee52c48130e7d2c66b92e9a04779b62444",
      "name-candidate:75e102f3a06f73c164337ed0936bb2c86fd48b9e464fdaf333211200d34d4495"
  ]),
  ("name-candidate:83c97ce59cbfab2fd9d5e63f8f7bc7f2c56c6ee736b242cde22e3d890af08d07", [
      "name-candidate:83c97ce59cbfab2fd9d5e63f8f7bc7f2c56c6ee736b242cde22e3d890af08d07",
      "name-candidate:e8b3cd1369d1bda539da57e3eb55c8301a5213aefc7e9438ab55725bcd3d16d4",
      "name-candidate:f16a2be9a1541ce01fa48499eff5c84117e8e9d4b3f64199d6bf098534bf7918"
  ]),
  ("name-candidate:f88e0ae6460a26a2b177a4ea12f3d8340762a479cc6584a70a568c053fdb4e11", [
      "name-candidate:23bb7394728768a5bfa3012a679f58e314cba0d3548584a44f6140d3b0721f95",
      "name-candidate:abe86cd2f229abca4f5c90677cee7415d9a751bf7a57775ff1ef86f62fae55ce",
      "name-candidate:f88e0ae6460a26a2b177a4ea12f3d8340762a479cc6584a70a568c053fdb4e11"
  ]),
  ("name-candidate:85cfd39c37d92a690a588e58a32904e572377f5f53deaf8d44f0ca96ecce03e1", [
      "name-candidate:441f0e32d3c7995668edb250ceda3e1da5a507777927f59385a16fdba59c3484",
      "name-candidate:85cfd39c37d92a690a588e58a32904e572377f5f53deaf8d44f0ca96ecce03e1",
      "name-candidate:dd277454d0701fc7bc03e80ff252da1f53a71afa361d3ad381f48166bfebe7fa"
  ]),
  ("name-candidate:fcd47951147d1e0055d70661696ec3c0d682dc22c6e67e177efe384b6eb796b2", [
      "name-candidate:8a2059c9ef47d50d76953c0e7b1ec8cdc822a652d119d585e144b0b973ab1b32",
      "name-candidate:d321e03fdce54a4db130e53ea8e6e051e954ce36ca36e37d62282ad9f6df2ea7",
      "name-candidate:fcd47951147d1e0055d70661696ec3c0d682dc22c6e67e177efe384b6eb796b2"
  ]),
  ("name-candidate:100706cd9a0659a98f9518a920bacf8fcdaae13ad27e71c87c0c17ccb7484f29", [
      "name-candidate:0787fe46c747464d23f3779d4a1899dc87af7218ffb1c5c667b8f74232c0f6e7",
      "name-candidate:100706cd9a0659a98f9518a920bacf8fcdaae13ad27e71c87c0c17ccb7484f29",
      "name-candidate:b296e162e41996624d33880fecf90725a3be343a9de70174b4cd873119ab93cc"
  ]),
  ("name-candidate:20e3076ad7393d1f87d413f3d12e67b1dc74ff76aac44490eda908efe39c4b7d", [
      "name-candidate:20e3076ad7393d1f87d413f3d12e67b1dc74ff76aac44490eda908efe39c4b7d",
      "name-candidate:396e95b404d5370247c94d98884425a026bef26205c82b45f1107fd866b9b9d7",
      "name-candidate:8bb7537ee8d0e8162ebc4bcaf62040ce0e9a76060b657257e40a643f2fcf4f83"
  ]),
  ("name-candidate:542122432be85074e142beaca4dab551671c08bc04d775ee1bdfc244047de64f", [
      "name-candidate:542122432be85074e142beaca4dab551671c08bc04d775ee1bdfc244047de64f",
      "name-candidate:718906a936dadbd5b0f679b0a1a9f0fc5e0e6aad0d04ebf3783bb21c68e0675c",
      "name-candidate:85066fdb14932519949b8ec43b5f2e8a44ae2ad52f9d1417d0daabed4e9027bb"
  ]),
  ("name-candidate:5c4c3b715e53135636cbf19788f49af5a78b24595149a3bd7f3d4e4582fc3cac", [
      "name-candidate:5c4c3b715e53135636cbf19788f49af5a78b24595149a3bd7f3d4e4582fc3cac",
      "name-candidate:6585551ec3e31d7465d886b22b56097990c417cfa703fbc0c9dbd3cdbfd70926",
      "name-candidate:8e31209857c8d6034b7b6620706863f5e6621b0605efc069b966e4422e4dde51"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L57439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
