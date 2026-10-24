# neighborhoodCandidateSelectionsChunk0002

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07bd8451f97940f5eccbb4efebec1c181f1c1b8e4c5fe75ebc95b37162dd0cf8",
  "kind": "def",
  "lexical_name": "neighborhoodCandidateSelectionsChunk0002",
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
  "slug": "neighborhoodcandidateselectionschunk0002--33e1192ea51d33c1a87d9f2a",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129221,
    "line": 128850,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33e1192ea51d33c1a87d9f2aa3eb4ab5f4e51be33a8df84a776102ec4f31208d",
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

Occurrence: `declaration:07bd8451f97940f5eccbb4efebec1c181f1c1b8e4c5fe75ebc95b37162dd0cf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128850–129221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodCandidateSelectionsChunk0002 : List (String × List String) :=
[
  ("neighborhood-name-candidate:3376bb8ff74818618cf6f8fd9fd66172752d621d2ce1e6af14654a0640485d83", [
      "neighborhood-name-candidate:3376bb8ff74818618cf6f8fd9fd66172752d621d2ce1e6af14654a0640485d83",
      "neighborhood-name-candidate:5700d134c9c9330fa26790b0fc87ad1751d40e09e2162802845fcd3619a94a6d",
      "neighborhood-name-candidate:a91107e250a844325e15ab8f7331aaca833b9c48dd9178cb0117cdecff3cab2e",
      "neighborhood-name-candidate:c8c6065e8a2a709f1fc9f2a446434d63cca5c3287578240e6ced5b8d6fe612c4"
  ]),
  ("neighborhood-name-candidate:e046c89aef309ea3267ba745431f5456589cf2f8a42982eb3049d143d9826f92", [
      "neighborhood-name-candidate:0dea13fc6c3984e0cfd0cfe26e71c88e33ac66262dae0177ae8e18e41995cce4",
      "neighborhood-name-candidate:4f41ff0c00cea3f94b69fd0c55fcfad2900907d9313fdb35c114421353b0deec",
      "neighborhood-name-candidate:b46f4a0f3cf8b03e8b362b74e79638438db5e6966592b68be0132a9f3ac1ad07",
      "neighborhood-name-candidate:e046c89aef309ea3267ba745431f5456589cf2f8a42982eb3049d143d9826f92",
      "neighborhood-name-candidate:fc2cdd9aefeb5a6963f29cfad7be4a2f2c2afb0141287a1fc16d0ae1937fdcf3"
  ]),
  ("neighborhood-name-candidate:8c0c45f6bcf54210c8edf4d81421ab1c58e1ccb5a69237c7e85b432376966c66", [
      "neighborhood-name-candidate:6081345f281f483288527e26eac76cf9d8a3e524e3c0ae238ec1bd3d8b210181",
      "neighborhood-name-candidate:8c0c45f6bcf54210c8edf4d81421ab1c58e1ccb5a69237c7e85b432376966c66"
  ]),
  ("neighborhood-name-candidate:5fed09d272ea0cddd4954e34f170051a5d9777f718793e34e1fb3c1d790263c9", [
      "neighborhood-name-candidate:5fed09d272ea0cddd4954e34f170051a5d9777f718793e34e1fb3c1d790263c9",
      "neighborhood-name-candidate:8b0cebf069e68219a5c3ccdc51ceecc7a4148b4b2cb1189c83d91de19503ba18"
  ]),
  ("neighborhood-name-candidate:4466e21c67ddbbb837e2d3bf9a085b77e1a76460bfd6406af4addb09e37c05ed", [
      "neighborhood-name-candidate:37df3bacce18042c031f1e59dc6f0d12a2437bf70226e82ddbdd7db69ed28091",
      "neighborhood-name-candidate:4466e21c67ddbbb837e2d3bf9a085b77e1a76460bfd6406af4addb09e37c05ed"
  ]),
  ("neighborhood-name-candidate:6e5685b97727cd8de13ca1e214e9131165636d9521074e2cb8e18975de23befc", [
      "neighborhood-name-candidate:306789aea83292ba6408d74631456f8fb8472369d73834e637da02bf735832a0",
      "neighborhood-name-candidate:4194990f254180a33fd0c8c8e6813ed6b9fafa85dd645d9509b4f5fecb7ae8e7",
      "neighborhood-name-candidate:68054da424227486793c4842ce308559ea3d01c5b0892a1bf9350fdb4a98ba77",
      "neighborhood-name-candidate:6e5685b97727cd8de13ca1e214e9131165636d9521074e2cb8e18975de23befc",
      "neighborhood-name-candidate:89799e14b6ef23bd46bb80d9ecc7cb9c1f34e757109e280ace205c3d5e3064b2",
      "neighborhood-name-candidate:f1fd14d771bfe42a634b43631b5c90afaef2330ef7c766f499097ae7e87afe3e"
  ]),
  ("neighborhood-name-candidate:aff5caab3796cdcf375dedec6025154969008bdebe40f8f02a8bf22baa1c2c40", [
      "neighborhood-name-candidate:00658b33681ffdce1e83adb6022bbfda6428a1b073ef6d3c2148560c0718e326",
      "neighborhood-name-candidate:4414678e86d531131513b46b34525366eaa8876ebd12139f4f0b93c4f931df3e",
      "neighborhood-name-candidate:6cef719d7f6dac0965f018699b096c251f1a6f2c8e957987d8cbe43729ea1796",
      "neighborhood-name-candidate:784b7e60c2eafacd5304677d6dabcb4822b0ab155dfe6992753bfa56d5c6062d",
      "neighborhood-name-candidate:aff5caab3796cdcf375dedec6025154969008bdebe40f8f02a8bf22baa1c2c40",
      "neighborhood-name-candidate:ba1837e81e9aacba1441f8c744e4715c129bf38a5937658468dc586e7b4ea533",
      "neighborhood-name-candidate:d31befa6016d2733d6d940104c886c7003439c78ec19f9e2a00f43f900fa38a5",
      "neighborhood-name-candidate:d7150ef45a819cad2ba7b7fc717540b95af2770c2def55a66cbe682055b81c99",
      "neighborhood-name-candidate:d776470f52b829d7da2cc3093ad049d9fbfa7b8b71faf13685c354d3f79d5277"
  ]),
  ("neighborhood-name-candidate:e9a01f95896b1f052ca8702cb81d42f417c5812f3c9fff27fdbb842046bbc833", [
      "neighborhood-name-candidate:089282b28f2ff2d5a902cd89249ccafe4f0c07b2d31f3c63fc7dd04875657d64",
      "neighborhood-name-candidate:232ad9e10073ddeef44360f9ff99eedde8b85c975d57664376cf747a2e951559",
      "neighborhood-name-candidate:980268e44826fc21a757102777c0df512fefbab68291665541e39f2313ceaa20",
      "neighborhood-name-candidate:ad8049e3289e892329d842ff62d8bb29f15cbeae7c93d2f653e367b9517e8077",
      "neighborhood-name-candidate:e9a01f95896b1f052ca8702cb81d42f417c5812f3c9fff27fdbb842046bbc833"
  ]),
  ("neighborhood-name-candidate:f3fcbe6be3c747c2eacae10371d85f63f1dc4bd62eef779a589558085e1aad74", [
      "neighborhood-name-candidate:0bb0a193380e565a917230b2ffdd4c583be0a451bb693353d1d3ae408ac7c1fb",
      "neighborhood-name-candidate:48db378f3aa129c4aaa22ea9360eea02fa12846566373278060d2f4029e2c8df",
      "neighborhood-name-candidate:5ad26ace7861d9cfe787aaf14333d11d6aa165d305cf5dc1ae88a448e2b97dbb",
      "neighborhood-name-candidate:5de011b4c472ae3ff2092b9af4e348c8cc6f4ef745bb0eb9f84b114d19ef7b80",
      "neighborhood-name-candidate:adb150f4808c5a49ec54599797864a562f66b7cbe0d0db4d68b21c6fdbc9753b",
      "neighborhood-name-candidate:f3fcbe6be3c747c2eacae10371d85f63f1dc4bd62eef779a589558085e1aad74"
  ]),
  ("neighborhood-name-candidate:26fca11d99fb7ded0e5143dd6bc25e9d2d8421a1ffcfb0d7d5a77a36aa094e26", [
      "neighborhood-name-candidate:0070dd720ab003268f6dd5d2d1564c6ed0eb3bd5728fe3946ebe4ed183e639e4",
      "neighborhood-name-candidate:071fe9ba7e1a05204e4c97eb1a5d2c726462353553b1bf42ee02016811f5bdca",
      "neighborhood-name-candidate:0e5fccc0513c26401d87bb5dee9b9607a9cdd30deb52937660b93c25410f55b6",
      "neighborhood-name-candidate:26fca11d99fb7ded0e5143dd6bc25e9d2d8421a1ffcfb0d7d5a77a36aa094e26",
      "neighborhood-name-candidate:baf6218d1d66f0ee0388502fe7255fac645ada2df395190ee143df1df502ec60",
      "neighborhood-name-candidate:c2a0c27d9e8f4834eaa2daeb7b83f1b2001f88a6d728b5c1afa138f11cc1240c",
      "neighborhood-name-candidate:e12c827a70ce8172cada2fa77cda1da3739bb5a86d55b30a94dfb511a479cf4e"
  ]),
  ("neighborhood-name-candidate:42a15c93359f7e24220b9c6560312a8e6d458184dcd7513e4a6d25d66af07620", [
      "neighborhood-name-candidate:2a986e863cbca80ef7e697d50d96b5040dfbe4d192b9a7b50deed7033632ade3",
      "neighborhood-name-candidate:42a15c93359f7e24220b9c6560312a8e6d458184dcd7513e4a6d25d66af07620",
      "neighborhood-name-candidate:6d57ff10825af75cda5ac42dbcf74719bc4a8d791e4742fa294a4ac697f22b54"
  ]),
  ("neighborhood-name-candidate:894191cca9ea902666986539ef972933a6b4702f41906da3d974e4d475513818", [
      "neighborhood-name-candidate:48535d26fe767b59a1b85bf6d258ebcf3ff433f4212d8ce2e98e678a4dc14e0b",
      "neighborhood-name-candidate:733a564153071e673dbbcfd129d5b51d6665ddafda54436581934ad1dfa42a78",
      "neighborhood-name-candidate:894191cca9ea902666986539ef972933a6b4702f41906da3d974e4d475513818",
      "neighborhood-name-candidate:d17d58537e73f00ef59d3fa9cbdc3e023faa168273cf9878427a8d7885e7e4df",
      "neighborhood-name-candidate:d664a67de35ca1528dc55baf9e54d468b4a16e827238043240c1a5ba141d0e91"
  ]),
  ("neighborhood-name-candidate:23812c713b8e8e9a5382460490bf9c22cf4c35d0225e0fb95a1de16813676c9b", [
      "neighborhood-name-candidate:23812c713b8e8e9a5382460490bf9c22cf4c35d0225e0fb95a1de16813676c9b",
      "neighborhood-name-candidate:6d78ca4c810fcb42ea52457031b17e679015b440a56025d83f9d048d1be7840c",
      "neighborhood-name-candidate:b3ce970673c2f2c0b166fc35a146a75edb535bffc61bc207a9ce20e76ba38838",
      "neighborhood-name-candidate:bdbe538afdfc4373fe59bbf3feec3ddc09fe96084870b62c6ae034511f96096e"
  ]),
  ("neighborhood-name-candidate:9bbf905d30f0a00ec011b68dadb5f31189f2ba021cac1a60ef71ea2eac73b3b3", [
      "neighborhood-name-candidate:739356adabb7855fea5ef6ce2b0fef217d986e798799191b25681f37438558e7",
      "neighborhood-name-candidate:755c4ccf3577b7284ad02a1bdcd92ac32e32c3d649ce81384c1ce6d6dac9acca",
      "neighborhood-name-candidate:85c416d17fdeefe5a4253d86e63072e0fddc2b3c75456ec20fe559bac5900371",
      "neighborhood-name-candidate:9bbf905d30f0a00ec011b68dadb5f31189f2ba021cac1a60ef71ea2eac73b3b3",
      "neighborhood-name-candidate:bc8dabb8f3ad1620f550296f9f61dc885ba31cf70483142f8b408a24067757a2",
      "neighborhood-name-candidate:e39268abb850e7d2bf8ebe4228e242bbb538ebb938ad2738426c545ecf581fdf",
      "neighborhood-name-candidate:fca9b37c1a9f0fb7929cec383153787bb396c9bef6d50b0bdd03e8677b657828"
  ]),
  ("neighborhood-name-candidate:80e60eaa073367bfca4baf968cd9209a9f9d3bc35f93e00d1579ccc38337c0bc", [
      "neighborhood-name-candidate:363dbd615d280da2aebc708bb719e492d07c9aa8a6502f0b87c084cb464fed9a",
      "neighborhood-name-candidate:72b54101e2592cb2aee35cb34ca8eabdb0f093028a4545e28537b55f9700ce8b",
      "neighborhood-name-candidate:80e60eaa073367bfca4baf968cd9209a9f9d3bc35f93e00d1579ccc38337c0bc",
      "neighborhood-name-candidate:cac0c5ba005c1281b8198a9496bbd9be0ddb2b8d6221c8d49e76a9f5c431f359",
      "neighborhood-name-candidate:dd97aa620877c5798c7f17f2cac23d479a0297cc34d54b22d3758966d4af55b0"
  ]),
  ("neighborhood-name-candidate:98268afe8f4336c9f6e7b4d129dab7e2f4ccc5c87365438be1c3bca1b88279ee", [
      "neighborhood-name-candidate:000659afb7874ee66e486ff3d3c1aa21f414db72b6a1f88196f7b9729e5c18a8",
      "neighborhood-name-candidate:1741a6961ff9881fc9f8d543214ade4838cff5eb9829366f13525dfa8a1754b5",
      "neighborhood-name-candidate:34a7d1a6c9cb7a130348c935d5f7ad32571be0cd3fa4179fcf6f07fe8b3a2f0a",
      "neighborhood-name-candidate:3986321a5db1a67a6bec37435bcb948f1680fc61b8f8d1960279d273201e8299",
      "neighborhood-name-candidate:70005c7592fc383adc4ab9b94e405bd3e34b6d654e193379ea941b78a0c3427b",
      "neighborhood-name-candidate:98268afe8f4336c9f6e7b4d129dab7e2f4ccc5c87365438be1c3bca1b88279ee",
      "neighborhood-name-candidate:ae0ccb5fb0770e2df7b3b19cb6ef5bfc34d67fc7ff8f29b5691a01db45bf2866",
      "neighborhood-name-candidate:c18fb283673c87d2ae8e151b504bbd9257e8c55cb6aa7b296337e9cc95fc89b4",
      "neighborhood-name-candidate:e5af47b929a68e1da4297fe0245202ff84b40f6d7005ec64e4c029e87d494ddc",
      "neighborhood-name-candidate:eace255f4b5a806c53d6536ca009e98b3e3005ad9c2b5f701e460cca38949978"
  ]),
  ("neighborhood-name-candidate:5f5df1f64e903eb218925212b2010d075383a3289da870400b857f3333baa02e", [
      "neighborhood-name-candidate:25bc36d06f9d634d854c8be0cb614861100f028495bd63720f54d5487e5af1fd",
      "neighborhood-name-candidate:5f5df1f64e903eb218925212b2010d075383a3289da870400b857f3333baa02e"
  ]),
  ("neighborhood-name-candidate:f58b7d9e2379118ebb59ec571eee39ba25111445c4aa94e1a047fad0479d4288", [
      "neighborhood-name-candidate:b9f4610e40561d707d096c2bbca58805ac1bb3b266230b548dc6ae283a046585",
      "neighborhood-name-candidate:f58b7d9e2379118ebb59ec571eee39ba25111445c4aa94e1a047fad0479d4288"
  ]),
  ("neighborhood-name-candidate:d25bb818c00ef606598a575e7edc0d1138aa154fd714f8985d7828be53a43182", [
      "neighborhood-name-candidate:bf8b661ffb0f66aede44a62ee0a57d3f62ea1503de0234b5e46a2fde1d68a6b6",
      "neighborhood-name-candidate:d25bb818c00ef606598a575e7edc0d1138aa154fd714f8985d7828be53a43182"
  ]),
  ("neighborhood-name-candidate:59dbd7e851ac78806e1429e11f05f8b6e0fff69a5f9c24f3e4dcdb8f893f9898", [
      "neighborhood-name-candidate:59dbd7e851ac78806e1429e11f05f8b6e0fff69a5f9c24f3e4dcdb8f893f9898",
      "neighborhood-name-candidate:7fc51b8df2b65aff4d8c10217f830a74076c61b7fa3b7b14ce2e4f9e7d211142"
  ]),
  ("neighborhood-name-candidate:84f373b314011599d34d66f8fcba79329409a4321e52e772f84ecf2ef70e82a7", [
      "neighborhood-name-candidate:19c854cba8dd03c12250156a9a94e2482373b24ff6107a9055a2f7d97c3e6fd1",
      "neighborhood-name-candidate:399aa30320b10f55bf9fea3cb2a139314fe5d001c763e3a190ff1f1547b94746",
      "neighborhood-name-candidate:6b5c44eff670c313a4bf70efd13cb3fc45e599917900dc62da3b5e42c6a93457",
      "neighborhood-name-candidate:84f373b314011599d34d66f8fcba79329409a4321e52e772f84ecf2ef70e82a7",
      "neighborhood-name-candidate:859a2167c3427fec7a68742ff2fec155718ca2549a21461d50e0843b6b1db869",
      "neighborhood-name-candidate:8c19ef5e30455489677757efa144fa9d9057f9ab0cbf0cfd77b0d60913c4753a",
      "neighborhood-name-candidate:93f4d1adc86890258fcbe8505795a0beca567b8e9ca5990352d74a000633f139",
      "neighborhood-name-candidate:968a22c97cd27cd26ff9077c0fe6808f59d1e3ecb5f62d67700cd5bec1536af8",
      "neighborhood-name-candidate:97b0e7cc1cf2d8a04e2923082676d7b0f681b444efe76db117f9e0c0fc29d81a",
      "neighborhood-name-candidate:c2bd26d0da9e45534a28980f7d42186068d48aad8e604ed3e75905495bbec227",
      "neighborhood-name-candidate:d095b86388dc1ebd1162de88bc1ed678be29d7b92ab302bc1f247f0952bee9f2"
  ]),
  ("neighborhood-name-candidate:a0a2a72a87c195b847bc97ec05e5dc7f91c1c86d187b20dd13aff4cc90663edc", [
      "neighborhood-name-candidate:080f18d969c53936595c19127d2ccb6ead9f945601d9fa84dcb2f486cfd27b43",
      "neighborhood-name-candidate:0d8bd21d3add8f077234a3332d2b5b28b6956ddf4eb3ba4c627fa14369117a34",
      "neighborhood-name-candidate:a0a2a72a87c195b847bc97ec05e5dc7f91c1c86d187b20dd13aff4cc90663edc"
  ]),
  ("neighborhood-name-candidate:1b3aefc6d55b5c6bec30b86c6ae22e35256fa947eb393888b4576baac4e8aff8", [
      "neighborhood-name-candidate:1b3aefc6d55b5c6bec30b86c6ae22e35256fa947eb393888b4576baac4e8aff8",
      "neighborhood-name-candidate:29a308fc06561edf2b9845a0598c8de012248a5704c76a7791cdcd73b7038284",
      "neighborhood-name-candidate:4389b905a204d8b93c9824ed3b13291f605d8391618da779f742016ef424335c",
      "neighborhood-name-candidate:52ad6de45e8c776c03843dfe79f221b6f712906e4bc37817ad7038284b49ccc8",
      "neighborhood-name-candidate:9913b4c5383b002f9a22e7c1ed7f1805e44bbac50a9b4250fb78dc91527b25f0"
  ]),
  ("neighborhood-name-candidate:d02874591db29cd9af02a4faa73eadf7273d8c3e72037089bc38658555f94969", [
      "neighborhood-name-candidate:674fb87952cfdad6a55805782f642f64c7ad35943d7e0085a196b84eef08373e",
      "neighborhood-name-candidate:d02874591db29cd9af02a4faa73eadf7273d8c3e72037089bc38658555f94969"
  ]),
  ("neighborhood-name-candidate:535a46643868ce82152ccdd4aa1d9e45f6a62ff7f7594e5309494869480a8eac", [
      "neighborhood-name-candidate:535a46643868ce82152ccdd4aa1d9e45f6a62ff7f7594e5309494869480a8eac",
      "neighborhood-name-candidate:7818a569f520ad1a0ef6d0afd55c931cc2dfa668721456355d939c5ed7822e75",
      "neighborhood-name-candidate:b6c9db9eaf6eba813eb1969ecc16b416ee318122f5781e49dd062ed6ba70d090",
      "neighborhood-name-candidate:d6585c8d5660d9f740d7623d237ebb585b9e6f71f35b9e7ed510417593146700",
      "neighborhood-name-candidate:df4fdd0b46b424149fb52082f21e369b083e6038c0efea041d5553cc3d8f183f"
  ]),
  ("neighborhood-name-candidate:ac9fd2ac8ad26cd7b72748c3bf1831fbe9fdcc96e15aa766f1f07ac6da671681", [
      "neighborhood-name-candidate:0751372c772141894aeb8eb2e92f5985df51fc0789412cc22a38eef63ed27233",
      "neighborhood-name-candidate:456a89610c0d6fa45661e5c17e6a28a0065a61fe56ab1a8dbb00690e3f361ef1",
      "neighborhood-name-candidate:610392e5e291d4d0fb92fcdb0d5f654ae79c5faa2a57ddc0e8f0df267e7a5971",
      "neighborhood-name-candidate:7768f694df8a76bbe2b28d7ab451af922ba5002facbf122381a58f1fb4a11b98",
      "neighborhood-name-candidate:8eb6fe18c590cfcf6eeb932051cf517bb8bb8c7372cdffdc0b067e52546f5475",
      "neighborhood-name-candidate:ac9fd2ac8ad26cd7b72748c3bf1831fbe9fdcc96e15aa766f1f07ac6da671681",
      "neighborhood-name-candidate:fc98e1bd1e2245c4764430632d283ac40b39374cbf228c00fc0bfe6bec464148"
  ]),
  ("neighborhood-name-candidate:41d87ff117e59a2f15b0793bb2376693fd959cf255e8890430981686eea29122", [
      "neighborhood-name-candidate:285600264461c8689eb99a2e38e5188c511bb499c1f7ec79faef2572b0a32dd6",
      "neighborhood-name-candidate:41d87ff117e59a2f15b0793bb2376693fd959cf255e8890430981686eea29122",
      "neighborhood-name-candidate:5b05f6d5bee65f0c1f2630b5fc20927fbddecd1c939f5e54489e3dcd30470d91",
      "neighborhood-name-candidate:69b73bcab7df3ffa3eda91c54e9851d423126d7973fb8fb902b002ba2dd45330",
      "neighborhood-name-candidate:7875ac3d1a63ad002159f3e3fae0428c770e727413ab75f468cb0bc91e078b3c",
      "neighborhood-name-candidate:8b7aa4359db9bfbf279661f81e295818f329d36c9d3740a15fdc8a7eed00dcc4"
  ]),
  ("neighborhood-name-candidate:d1458377e88c22e0a474f688734cda6bc51b90b55fd71403b13e012d0d080455", [
      "neighborhood-name-candidate:639969094dd39cde06cdbfa86a07cb934ca155f6d2e1f914be27cb8f4a74030e",
      "neighborhood-name-candidate:d1458377e88c22e0a474f688734cda6bc51b90b55fd71403b13e012d0d080455"
  ]),
  ("neighborhood-name-candidate:dd3bb9d2f8e94b65653ffec7b3ecc85193108f71a0d4edcf7796c09567184a4e", [
      "neighborhood-name-candidate:5d5b0d471a296760b39d76e05e5848dddbeec917650416696d0b1a65555e98ca",
      "neighborhood-name-candidate:77a9b73bcd947cf0f2853e13f7b490afb4a5c3c2e3b35762a328532a2a9eaa39",
      "neighborhood-name-candidate:a7b2ce87f8f969a56353610aecccbe8c456f79088b6610f9193539f0688fbf13",
      "neighborhood-name-candidate:dd3bb9d2f8e94b65653ffec7b3ecc85193108f71a0d4edcf7796c09567184a4e"
  ]),
  ("neighborhood-name-candidate:80daa70ac97524477b58f80f17d29b6ae6064050abde7e1bcbac8deac3c7a9a1", [
      "neighborhood-name-candidate:80daa70ac97524477b58f80f17d29b6ae6064050abde7e1bcbac8deac3c7a9a1"
  ]),
  ("neighborhood-name-candidate:9b24abc9c8abfd7bc2db20d6aab24a5bbc44224b05f02e4c02f06485671b1614", [
      "neighborhood-name-candidate:1a0eac2d3abec0ead2cfee23708773e23efc202dbdf084e6e7d219ca4df36a41",
      "neighborhood-name-candidate:9b24abc9c8abfd7bc2db20d6aab24a5bbc44224b05f02e4c02f06485671b1614",
      "neighborhood-name-candidate:eec3c3776ab1c89bc1f4ccceda71e9d2f1ccc19d444e3ada513d182152ccc2d9",
      "neighborhood-name-candidate:f27ebe35bc1511e0357e97ba8dc9bad5cc0028213c0fc340f3fd6e4b587c537a",
      "neighborhood-name-candidate:f5bd6e4302109fa023ed346a3c676ce506f6d8a7e7fc2b5f052e02f920b5b0f2"
  ]),
  ("neighborhood-name-candidate:fb5e03f3eb0a104d76dad3e164bb994b5115290230a82ac1badeb8747486e3aa", [
      "neighborhood-name-candidate:090947cd3c22cf9bf4b3e846fa81455705233925678a11a38890dd964c3e543a",
      "neighborhood-name-candidate:2e031e648775a101b10a18bfca0214d796ac953b357e1bd73b016d05f11f0b06",
      "neighborhood-name-candidate:3d98ee85e673bd1053339ced422f1cb2b160aa44ec397ee40fdf2b59fbada935",
      "neighborhood-name-candidate:9f0dbebf55750540fae7f6e79a4a50ad8f8ef1df8e16d19ce4d7032a764a9e45",
      "neighborhood-name-candidate:d3412350721718b9de06356cae4b33bce6a8f53dd2106ba49ebfb4b906d3389b",
      "neighborhood-name-candidate:fb5e03f3eb0a104d76dad3e164bb994b5115290230a82ac1badeb8747486e3aa"
  ]),
  ("neighborhood-name-candidate:448c0b8ebd758fbcbf211a7c2fb6906c215e98d581dba16799fbe959e6d329c9", [
      "neighborhood-name-candidate:43253f2b912dbf180d227cbc3f5d4aa2d2a231d45819a1a79aa97bad986b1b3a",
      "neighborhood-name-candidate:448c0b8ebd758fbcbf211a7c2fb6906c215e98d581dba16799fbe959e6d329c9",
      "neighborhood-name-candidate:4e4ad4f850d1e850add5b2b7c1c0160fc57b32fa93b44679a56245ade4af4776",
      "neighborhood-name-candidate:53a386378824ec0665ece6d002016882eda4a7519b373ccfdc236a0b80bb8eb1",
      "neighborhood-name-candidate:7fc2bd2d089f772964059d3dfb3b48f000442852aa8418d035d57f65da5116fd",
      "neighborhood-name-candidate:ace705193e1a2ef73570896e71323857bd0531c8e417e04739b6898086b448ac",
      "neighborhood-name-candidate:f53e6d17611b9b0e14ab22ef046186e48ee8bbe73e0efe0ce8f66c8135af17fb"
  ]),
  ("neighborhood-name-candidate:b5020859580919c6099f52c19ddafa583c449e6c20f73406f25fce7fb4031bde", [
      "neighborhood-name-candidate:1cc91a5926424e543d8baa00133fd51723f6cd51214f106d9a76cbe6f5061ac1",
      "neighborhood-name-candidate:5280233c9a7626c386550db877dafdd987e46913c9554dea90f54c9a4a06b4a4",
      "neighborhood-name-candidate:b5020859580919c6099f52c19ddafa583c449e6c20f73406f25fce7fb4031bde",
      "neighborhood-name-candidate:bdb818ad4fffb5f2201974fc3934b1bd5f92dc09a6f4695b6c78a280cedb6399",
      "neighborhood-name-candidate:cc9111f3207d79735675e85b8bbf600dae59be6e83bbb536a5e1b7ea7e147eee"
  ]),
  ("neighborhood-name-candidate:a4d788264ae669acdc7a9ac15797931e9b0b36e54597e5b7d2860fb7c65eed67", [
      "neighborhood-name-candidate:a4d788264ae669acdc7a9ac15797931e9b0b36e54597e5b7d2860fb7c65eed67",
      "neighborhood-name-candidate:e6d46968d0da5e8c8a0f9358c83aec9b442cfd62e9d2a40403063f0d2e035d6b"
  ]),
  ("neighborhood-name-candidate:11739540b882e747e8202f24ad2ce9874a40e061cba7baba9547c951cae9eb8a", [
      "neighborhood-name-candidate:11739540b882e747e8202f24ad2ce9874a40e061cba7baba9547c951cae9eb8a",
      "neighborhood-name-candidate:262d1dff094208b5138bd621b9993897d900000f039775b54d43b2e6f681bc98",
      "neighborhood-name-candidate:9b7075aeab97c13dfc4d9015a536a07a70688693154ed58506744390e12d0be8"
  ]),
  ("neighborhood-name-candidate:dcf304f0ce975dbe95052551ffe36c76edbb4599a753bb06b24fccedcf03fd28", [
      "neighborhood-name-candidate:0c6c72f18b482d8b274e1cc8a6f7873bc58d827220d168678dd73f51faf87ad1",
      "neighborhood-name-candidate:546b92d4d60f8e386727c0b937100300a3ccd89fd268a9f3a6392dde15db4ea1",
      "neighborhood-name-candidate:758deeec5d33f4b9110d729cd110a6713d00488bacd342eed31a68fc3e368d4d",
      "neighborhood-name-candidate:d492ba22b160f7d685c883bb962ee791f7d72d66a66f79391faddbc039b4679b",
      "neighborhood-name-candidate:dcf304f0ce975dbe95052551ffe36c76edbb4599a753bb06b24fccedcf03fd28"
  ]),
  ("neighborhood-name-candidate:940db152b7a084b597be1180bedc2a1ed9aa836f2b2bedecf761855dadb4e42b", [
      "neighborhood-name-candidate:8e629f22f5b55831b2088a6fc2e982b66fb46ad1f78417b34d657eb0de9ce44b",
      "neighborhood-name-candidate:940db152b7a084b597be1180bedc2a1ed9aa836f2b2bedecf761855dadb4e42b",
      "neighborhood-name-candidate:e0ac5e92c4e3985281c40614a9562b8c9a64000d7fa1f5c98b76ac454118baa9",
      "neighborhood-name-candidate:fdc35fce9c150cda1042d6f3eff40213c03263fa9a2e858c26a057c1ecd0b3c3"
  ]),
  ("neighborhood-name-candidate:eded8c2107b1308c30f8eb6bf4753977b9814738cf6bd358ff3d7a15a1c9e683", [
      "neighborhood-name-candidate:ecbf69a242abb3003e5b605fae46375fea2ff76288d8c79ddc336db59b737cea",
      "neighborhood-name-candidate:eded8c2107b1308c30f8eb6bf4753977b9814738cf6bd358ff3d7a15a1c9e683"
  ]),
  ("neighborhood-name-candidate:f4458120d5cb62aa42afd239b9ba953a2ed68c70cd5b09c4670a30605ad9f206", [
      "neighborhood-name-candidate:2027b4d6e9d6ab25579a4ecaa690f064d9bb5ab274b9b9abcb8d2afbd90085eb",
      "neighborhood-name-candidate:35fe8264403b740c2db49b592d054615a74fd3dcdc0e5dc872a433550d1e7223",
      "neighborhood-name-candidate:c39a4c86c2771649b3c0a4169ad1157ae86a5e2dec2fcd7c5e5e1a7c19c84481",
      "neighborhood-name-candidate:f04e8bfe75c2c6e9d89c555054960c2f7e38946e37baedf325ff59f08d2b5509",
      "neighborhood-name-candidate:f4458120d5cb62aa42afd239b9ba953a2ed68c70cd5b09c4670a30605ad9f206"
  ]),
  ("neighborhood-name-candidate:fa135280eee15f02e2793400f2ff43d2b3291b6bb6f6a2de034a2892913cacb4", [
      "neighborhood-name-candidate:02a19314ce6798b5abf549db6a295ea42e0d87c6e0d15c03782a34fd50b3bf22",
      "neighborhood-name-candidate:10b5bf7aa50418d0fe11c71c175ff28513954aa6d61c527d21e3f359a1ee30ce",
      "neighborhood-name-candidate:26b141e789b9e0c5c116cf29e7c3bd716599bdcbf5783d20b2f1e87865b0be39",
      "neighborhood-name-candidate:3944eb1f8cdbc658033c58714cdca1b70bf9db120b09c07ba9c7d2dbc3c576d9",
      "neighborhood-name-candidate:6c8180005e981879b4a760d5f1186d5ddbdfc08de0d4cbcaaf8fd793c1ba765f",
      "neighborhood-name-candidate:6e11bfe666a2f9517113e373e242115df1ca2ebd629ae9b45d1e71e643a4398f",
      "neighborhood-name-candidate:75b7179112faa969ad3085eafa372d64299e839ec10a2fabd228b66f1cc3e37b",
      "neighborhood-name-candidate:82d6fdf68d39c89fcbabe13efcff4151b3c122e88e822feb9814c1be92df7d2a",
      "neighborhood-name-candidate:bc55acdccd7a7c04e358cfb18d1b6ef11560bf2b2002e100d3ef03253ee6b630",
      "neighborhood-name-candidate:d8baa0781a3b71519c81b8cbd243fd6715c4ac5b958e4133f50c0fa458561965",
      "neighborhood-name-candidate:e3ae029cd5acc007a9e4a2416ffcf85fd7bebc81579954d63da5ee97fb738924",
      "neighborhood-name-candidate:fa135280eee15f02e2793400f2ff43d2b3291b6bb6f6a2de034a2892913cacb4"
  ]),
  ("neighborhood-name-candidate:89fc957174079a3e8018bd226dd85fca3a934ff2ea5ddaa7ba667270fbddcdf4", [
      "neighborhood-name-candidate:0c8a8a2266d6ad5118332d184c9cc8774a8bb7b7af62c1fb502aad8084dd356d",
      "neighborhood-name-candidate:3cbebc4fb37c9e1548f8c387eb528d3106443c8bdf6b635dc3341ba5bf41a085",
      "neighborhood-name-candidate:6f4601a220b32c94876fc55a7db527b5f269cfeea02617eae18cfb6720fcf2b8",
      "neighborhood-name-candidate:87c150290ef514ae0ef386f304af87430ac08e4764973188a74b4c4ee35ce7a6",
      "neighborhood-name-candidate:89fc957174079a3e8018bd226dd85fca3a934ff2ea5ddaa7ba667270fbddcdf4",
      "neighborhood-name-candidate:97b4119e3a5afc30eb96c7c6078c4b713fadf3b58749849cf09e4c5c789207b8",
      "neighborhood-name-candidate:afbe73e40be9899597b335f2058c62d2937ff022d8df4cb4acccc3a319c93974",
      "neighborhood-name-candidate:d96549d7ffeed27632fae571014b5da0fc7aba8743f84574981cd5f09d29176f",
      "neighborhood-name-candidate:dc4bde12d614b431c2fa072eb0c1872abd97b7abe46874f11483fadf266c6445"
  ]),
  ("neighborhood-name-candidate:a45e3727f4232dd943137b59a4f42bfed57c6d362dbffc7e103543949ca7e4cd", [
      "neighborhood-name-candidate:6cd3d1b462b1ca5b04da70e89d7e5e292f7027211684bdcdc1b4dc0b81a60e83",
      "neighborhood-name-candidate:71f2d6390be15643f75689f2865f78039a0d22954a3ab599de7bfec5dd10ce00",
      "neighborhood-name-candidate:a45e3727f4232dd943137b59a4f42bfed57c6d362dbffc7e103543949ca7e4cd",
      "neighborhood-name-candidate:ace33ece501cf00bbf01aff38b67a90b0676414c0b59c434c48ae2eaf177181d",
      "neighborhood-name-candidate:e95e0b3172083a7ead31ff9e960651695697fa33d008ea22a958c491eddf5dae"
  ]),
  ("neighborhood-name-candidate:35ed2416dd219a190bfd8e179d518ae56599a354f2ff8e1a50ccfa97cdb738ba", [
      "neighborhood-name-candidate:225e0bcf5224ff11132f6d7faa62f0bc424982eb941e046f280ddbc61dd87c0d",
      "neighborhood-name-candidate:35ed2416dd219a190bfd8e179d518ae56599a354f2ff8e1a50ccfa97cdb738ba",
      "neighborhood-name-candidate:49cfb3d09063a8cfdb1e438d530cb913415631553166d8f61ecdbee3b9ad5f2f",
      "neighborhood-name-candidate:77b2d11434122ef74b3e10579e9732ff8388fcbd0a23f0a39d99ed96e19b40ef",
      "neighborhood-name-candidate:91d0f29dd768451be7ca9b454ac18a68bca79ff32b54415b09f3b17b81fa7e40",
      "neighborhood-name-candidate:ba72dac6bf0906f46bcf0f66c5a9760f7ffdb216403ba110d4b54c47d2d552d1",
      "neighborhood-name-candidate:d40a7efcf535870a171d1e033378ea21a11cd1b5eb33efb72668666f9c570940",
      "neighborhood-name-candidate:ea9841f2f618195256e71232b7e099665810b87692b18e8aa6c89c49769aa40b"
  ]),
  ("neighborhood-name-candidate:3034a08f745cbf400fea383750ebc3a9a2bb8e98244a0767ba9862cd5a87c30a", [
      "neighborhood-name-candidate:01c684bca5cc26c8bbca746b5256a7d0a3602f433505859aba85255cefd50cc4",
      "neighborhood-name-candidate:126a85548e1c9b6026afa4222e8ee301905cd200c0091f028bf9c97d90a28bf9",
      "neighborhood-name-candidate:3034a08f745cbf400fea383750ebc3a9a2bb8e98244a0767ba9862cd5a87c30a",
      "neighborhood-name-candidate:31adf05b94cbee27ad602cfc6ee07adba86e6ee7af70c4f4cef357d042872052",
      "neighborhood-name-candidate:8b9907d50b6ef153da2b581f263b4eb691ade334901eacc6aa31d2203b94d881"
  ]),
  ("neighborhood-name-candidate:8a313b6333c78eb9caad7f3d091e6b406251a31fd7213082e8de03a276c366f3", [
      "neighborhood-name-candidate:2f824b0ae6ac176730549fd1be52b93c7b3979515d6ec25ca42d5173156cd744",
      "neighborhood-name-candidate:37c58501995de221ef7f02cb16d65ee9cc574866faaf6b33e3986f86510c0df6",
      "neighborhood-name-candidate:40e8b830ed5e0c4904529dfe809f6209a2c5373f8829201e82fca207d74076e8",
      "neighborhood-name-candidate:420069b61a46d66a6eae236f4e9f850347668f3abf234764fa8348421e4289d3",
      "neighborhood-name-candidate:6ef1ff2ad56fec0f230c31e771998b2315d0c2604da222a5751682a6dc3ce427",
      "neighborhood-name-candidate:7822465e8142b01e2cd0d35de0b4bfc7bc5f527183d159e7758adee8b0c27f1b",
      "neighborhood-name-candidate:8a313b6333c78eb9caad7f3d091e6b406251a31fd7213082e8de03a276c366f3",
      "neighborhood-name-candidate:955bac209bd7d902e5d17033455ada2d38809b083e4259c19a8729369b5ab2cb",
      "neighborhood-name-candidate:9c70f1e4d195811da645b607dff7adb9feac099be52645c60a27d363e45dbdfe",
      "neighborhood-name-candidate:cfcfae8df4a9ed1eb85128db88444c6f77d4c9f82ed2876ece22ef195be985e8",
      "neighborhood-name-candidate:fb28de43e6a7c64dc7b13e4d2758235f9f6219a92db3e553e0d33a3d368e56b0"
  ]),
  ("neighborhood-name-candidate:56339c3001513f53dcb368931a3540296dc4fb02e777c62879782246a7ee1b03", [
      "neighborhood-name-candidate:270b7e5547874d4ed933b1481333a66afb427e7ff502af726e489cfad6f4e526",
      "neighborhood-name-candidate:56339c3001513f53dcb368931a3540296dc4fb02e777c62879782246a7ee1b03",
      "neighborhood-name-candidate:61bb4fbf6ab7589827e66652d5d13f2fdc94161fe966bdef6247554261381f9b",
      "neighborhood-name-candidate:dd092e0fd3f97fea1b908511b3f0a0b6b00521d55b84253a585edcf61c7a4ee3"
  ]),
  ("neighborhood-name-candidate:db4ec5b981670399354f2bac7b747ec7cf3c5cec11a7b610e7b85ed74a2e9433", [
      "neighborhood-name-candidate:00c54698a7813a4ecb7eef7232747e2e6fbfb2c7b41dcc45cef37371ec22a39a",
      "neighborhood-name-candidate:108c997c0323edb85cc52b005e5a839bc1853eb57efa36ba8b7b9e10d6263bbb",
      "neighborhood-name-candidate:10af91f7a611e525167797e6437e0107c120d5ac363f29448e93def4f9eb365f",
      "neighborhood-name-candidate:28ae541440606927e7d49ed7a45fd80ae1f487f63b2811d9a2a9aa6067e6f7ae",
      "neighborhood-name-candidate:521723b02740c4945e010a2e92751c32b1389ed68a37dd872bf9accbf82e834f",
      "neighborhood-name-candidate:db4ec5b981670399354f2bac7b747ec7cf3c5cec11a7b610e7b85ed74a2e9433"
  ]),
  ("neighborhood-name-candidate:2e824e6229baf1e4fd6082b84fbab6360871becc6558c75ddfe07808531187d5", [
      "neighborhood-name-candidate:02aabc4b4394ee89d082d5894c4da08be58be71955afc1f4360a44070828a19e",
      "neighborhood-name-candidate:19b55b530487a081128c1bb6451131de0e456312524814e046fddcf852017686",
      "neighborhood-name-candidate:2e824e6229baf1e4fd6082b84fbab6360871becc6558c75ddfe07808531187d5",
      "neighborhood-name-candidate:2eebbdee8f233f59f79f037365fd1f7d4e89e525929420d2d2b8a1c215b53713",
      "neighborhood-name-candidate:5aed4e80d3e011ccc3e1ae666bd129c45071338470b8c062c4c2495149cb1b28",
      "neighborhood-name-candidate:8a2672b5c9f5621ae5a533060dcab67ef49369fc7aba991142ac8c129904f53b",
      "neighborhood-name-candidate:91b90b2fc658798d13444d8984230053059ec540506f40b554a1557edc75db86",
      "neighborhood-name-candidate:a06d6872de07e7719d15f6edac3acac3f1250c24725a2f9a8bbf292408c9d2b6",
      "neighborhood-name-candidate:d964ef9f9737e9e1cb8b64d03ca9db55700533c44abb3b5ea380ed1906ed2736",
      "neighborhood-name-candidate:e0ee8f96ace89a5f524dc48fe02e9848b812fbef89a92830bff66c4924ae5855"
  ]),
  ("neighborhood-name-candidate:d2df3efb4050fc8c6e121bd9f185f626f419b51cf935ec3c18e2f3b74b231be2", [
      "neighborhood-name-candidate:c5806897d14ed7e7345979dc3673e426f25b792fbd9a1ed7eab35de49694874b",
      "neighborhood-name-candidate:d2df3efb4050fc8c6e121bd9f185f626f419b51cf935ec3c18e2f3b74b231be2"
  ]),
  ("neighborhood-name-candidate:c7329eb465cefcdaaab31bf35c6eaa830d0c8f0a6ba6328c715d76cad30fdf6e", [
      "neighborhood-name-candidate:7b3d222959914430e9bdfdbe41336afe5fd06c041456e013492971166e847ab2",
      "neighborhood-name-candidate:7f3ec6fc26eb54b287fdf6c5e8bfb44fa4375a7afe22c368f3b634f1d553bcf6",
      "neighborhood-name-candidate:94da80c886077ea4961c4e29b692af60eb7525b884cd4e98501db96c4cf8be1d",
      "neighborhood-name-candidate:c7329eb465cefcdaaab31bf35c6eaa830d0c8f0a6ba6328c715d76cad30fdf6e"
  ]),
  ("neighborhood-name-candidate:28b2ee8bc7e1b349baa63a46e21bfc193a79d6147a454c89767ac1821dbf3c68", [
      "neighborhood-name-candidate:101123b0332b5924b207a831dfa0eece8eff91b9fbb18351f335c87cfcff6d59",
      "neighborhood-name-candidate:1a254a920e78dcb14955c308d9003243e89d247617067c3033ef59d2d9ded056",
      "neighborhood-name-candidate:28b2ee8bc7e1b349baa63a46e21bfc193a79d6147a454c89767ac1821dbf3c68",
      "neighborhood-name-candidate:4619a53f8d7900996949f3c70c324d027c24ff30d0112a0a69ba4cff4236381b",
      "neighborhood-name-candidate:484668192506891049585cb418af4d1c1b237e9853a4ecf4cbe2240e2c0ff057",
      "neighborhood-name-candidate:d5ba3016f47473a816aa9f6e6484a4e7981981638d69d93730f71e3c20ac1755",
      "neighborhood-name-candidate:e22ee33452dc0035d8e177b15a71e16a30f70e398af6791df12a8056d553dc36",
      "neighborhood-name-candidate:f42bfabf0795da577206e6dea16fbbeb6986e32a580a6d2344e17fec284084ef"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L128850).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
