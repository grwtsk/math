# modelCandidateSelectionsChunk0017

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f41f88025bfef32e7deff6b5bfbd2d5ed4ba94a01d2841e2ed2ee57a5f6d8ee7",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0017",
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
  "slug": "modelcandidateselectionschunk0017--d6b0cae20ad826a7cd70ca22",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60441,
    "line": 60075,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6b0cae20ad826a7cd70ca22010b9989b59472d9da025572656cc8847663a096",
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

Occurrence: `declaration:f41f88025bfef32e7deff6b5bfbd2d5ed4ba94a01d2841e2ed2ee57a5f6d8ee7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60075–60441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0017 : List (String × List String) :=
[
  ("name-candidate:ded75d26a8a8c89e8f40033b783697c2c0788092aa2293d6e1a8c5d9fd6df734", [
      "name-candidate:719dec9e7fe2b99e281d002b5301808658085f03039127bbee28c2e11d1bf4cb",
      "name-candidate:b739849e43f1a558d40156f2c05a0f65f71a03df19dcf2c5927862d497595a9e",
      "name-candidate:bbc4334ac9266d9876734f19d96156ff83d08a34c874e42b70b86e3b31c305cc",
      "name-candidate:ded75d26a8a8c89e8f40033b783697c2c0788092aa2293d6e1a8c5d9fd6df734"
  ]),
  ("name-candidate:dac926d1fcbfa522b6f2e023d1ef8f574777bc52030c8a4643934ca0161efc8a", [
      "name-candidate:63243c79927984cdbf7004d21d0a373d50ee02179db82f372f7ac9be2737925b",
      "name-candidate:c5017cd87ab6caea794f31391cb18d39476b4cf4e6b58cf2574904355543b65c",
      "name-candidate:dac926d1fcbfa522b6f2e023d1ef8f574777bc52030c8a4643934ca0161efc8a"
  ]),
  ("name-candidate:15598b40542a1803b2d40bbc29e01bd7064aef7dd4a53578effcb04ce761e962", [
      "name-candidate:15598b40542a1803b2d40bbc29e01bd7064aef7dd4a53578effcb04ce761e962",
      "name-candidate:65de1d6c4992a8ab912b183a109e9e843b079d783d3b200c466505e51bc2e2e5",
      "name-candidate:7a35f58748894143d66fecc24a88d56a33034460bda2db6e74a4318a1891ff24",
      "name-candidate:b1b5a98ae5addcf0eda8b940893b3be42b0f70a3be58ff4331c3d06b510a7d1a"
  ]),
  ("name-candidate:3c526c8a7f1b0c5ef3b8748a4d669aa203d47014af77a14439cfc3a8fff2887a", [
      "name-candidate:3c526c8a7f1b0c5ef3b8748a4d669aa203d47014af77a14439cfc3a8fff2887a",
      "name-candidate:4c8c7c1048b5d181b47e58bba493bad09e89b54ec03e2dba22ad453a09a8f24d"
  ]),
  ("name-candidate:ade58b101119ed98ccbc938595f1e00a4cca1b2fc842f7d3a6093729c6637199", [
      "name-candidate:92805718cbfee7f2f3f70781bb28a47ab4b21993cff08d4791c0d2e9139cc98e",
      "name-candidate:ade58b101119ed98ccbc938595f1e00a4cca1b2fc842f7d3a6093729c6637199",
      "name-candidate:d8449234c0e4dff6339756a91744b33cdf8862f2134af10d6a4807ae9652702e",
      "name-candidate:e5597623e61a4168b69156f3923cf7c8f9a27e2de9b55a23293ed29d4abe579f"
  ]),
  ("name-candidate:3d1d652e9c32086329cd3a5c89559e729f9485d60404ce841748b8fe4e885d7e", [
      "name-candidate:3d1d652e9c32086329cd3a5c89559e729f9485d60404ce841748b8fe4e885d7e",
      "name-candidate:4fe5b877ebdd852499685580563eaf148e818c6bc883f6087ec7540c82132d73",
      "name-candidate:5ddfea294a1d39290c03cb309223ac220132107cde817fb869bcd4d4161c5726",
      "name-candidate:f92bee4ccb10bf922044a48eb7e00075b03c41911d80a0533782e50c5691ab1d"
  ]),
  ("name-candidate:e0f1a7793cc8829361426ec87266383520cdb8268cfc7412d1d89e2c42ff9cbe", [
      "name-candidate:3cc084cdb9c0844f32b809260860a54dee0e577bbf6c61788ef359c71bf1b005",
      "name-candidate:5df60d11b7ded829e7da1e95b3b5013509e7ef177587498d66ed9b12441879ad",
      "name-candidate:cddcff9f64a7c86736c175e1ebb88f811b3011372605815fc8f2d9f69bc8f366",
      "name-candidate:e0f1a7793cc8829361426ec87266383520cdb8268cfc7412d1d89e2c42ff9cbe"
  ]),
  ("name-candidate:94fdd4d58c0f11dc491e6865de902706dcffb56e4aa03cef78f3e02f29b21066", [
      "name-candidate:2dec808721f1cea31cb37918251d161f728faa9029b4862f3e8a18cfb65e6c8a",
      "name-candidate:51196a88cc3637687cbfda6e9fcddd9d913e73d4efb903dfda9e50ab6c064333",
      "name-candidate:94fdd4d58c0f11dc491e6865de902706dcffb56e4aa03cef78f3e02f29b21066",
      "name-candidate:f753f81c0fe8f9cf83afd176bedccad721f21b0b9283b35b1f969b2fcb2ce14d"
  ]),
  ("name-candidate:fff8dbadc05d440ff3461cecab69945afd443d839372355338e6d7eed037112b", [
      "name-candidate:003999cfcfdd0e23762f6c0929dc1af530ad1e3821bf71cddfff9ea3778209b9",
      "name-candidate:2f94ae92544bf86a9c302b066af848daf42ff8e319f0da571ecc5dc2d7ff7c2e",
      "name-candidate:840d195eed4a16bfdb29829f7258853a0eb99b4e6dd36d0d655d0d196c659238",
      "name-candidate:fff8dbadc05d440ff3461cecab69945afd443d839372355338e6d7eed037112b"
  ]),
  ("name-candidate:c2e820562e6da0a1051968f93dc08f818fa0caa9d0915f5f0a34a025ca19e90d", [
      "name-candidate:48099b66be70965acf772464f643fe4e5e77e9c32528dcbb5174cfed46dc9bc8",
      "name-candidate:b210bceddf0cf063d276851b4ddb52cb5866ec924acfd68ed6617a8762b2947c",
      "name-candidate:c2e820562e6da0a1051968f93dc08f818fa0caa9d0915f5f0a34a025ca19e90d",
      "name-candidate:d9f375f495f1abe88dfd0a556ac1ff7f996d521fa962955a5da92d7819a2f913"
  ]),
  ("name-candidate:14afe37702f77964e1e8f9abec5408117e2345fe57b97bde900faf091c1a0825", [
      "name-candidate:14afe37702f77964e1e8f9abec5408117e2345fe57b97bde900faf091c1a0825",
      "name-candidate:73836894a2a3efd5ad3d36f1ce2f7b1d7cd5efb85a6477cafa2a4bbbba4168fc"
  ]),
  ("name-candidate:5c089e460c86e37b15409fc8eac54e10bd05e92c92fe37a2912aa2b7cc889041", [
      "name-candidate:0ffffe568347f4616dc422c98155d6b9a7b7c95865f7f6cbfbc1193eabfe2dee",
      "name-candidate:5c089e460c86e37b15409fc8eac54e10bd05e92c92fe37a2912aa2b7cc889041",
      "name-candidate:bc8dd0b57593c9e7c54879029bba8290e4119815ab2c3d2b6b861346a8199dc4",
      "name-candidate:e11ae4b7d3ffa6f0b71c1064dd6afeff911baf4faac51429aef82fd22177f79b"
  ]),
  ("name-candidate:21020551d83c94c34965ec2e0181ae96d7c38db86f52f16986e9e8ee1e485721", [
      "name-candidate:1e664d302f37ea89f539d231816b7c30a0531604d0b69f0dc1766603c0a19be3",
      "name-candidate:21020551d83c94c34965ec2e0181ae96d7c38db86f52f16986e9e8ee1e485721",
      "name-candidate:9f857cbd1b37987afbf34186792b2b70df615b38ddbde62926780bdd2bcb833a",
      "name-candidate:eb39c23122df534fe91d0d49a03af183ca9e1dea2134603eeda99b1c753f51bf"
  ]),
  ("name-candidate:63a36292d58e8afae3bbbdb16cb201ac1f58a7841374903d6e4fffc1a9a35bdf", [
      "name-candidate:565fea2e8416729d7ae5630d7622bf428150a0b0868cf79ae552d4c7a6328464",
      "name-candidate:63a36292d58e8afae3bbbdb16cb201ac1f58a7841374903d6e4fffc1a9a35bdf",
      "name-candidate:8b24a7f8afcf2c36af910653cabdaf7758457eddcafa33ef9498ee3c097743bb",
      "name-candidate:c44cbe3011594c1390a6102a454d43e3b1b0dc6b4d40a6fd8c7cec7c86677f1a"
  ]),
  ("name-candidate:44d6f17f55861e48a7b342c94bf080fa86d644f42163f69c7026ea1e14cd1198", [
      "name-candidate:44d6f17f55861e48a7b342c94bf080fa86d644f42163f69c7026ea1e14cd1198",
      "name-candidate:7561b8f500802b39494f2b088cdf127ffda3bd3859aad85ce83cab1404d2d734",
      "name-candidate:e8d03b1d317958de814939b447a237aa121bd93df0c77819448c24ef6056882c",
      "name-candidate:ebf1055fd2145a4600cffdcc9e48df6709c8a5c5948b5099fd16942b1a8f19e7"
  ]),
  ("name-candidate:fb83c5dbda7a7a1a6207f73b8d3d6832161e141f150e28485f990ed98c4a49da", [
      "name-candidate:5d6a16bfb2eabdf912a1ca5f533c1202d1ca41ec6926571a5fa54f5dc98a204b",
      "name-candidate:b827d9b974658c8ded7568b5b57039137786891f56e440bd407b498ede23d43a",
      "name-candidate:fb83c5dbda7a7a1a6207f73b8d3d6832161e141f150e28485f990ed98c4a49da"
  ]),
  ("name-candidate:6198175ac6dfbc8ef29f27c8c195c11a7a89637e6ccabcb4e65b4ddd7a756924", [
      "name-candidate:6198175ac6dfbc8ef29f27c8c195c11a7a89637e6ccabcb4e65b4ddd7a756924",
      "name-candidate:709b1c6696e879454444b6b16724424cf45536041f4593ea92764fbb99037180",
      "name-candidate:bfffe7775a3d0ee2c802f739a10ea18827788bef63bbd28e3b75c6734648c191",
      "name-candidate:d813f68caeec2d3a285cdc680621d7cf50c04bff71357c242e6dbf6ff29008af"
  ]),
  ("name-candidate:8da3610e1070173adb4d6bba475f93c8ffe8f55437f18eb73b7de141893da7f1", [
      "name-candidate:48e7871fb744736ad541636fb92941fd48a5f2690a42c276894e5ccba5ce7a68",
      "name-candidate:55767a33d12adb6fb4a28018602a3b8c3e9fea2e23966aaf05fb5a87b987193b",
      "name-candidate:8da3610e1070173adb4d6bba475f93c8ffe8f55437f18eb73b7de141893da7f1",
      "name-candidate:d645c5a9df1f6f1599480a1622e328a367ca444cb43a881c149fb7fccbba047b"
  ]),
  ("name-candidate:f1c6e4c05878218da332d1d46f793b87e140f787f8bf6f05e71d62f0a1bcc15d", [
      "name-candidate:2eadb3da4f7fd719ce0a8d1bc7569b549029b4b14a9581987b1057cbdfde2f89",
      "name-candidate:313c27e310372d22b9597813508e97664e0560081e4d6fa733cfa85d1e58e5a0",
      "name-candidate:94a566e7682fb12e3cc55555b975a84d9d3f6df332099ed0a87d6f1a1f9072ea",
      "name-candidate:f1c6e4c05878218da332d1d46f793b87e140f787f8bf6f05e71d62f0a1bcc15d"
  ]),
  ("name-candidate:e6aa1d32e290303e1da1a82a763d98cc366f8b8856723662207b729195c5e855", [
      "name-candidate:e6aa1d32e290303e1da1a82a763d98cc366f8b8856723662207b729195c5e855",
      "name-candidate:e7a760fbb0722f0211b15b4f83db1e3a28d083d95fbb2522651f416313f39b3e"
  ]),
  ("name-candidate:166479ac27b62b8236aa06a3648478b9d7ea255eed28006e4f42858e1478baae", [
      "name-candidate:166479ac27b62b8236aa06a3648478b9d7ea255eed28006e4f42858e1478baae",
      "name-candidate:173eb40897c152c56a6a6d0a78f830f8c2d451c91928074184808b301a011931",
      "name-candidate:53d74b807476b66d3e0deed7a10ed868e0797d5a5071f0c71673fdaba6ae598d",
      "name-candidate:f295d7c7615ddd6f7f26039063ebfc0c5c4ce967310dbd78f5ed2c87bbd05769"
  ]),
  ("name-candidate:57891fbd8a06900f5cf97b274d223cb58aae0e46dbeb39143257f43cb80b6326", [
      "name-candidate:086ca7e694baf25316214b344c7fc8aa284b68c0dea0706f2fe0c26d83116d1f",
      "name-candidate:3cf42b5f328e50a31568d8589f89c84179d74acf8900126443757f2d899661e7",
      "name-candidate:57891fbd8a06900f5cf97b274d223cb58aae0e46dbeb39143257f43cb80b6326",
      "name-candidate:64380d071b9238674f13724242d1ee77a975577658acec575dbc94e77ea33bcc"
  ]),
  ("name-candidate:94c2914f05ea282049a638062656ace91013d6baf7169c3d86a51d5b81b71199", [
      "name-candidate:94c2914f05ea282049a638062656ace91013d6baf7169c3d86a51d5b81b71199",
      "name-candidate:a73dd3914d15f6943b6fa2ac261c193339cc8d315c3df7f6be386cd34944f46a",
      "name-candidate:dbdd479991a255478ec885ffd5ae0c0480dc5592eb856e09523919292d43fa96"
  ]),
  ("name-candidate:bfff03d3ac0236b20b7b3aa5f5ee03835fcfd980adb32d00a13b1e3d5bb65258", [
      "name-candidate:10bfc7fdb28d3dc36e220abc6e0849336949148f29dac1ab8d52c548505b7d94",
      "name-candidate:665906ebab65d7a467f3102fb61f47b7e6b94477bda2ab22a18a2a93c58cf888",
      "name-candidate:a954d9db242d016c28399f201dc56c8a62f8eb62d7572365dbbce7bec9436c42",
      "name-candidate:bfff03d3ac0236b20b7b3aa5f5ee03835fcfd980adb32d00a13b1e3d5bb65258"
  ]),
  ("name-candidate:7f58e78c9a3652967b157fb0a5337afc0f344de718e572f260a901169261a9ed", [
      "name-candidate:5d33a9719b225f8027c3e724c5cb0a46b2c37a27e51bb4dcca5b9558f6089b3f",
      "name-candidate:7f58e78c9a3652967b157fb0a5337afc0f344de718e572f260a901169261a9ed",
      "name-candidate:e894c9a38cc5b117fba3d34b27ebe596f433311e78b2266ce2a053d329b7ea4c",
      "name-candidate:f2eda701ec84087378b7565491e19dd610e25fd78556d952477523d62a264026"
  ]),
  ("name-candidate:006f3a80eaf18a8dd7495cb2198da1f6c3a59c93d721aa667146921e59c44756", [
      "name-candidate:006f3a80eaf18a8dd7495cb2198da1f6c3a59c93d721aa667146921e59c44756",
      "name-candidate:0b5bfe17e6b11815aa0209a0f89f58616d65fc599f8fd053cdf4e56afa78e437",
      "name-candidate:48f0a31e7be2466dc0e88e885333d17c7cca4d1635ec4b0b9b34f4cf2b342394",
      "name-candidate:85973c24c2935f59dce34d9e9f2c3f43a92194a3a7f6d2d9e3f3a036daeb2109"
  ]),
  ("name-candidate:0836508819d5ace89fa5ccea6bc6c07e1c0f903943db75a964721001c81cf7ed", [
      "name-candidate:0836508819d5ace89fa5ccea6bc6c07e1c0f903943db75a964721001c81cf7ed",
      "name-candidate:3cb0eb72d8c3d026ae592224e14b28a46ac648a8e99a04316e8ab680e30e3816",
      "name-candidate:3d93b7f4b16091761d2e6b40e441521a492fc23582df971d139311d8d4d1b8c4",
      "name-candidate:a5650a209522dcbccf632580f1b50ab1417c7aba2538d0210699baf78a88bf80"
  ]),
  ("name-candidate:42a7726c5d141831c2998eb8c7ec2db2180ca7a04a7f370fc0c548b9e42ebbf9", [
      "name-candidate:041105b541367d38d8bb0ee349c8c3297f95be3a1241adff9d61f8bfe30be056",
      "name-candidate:42a7726c5d141831c2998eb8c7ec2db2180ca7a04a7f370fc0c548b9e42ebbf9",
      "name-candidate:634d257181dbceeb6dec07a7dc77a2e2f8a4b7697a8e6425aebb62c253093494",
      "name-candidate:e51b587002eedd9352154ab0f18e3861a5f8a07bff18d935c29c9d134c28c126"
  ]),
  ("name-candidate:2338b105cfb0965c25847801bc3adefeeff527b1538ffe89b8018c687d1218d1", [
      "name-candidate:00cdd1c5b564d45c7d98ae6a357e32010a2e098d5a92775d758adc3ae88d80f2",
      "name-candidate:2338b105cfb0965c25847801bc3adefeeff527b1538ffe89b8018c687d1218d1",
      "name-candidate:b30f594c9b69fd6df96e55b202b1f418ab99657d08974e8e25a03883775a11f0",
      "name-candidate:d3bfa77d979ce8bc6d1d90ed9d57110a80b4288276e951630ae80f66bee6f141"
  ]),
  ("name-candidate:01759cadcb4a12e8cb2fb26f8b363c55fca8eca2d07bc34cd6558849dedb9bdf", [
      "name-candidate:01759cadcb4a12e8cb2fb26f8b363c55fca8eca2d07bc34cd6558849dedb9bdf",
      "name-candidate:030e20f2aa0b6b7736753494dd0f2b3c98ec79ef11aa7b6401ecfb67771aab9c",
      "name-candidate:66014604ba0fa8578d5ab56c4bb76d01c9027290fe058ccdd111f5057be074a2",
      "name-candidate:de76f0fadeaec21853201b02a138d324f4f74acfafe74410779725f275f281e1"
  ]),
  ("name-candidate:ec0d51517133e51406afa53f2745f05aba7e2193b4383f0d55bfabf88003526d", [
      "name-candidate:141c97b7ecc12ff177f1ad0d8a2d2567fb6ec713590c8f61ce64a6f56ae622e8",
      "name-candidate:c466261c2c11a84a20b02ffdba296e49cddb90b4bcdc0bd28ffe90c8734f8f70",
      "name-candidate:d9dfe7b48edda6dbd181ae1a63b539c74b9736ebcedca48cfbbdadd5d9ce36ba",
      "name-candidate:ec0d51517133e51406afa53f2745f05aba7e2193b4383f0d55bfabf88003526d"
  ]),
  ("name-candidate:c99bd0e281c38268a839b32cff8af0da13e2842e71b48482d78c692dc412f241", [
      "name-candidate:c99bd0e281c38268a839b32cff8af0da13e2842e71b48482d78c692dc412f241",
      "name-candidate:f9baf32072dc328fd3f61b9f0751a363eb119971e1c7c212d18ac8e2853dd22d"
  ]),
  ("name-candidate:2e84b5c1996204248d99d4efb11ef07899444cb287c5fe32e238a1fb3b546933", [
      "name-candidate:2e84b5c1996204248d99d4efb11ef07899444cb287c5fe32e238a1fb3b546933",
      "name-candidate:b08e687cfad4425f416f3092c01eac9cbdf05f675732270d2205b6be095fec10",
      "name-candidate:c308dc379121ab057de4d23bfafa3877de6a7b620703bf64da29ead33a3f0deb",
      "name-candidate:edc61237307ebf959e4cbcafc018f1d4082a27f4935ec88b3daa047f5218b3b6"
  ]),
  ("name-candidate:fdba8f3233635de5d7caf74c9bf0d2818a120a22ab18064778d98e6e4858ad1c", [
      "name-candidate:827625a9b9c013f2ff498bcd8ae74a12ca759cfbec17bf13f628269442449019",
      "name-candidate:e7c7cbc54629cdb1d52d570c12625007e6018658db60d37634b48d2f543ce4b4",
      "name-candidate:e85eb6e16697ed5cd0227981506df1e283eaf48de017c1790ed32c40de065995",
      "name-candidate:fdba8f3233635de5d7caf74c9bf0d2818a120a22ab18064778d98e6e4858ad1c"
  ]),
  ("name-candidate:f917b42412d3d5c93ee7f93d2c0a83cb977eb92316526b3ba9308bceecb3bc10", [
      "name-candidate:00b5ff3771e1b0baa15574be26b70f1046f1de12900829207c802b07b47295ad",
      "name-candidate:8b3782e27fa079f78810f4905ed7994b8e4efbb4851262e5839d99b68451967e",
      "name-candidate:d9ce17e3ec6d756fa34990161b69b61950062700a4ad94228cfedc830cec819d",
      "name-candidate:f917b42412d3d5c93ee7f93d2c0a83cb977eb92316526b3ba9308bceecb3bc10"
  ]),
  ("name-candidate:62987ae1f13be7071a299c48145a01c617b97be078b8dc4c4a161a6c68f7a079", [
      "name-candidate:62987ae1f13be7071a299c48145a01c617b97be078b8dc4c4a161a6c68f7a079",
      "name-candidate:cbec9ef4d15a7dfdab8da79d642d546a74af796f41d6913acf3120f2517cb7e6"
  ]),
  ("name-candidate:ddb88703e196dc16b526590505e8c6fd1f9d8996eb93b77c71e042362da25b7f", [
      "name-candidate:2c9cc92dd687965e292645e1b5a7f305a8ccee49d271a557f751b5c3aa21b878",
      "name-candidate:5ce48019b5f31b7befb4b37f888ae4b0bcc79741d42f16a7a87c4d7689bd0979",
      "name-candidate:92a559220a17debccd15392628584362413f565e0f1d7bd966856041f838c3e9",
      "name-candidate:ddb88703e196dc16b526590505e8c6fd1f9d8996eb93b77c71e042362da25b7f"
  ]),
  ("name-candidate:85341c25ba20a86b3fdd58929685d21081a53c6b18f2e6d68e774af40c3ffcbb", [
      "name-candidate:3a7a3472bb8b23ab2d767e3493610433c226ba09c9a72c3f8327f6507f8450c4",
      "name-candidate:85341c25ba20a86b3fdd58929685d21081a53c6b18f2e6d68e774af40c3ffcbb",
      "name-candidate:a20096e812a7389bde1fcc798e7bce4d4841676013cd7bde4f6ffa489260ed03",
      "name-candidate:b9bc5591cf20fcc7740912659550cebcce3572b6766f51656006e010e4843456"
  ]),
  ("name-candidate:9a6923097bdea9aef1e5050a47b2c517edf7647dd7764e6be9f6e1bf0058eb99", [
      "name-candidate:2923ec971147f05e91c8210e19ae14aeb167a95c7f04e659eb930db9af33ea7b",
      "name-candidate:61dce0cfef30a2c602a1e21c377ddef308418488ad6907a115b8b7985a513a2d",
      "name-candidate:9a6923097bdea9aef1e5050a47b2c517edf7647dd7764e6be9f6e1bf0058eb99",
      "name-candidate:a60a175349d4da46f6415d63ee4b9bf5c3c2227bd39ef21b86d6371fef8808b3"
  ]),
  ("name-candidate:5b273358837de2644b4f61ae36019a797a79bec16d47790d591599830a311c00", [
      "name-candidate:39304bb7e434f03c1050f245fa872659613d181e88eb986a5579ac12ce49fc53",
      "name-candidate:4913a15e38ca376ed0aae8d9f309b6fcd4b03feeb212e9985d84d703002878c4",
      "name-candidate:5b273358837de2644b4f61ae36019a797a79bec16d47790d591599830a311c00",
      "name-candidate:6821cb88beb274da1bae802eb830d3173b12bf501c56a9f9fe2dd4333b1c3434"
  ]),
  ("name-candidate:7f6e6dd7e44d22dc956762f02a64cc45812b8cea535e7fcf492629da584ba329", [
      "name-candidate:2462aabffeedbcfefbd8e90f3abe5483fad12fa4a5b66e793dd108edb286adc6",
      "name-candidate:7f6e6dd7e44d22dc956762f02a64cc45812b8cea535e7fcf492629da584ba329",
      "name-candidate:d815f2266996b9dbc9a390c32ff2f8505c6a981906471227b3057d9252a087fb",
      "name-candidate:d891cbfbe3c92af50c133d1fd6ca6ad5fb58ec41b162ac29777f02fffc815476"
  ]),
  ("name-candidate:326ca1c3d4b0c1fbf33ae3f99ac74d732fa7451c99b33a28eba828d28dc5bb6e", [
      "name-candidate:326ca1c3d4b0c1fbf33ae3f99ac74d732fa7451c99b33a28eba828d28dc5bb6e",
      "name-candidate:87eb9058ee0f201acb1824007bab5581570f486171aef8c8b27440fef4c8ea25",
      "name-candidate:8fc358de388efb7369e4ab1f08a76ea8fcf8fb5cb10039ae6ab8790301f0361b",
      "name-candidate:9aa80d1956cd82d6efda3769d937ca90e24471f328e792c859ac2a7c951766f7"
  ]),
  ("name-candidate:dbc910361857581e5303d0c5de1c3e7c54fcdbd3c3f4adfd66115ec7c92e4319", [
      "name-candidate:dbc910361857581e5303d0c5de1c3e7c54fcdbd3c3f4adfd66115ec7c92e4319",
      "name-candidate:f67b258988f90b92e09117f3a287689c620b74b65f857c3d5ccd3960693c282a"
  ]),
  ("name-candidate:863603d21449b200c7da294ca6d129c107b55fc983e32fcf45be71d890240cb6", [
      "name-candidate:289fb850c8bce7e670cac80182a17910fede50f8a07d7cbedc53e53f462fa212",
      "name-candidate:74ab3a9057dbd24c9bf2d3b035112f0198ff8b070832f8846bc20ee76789c42b",
      "name-candidate:863603d21449b200c7da294ca6d129c107b55fc983e32fcf45be71d890240cb6",
      "name-candidate:d613fec1738fc6f9f6cbfd7f28036b5af6adb3269e14a0f1674185db09b7b89c"
  ]),
  ("name-candidate:e3c728ff359814f08d0fc7f5846d020a74f0c1832066d91fb5454dda572dcae9", [
      "name-candidate:87b79cf1311a8d3b7911c4e0cad7f1800aaf6ec4bb5e6600a26cc051c9431520",
      "name-candidate:93903d0a6d8ac306a75d0408686ff208e7f607d4390a4492cb5c75b6d956f2ad",
      "name-candidate:e3c728ff359814f08d0fc7f5846d020a74f0c1832066d91fb5454dda572dcae9",
      "name-candidate:f7a408d18c48425d12ada36aad755d4a3932d8a24f75f90239d6d45583a33ed6"
  ]),
  ("name-candidate:107a4ce2a9c521563517a82ed73141132c1bb6c408b5a148d674c44141aecf08", [
      "name-candidate:0b72c301cce8857e83f2aa667c265a746fccc946cf9d4e3cb9bf4af31f2f8a32",
      "name-candidate:107a4ce2a9c521563517a82ed73141132c1bb6c408b5a148d674c44141aecf08",
      "name-candidate:736227c3cf44c10456cb95e8710c5832578e86e916e7bee6b5e204c9f26479ee",
      "name-candidate:d6ed0a5a190ca7807fd9dba8d01b268f9c16fc096c6fe1e65160a02607e9839d"
  ]),
  ("name-candidate:db5097b5406cd0e102b2f000584c6c2c2610b1a71ce0a79748514dcc017b549d", [
      "name-candidate:01e2bb7512e034f35d0bd4b461123b1acaa6a7f16df97dd7b5fab5e42ea8aa98",
      "name-candidate:181efae19a8980a5c9fde1de4d99c576c97af55ada2ed9de675b35eb142669b9",
      "name-candidate:db5097b5406cd0e102b2f000584c6c2c2610b1a71ce0a79748514dcc017b549d",
      "name-candidate:f1d67717e9093f2fcdb4ef4cc673bdd438a6091988e15ac5541cb008368022cd"
  ]),
  ("name-candidate:253b04ccf5734af4c7b674afc973a01e9e45f6d26db0dcf90c62b1c9630634fc", [
      "name-candidate:253b04ccf5734af4c7b674afc973a01e9e45f6d26db0dcf90c62b1c9630634fc",
      "name-candidate:2a76b7aa34fbe55943e88b96f289526780a1762ae499806c9e691ceb0565c99c",
      "name-candidate:9f0b427229e9ccfeeeb193699e3cbb6757e82267331e63c91e8d6fc0330ade3d",
      "name-candidate:e2ce9c2d33310671b09b9d73c20232ad0fada8e778e874743e2e6ed45d024dac"
  ]),
  ("name-candidate:cb9048454493776f9105660f2bae858c2f735016f17b545f7f52390b49d001bb", [
      "name-candidate:5189e94c11f1b6ee8d60792bbb0a2b2d24cab38a9feac43a63c2a2154bc33881",
      "name-candidate:717fe6efafd50c959fc6396efcff5d4e2ec0b0c3f6a1077bc40229b2e41010c1",
      "name-candidate:c88b7ac28c665575e01447d158a4fa57ccfab750086d94106e747948161f1f09",
      "name-candidate:cb9048454493776f9105660f2bae858c2f735016f17b545f7f52390b49d001bb"
  ]),
  ("name-candidate:40b6b3fb8628218d06a5f8124e63fa4f554d33d4290a033825ac36699ff9a1e3", [
      "name-candidate:40b6b3fb8628218d06a5f8124e63fa4f554d33d4290a033825ac36699ff9a1e3",
      "name-candidate:c2aecf50493e858c69db91f8bd253d3096821d19d0e586f58d58117f7fd0dbf2"
  ]),
  ("name-candidate:88f4ffb09954fbb5a4246674ed5ec00ee23cc1816ca32afccc5b8cc7e9b0a5a3", [
      "name-candidate:5c3bdaaf4ea4e003f282c5afde59c91f57c5cc86ccb3f99edde388cd8ee17691",
      "name-candidate:88f4ffb09954fbb5a4246674ed5ec00ee23cc1816ca32afccc5b8cc7e9b0a5a3",
      "name-candidate:a466b87642e9e7388ff2f562b25ce52750a2a44e15549721c38a36d1119998a8",
      "name-candidate:a75fc507f4060b5f09b630aaed778754eeb522d352170078dbaceb0daebf63a5"
  ]),
  ("name-candidate:3737719a773d0bfe90af34ed3406daaba1e2891b876eb08b4ca5f37ac368b682", [
      "name-candidate:21e7e5cef9bd4986ea411222a653a514145431cb579f497a587527c55743beca",
      "name-candidate:3737719a773d0bfe90af34ed3406daaba1e2891b876eb08b4ca5f37ac368b682",
      "name-candidate:9644bc9d1db9cc538a1c9a9670748e79be3255f49043ddd8793bde591aa1542e",
      "name-candidate:bf0e500abe63a2524b0b6cf58505aa74f25a6c06f994a46abcf6ec30520c6f7f"
  ]),
  ("name-candidate:917538011503550eb4305db324b282e44aff8249973db36dcdf464c5d2acdd2f", [
      "name-candidate:16aa6611317d833a1dda5ee0421dd85dab025484b11224cf4f626821b41735ec",
      "name-candidate:8b44a5b9895b88e4b6901a7cf1446a1acec47f855367cade3bc8d43dc7ccc64b",
      "name-candidate:917538011503550eb4305db324b282e44aff8249973db36dcdf464c5d2acdd2f",
      "name-candidate:d90987690819d53d89f22d72148a9419f1ba762b69574f241611ee4af1cdff71"
  ]),
  ("name-candidate:c1a25744400af03c562bc9269b3e3fdf8b625c0cdd9d375ceeb8c805e9b307d5", [
      "name-candidate:2c5b75a5e309a2959f77284c48683162157c7205eaad3cc4c8b2f07b73947e1e",
      "name-candidate:c1a25744400af03c562bc9269b3e3fdf8b625c0cdd9d375ceeb8c805e9b307d5"
  ]),
  ("name-candidate:d8458a59edde2ea3179fb66bfc5f83a823dae6f12bcd5b16c3997398091a3678", [
      "name-candidate:1c606862c0f65cf62451014a6da3341c8c2a8528647f06e73ef3d7a307afbd92",
      "name-candidate:9bf5e6f584199f5ee0bdf478fed41ad3985a786f25f1944d70a6cf5071c7bfef",
      "name-candidate:a4c659dd736eaf8e824c4d4349d6612b3e2b6754b3ae7a74f38817b2556cba72",
      "name-candidate:d8458a59edde2ea3179fb66bfc5f83a823dae6f12bcd5b16c3997398091a3678"
  ]),
  ("name-candidate:aefad41554e30d8e0838599e31f77419706de2a402523bb71a80960ee4489ee5", [
      "name-candidate:6791ca54c92aab25f97a2171f0edf0c52ddd23ac900a326f8fbb4d151fc28337",
      "name-candidate:83981c4fc124e5569f4b42476ce87464f06144db5655cc4af0a9135491a421fb",
      "name-candidate:aefad41554e30d8e0838599e31f77419706de2a402523bb71a80960ee4489ee5",
      "name-candidate:c8cdd40950eec0ffe3fcec5d65a7c38bce2f48acebfca5f2f106fb1b78929cc3"
  ]),
  ("name-candidate:514cfcdc7527a7910ec3d332fdccceb6cc7e770103a2d07e68059c7f9457a77f", [
      "name-candidate:514cfcdc7527a7910ec3d332fdccceb6cc7e770103a2d07e68059c7f9457a77f",
      "name-candidate:67ef5bb24fafc2e979c195981ccfe09f2fca0ff1696024bed34f6528c9583c04",
      "name-candidate:8b94c0b3380f9a79b08a129a7cf57b4dc7ada0400c9c20c9d1aec5d164de9a12",
      "name-candidate:dde6f365289bfec961d82db1a49815be7526a9c8785065289593b917d38d2214"
  ]),
  ("name-candidate:dacd688b6d828c78607bd96dcdf424963e3dc34f49a650ba764b4a0a5921e3ab", [
      "name-candidate:bf8d338c6449a36b555b66a7597bdd683ab0c222c0c698df96af5c5f2168e0ed",
      "name-candidate:c231098ca6e48f12ffcdba2b00c550883b832e49279aac8e480646a4a472abd2",
      "name-candidate:dacd688b6d828c78607bd96dcdf424963e3dc34f49a650ba764b4a0a5921e3ab",
      "name-candidate:fc9682f1aa764b209c8466637adfb8102292ebbc9aa93c8abcc5813330822dbc"
  ]),
  ("name-candidate:b6f35ee84f91032dba39e361102ce9af69ac1f0d07b5457a03838216f4b45a6c", [
      "name-candidate:1d5e72efc4703d181438641b7ddcac67b2fbda411cdca542d2a8f53a1faf0e3f",
      "name-candidate:8104cb83ab3f41aed6a8f349bf24c073de4bc9068c4c6214662dce2087bfc55a",
      "name-candidate:b6f35ee84f91032dba39e361102ce9af69ac1f0d07b5457a03838216f4b45a6c",
      "name-candidate:bb92b16ab2ace47344404f638b02c395c76b85b79fcafc85ed97bcd0bcd60c2c"
  ]),
  ("name-candidate:db8cccf46767c3b27e34d0ab054d2953571ac98b7811b9f46b0151ab8fc5f055", [
      "name-candidate:1c4f6831eecfac501edca3c0ac5fb46e33e5047d4fa00a7b758db068b1c1cb26",
      "name-candidate:52ec3b07ef199d22cac2d9ad2d6407c70bd5ab3719254278ce7cdc8e990b59d0",
      "name-candidate:db8cccf46767c3b27e34d0ab054d2953571ac98b7811b9f46b0151ab8fc5f055",
      "name-candidate:ea723abf670d9a531468c18d2a7d22c08f3db213ff6f01c568ec7585731af070"
  ]),
  ("name-candidate:2d74e4bdf6e6148092c024af6e133cd47bf06e361e49b5f5912bd124834ec923", [
      "name-candidate:2d74e4bdf6e6148092c024af6e133cd47bf06e361e49b5f5912bd124834ec923",
      "name-candidate:5a505d85b3d8560fc3013d5f7ea4763caf8dc2695061f9c0e4bab0e6ab43b34e",
      "name-candidate:e112375c6b3574789cb138c903b47353b3997aaea850ccea6af724077dc29134",
      "name-candidate:eab1078014839774fad1bae6f0701fbcaffb9179809f3a8a148e8bf1a1823156"
  ]),
  ("name-candidate:8262846c348cc5f4f86b07445b3fbe737cdbf55d626a634f48a6c8c5a21a4d54", [
      "name-candidate:5f7cb6eed59408b2718974c233eabb50a8d7d419918baee709b5464e19da53ba",
      "name-candidate:8262846c348cc5f4f86b07445b3fbe737cdbf55d626a634f48a6c8c5a21a4d54",
      "name-candidate:fec0e88ed69c75c8cb91dd230491de62770ef89bc6ed3d5b1edf396cb6eb59e4"
  ]),
  ("name-candidate:616fd435061c6b5fe7fa7fe6687ea0d7fb80b67d1e82718edfc2283574e990c4", [
      "name-candidate:616fd435061c6b5fe7fa7fe6687ea0d7fb80b67d1e82718edfc2283574e990c4",
      "name-candidate:b74cb06b2d6a7088baaee76fd78622a7a87ef5cbd4b7821718a357992e7e193a",
      "name-candidate:c94242c68cada5bd71c0fdbff035e0b323bf0f92339d1298803be236f95a6428",
      "name-candidate:e6c644bef25dced1899a73075995c08fd8c4547dccf9d5d41ff628da8795c3ae"
  ]),
  ("name-candidate:c9d9e2070bb67fff895d9eaadadd8e833ba4011120d9012c5ff86527e769f324", [
      "name-candidate:6a943b2ab9b0c159b1a4a5b623325e68e5cd0e296f7683dd56028b43af86d483",
      "name-candidate:ade4643b6b8e1bc0ace4a7da64f495a51dbffeac5ce79beb321dfbf8b766aa22",
      "name-candidate:c9d9e2070bb67fff895d9eaadadd8e833ba4011120d9012c5ff86527e769f324"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L60075).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
