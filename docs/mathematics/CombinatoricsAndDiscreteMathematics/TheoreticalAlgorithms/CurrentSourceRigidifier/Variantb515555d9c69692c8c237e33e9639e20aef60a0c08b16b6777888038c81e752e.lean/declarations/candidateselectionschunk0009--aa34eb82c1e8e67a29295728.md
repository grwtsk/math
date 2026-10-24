# candidateSelectionsChunk0009

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c293ac64fbaf55fd20245a64b7dfb668793d596accd16835d7d15ba29768b6cc",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0009",
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
  "slug": "candidateselectionschunk0009--aa34eb82c1e8e67a29295728",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44678,
    "line": 44355,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa34eb82c1e8e67a29295728d432b0c68831bfe450b5af8d1279d50f746cc690",
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

Occurrence: `declaration:c293ac64fbaf55fd20245a64b7dfb668793d596accd16835d7d15ba29768b6cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44355–44678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0009 : List (String × List String) :=
[
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
  ("name-candidate:d73a5d043136eedf7cf48e591a892531c3ef746e3058a242d14c7352d3a89a79", [
      "name-candidate:049cbbabe4648e897765f517fc04e87b9f19e9ceeb127ec404c160afda9ee6d6",
      "name-candidate:39244c7cc62e6f169fd0fbb0f3227c6ac2e86a0e98d8573d8671f5936dd17b9e",
      "name-candidate:d73a5d043136eedf7cf48e591a892531c3ef746e3058a242d14c7352d3a89a79"
  ]),
  ("name-candidate:ebeeeb752014801f3cae6f2bfb322ab638581fc0138bd95350cf336091554c2c", [
      "name-candidate:992d941f5fe5036df3535a4b589422610af630fb6ef46a0a74eec4b2e27e88f0",
      "name-candidate:ebeeeb752014801f3cae6f2bfb322ab638581fc0138bd95350cf336091554c2c",
      "name-candidate:f731272fa55e4278002775850a02c294cbc030989b2cfa379902836257ed441a"
  ]),
  ("name-candidate:0cb48c69c2976bc918c2e796d52e413116c675720ad1e1ddb03d33fbd5ee4b03", [
      "name-candidate:0cb48c69c2976bc918c2e796d52e413116c675720ad1e1ddb03d33fbd5ee4b03",
      "name-candidate:64f49297ac4727951c84a73aee42b007e75e3d32f622cdbf9825872ea577f6af",
      "name-candidate:80f400c70845133c2d4d2831f8770dc6bc3d5529c7b7a06f9b5e269b4b83dbb1"
  ]),
  ("name-candidate:9fa8a0965a0b19ce2061c8db3f9c3c528544fdfff778111e9d7dad4a8abeda7e", [
      "name-candidate:32f49b3db6be24056814bc34eb31d4f4f3ecf7d1d935fdb90573a809dfe8d043",
      "name-candidate:9fa8a0965a0b19ce2061c8db3f9c3c528544fdfff778111e9d7dad4a8abeda7e",
      "name-candidate:c7ddfffb518d8f4e8c8ab3cf4f339af4aebec66219fa2105f4a675ebe5ab2429"
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
  ("name-candidate:c20f81ba92ddac95ac58f83be74773964dd4a5a664747a2d263b88beeabaa923", [
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
  ("name-candidate:fcb2c1a0e29175b20266c0fd2854e7df98a3ed0fbfd22c383663ad79122b8624", [
      "name-candidate:1808783296d7f6edb65221934b3845cb4b058fa30fbdb4330639d0665c34a183",
      "name-candidate:e96f26bbadd17c9e741012e959db8055eb7ab528a18bf508ab6a2340549325ed",
      "name-candidate:fcb2c1a0e29175b20266c0fd2854e7df98a3ed0fbfd22c383663ad79122b8624"
  ]),
  ("name-candidate:18e3a4a4b331c4a84376a691f76c188230c37d2f503db472c1bb5eb41c62110e", [
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
  ("name-candidate:dc93271d49e85196d06265deac3f5e034a47b4206729c1037eea11952341595e", [
      "name-candidate:0ea7497d195567975331dcca5c5fbbef4924c5a481ba20efd0d829a5b59a53d7",
      "name-candidate:74e04c553c1fb8abaedd107af1687390f0055c93598f0b03a0b8908405e1cd37",
      "name-candidate:dc93271d49e85196d06265deac3f5e034a47b4206729c1037eea11952341595e"
  ]),
  ("name-candidate:703b39e899d8ca701cd4d225150e19cdeaf750a8a8510a39e45eadbd1e3bf161", [
      "name-candidate:703b39e899d8ca701cd4d225150e19cdeaf750a8a8510a39e45eadbd1e3bf161",
      "name-candidate:76932943453a1f331594fc9f26bd4535ebcb29b8e20770dee12b46199b347f24",
      "name-candidate:8a02795220898f1cbc1d8e028c2075f385e30fa6c1ebcf1168ab3851a0e0a4ce"
  ]),
  ("name-candidate:1caf5df899df44d4d2ba2bf64600cd68a3e75e34f00abb467aa3a001090a6053", [
      "name-candidate:1caf5df899df44d4d2ba2bf64600cd68a3e75e34f00abb467aa3a001090a6053",
      "name-candidate:d132fb454a86ef90f71314a62aa5acc26168decb9ee3327416d6c9eb7cfa9d20",
      "name-candidate:da2ed05cf9de52124c03293ce7369f7fcf63d20e4307af63a36567001b918f28"
  ]),
  ("name-candidate:f76492654a50bd6da1462ef8269cf47525c642767384467f3118e16b47fccbb1", [
      "name-candidate:79b8531913fbe19f46dabf5725ad8d5c5c89f4477e561a7b45bbd2e10fb9dd70",
      "name-candidate:a8548b7058faf75ef5bfa90050ea1fd9194fa8eca2e6657a0ad0a8dfe5f9ae66",
      "name-candidate:f76492654a50bd6da1462ef8269cf47525c642767384467f3118e16b47fccbb1"
  ]),
  ("name-candidate:abdfb5e5b7b20b1e444340f404fff3938a6bf4c100d07a032dba0b0235bd0fd6", [
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
  ("name-candidate:24cb8e198cd0bcb2442d66c5d92f37222056f4b29cbd69a922d6e153ecdd885a", [
      "name-candidate:080d3a7654abc836554867ea8449ad7388fcb8d1317038dd5e61d6dc96cdb1e9",
      "name-candidate:24cb8e198cd0bcb2442d66c5d92f37222056f4b29cbd69a922d6e153ecdd885a",
      "name-candidate:a87a78d7fd665a5423ab1adb56b114fcf7b91bb7042204fb72babe62b4e43fbf"
  ]),
  ("name-candidate:75e102f3a06f73c164337ed0936bb2c86fd48b9e464fdaf333211200d34d4495", [
      "name-candidate:0fde5414ee70c7e5f4c8174c89cb1a2da17c96dae337151ac8e200c5cd8c6095",
      "name-candidate:3629e59f8eb7af5e3ac40419ec0fc2ee52c48130e7d2c66b92e9a04779b62444",
      "name-candidate:75e102f3a06f73c164337ed0936bb2c86fd48b9e464fdaf333211200d34d4495"
  ]),
  ("name-candidate:83c97ce59cbfab2fd9d5e63f8f7bc7f2c56c6ee736b242cde22e3d890af08d07", [
      "name-candidate:83c97ce59cbfab2fd9d5e63f8f7bc7f2c56c6ee736b242cde22e3d890af08d07",
      "name-candidate:e8b3cd1369d1bda539da57e3eb55c8301a5213aefc7e9438ab55725bcd3d16d4",
      "name-candidate:f16a2be9a1541ce01fa48499eff5c84117e8e9d4b3f64199d6bf098534bf7918"
  ]),
  ("name-candidate:dd277454d0701fc7bc03e80ff252da1f53a71afa361d3ad381f48166bfebe7fa", [
      "name-candidate:441f0e32d3c7995668edb250ceda3e1da5a507777927f59385a16fdba59c3484",
      "name-candidate:85cfd39c37d92a690a588e58a32904e572377f5f53deaf8d44f0ca96ecce03e1",
      "name-candidate:dd277454d0701fc7bc03e80ff252da1f53a71afa361d3ad381f48166bfebe7fa"
  ]),
  ("name-candidate:8a2059c9ef47d50d76953c0e7b1ec8cdc822a652d119d585e144b0b973ab1b32", [
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
  ("name-candidate:14031161a580b27dfea4683169ee20f8d8bf1349b38f2a16da59c7e0cb6060db", [
      "name-candidate:08d1b0b101ad112601d1bb57e8ebc821201b44f024b08af63989a92aa489b57a",
      "name-candidate:14031161a580b27dfea4683169ee20f8d8bf1349b38f2a16da59c7e0cb6060db",
      "name-candidate:4256151a59ce004ce8c27c5d8984a3792c3fc36e77fbeb338399c80e2403959d"
  ]),
  ("name-candidate:6585551ec3e31d7465d886b22b56097990c417cfa703fbc0c9dbd3cdbfd70926", [
      "name-candidate:5c4c3b715e53135636cbf19788f49af5a78b24595149a3bd7f3d4e4582fc3cac",
      "name-candidate:6585551ec3e31d7465d886b22b56097990c417cfa703fbc0c9dbd3cdbfd70926",
      "name-candidate:8e31209857c8d6034b7b6620706863f5e6621b0605efc069b966e4422e4dde51"
  ]),
  ("name-candidate:2c94a9371cd1ee8e33c783b8cf3b4815bf61648807737bdb49ab1f5a5f01a5d5", [
      "name-candidate:2c94a9371cd1ee8e33c783b8cf3b4815bf61648807737bdb49ab1f5a5f01a5d5",
      "name-candidate:9666d1f35ea37a166ab09420fd5ccc1fbda65f3814be30d247da9ff0e1b15a4c",
      "name-candidate:a15a609719d4f210876eb5e92cc8964be027beb306cc752c506df6e2453a79d9"
  ]),
  ("name-candidate:7c271ad62c15c3342086808eac78abb01d4c2284e6af8523826a660dfe142c22", [
      "name-candidate:7c271ad62c15c3342086808eac78abb01d4c2284e6af8523826a660dfe142c22",
      "name-candidate:8ed13ae1a4b9544216a6327e58bdfb48a923f2af288dc75f904aaaed9a23ede2",
      "name-candidate:a18305297200ca056c39f73a07540debc99b48338e6d53f971e6c591f7f5aae1"
  ]),
  ("name-candidate:ad2b6e7d298c1fe964f304258dd89e94a459bc87fe149170b2db6bd7b3ddd867", [
      "name-candidate:4a3144c603d3df55fea85b1c51b1cfd607881fad249c6513f2b64cbc65133590",
      "name-candidate:ad2b6e7d298c1fe964f304258dd89e94a459bc87fe149170b2db6bd7b3ddd867",
      "name-candidate:be3c0eed74b14e7cc865b53730e2aedd2005ea55afb4584e1ec30ae517693a1d"
  ]),
  ("name-candidate:466aa9275e0f916f1cfaff7fdc3d5b377941fa5887f394cbb49ee8d78a09a70e", [
      "name-candidate:466aa9275e0f916f1cfaff7fdc3d5b377941fa5887f394cbb49ee8d78a09a70e",
      "name-candidate:5b96dadd85c053f00bd0aecabe498663bc13b64648af123b359d39ab8c446012",
      "name-candidate:98b5257a274d69290e31c4048cc47ce7dc53ca49c92e0845c4b60c710086a637"
  ]),
  ("name-candidate:abd28637b08273c84a885dea1f0b09f72276eb31ab13cee653e835a9052f9882", [
      "name-candidate:1fbb6de0e751b1ab735b58260bb64f07a2932139a163efef59ca282bcbed5c50",
      "name-candidate:abd28637b08273c84a885dea1f0b09f72276eb31ab13cee653e835a9052f9882",
      "name-candidate:d7bdcfb5110583fd6baa442735ca8b16f1a6fc82575afbcac059f6f03cbc70d1"
  ]),
  ("name-candidate:72b9b8b88164f1115c816f5bcf250d8af8ca8498bfb2475e1cad8825f5bd450f", [
      "name-candidate:72b9b8b88164f1115c816f5bcf250d8af8ca8498bfb2475e1cad8825f5bd450f",
      "name-candidate:c1bec47ef8d76c7574be740f667c90a8cba7667e7107e3d7c17293ec66282996",
      "name-candidate:ce79ab120ac090984bf79b130861d908748119da7159d20f6843deb4a80c5c8b"
  ]),
  ("name-candidate:ba57fb5c4842d2c902ca819b86d8e391968e706f70356d0a25117a47461367a9", [
      "name-candidate:14dd2e8082460d960372da37673aaab18432464e3c74aa003a82b372b6eb9523",
      "name-candidate:5e62799cf6860a7de81c02215db15f1b372185c079fd998204889d07dff1cfb7",
      "name-candidate:ba57fb5c4842d2c902ca819b86d8e391968e706f70356d0a25117a47461367a9"
  ]),
  ("name-candidate:4bc81f260ba038ebf3c3a1d5974d4cc0f7b16c1efcffd181de2fff055685e00a", [
      "name-candidate:3abdd9294c48f5be3289078fa13acdb0afe10421955578ec430ec0a015b31d99",
      "name-candidate:4bc81f260ba038ebf3c3a1d5974d4cc0f7b16c1efcffd181de2fff055685e00a",
      "name-candidate:a13dff1c49083d8d68676bdde26a35b4fa75e4f50c0a53e05fa3e2d6147cc5ae"
  ]),
  ("name-candidate:9e94e655357c8b417736087536cf8ce636220e681b3c6c36c2175cc4d1723254", [
      "name-candidate:1266e564d150095b5f12b75cfd6ce85a0df79807392724d4d8c36b52e88c2eba",
      "name-candidate:9e94e655357c8b417736087536cf8ce636220e681b3c6c36c2175cc4d1723254",
      "name-candidate:fa7c87d7479e41ef79867410c2591d2abac7cfd54d227460f75b69a73b962d0b"
  ]),
  ("name-candidate:9197e723a2cfef9c081ce8d6747aca5eac47b21fe27f05f6e369d54afea58942", [
      "name-candidate:9197e723a2cfef9c081ce8d6747aca5eac47b21fe27f05f6e369d54afea58942",
      "name-candidate:de13271200f5f6cc0c8be5d357b653bc658ac5f63c1f623783daaa3b9356cf13",
      "name-candidate:e58f0ca8c54c8582f738a8062466213c4a6c5d525e7a82f4e414ec28bd76a25e"
  ]),
  ("name-candidate:220d558a2b6e462aab831ed5d9a9eefcfaa1b436058eec8d5b1232698e3fc71d", [
      "name-candidate:220d558a2b6e462aab831ed5d9a9eefcfaa1b436058eec8d5b1232698e3fc71d",
      "name-candidate:8d5c6e4c7ded0bd5f65ea8f1f64024968ff629c9c2b61d7a349aa161414c975b",
      "name-candidate:dc0dd78c7a67e0d0ca6b301fd91b508d1278b33f1b4d343f5a561a3c9646c89f"
  ]),
  ("name-candidate:56596fee8e80266f6253d39f9aa83da80d7e59125f5c9f59fbaccb2de1d992d4", [
      "name-candidate:019a99abb30655f7cff8c5f2af330c9c577d35d70d23dbc995018b89a2aee417",
      "name-candidate:56596fee8e80266f6253d39f9aa83da80d7e59125f5c9f59fbaccb2de1d992d4",
      "name-candidate:6916875966ba994d35025e4fbf991858c5966c371d714cd4bb5c13d3d4e514fa"
  ]),
  ("name-candidate:139e8d98eceab7ec9ddea9fec36e46e51646f27f03aea1b98fd78f4e53ed2f57", [
      "name-candidate:139e8d98eceab7ec9ddea9fec36e46e51646f27f03aea1b98fd78f4e53ed2f57",
      "name-candidate:9841ea94cc6b073c5bf9aeff026178b65a8f02b083e94202e7f63233b1f1d264",
      "name-candidate:9e174b05867b874da960725979273316eaa645f8a5330e8a0eb4babfad4d3a53"
  ]),
  ("name-candidate:8f8d15f2d70b9b2c3911d3435e732b5785ab514d893ac54535de3fea8da3948d", [
      "name-candidate:38d65b17b193e855212dec4c2a9725c979fd84d9c1be962b3c724822b7a204ef",
      "name-candidate:4f938039c98042e9d81ed3a6259f036fd0e6b755d162df7bece781e86ce54c13",
      "name-candidate:8f8d15f2d70b9b2c3911d3435e732b5785ab514d893ac54535de3fea8da3948d"
  ]),
  ("name-candidate:ad6ebecdd80dae2f2b021266c2fb3d389e27173bc080bb9678a911ec0fb31383", [
      "name-candidate:441d79799a3431d3fe55400b9faf09f45b4b3e17ce2025d7782f05750d037202",
      "name-candidate:ad6ebecdd80dae2f2b021266c2fb3d389e27173bc080bb9678a911ec0fb31383",
      "name-candidate:ca33a92313b3fa5155f7587c18a618070eda444149332e544d47ae7ea83525a2"
  ]),
  ("name-candidate:b2f547aa8df6b532fa3688412766a827283512b78f732af84ddb0ce956096421", [
      "name-candidate:282245ce42f94c77582d7004a0f7001b3ae31277e7a963a3cf6f05438dd7bfb7",
      "name-candidate:627350d54d45e19b19c8164f6185244372124fe6986130e0dca1cba976d34c99",
      "name-candidate:b2f547aa8df6b532fa3688412766a827283512b78f732af84ddb0ce956096421"
  ]),
  ("name-candidate:bed4d6b89f6ab015fb7d6745fe0480269addb18ccfbb9afef61d87a8a06add03", [
      "name-candidate:7e40237029265c25a4a09920ba7de665bb3fae8a0b545f1bc549723984afcbc9",
      "name-candidate:bed4d6b89f6ab015fb7d6745fe0480269addb18ccfbb9afef61d87a8a06add03",
      "name-candidate:ed3f3e77844d8527ab46750db37ff2750fecd0ac0787f0c82a4d8a0b4e7d1d69"
  ]),
  ("name-candidate:24ef88852cb17827ddac861eb725e8cdbe1b24f672fcf1df0077039e36244eb5", [
      "name-candidate:18cc76ef62d19b40bcb506d28e0e8a5b1794b1188b32bdb72bd4055c5e701bae",
      "name-candidate:24ef88852cb17827ddac861eb725e8cdbe1b24f672fcf1df0077039e36244eb5",
      "name-candidate:fb31f9d0b6fc35ee265caca2e768f8ba77ab36314f96e87842a4019efcad302b"
  ]),
  ("name-candidate:76413e5636941dd5adbf8e30f355ff8dfa33efe5bd28a862e019c7ce4b6d3bb2", [
      "name-candidate:76413e5636941dd5adbf8e30f355ff8dfa33efe5bd28a862e019c7ce4b6d3bb2",
      "name-candidate:7d91a12cd9b044da53befb9f576c4e8f5fa371ccab87dc9c47a22498b7356944",
      "name-candidate:b27b87e5254ac934c3f1d1de03e56e8c9034377f54900afd34702d1a71856515"
  ]),
  ("name-candidate:017a17121052595d71d5ee79fcfacb5b416d2f0adee05a66270f0d470e696641", [
      "name-candidate:017a17121052595d71d5ee79fcfacb5b416d2f0adee05a66270f0d470e696641",
      "name-candidate:5a214b4a5515891fe2df284250c3bc008d256ff53bf6a31e34e1b74012490246",
      "name-candidate:e8c09003b18eae6c69363fcac895b4c9bedb7cbf71571cd2571b70176ad75cb1"
  ]),
  ("name-candidate:d4391427fc03346b7e28af55085095d71b2314e0e917d7671a16c35aaccbfb35", [
      "name-candidate:10321975f5e8b37c928f7a51e7b792946cbd277699bb35621f880406b609c9f8",
      "name-candidate:d4391427fc03346b7e28af55085095d71b2314e0e917d7671a16c35aaccbfb35",
      "name-candidate:f254948c78b1f9e8880639f81c55e732561ca89fdd9f56fdcabd00dfeea59c59"
  ]),
  ("name-candidate:82ebd10dfaf36577bb9188fd29356f92fa0f12714b41e338e684b7dbafd99313", [
      "name-candidate:82ebd10dfaf36577bb9188fd29356f92fa0f12714b41e338e684b7dbafd99313",
      "name-candidate:af372739b5b3aff17d368a17582c41eebb7d7621b310dbea320eea2110bc7597",
      "name-candidate:d4be583ed321af0d693c1b8319e722c28cc5fdf08c75978e6b38c215fac6e003"
  ]),
  ("name-candidate:e64c343b4a49e489e616caa903abb6cfb462041adb3d979d844a34cb5e5c1322", [
      "name-candidate:75e489ec4020b71375c726d76f894b543f06e62eef3b746be3357a81e3f6f5e3",
      "name-candidate:e64c343b4a49e489e616caa903abb6cfb462041adb3d979d844a34cb5e5c1322",
      "name-candidate:f8dab705298c9ce752f537b751a1de672fdb009f6faec615f0847acba6432f38"
  ]),
  ("name-candidate:727a82c93ccdc8cbc82732241fe6ddebc239775d7962795f5bc142823098422b", [
      "name-candidate:0ac2deae6168451e7485b27addbf6adb92c1740649b38ba56bff5c72802ed8a5",
      "name-candidate:28dd16d45103cebb57cb39269f1c58dac127242883d62a90142ae4fbf6d989a4",
      "name-candidate:727a82c93ccdc8cbc82732241fe6ddebc239775d7962795f5bc142823098422b"
  ]),
  ("name-candidate:b0ab4781a994e1eacc2425c95a14b5c4304f3285c7b7f7cdd4334b3138b9738a", [
      "name-candidate:b0ab4781a994e1eacc2425c95a14b5c4304f3285c7b7f7cdd4334b3138b9738a",
      "name-candidate:cf0a7572621d2d520eb22c12f884da7e15d20eb02ba97a16cdced9eab521da3f",
      "name-candidate:efd71dc3afbfff385220d628eab9f029c7a73f17b53e44271381bfe2977f610c"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L44355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
