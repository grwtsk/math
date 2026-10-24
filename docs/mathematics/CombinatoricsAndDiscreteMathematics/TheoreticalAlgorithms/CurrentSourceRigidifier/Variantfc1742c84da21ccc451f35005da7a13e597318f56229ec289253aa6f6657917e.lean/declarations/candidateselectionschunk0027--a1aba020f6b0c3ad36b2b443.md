# candidateSelectionsChunk0027

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ec479df4ca0ca0aa8f8a798e760788225ed0064cbf49f1fbd4583ae57413031",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0027",
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
  "slug": "candidateselectionschunk0027--a1aba020f6b0c3ad36b2b443",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51084,
    "line": 50721,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1aba020f6b0c3ad36b2b4433b9c0e62c60f745648027a91edc698e726c415dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ec479df4ca0ca0aa8f8a798e760788225ed0064cbf49f1fbd4583ae57413031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50721–51084.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0027 : List (String × List String) :=
[
  ("name-candidate:b755e18e67cac640c1d33c19ef319cca931ab32c9a9fc07443f135d8dd2229a7", [
      "name-candidate:7e20c1d0bf535a851d8475960c96a5bf958dcc7dc28f26126e537215e47f6125",
      "name-candidate:b755e18e67cac640c1d33c19ef319cca931ab32c9a9fc07443f135d8dd2229a7",
      "name-candidate:cf9c0234865e2700c96a5085d55f5ec7e4dc86ca8335bab5f0ff43b27a438c55",
      "name-candidate:eea77eac29f3039fe5d234836e194fe98546eb43d3734dd6c940e96bf9220b7b"
  ]),
  ("name-candidate:878992a40165e0de2cc5e5f03380e8de475f2ffae4d04f47699d6419fb6c2437", [
      "name-candidate:878992a40165e0de2cc5e5f03380e8de475f2ffae4d04f47699d6419fb6c2437",
      "name-candidate:87f07fc43c625b1c3b2902a64f0bd9696485d8438c452e328ba805b24c975c1a",
      "name-candidate:930af9324a55c34bda8c61aab6a87c7bf04e96995a5804707c2980cef8491076",
      "name-candidate:d823597921131e5bba0ef252260031c2f932aef7af1742ec323cd7fa6aeda2e2"
  ]),
  ("name-candidate:48b5e9989b1762895cb4a88fcd0437e4ca1f7f17e5fdd3f46b5d57b4f7d9774f", [
      "name-candidate:1ed50dfe0ad682a6e67f7e8518af35a538acd0c8ea0d6c3f1c38ef4446f70538",
      "name-candidate:48b5e9989b1762895cb4a88fcd0437e4ca1f7f17e5fdd3f46b5d57b4f7d9774f",
      "name-candidate:a473fc205db73b77ae378b6b6a6f4857527469370c25b90b06617678553231e3",
      "name-candidate:a7098dec4cecf2e30b0a11bc819fd1437579bf3daef70100544b9ff94ccad0fa"
  ]),
  ("name-candidate:c3450623fbe845d698a04ab71de424ba6c563ffdb3275fb9252dc64f111d11c9", [
      "name-candidate:5b6b5bd452531e0750069ecab57c48960543ad9059eb8106765544a23912c3b2",
      "name-candidate:904e39f746453230122214b918e39577c60ea1cb60220e241a5aa6eb991f4f25",
      "name-candidate:936f270de70204cbd6ab54219475905174782c79c07d3cfee729155cffbc7df5",
      "name-candidate:c3450623fbe845d698a04ab71de424ba6c563ffdb3275fb9252dc64f111d11c9"
  ]),
  ("name-candidate:a5d438848d95abfec9c51daf328424d1510898169f48379dd175f6b21df2aa88", [
      "name-candidate:a5d438848d95abfec9c51daf328424d1510898169f48379dd175f6b21df2aa88",
      "name-candidate:ed1d7e307744ae2a8e8a548e50814fb54bac5ba1807e064695dc65b6b4dd398a"
  ]),
  ("name-candidate:a72c99aae4b23d3138f1145a7db7319a4259d7df5274d7a6867f8e47e5753c8b", [
      "name-candidate:6e56047b9767464dbe1ea8e26a0cecf26ba5692b473a6ca43caf6b1dbcfa226b",
      "name-candidate:a72c99aae4b23d3138f1145a7db7319a4259d7df5274d7a6867f8e47e5753c8b"
  ]),
  ("name-candidate:153bf220f23922e0c504ddcdef89a9893adb88b63199117783d38512868c8fbc", [
      "name-candidate:153bf220f23922e0c504ddcdef89a9893adb88b63199117783d38512868c8fbc",
      "name-candidate:32873ea033cf02fb65d9b86d72ab29a213d1ac2e9f2807849eef8c8c1edfced0",
      "name-candidate:9b33cb8a62e389aaaca0c50977d9ecfe7cdb25241d3d30f19ab0d6d041d974f7",
      "name-candidate:bdf072ac90a088678610a2e8d92b7247c26215445ee181697644692b6c1be4d4"
  ]),
  ("name-candidate:aed7363c9d32eb3afeecbb55f16e4e5ac8a81c0fc3627e70429986528fb60f57", [
      "name-candidate:aed7363c9d32eb3afeecbb55f16e4e5ac8a81c0fc3627e70429986528fb60f57",
      "name-candidate:f11047ebaef3c8e45dadcebd0f8bbc5e4216ac8ca1670af8e48653df32c4834e",
      "name-candidate:fc4fd1f00470fbd7838ae97924c937b0d32635591c9205be76462a7d875eec9a"
  ]),
  ("name-candidate:7dbc70e7845d23c4d2ef8f5f126b0b1a61a3da1c8fd340bb4ccc56dfea532c83", [
      "name-candidate:23c7719f5261800791be8cd6fdb849f0da9cf035112c55c0355a589b34de6fc8",
      "name-candidate:7dbc70e7845d23c4d2ef8f5f126b0b1a61a3da1c8fd340bb4ccc56dfea532c83",
      "name-candidate:c782f91a8fbdeb3639e7fba5e586cf765989e27368c9dc6ea8797a3e47dec21a",
      "name-candidate:ca822aa01e4717701c36288275ee301f28b6ae2298ea8dc6fd87d2ea2b2360a9"
  ]),
  ("name-candidate:506881587b23bd0ef5b36a8ebe7995d86cca82f601aee6bda66b842bb590cabf", [
      "name-candidate:0a1a527cb7999ccc8cec86cd253a4eab5c28c1bf6aa4dcc06c791ed6e38b35e4",
      "name-candidate:506881587b23bd0ef5b36a8ebe7995d86cca82f601aee6bda66b842bb590cabf",
      "name-candidate:7eba78d709a8995897fc04947fe2ec083ed610c62ca58d2e5e2d216bb2a87fdd",
      "name-candidate:8455d494e8da4e08053b2652132113cafd3a49ec6d846a77c9645e658783bf93"
  ]),
  ("name-candidate:6697bc414f547e4704a68c563e2f481e9920ea841f168a9600bc9c6369cdfaf7", [
      "name-candidate:2309b654599075ef750006eb960f2eebd28ffe6b844107c9ac7f93af7937b540",
      "name-candidate:6697bc414f547e4704a68c563e2f481e9920ea841f168a9600bc9c6369cdfaf7",
      "name-candidate:b6a16c1757f8e92c18550da9a212b575506fed9ac937a9d512840ab52840d633",
      "name-candidate:f33f0bfb71c7262d41b33982305e6070e7378e5d094517379d1bd552e1aec269"
  ]),
  ("name-candidate:151ffaf0e3534626f028ae980526aea6e3cd92cde2d41e88105c216f790dbe08", [
      "name-candidate:151ffaf0e3534626f028ae980526aea6e3cd92cde2d41e88105c216f790dbe08",
      "name-candidate:46e50b03af7b7a3e09764684bdd74a07dd5ad3fc8442886388483fd89b085b08",
      "name-candidate:ac35a6011bf45a712fdcf9787a68425e9b91195e698218209899467893db4e0a",
      "name-candidate:e03d9cffeada6617e40daae48b2e0627e797f031e9f68b53bf7275be881e4e57"
  ]),
  ("name-candidate:ef619c38364c75614bf4658c50fac8d3686a3576de718dd9fa320edafd9a6d1d", [
      "name-candidate:1e055f4e68c9931dddf99ad5aa9c57a63afb2a1ffb0eda46662755bce933f7ca",
      "name-candidate:ad6deb35cec409f0089fa04c24f32fb0214b1c38619ddedaf9ba8184f711f950",
      "name-candidate:e9782f8c191c52b944952bd0aae94b798a70b08c3491a697bb9e3d6c0f4b32a4",
      "name-candidate:ef619c38364c75614bf4658c50fac8d3686a3576de718dd9fa320edafd9a6d1d"
  ]),
  ("name-candidate:f727de1023787138da8dc3b6192d693a57112a61e565a801c560977bd39d17eb", [
      "name-candidate:7b2aa528930c5f277dc529bfe8d1c81dc97758fafdecf9c64f3e55021091b231",
      "name-candidate:96fb6e975a4cf90ecb1bdf4a4f46567f4ca5510826f76b6e617ea63d2207ff11",
      "name-candidate:f727de1023787138da8dc3b6192d693a57112a61e565a801c560977bd39d17eb",
      "name-candidate:fe4ff9634e577fc875f1f5ee8890a022ce1d09554e4f9fbabb8b42a7e8590e34"
  ]),
  ("name-candidate:4d0caf1ed07aa3a40a71e9be14591345755ce1e54661e0c382fb3a6aaa8964cc", [
      "name-candidate:4d0caf1ed07aa3a40a71e9be14591345755ce1e54661e0c382fb3a6aaa8964cc",
      "name-candidate:f573999fb8cab54c0099139134b7c4beae123fc6eb98901ee52b8bb3a5f56a83"
  ]),
  ("name-candidate:54d8b3d251400a1bbf403e1dfeb831a89c161dfa1e88fded8beb454d28f5ec59", [
      "name-candidate:54d8b3d251400a1bbf403e1dfeb831a89c161dfa1e88fded8beb454d28f5ec59",
      "name-candidate:7cbdf850c8b771af441b173da9fb3d85314dd8ce96f97229837516c7447d091e",
      "name-candidate:b0b682cfd1b8508f5522df9613bb6c79e5a05145a3348b0289ee2adaeaf6e03e"
  ]),
  ("name-candidate:705eb3c4a204dfa1b6679054b10d6d6ea7c717980b1768ee7c4c10c41834311d", [
      "name-candidate:6cbafbcfe3a5ab0b839bbf8ea6bc6601c7cc617230360b00482b53fa1e53390f",
      "name-candidate:705eb3c4a204dfa1b6679054b10d6d6ea7c717980b1768ee7c4c10c41834311d",
      "name-candidate:8c6016326b94c7028ebccae4d71abc458fd2b29c70ef86a90fda6eeff362ac99",
      "name-candidate:f4b8fd92ded8203487664c9739f73b227f198a8b31bb127a5e503103bed777ab"
  ]),
  ("name-candidate:3bbfa2e5affcd1cdadb03d00366fa8be7c8c2d2083c3d3d51fe933efb91def85", [
      "name-candidate:376177b3fc5cf0c4772aeae1bdfeda372e3044b03f88a8ea7d389fab59721cd8",
      "name-candidate:3bbfa2e5affcd1cdadb03d00366fa8be7c8c2d2083c3d3d51fe933efb91def85",
      "name-candidate:69a0847130eb4533ff72a41dd03ba2a79ed3719ee87a7ea805775d6a2a03f64c",
      "name-candidate:bd1253e8f2f0fff6b30b86c8532823fd377c49cef825ff9857e7403e4367fb7f"
  ]),
  ("name-candidate:a9efe13f3749225d9c29366d91876abd2e7e3f9f204b3c065e9fe8b952a62ed8", [
      "name-candidate:a9efe13f3749225d9c29366d91876abd2e7e3f9f204b3c065e9fe8b952a62ed8",
      "name-candidate:f8d88b6986d17a85c840152e03c503653ac882998307f5cbab3554810170ac0c"
  ]),
  ("name-candidate:9aa519abfd1cd1c408ed3dcca88e528f006cdee20674ac58039a1177e142dba6", [
      "name-candidate:3e6af4d4d84f6df4bc9f1f3122893f555c3e7576aa4dd335757668172b9fd605",
      "name-candidate:9aa519abfd1cd1c408ed3dcca88e528f006cdee20674ac58039a1177e142dba6",
      "name-candidate:ca0d8e7be973b6008bfd8c36c75f9e67b7b086245cd8a761d428d56b2ca88c11",
      "name-candidate:e2d2f31c8d0ebabf9ba0a3e8473ba34f39f01dae8d757a55fe1655aece6eacff"
  ]),
  ("name-candidate:5bc0f345ef2702daeeea47c8daf3d7e6bdcff113bb906b9a3515a233f2628a7c", [
      "name-candidate:5bc0f345ef2702daeeea47c8daf3d7e6bdcff113bb906b9a3515a233f2628a7c",
      "name-candidate:7abd61b9898821cc168ade269ccaa19375a8d04f204b136bd4c541829df84c6f",
      "name-candidate:93ba02eb831c4fddfc824191ea5abe54d4865c4ad8a29c2e0547f87e120db672",
      "name-candidate:fda0af9da5292f8a5a619b27d8dc8801da7183cbe631eeb6cdd4509cc9865bea"
  ]),
  ("name-candidate:cfe2dfe557ad10c3cd813eb6e1fcabbca30f968f3dbfffdb654daebcc27f360b", [
      "name-candidate:3dfb8cd8641b5102ee307a0fec04576830eaf954aad155d40eac70d9c8d89c52",
      "name-candidate:4a9e9c26efd3ec0f976d7bfbf7059a974c755045e6f434e13be6eef38eaef934",
      "name-candidate:cfe2dfe557ad10c3cd813eb6e1fcabbca30f968f3dbfffdb654daebcc27f360b",
      "name-candidate:e5230665489f80eb413bea81bd8113a18d86377669293b08bcd6b3452ed38379"
  ]),
  ("name-candidate:26dcd44b41405f12af658fb8966bbfb1c548f6756c6ea9293a61a5c7af6fc63f", [
      "name-candidate:26dcd44b41405f12af658fb8966bbfb1c548f6756c6ea9293a61a5c7af6fc63f",
      "name-candidate:6780d45e3a280056c0d96df8a3024b4199a29f7efcba4a67cc7c196e32b7016c",
      "name-candidate:93e93cf36ba0a99587af3a3f195656bd0d09a7149db1a730d6cfca83264320de",
      "name-candidate:dd6d7a0e7b1e984bcc693b775c2f169f3f9c60af7684261a28d1df650b0f985d"
  ]),
  ("name-candidate:9c8501e0bbac06d14714bfe1f728fd65d40c4e0f1d6a51b856f5d58c9804d560", [
      "name-candidate:0b79169af0710225fd345fa6cbab76146b0a296e7b80f7677d14ed6d8088fc0c",
      "name-candidate:6fd35c60bc0c832baf7e19a50ea383a9a590c2d4d16e6a3aeaa68bc54a0d8491",
      "name-candidate:8a073426149febf2404e1c1c3dcb33e0c715a9e99c046aedd17d47437e62f506",
      "name-candidate:9c8501e0bbac06d14714bfe1f728fd65d40c4e0f1d6a51b856f5d58c9804d560"
  ]),
  ("name-candidate:07f5dec6a4837d217f09dfb8ff9f544e4cf79e93bbe447736f0c0437a185efb7", [
      "name-candidate:07f5dec6a4837d217f09dfb8ff9f544e4cf79e93bbe447736f0c0437a185efb7",
      "name-candidate:0a634361349252777c9e346cd9b5f930d5b8644b1ce6884eb345b9a2054ceb19",
      "name-candidate:215c4ea8005ec0ef0257fdfd4850f62eee12a6ac244ac892593ddca2e921aee8",
      "name-candidate:ccf202481125a6538a1d93651a7da7fe4d99299aeb6ea6128593a8e35c670d5e"
  ]),
  ("name-candidate:a58f5fa30dd943ce378077f421069d90c8f3dd89df4dfd38ab8095d64e83d32b", [
      "name-candidate:a58f5fa30dd943ce378077f421069d90c8f3dd89df4dfd38ab8095d64e83d32b",
      "name-candidate:dcb597b96376bec766dc951614537a11fde9f6c23e7d1da59ebf4d269998348f"
  ]),
  ("name-candidate:b1645bc6ee7d5c9e71ae8b00767bec00b9f28683d877f1bbbbcc8b5ef26a8a25", [
      "name-candidate:b1645bc6ee7d5c9e71ae8b00767bec00b9f28683d877f1bbbbcc8b5ef26a8a25",
      "name-candidate:d38900aedb759c09f527b01c902b8ab4a14a5ef9952cb2aa345633d78df13271"
  ]),
  ("name-candidate:4eb01e145086e1726bce0d9fcb2185c38cf2e423a26b1f8f18a98306c3d8541e", [
      "name-candidate:49e556668c428e8647cef49b174bd288fc1e7390178cfb2e272be7242856db9e",
      "name-candidate:4e53bc2dc871538eaec26b388ec9f58c98f9af09090e5cba63b66f2e6b83e30b",
      "name-candidate:4eb01e145086e1726bce0d9fcb2185c38cf2e423a26b1f8f18a98306c3d8541e"
  ]),
  ("name-candidate:ef31df6ab8df5d78900073bbd3059e5dc1af0c9a5fdd7ed156fa2bf43c5c43c6", [
      "name-candidate:9478fdaf36e512447a15c1b602b90c4682404c802d5681681a3f5985ce546968",
      "name-candidate:94fa5a016ecfe878fda734c235db9e17d26402b110eba57a50422fb0d8df9d51",
      "name-candidate:ef31df6ab8df5d78900073bbd3059e5dc1af0c9a5fdd7ed156fa2bf43c5c43c6",
      "name-candidate:ef6f770f96e807eddd11c2ffa102afb52a306cb73cff41470d10802b8996ecb9"
  ]),
  ("name-candidate:6b0613449b5e5d7e3e3366592d9c267e9a5a8a58c9659dc2cd238c18c7893532", [
      "name-candidate:11dde3933c135a5d30d2260d526624d3204309c543a55ad7b04ff07d7cf6740a",
      "name-candidate:187c422293409656ad7b0e694d97a7fed620c05c9ca612723c434b5075be5d25",
      "name-candidate:6b0613449b5e5d7e3e3366592d9c267e9a5a8a58c9659dc2cd238c18c7893532",
      "name-candidate:98a568bc7b576af752f63c2599f611d4e12232dc967df59dc86b42f8ba2b235c"
  ]),
  ("name-candidate:8906048d395f49d66eaa119ac3125c1188e8d8452e9b74aa8bde5b64fcb1caf0", [
      "name-candidate:335c995b2df5bfc277ab72a5e7efe185ed9ef221ca6a8aeeb258ec598761cb25",
      "name-candidate:4cfcfd5e9bb00a28bf5a3965f91cb4e5d2c55e576e878b660b25ff9cade7a0a3",
      "name-candidate:6845108ef9826b61fc893873758b5a4f1485938350397e7b9676a760f037e03c",
      "name-candidate:8906048d395f49d66eaa119ac3125c1188e8d8452e9b74aa8bde5b64fcb1caf0"
  ]),
  ("name-candidate:7fb49d612d9aeea95150f8fe2598607cbfa18dd1d7da9d8064aa842516e59c5d", [
      "name-candidate:74acdeeac8de15bdba10fbe977389e77dabefcba8f66859a450650eddb2c3a6b",
      "name-candidate:7fb49d612d9aeea95150f8fe2598607cbfa18dd1d7da9d8064aa842516e59c5d",
      "name-candidate:8927a4847ea3ca3d96d974e29c8a4b993bfb9aed4590c09af6f6ffd0b75f1acf",
      "name-candidate:a9009eb28d09999c125a1747e66962fb4129c98392b5d52bd857c861f9c70d4f"
  ]),
  ("name-candidate:c11032eb86e6fa0e5dd1ca419ee4c73f898420d1445f2e7c6d3573dd987a1fdc", [
      "name-candidate:46e50c99f7717938841fa193d3931f14f4545d04e6ba4992bf3b11947df19c44",
      "name-candidate:6de172b06709ea281e446fc8b26d93b7ed2e782de9dbfd2b5c357095d41360b5",
      "name-candidate:c11032eb86e6fa0e5dd1ca419ee4c73f898420d1445f2e7c6d3573dd987a1fdc",
      "name-candidate:f93158f14ab7669e025fdd08c48d4d3e22ba97cb6f7fc7728d958c904af25183"
  ]),
  ("name-candidate:bd7ec5a1d6f3bd8b70fb79848fabf0e81fe5e3a03bd284c20c276f5421795509", [
      "name-candidate:51394765492d5b808141ac9a856ab8a234b974dbd9fba8705d19bf359c0650d3",
      "name-candidate:71874faffacf764a586350d0c83e983509b6a13850b208d4731c5cf79fe846bb",
      "name-candidate:bd7ec5a1d6f3bd8b70fb79848fabf0e81fe5e3a03bd284c20c276f5421795509",
      "name-candidate:fd4bceb767d91aeebe492b63d744238a5e8cf7f60dc29dccaeca351c1e67db5e"
  ]),
  ("name-candidate:d6570fc36c2e39571baa6b2b3be0a10b7fd11154cd50d23da5178c0f4fff2c74", [
      "name-candidate:8bdc44d62222344f0e1d2d00f9700dd94195de8b6ef0744a7e55d63fef32b94a",
      "name-candidate:bdd5fc92021b80926a016da825edb020ee943c1a748eb136de459917d6f91e2b",
      "name-candidate:d6570fc36c2e39571baa6b2b3be0a10b7fd11154cd50d23da5178c0f4fff2c74",
      "name-candidate:e08940a7608cf0d01c3bd9e317463efdce58eba2cf2a2a66b90ad9f3b866e65f"
  ]),
  ("name-candidate:6daa70659e926f2d07fae95b2e296a6c9514722b1d704eb8fa02dc895d4340c2", [
      "name-candidate:61453936162cc774953197051af7895683e2fd44e97538b3c7e776aac4c27f87",
      "name-candidate:6daa70659e926f2d07fae95b2e296a6c9514722b1d704eb8fa02dc895d4340c2",
      "name-candidate:d8ccf1949c6224e6556dff1df7580a82c7ffeeaf68b44b2c2d15531ba1d3f9d7"
  ]),
  ("name-candidate:eb07627eede6f8e026d72147f21c449147ca2d4e0ad34d779265c522b48fee29", [
      "name-candidate:19bad4849ae6396be2bf14e196ddac4ebbb6c7efb654d9ead0bd23438e394f76",
      "name-candidate:51c2468df25ef3573ccf4bdfcee71cda611f61b1be08f9a2451307832b108bc2",
      "name-candidate:886abec3d87635604000d76bbe2fc99610f0fdf608f3a74cce8f5d47cd51b3ae",
      "name-candidate:eb07627eede6f8e026d72147f21c449147ca2d4e0ad34d779265c522b48fee29"
  ]),
  ("name-candidate:6729684b0d3157b4ebe5a5cdf79b54caa689236318504c2201e5232092ebdd7c", [
      "name-candidate:1d1941f5518aef50f218efb0036dcb929bd7880299a84de89e66702fa8237f31",
      "name-candidate:6729684b0d3157b4ebe5a5cdf79b54caa689236318504c2201e5232092ebdd7c",
      "name-candidate:a131426b8a8cd591267f8e99e6500af276d3e4b6f6b2da2fc90403c88ddc5afb"
  ]),
  ("name-candidate:f1bf29a6dc36c82256baded9cbbd6753ad13c4a165f62e120f9d11808ca5de25", [
      "name-candidate:e0b56ad0221b8226b5d509d0e50466363202d13be94bfe8b150912ab7a2f314b",
      "name-candidate:f1bf29a6dc36c82256baded9cbbd6753ad13c4a165f62e120f9d11808ca5de25"
  ]),
  ("name-candidate:ace543130c6beb6d247da069eee1106e6f8b25b32d06d28bf1eb8e88acbc5fb2", [
      "name-candidate:16886dd57fb907c67d4c33f6971bb8e3d847383319100d0d0621408c005a302e",
      "name-candidate:ace543130c6beb6d247da069eee1106e6f8b25b32d06d28bf1eb8e88acbc5fb2",
      "name-candidate:dc4d6c69ab653c3eb91516e73f7d9bf962c735c57927edb5a7528d0e4a91eb64",
      "name-candidate:ff9709a1a4b9b9c19fade2b61049a9889721a94e8ea9a5ae9773169b9e2ee7a3"
  ]),
  ("name-candidate:813b115805d50874b77aad0526334839ef9c46fc41fdb50f54a81e1e149f9ab4", [
      "name-candidate:27a5f3a28af6e5443eefc63e1142d254c3660c2d31a4c562cbc48d339f0af311",
      "name-candidate:813b115805d50874b77aad0526334839ef9c46fc41fdb50f54a81e1e149f9ab4",
      "name-candidate:9adfc8569319905e5f7c6b6114506b4e2882db4d3afede117fd6d65f3f1e1d1a",
      "name-candidate:b079efcda7e4eb0f4dc2900573e901077e10ff2c3cef1c57e441aebaceb86cca"
  ]),
  ("name-candidate:e6852e44debf02730c400058af4a9e9a234842844e535d2a0f215365f0249d02", [
      "name-candidate:0a1f17e5bf120f32b1220b564d6e5837d1e05cde8905b4f9cba9c48ddd9c9631",
      "name-candidate:7e6913dcd8b76719a5133191fe943d02103d83751d4f4c05581500e928c3f6a5",
      "name-candidate:8d3ed6b7dc14b3916fb4a35f7bf72d22aafb1f772aeedfb2dcd3e07ce3933dbc",
      "name-candidate:e6852e44debf02730c400058af4a9e9a234842844e535d2a0f215365f0249d02"
  ]),
  ("name-candidate:6b41bb67ff30df1043eed91e932df4cc8f1323f7ab1d26c710a19d104282aca8", [
      "name-candidate:46861b64d31fa81f6aebce18cda85c7256028867e46cb1d6be445316756cfc7a",
      "name-candidate:6529598453344e6c4ec947828c0bc680094fac40fdd335c936fa308001992728",
      "name-candidate:6b41bb67ff30df1043eed91e932df4cc8f1323f7ab1d26c710a19d104282aca8",
      "name-candidate:af79c2cc1877674f4c50f249d8eda026153cfb984331d9603cae888e03cf7880"
  ]),
  ("name-candidate:74724daa63b8dae9b5714a23f94c9808bdf3d16448b476b18a67084cdc07a1c1", [
      "name-candidate:74724daa63b8dae9b5714a23f94c9808bdf3d16448b476b18a67084cdc07a1c1",
      "name-candidate:7a8e35760d146ecffbb7f89548f8f619ef773dee900f826e325ab504c050f85a",
      "name-candidate:8d00e7af070a7b3ee8a04af45787c5e54313816303a760f563f4fbb140954c1c",
      "name-candidate:bee0fe42a671de651fb94cc2bd9f5f9fc82a325fa89ef58e58e70015ebf1dca3"
  ]),
  ("name-candidate:dc7942777e027bb23f7d94d363d9caf4b2f40b491b9c82e6017ffb90b1c05eee", [
      "name-candidate:4f3d3703523a3e3039db7dad97cfca9107c7f8ffb76f29f6612908dbaa803904",
      "name-candidate:527d38a2228436ff7d2029f8a2a84538fe394063333c780ee338d1837ba272c3",
      "name-candidate:8e513c022ddb377b3ac04bf0be7bb8fbbc48a9f106327dfb4be328d7897de213",
      "name-candidate:dc7942777e027bb23f7d94d363d9caf4b2f40b491b9c82e6017ffb90b1c05eee"
  ]),
  ("name-candidate:9bc5925eba26414b3ca96aca7bd39904737d30eeb0ae681b92fab0af85dcb0be", [
      "name-candidate:64a813a6204134927076607da13e6017f8b138ae4e0edfd483bd543f4b8ccc30",
      "name-candidate:9bc5925eba26414b3ca96aca7bd39904737d30eeb0ae681b92fab0af85dcb0be",
      "name-candidate:aa859a23362759c03d4a471944e609fa9de44b59f946d67b842338dd8870069a",
      "name-candidate:b002e9abe9d469db2e4a3f3e87b73a2e7348e8983a7ce567482831e10d5e097c"
  ]),
  ("name-candidate:8fc8afc711a815f593a683a71c61dc052d218476497383bf331e32f94ab10e97", [
      "name-candidate:065916bc83d7904756a8498efc72019b8af59ae58ac7a014dfcde02bbfd2401b",
      "name-candidate:6c38d18a06b5a62ef8d8768828fb69e8e5bad566b0e9e7db9ef062109e0fc0c9",
      "name-candidate:8fc8afc711a815f593a683a71c61dc052d218476497383bf331e32f94ab10e97"
  ]),
  ("name-candidate:bdee3f30020f2fe17fbb1e960b20a048ad3e4708d7025ac8a34b309ec21f5f79", [
      "name-candidate:2b6e497e131f08849120d73ab9c0867649f6b746a3c9153cea0e90eac045b771",
      "name-candidate:35f69933ab17ee8837fb500a48271ea9ae216c3472addd2a0d606bb79ca4af24",
      "name-candidate:bdee3f30020f2fe17fbb1e960b20a048ad3e4708d7025ac8a34b309ec21f5f79",
      "name-candidate:ccfcda657a13d0c84ba9fa7cb7ab90f65d1723c6abf62547b33ce2d6a5a6bd2e"
  ]),
  ("name-candidate:e4c62815169b8e7f192595d2c0cdab40d3284483a0bf820d07c3d0bc60bead02", [
      "name-candidate:33967a7d9ac3e67a765885e55215e6f843fb2f133197705c96e8e9a7ca2c1f54",
      "name-candidate:3da53dd2c4dc64766a84e065c6174d11cae9afd54ccfba03d770a49cf41fcb41",
      "name-candidate:e4c62815169b8e7f192595d2c0cdab40d3284483a0bf820d07c3d0bc60bead02",
      "name-candidate:e7bfc0e76112457141ff704ac83943b3773d68d9e587341d42a312667c1b9d07"
  ]),
  ("name-candidate:d196475539e12c99b4496c3b9b747f6f29b028abbaff23bcdb4719ade11ef3a7", [
      "name-candidate:115e3a8f04c77658d6ea6d9a467cd51049b6c372e2a88ab2d871adac3885da12",
      "name-candidate:200ded9325f2432e99c55169159571b4758f958611b4cdfbe9ac3fe00515677a",
      "name-candidate:a8de8a6d1a8dbdff1a1a90ef7ef7780a04d2633afad83bdbed2568d0949be811",
      "name-candidate:d196475539e12c99b4496c3b9b747f6f29b028abbaff23bcdb4719ade11ef3a7"
  ]),
  ("name-candidate:9bf8c5159e8f504674e12fbbc0dbcc61d3af76124c6236ebb1b10187aa0b2091", [
      "name-candidate:84e7f9754bbfe22646736ac50a6b38c34c68283b8cc7af2062f599152dd0f985",
      "name-candidate:9bf8c5159e8f504674e12fbbc0dbcc61d3af76124c6236ebb1b10187aa0b2091"
  ]),
  ("name-candidate:5902f96e82d62d146134f1836e236f5d3fadee348712d5aafb95a0dd6bb0a1e9", [
      "name-candidate:08c1391901d9a94eb29848d6c2845b7665bbebcbb88f2023dbf959fbc5e0d7b9",
      "name-candidate:25bd6de785591f2ecb5ba70d248fc6ce47b86a0b031cffa3dc79ff235ae07b50",
      "name-candidate:3ee08afef8d05bc755da1ff967a61fb9b50d39def301b53919314afb8c4ea277",
      "name-candidate:5902f96e82d62d146134f1836e236f5d3fadee348712d5aafb95a0dd6bb0a1e9"
  ]),
  ("name-candidate:17974ddf91bf4ab92ac6ad83d98e5b62cc8d65bd629103388a791d11c9547880", [
      "name-candidate:17974ddf91bf4ab92ac6ad83d98e5b62cc8d65bd629103388a791d11c9547880",
      "name-candidate:53d2f88142b1b5a03bcd64f29b8a2b36cb16b792efbe948d54e5e7abdced27ca",
      "name-candidate:65bf7facc737da1c04aa211c8024825400b3a15210b0b1fda7a6996e58dd5fa6",
      "name-candidate:6f1ef87f89f48b238da9e407822a61e0368444e72a487a0f602f493f3ace1002"
  ]),
  ("name-candidate:692843480655b50c7d06fcd7629af06296b606dc0bf4da4307a93cf20b383f26", [
      "name-candidate:692843480655b50c7d06fcd7629af06296b606dc0bf4da4307a93cf20b383f26",
      "name-candidate:9d5903ea735c5913504269aa1e9623869ed76cf9ab46b9a1a33ce96efb0e9456",
      "name-candidate:f06fbefe36e7aea352e7958d00b5593055953e9366ed344017cc48fbbc055c04",
      "name-candidate:fd93cda722cf48f53473705e6adbd66173de3a1b942da34d26a29c961c222655"
  ]),
  ("name-candidate:a231626db59408a4958fb75a1f934aadcf1c4c6d06ec361c21b4da5f668616aa", [
      "name-candidate:a231626db59408a4958fb75a1f934aadcf1c4c6d06ec361c21b4da5f668616aa",
      "name-candidate:d27dfde1091904572b539ee7d46b26b757de3ceb1ff33f47ac7d6ed154a2cf42",
      "name-candidate:ec33933a6eb8672fa27e76ef27542b31bec201810650e9e94688770b0082ae5c"
  ]),
  ("name-candidate:c470abcb6cdb1f05b99486cb6cb44787a1b2f6db454ef2bd6d98ccee5f7aebe5", [
      "name-candidate:07eedc86886c4d3694ee9d511813f0bc9671dfd4fd4710aec31da58d356b4187",
      "name-candidate:a5ba0fe1ab43a42935f25e75653775102777e4c3eb43dd33ac7fbcf43715a34e",
      "name-candidate:c470abcb6cdb1f05b99486cb6cb44787a1b2f6db454ef2bd6d98ccee5f7aebe5",
      "name-candidate:fd784887c86ffc80768d2885c432e929116e37c09a736c5b96a5130d3d9d8a3b"
  ]),
  ("name-candidate:deff57db299d8236706b1bd8bcd4b7bb516a712f7269605c331ec155fb84bfbb", [
      "name-candidate:2cede502e7bf8b8aba4370af6618e18ab0dd42e352408485bd003102dc009957",
      "name-candidate:7eecc128851f3def782bd8208d8808a1f9835d319b7ea4f2b4a5b9f64d2803d4",
      "name-candidate:87d936944220c355763ea4789cd6b03935f66d04976a69b505a9c01656519cc2",
      "name-candidate:deff57db299d8236706b1bd8bcd4b7bb516a712f7269605c331ec155fb84bfbb"
  ]),
  ("name-candidate:2bf8f1521572a4794e7562acf29e2cb97c3e03ac2f9954797a9f8981e4a6800b", [
      "name-candidate:2bf8f1521572a4794e7562acf29e2cb97c3e03ac2f9954797a9f8981e4a6800b",
      "name-candidate:afb2721d8746f734e01517d75db22c45b9fb36009594659a105675efa41a5086",
      "name-candidate:dc04da180c5cedf65f3219d2f3a50c6e43e3f87adf22730221955eb47dc6292b"
  ]),
  ("name-candidate:614784423c2b627a350e69407bf815fa1206a58e923e621764249108aa24c87c", [
      "name-candidate:34385442526bb615626067dcdc9e473110fa6fbfe1760799d591288110318f67",
      "name-candidate:47cfcbd92a38f91b75ec205f6e22dbf4139f05d1cbe7a75a47f23dba400a087b",
      "name-candidate:603b2faab0e6a251fbdb0de9f57b9408cf05d13939808d3d19069e2f3b123d86",
      "name-candidate:614784423c2b627a350e69407bf815fa1206a58e923e621764249108aa24c87c"
  ]),
  ("name-candidate:32f1a2854586e26ce6d5e0825a0ee9fc8c35b15885618e3f2de98852f58e893f", [
      "name-candidate:0b11a611578018ebd1d32abdf32135eedadf0f7beba05341db45826677a45436",
      "name-candidate:0cec9007b4b17f09b362bef4b819028fa628ccae53b6011ebeddd514018f898c",
      "name-candidate:1a705bb84ae2adda41e795ae5eb6e3b8a2ed5891d3a8e1296bb2360e66d21a0b",
      "name-candidate:32f1a2854586e26ce6d5e0825a0ee9fc8c35b15885618e3f2de98852f58e893f"
  ]),
  ("name-candidate:56a7857c873120710e67256f3edc08151c234f8d2ab47dc6c2d180f3f8633e69", [
      "name-candidate:3076a840ce4dd7152c0fc36ce72b7724fafe9eb39705a88b6aa5a5ad45bc39e7",
      "name-candidate:3bd200848f3d52a3836d59e74a7d91f15a738b81ad5abed03ca5253a79e41ae9",
      "name-candidate:56a7857c873120710e67256f3edc08151c234f8d2ab47dc6c2d180f3f8633e69",
      "name-candidate:97a0c29f23a7d26324c2f30773e28dda4c73b614e97cca439a56332ae8675e52"
  ]),
  ("name-candidate:02bed8093dc6a3e94021790cef64c05c1c9773612e98fe753f49a1e217c2d975", [
      "name-candidate:02bed8093dc6a3e94021790cef64c05c1c9773612e98fe753f49a1e217c2d975",
      "name-candidate:42aabd60955fa0a8143f52cc53ac6b733f778c5434198b5907f7a6d09d237476",
      "name-candidate:6e3b4b7297e01400b2e48d1ff6d74e57e10c745bde7e3a643117efa6b3f68c1f",
      "name-candidate:9a87fcdeeface6937f54e445845bb2525ac0e5c4f08b7a37249bd7160ef8d1e8"
  ]),
  ("name-candidate:875eba0b434da660be8024acaedb698ed4a9310115999dd0eff4ff09185ea832", [
      "name-candidate:50e18dd4b28f2bfb39767558a4701bfcfaf4057f3e1f2c430b1e33b869a40d2d",
      "name-candidate:875eba0b434da660be8024acaedb698ed4a9310115999dd0eff4ff09185ea832",
      "name-candidate:dceae8e5c63ad23a862ee210a8c9c011c73fd9465209307881514914e5d402b2",
      "name-candidate:e63d16f5fd7ef7c6c014397bd8f20c7abce90f935ff4814660f99d119d577f19"
  ]),
  ("name-candidate:223d57ac4b7448bc3abfd6ffe47c853782e28ebdd6d78ec28bfe02c0660e3d20", [
      "name-candidate:223d57ac4b7448bc3abfd6ffe47c853782e28ebdd6d78ec28bfe02c0660e3d20",
      "name-candidate:95cd43ac4b514c5b93c5bc0b7c6ee0434a6459984a8675a68ced7bf64e02b1c2",
      "name-candidate:ede64ab08c11983024e9e054856ced9cfa03dac8e4a2c3d3576e22b7e2eb01c1",
      "name-candidate:f30868d6ed4d3bcb6b8efd8e2dc6fb892c3d30bf32e5484047c9fc399e49addb"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L50721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
