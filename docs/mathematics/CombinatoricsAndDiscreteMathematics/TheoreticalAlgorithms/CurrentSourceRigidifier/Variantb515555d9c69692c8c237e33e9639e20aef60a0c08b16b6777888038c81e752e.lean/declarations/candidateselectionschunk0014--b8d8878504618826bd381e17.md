# candidateSelectionsChunk0014

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fcff7566961d5a6a917344a8862f88707acd2b159ed12ead44599cc778112e9",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0014",
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
  "slug": "candidateselectionschunk0014--b8d8878504618826bd381e17",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46296,
    "line": 45973,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8d8878504618826bd381e17551eddd09bc3fc381f5dfe57973d4074eec6befa",
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

Occurrence: `declaration:1fcff7566961d5a6a917344a8862f88707acd2b159ed12ead44599cc778112e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45973–46296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0014 : List (String × List String) :=
[
  ("name-candidate:7644b477536de6ae7b6cf3317c441ac6ebf15974380bd7ebf09a8d3875e45b32", [
      "name-candidate:1d753825395dafd44a2de42ded016edd8852307e349836f1f330e3afe8a93782",
      "name-candidate:20a09751147c99d792544d31ce393f4c51a3a96c6e0a1a805e9f419b03a681ba",
      "name-candidate:7644b477536de6ae7b6cf3317c441ac6ebf15974380bd7ebf09a8d3875e45b32"
  ]),
  ("name-candidate:0b44017de446dac15bb02e027c57f2b331367ca3339a7a89cb32509fa49a342f", [
      "name-candidate:0b44017de446dac15bb02e027c57f2b331367ca3339a7a89cb32509fa49a342f",
      "name-candidate:244bc9a4e703610e239fffb1ffbf23d5041f89eb33b980a23e938942499a5b0f",
      "name-candidate:69b6d134568be77dabbf586a7c8129736c44b26f875674e16d249000afb242af"
  ]),
  ("name-candidate:67fbc81fef69294eace1f29e3023e610acdf81799fe4ba978c4c301b4247f705", [
      "name-candidate:3c3b00852cc4ff5561ebb3600164901d47b33321136ad3061a105f03de9dae9f",
      "name-candidate:67fbc81fef69294eace1f29e3023e610acdf81799fe4ba978c4c301b4247f705",
      "name-candidate:d99d40165c4bdf7af059aec1928fc42c06fe17b7c30834139b8aeea420e46fa0"
  ]),
  ("name-candidate:1588c56a9f90912c8147d8fc68bca687aece34f3917f2ffc71d09b3a6e2176d3", [
      "name-candidate:1588c56a9f90912c8147d8fc68bca687aece34f3917f2ffc71d09b3a6e2176d3",
      "name-candidate:be8b8aae9f20385cd3c109976311f708e7db788f44e9a8a83f87bf9c9b38622a",
      "name-candidate:cd2f3b62673df290fe2cda9da59bd0886231193bbd1dea490885897f14c27798"
  ]),
  ("name-candidate:9825cef69d5612be4f7bb8014f612287d0611738a338e681ff8d1173dc7f0835", [
      "name-candidate:6f6b8150e0b0800a4457e8abb595f6b1edd1b292443bc0a869d050253989c144",
      "name-candidate:9825cef69d5612be4f7bb8014f612287d0611738a338e681ff8d1173dc7f0835",
      "name-candidate:98c1976d6bb2a50640b61f61656da1c4849ced3cde9cd1eb3d650dc5d171e33e"
  ]),
  ("name-candidate:96389a7d55b1136bcb22525fefdbda30101354f3503a4841df052af0a6fe8b4e", [
      "name-candidate:3a709c18ead0a3522ef6063b0dfef9ec32dd1e37e33f99ba2ac00a090f64afb9",
      "name-candidate:895f865db9ade8712f3f1fc20fcef69346966efa919a70c6c2bb9048073519ac",
      "name-candidate:96389a7d55b1136bcb22525fefdbda30101354f3503a4841df052af0a6fe8b4e"
  ]),
  ("name-candidate:e43b15ef3b2c50f8ff56848c1c6b2f8a7d9b686f3b9cbc48a29ddfa45b76afb0", [
      "name-candidate:12e880263e132f5482a442f2cdc4a45400f1670ae63ef1db0c05af3d3dbdc84c",
      "name-candidate:bcc49a6b2a7d9d5dc84779377355124bbcff35d69e72ceda75a81a1eab392bd4",
      "name-candidate:e43b15ef3b2c50f8ff56848c1c6b2f8a7d9b686f3b9cbc48a29ddfa45b76afb0"
  ]),
  ("name-candidate:ef849f5bb369121a1678d8ade75a9aecdbf5450028474c9b418f3bdf3333f010", [
      "name-candidate:3342fb0ce3facd718922c18056c67dc72e512e6ff9739c451870cb3dcb6b4d89",
      "name-candidate:6a85139fb4d2f7afad4d2aa76621560bf7b5483fe9aa280b81d5ebf5602b319e",
      "name-candidate:ef849f5bb369121a1678d8ade75a9aecdbf5450028474c9b418f3bdf3333f010"
  ]),
  ("name-candidate:bc69b43a0750d52a11ab3e91239d9bacd81f0030336f4497f51e1c970683765c", [
      "name-candidate:9a16c51b81ae905efbcb47c9472a3458040bb46c825af10c37b8311901360a4d",
      "name-candidate:a85355d4c489bbf96c92c8557fab01d5d53208196036081c739d627d92f48881",
      "name-candidate:bc69b43a0750d52a11ab3e91239d9bacd81f0030336f4497f51e1c970683765c"
  ]),
  ("name-candidate:e613848abdfb182ee70ee7b58d22709a22a73d3911059433170b38e2c36af6b6", [
      "name-candidate:4b7e3b979f2cf885a065a141a6503e5d5136204de795287deb3bc7e5fcd28f33",
      "name-candidate:87c820c6b2cca823b4961627fd238d78b7fe449b6999372cb6ba120d2e5bce38",
      "name-candidate:e613848abdfb182ee70ee7b58d22709a22a73d3911059433170b38e2c36af6b6"
  ]),
  ("name-candidate:b7b3f7b24e428354cd5c219656e0b25339e1de7e1d4823510984b7bcf826d9e8", [
      "name-candidate:1feda83409d954bee4639a56cdc87669aa2f8340c10e6298e2307a3e43824b93",
      "name-candidate:77ba3f4773ef4674e583e26a7beca141a5fe1539ed64b657c189b748201e14cf",
      "name-candidate:b7b3f7b24e428354cd5c219656e0b25339e1de7e1d4823510984b7bcf826d9e8"
  ]),
  ("name-candidate:8162987f8f254a2cfb808637ffce35b01663212158d8066cc7b0360cc286ba4b", [
      "name-candidate:29a4448177d27d86017614309535de39521ebe236b3b4539ee8866a0d9027ead",
      "name-candidate:2e2196bb56296bbadd3625d7088b63f9f702613e33ee9885fdc21db355bf8eef",
      "name-candidate:8162987f8f254a2cfb808637ffce35b01663212158d8066cc7b0360cc286ba4b"
  ]),
  ("name-candidate:5ca8bef3c65b7ae551f4558897499614823f7f0b0f475bf172daf83226f5386b", [
      "name-candidate:1976cc238ace554f2cb3d3f05dad55a7f6583e3b8be5c111e280be2b9a851508",
      "name-candidate:5a067ac48b293f5fdb052169e1ce836a81441d6a48e6ae85ad48a41e542c6ffc",
      "name-candidate:5ca8bef3c65b7ae551f4558897499614823f7f0b0f475bf172daf83226f5386b"
  ]),
  ("name-candidate:6e0e44ea1cd8509e78b09c408a26fea6e6099488c7a1fbebee6c82f429161e7a", [
      "name-candidate:1a2a333352d7fc3bad7da66074a8ac88fd3da8491521936b9e10a7f601c33d87",
      "name-candidate:6e0e44ea1cd8509e78b09c408a26fea6e6099488c7a1fbebee6c82f429161e7a",
      "name-candidate:9b140fed4071266a62ee9cfe58ce9f1469cfac5797e381ec9cb6c678366a0872"
  ]),
  ("name-candidate:24461d994fea044f55d0b59b23cf0041309b3c6df3119e9b152af5a9c4902285", [
      "name-candidate:24461d994fea044f55d0b59b23cf0041309b3c6df3119e9b152af5a9c4902285",
      "name-candidate:990598e107fe6b1aa6589af696f050928534df39bc32902922ca13364cf46e7d",
      "name-candidate:f6156d3d64791fdd737b2b1fcd4883e914aa8e9c477e0d07df51ddc6eb193250"
  ]),
  ("name-candidate:67d585360bb2c58f8502901269504f18aa8b2cca053db2632e7f3e19122b1460", [
      "name-candidate:05a4f255b04da3fa9ac6f54bbc87e8b12262047fe5a2b9dff953c34da0f7b53d",
      "name-candidate:67d585360bb2c58f8502901269504f18aa8b2cca053db2632e7f3e19122b1460",
      "name-candidate:cdb1cf44a697d61366c9c6d2fc891ffad2b9b0050d629835f94a87f8b68c1e71"
  ]),
  ("name-candidate:275c123e247367cecd44f1a5390cd26c9cf070c6bb7ce7147680f3e4e6eb99ec", [
      "name-candidate:275c123e247367cecd44f1a5390cd26c9cf070c6bb7ce7147680f3e4e6eb99ec",
      "name-candidate:847c29daff71c9f2143c6cc2fc9b6bd505831c0a4951e5f53a6dbf4b43728647",
      "name-candidate:86488cdb550606ab82a62a70f8c05cb79a22a9f631f01160174e034f95768ee3"
  ]),
  ("name-candidate:3a2ee3453966e188552322275ad391b741d11db64e000221f5dfd506f970fdfe", [
      "name-candidate:0367542b19f7aa19684f0ecd4cd39ac7601e420b415cb71cd0cd27bf30001e13",
      "name-candidate:3a2ee3453966e188552322275ad391b741d11db64e000221f5dfd506f970fdfe",
      "name-candidate:db22a8d6cfcf6a1177a8360bd479e9453ed28c261af586a28eef482e840d85a6"
  ]),
  ("name-candidate:c8961cce0c938b2b12ec1972cf7367d7b353b5f3b3b886c9a8284410561aba1d", [
      "name-candidate:08c04a9228f22cc4f50f2815112020ab39219fc4f785ab06bb4459c4b3c77323",
      "name-candidate:44e208bafed872b7ade9a19e655b9a02d025d3662e7fb320c69caf91aac405f8",
      "name-candidate:c8961cce0c938b2b12ec1972cf7367d7b353b5f3b3b886c9a8284410561aba1d"
  ]),
  ("name-candidate:371dcd3e82511e5f4061dd3bcca311eac8af59852350894ddde1bf4036df137c", [
      "name-candidate:371dcd3e82511e5f4061dd3bcca311eac8af59852350894ddde1bf4036df137c",
      "name-candidate:9df481c4837b7292d3eaba30df079c942e9e1869dcf909c01a9136d46457a1ce",
      "name-candidate:cd177b71e79e41aadc029ca630d2a0759d662b3c06e7433846ae7a6c023b10a1"
  ]),
  ("name-candidate:e99018fb5d922059969211c7a62f9bb316aba954d1453d8361427b519c09bd69", [
      "name-candidate:343e45736b54d404b989ee7682200e95df80303ff8877e8e561d5719a226c9c5",
      "name-candidate:abe22fedfbc9cef437285021a3f2eca43fb29279de2832a61ad049c86cbc2554",
      "name-candidate:e99018fb5d922059969211c7a62f9bb316aba954d1453d8361427b519c09bd69"
  ]),
  ("name-candidate:2440e9dc3f41055410551d2d151d6432578b572987157ebba9a52e05f84dd922", [
      "name-candidate:00e084a7fb2987ac68fe75ec35b87df62eceb99ccc08572df37c7506655e1f61",
      "name-candidate:2440e9dc3f41055410551d2d151d6432578b572987157ebba9a52e05f84dd922",
      "name-candidate:bb91618b1a45087e593f8834336c2a3e42d63509ed548b584995f22ab7da6ec4"
  ]),
  ("name-candidate:8a4371a7f224ad78bb7eef00fc6f300f1ac1724553ce411ec4b7038b0aa98b2b", [
      "name-candidate:20ea2773d3690c57db914ef2245b696635c3e78eac010ff684cf4ef1507dcd7b",
      "name-candidate:2aaf44bb66d287d279e06eaad58fab8e7e8c2e13353c4df3da62611739444d8c",
      "name-candidate:8a4371a7f224ad78bb7eef00fc6f300f1ac1724553ce411ec4b7038b0aa98b2b"
  ]),
  ("name-candidate:c580ea2f3af115d40e63214f67448e2058148f148a4cae1a9d25015b41a55d11", [
      "name-candidate:c580ea2f3af115d40e63214f67448e2058148f148a4cae1a9d25015b41a55d11",
      "name-candidate:c9f61bf444e104961e875eda41132f10fdf974032b5891c5f1644f7de02dfc89",
      "name-candidate:da96b674ab9dcac44c6dde292447b60e01898a5c3210a9d0cd05ceb45b130b19"
  ]),
  ("name-candidate:3eb4615269117c47b1442094a7365db289ab98455d1cb8e828c3ebba52a63623", [
      "name-candidate:3eb4615269117c47b1442094a7365db289ab98455d1cb8e828c3ebba52a63623",
      "name-candidate:98ef0c42dade6802af093f4bc3ceaad95b47eab367f62ab75ce07e125158ced1",
      "name-candidate:b6ff09eae59fca5300d05b0f22eeea2a30bac1ca48092f3fe55ad7e9d64fa8cb"
  ]),
  ("name-candidate:07452d09dc55baef3a3d431a0b7be0d915467e05c52aa6bef6ab01d2829e2b5f", [
      "name-candidate:07452d09dc55baef3a3d431a0b7be0d915467e05c52aa6bef6ab01d2829e2b5f",
      "name-candidate:ba4aa31dddaeee89d879ef9baef9e969265aca16dfebc5fd101cf57b288d8e6e",
      "name-candidate:f049a31b344af638f628a40280966ed23890722fea2a3e04836f6c2c630d6a4c"
  ]),
  ("name-candidate:1dbe722f669040542769513b7d202f388b9f343da767de24deaa0e3e416acd78", [
      "name-candidate:1dbe722f669040542769513b7d202f388b9f343da767de24deaa0e3e416acd78",
      "name-candidate:30781c369407acc0b83c7222246fc48eeeabe0fcb492de0b36fc1aedb70057df",
      "name-candidate:fbe0c8bb88774f108ec8d6bb5d4ccaef37652f104474b25f5ad806e72c7f75ce"
  ]),
  ("name-candidate:b80628d9212f4850898b0905cc39c95f5fa08b3b6677ad3ebad7e30907808907", [
      "name-candidate:87d086b6ccdc3dc9ad4343cea8e38db33a627a43f60f7dd9ef3d0976bc5351f5",
      "name-candidate:b80628d9212f4850898b0905cc39c95f5fa08b3b6677ad3ebad7e30907808907",
      "name-candidate:ceabdc65410e89d64ed6ebf8d51398d9c784218aafad88a5365e96f5c00ffcc5"
  ]),
  ("name-candidate:90f49ef7413f12a1e18231866240f91954581b19944fe3977fa244ea0b2095cc", [
      "name-candidate:628bbf9378fc9ff4a47388eeb47c60c411013413f887de703dd056a5bf943edb",
      "name-candidate:90f49ef7413f12a1e18231866240f91954581b19944fe3977fa244ea0b2095cc",
      "name-candidate:e4a81787ac588224cdf4a1808973c09f183ef196fd2ec8eb19aebfbc82972dfc"
  ]),
  ("name-candidate:d2650018d17e223e86887b7ff9b2613dbde31d05f39e49d67bbdda7345b60108", [
      "name-candidate:91a26407dadf7a6dae8f2c1ba501bf6b0f65bfa4a3a99e7d43632e2b37dbf270",
      "name-candidate:d2650018d17e223e86887b7ff9b2613dbde31d05f39e49d67bbdda7345b60108",
      "name-candidate:e415c2c66205d89633ccc4325ea979014e7e7376339a16afd16dd8631550a60f"
  ]),
  ("name-candidate:8f1439f2d204fa2b2b274083ad4cc02405ed8d5f258fb7cf285ca52155240554", [
      "name-candidate:30eba4e1ee1c8a25d011c19c1344d8870144f02288563c8ce0ff133677f19eaf",
      "name-candidate:8f1439f2d204fa2b2b274083ad4cc02405ed8d5f258fb7cf285ca52155240554",
      "name-candidate:b5c7c82c10881180a021d0411d57f94438b9d4a3907707702edc73df94ad2bc5"
  ]),
  ("name-candidate:c828d71a37b71e5dfb8a83f54b5686a6ccfc6d0662ebb6e3f648945fc72d71fd", [
      "name-candidate:0ca9b03ecd436e7cf28fd473f521cf4aacef941b7651e80965ada6d2120cdbad",
      "name-candidate:74cdbd52dfa9ca8d3f4ddf090a3fbfd79e0a3907ab8e87df01fb936b5d0d6b57",
      "name-candidate:c828d71a37b71e5dfb8a83f54b5686a6ccfc6d0662ebb6e3f648945fc72d71fd"
  ]),
  ("name-candidate:e5a1943141a099db12d9fa21c482920c1795f627cb6efe935f2496440cde5ae6", [
      "name-candidate:720a48895a2b402338144517ffb53e0fbccc881502254ce6dfdc13aa147c7330",
      "name-candidate:8bec03439db0c166397ff55f179942b7bc513109602b035d323fdd842c6f4ab3",
      "name-candidate:e5a1943141a099db12d9fa21c482920c1795f627cb6efe935f2496440cde5ae6"
  ]),
  ("name-candidate:29985489b19927d5a91b62368ad5aa9ca21b787c400828589fb0897f9141d144", [
      "name-candidate:29985489b19927d5a91b62368ad5aa9ca21b787c400828589fb0897f9141d144",
      "name-candidate:b77ee8ff430afdb2f3e307264f869f3597e94da275449f4ade3b3e6d597f2f20",
      "name-candidate:e61aa1e455be7a49d15c184b5096284b21f04c2a04f9b94ecdc3f8c15dd0da9a"
  ]),
  ("name-candidate:9b3e74e5855d2a4b9f8d53bd281589fa2c680e59f7f32e871ea237786122cf16", [
      "name-candidate:075ad87c6ee563f5c737283774acda677c4c6cbcd6f13b370c0b0c55f6756b79",
      "name-candidate:9b3e74e5855d2a4b9f8d53bd281589fa2c680e59f7f32e871ea237786122cf16",
      "name-candidate:f67aaa80acd1c079fbc99ede4e89b106dbdf2119e3686918da4a2f5945413696"
  ]),
  ("name-candidate:26f69617b5e786edb0bf603e69810dd8f85d06aecc2965a6331514931be91858", [
      "name-candidate:25d5b6681faf4b8c33bc8782428d4cecaf1300dbd66023294d64d507253c1c2a",
      "name-candidate:26f69617b5e786edb0bf603e69810dd8f85d06aecc2965a6331514931be91858",
      "name-candidate:54894f1b65037a9cea04cc97f63496b397298a7a4473945c5fec4d0de7e76f23"
  ]),
  ("name-candidate:ab38713daa0c84b49c80ed29518772abf73d9a876d971c142608c786f47400be", [
      "name-candidate:34bb91f0141b38ffdb6d7f0841aee0d250520eb5f9d07e52e05be70873e886d0",
      "name-candidate:6944774eb2cc0af66ec3800bf7ca4c6b5bfec66ef44af753e2c51968acb37c46",
      "name-candidate:ab38713daa0c84b49c80ed29518772abf73d9a876d971c142608c786f47400be"
  ]),
  ("name-candidate:83c8dd9f3195ae0a81337214c460b4c1f24f742ca2142f24156ea82595225a18", [
      "name-candidate:0c62d888c87aaeedc6dabbfb29c7334607f0287def43dab2796b69b9161cbcca",
      "name-candidate:83c8dd9f3195ae0a81337214c460b4c1f24f742ca2142f24156ea82595225a18",
      "name-candidate:91f3ce0704b98a9516274215cf1d08c42a2ef27171dbd53cb7b954301348e9f3"
  ]),
  ("name-candidate:f1f87a40ed4ea3008ae92081242926f65af00b461e39eb6332f84a942096959c", [
      "name-candidate:364cf2d9343a99abe3de648f85d5f244789b9ef42ab1cdc82097812399eef709",
      "name-candidate:7a9e73db44e77b62dcf648976183227e5fec7ec7c52a95b65fb4089e46bd5345",
      "name-candidate:f1f87a40ed4ea3008ae92081242926f65af00b461e39eb6332f84a942096959c"
  ]),
  ("name-candidate:18feb8af396a056275b26b95a76722644f45181273122beab29d9abd48ab2125", [
      "name-candidate:18feb8af396a056275b26b95a76722644f45181273122beab29d9abd48ab2125",
      "name-candidate:64cf0d3589f28667ed6714d4d9db8038560fe75cfd1541ad8ecdfe0783edb8fb",
      "name-candidate:e9759c791c5d6bfdcf17016dd9aa32ace66e8eb75678c46033907c041d098a02"
  ]),
  ("name-candidate:4045e7c3a1ee747d1b307d2c5bd963654f58a8b2465283e7d9cb5a10a6933351", [
      "name-candidate:2ecfba03b6e119060862b6aef70efeb0f8e79290ea34ab6a3a2f0bda7bed3119",
      "name-candidate:4045e7c3a1ee747d1b307d2c5bd963654f58a8b2465283e7d9cb5a10a6933351",
      "name-candidate:dd6f76e931c57fa8e12710bb4430a4cc39b317624f0c4927c9d3042f0f4202ef"
  ]),
  ("name-candidate:f15fddf830aa319f4b469a72505f75f5d80b0dfb7586ac01e3fdbf587952ba27", [
      "name-candidate:a832100641e39e20899b4d15c0477405f7b35950aafd54fb4804f772f52013f4",
      "name-candidate:c96955b24748cf370996586cbcf0eff0ac6188a0c52665a60b587d9188af206e",
      "name-candidate:f15fddf830aa319f4b469a72505f75f5d80b0dfb7586ac01e3fdbf587952ba27"
  ]),
  ("name-candidate:18004486551ce20753b9413621716af36d73134258a84ddc1a5a9c078567e815", [
      "name-candidate:18004486551ce20753b9413621716af36d73134258a84ddc1a5a9c078567e815",
      "name-candidate:40af52f3c4880224afd6370fb65e819c546fd1cdaa77ecc7962508c53f0d731e",
      "name-candidate:ec3256a479a3f5e2e9315c781d4e21f233553d5c1d7e4577bb8cd5e682db4755"
  ]),
  ("name-candidate:026f44ebddc1abe87b84b3490519f80dd78d865f9423ed58575b7d6889337667", [
      "name-candidate:026f44ebddc1abe87b84b3490519f80dd78d865f9423ed58575b7d6889337667",
      "name-candidate:1ce6ed2f95219b898b1709eab8da65e372667cf13f9ad2d0ec8a0cedecd3d376",
      "name-candidate:25333bba69a2ce59bc7c4250adb9ea21e2dfa4de1b8218a523bcbabb262ad85d"
  ]),
  ("name-candidate:8b81b4abf45c19e50291a83ecddd062bce66133d256bf78f4e5f66bef180e31e", [
      "name-candidate:87f67299bc47d16e7c764ca2186083bddcfb32a240eb506e12ecc2b4225bca51",
      "name-candidate:8b81b4abf45c19e50291a83ecddd062bce66133d256bf78f4e5f66bef180e31e",
      "name-candidate:e3f83f44e8f438391cce467ece1a80213e3318e65117ebffc8552826acbc3b4d"
  ]),
  ("name-candidate:d0c933fb28de0655a4471e156e0cf454159a09a34438a816bf483f88c9832155", [
      "name-candidate:360a43b1e3576a7d06aff2dce9b08af1f7487a95d72a0a860d370fe750277c30",
      "name-candidate:838cdac73328073f39468e488774c7291e37a5c895e8f106a059722cd6719293",
      "name-candidate:d0c933fb28de0655a4471e156e0cf454159a09a34438a816bf483f88c9832155"
  ]),
  ("name-candidate:4c0c3c5c56f8b4c9cda6633a8b0b2182932f8dfa3ddadc95165823c1a6fafc6a", [
      "name-candidate:4c0c3c5c56f8b4c9cda6633a8b0b2182932f8dfa3ddadc95165823c1a6fafc6a",
      "name-candidate:79040926a0a429df07d9d5096cc91e2b0e57b462c1b1f54c8f4b6ccfe625c38a",
      "name-candidate:c2a7ba5ee964320018bb38f5fe15325f41bd1acc703d82e6dff4f435511eb465"
  ]),
  ("name-candidate:1d89ac472657778e50c6c458fac415030c82e0fc70dd36a5738ca0d33829c2dc", [
      "name-candidate:0299e7fc32f5f6ce47c389c7eb160298fab98d221365d9860bb0f61034d33544",
      "name-candidate:1d89ac472657778e50c6c458fac415030c82e0fc70dd36a5738ca0d33829c2dc",
      "name-candidate:754e2fb9fd8e4c523a1f342a8c4735264888cc692d84bd670c9bc93b409ec9ce"
  ]),
  ("name-candidate:7240c75ac3b183dd7a01eb0113ab0aa4b108329e8bd1dac6791839bb25eae085", [
      "name-candidate:6640429433e711ec1ddfae4be8ffa4e9ffc96a4c831a3d6814af8cf3326a8c73",
      "name-candidate:7240c75ac3b183dd7a01eb0113ab0aa4b108329e8bd1dac6791839bb25eae085",
      "name-candidate:96337c9b3f3a70def4a4f9e673409005aef238c6933925efb645f97cb4eba3de"
  ]),
  ("name-candidate:edce82241f19e4911eee526bb99a469e383b19c3749d09e264d2d370120e0890", [
      "name-candidate:8e33e2c78f73cc558f0afcd74d8a8b97a03eae8effea54cb8bcc5e8de008c770",
      "name-candidate:97618b83a04ac81cb8764db73e5d1cd9d3257ffe43cfa5a1f73b6b1a656611fa",
      "name-candidate:edce82241f19e4911eee526bb99a469e383b19c3749d09e264d2d370120e0890"
  ]),
  ("name-candidate:f57f5124c828d1349ddc4a1f0280b6c159850ff7c219ac58ab063fae26a787db", [
      "name-candidate:42165ef258108144d636236f26304022ea8824ebb8c69bfdf81be8e1d0874fd5",
      "name-candidate:aa739e262084d765c7e07ba48aea27717ef9315786f733f42aca3d0efb1caabb",
      "name-candidate:f57f5124c828d1349ddc4a1f0280b6c159850ff7c219ac58ab063fae26a787db"
  ]),
  ("name-candidate:ae86bb17546c0b0fc375b218289158e3722bef4bd45f6f8ae0beef09a80c6fc8", [
      "name-candidate:ae86bb17546c0b0fc375b218289158e3722bef4bd45f6f8ae0beef09a80c6fc8",
      "name-candidate:b0a92596232b9ad265c8e6cbd161250b07cbbfae49c7eb980ec4044a7883065e",
      "name-candidate:b4aa5a351cba618aa09ad5c600f002a54cb9af5489f075463ada95799167c393"
  ]),
  ("name-candidate:5947fd9e1bd0aa781f13555b2c8d74ff491e9bff0582b21956ec74d65b349151", [
      "name-candidate:15efe80b24e3224ea0f6e2bed6e111231ccccedcf5a730178a1790a60ea99057",
      "name-candidate:5947fd9e1bd0aa781f13555b2c8d74ff491e9bff0582b21956ec74d65b349151",
      "name-candidate:fcef993c238325115cf4f3b188bb9e21d1e394e81b42eb55b59a714164e9b608"
  ]),
  ("name-candidate:82ffc6af1b549527d4f5531f05a9e89d520bd7e102a462b09122c6c6a5a0b435", [
      "name-candidate:36a6f272ba1d8476c35e2bb3d25eb4cce3b7674c4f47bddb4b53c68cdf382225",
      "name-candidate:82ffc6af1b549527d4f5531f05a9e89d520bd7e102a462b09122c6c6a5a0b435",
      "name-candidate:a842f29345738f594d864ddb16db01915c4fc09274ac91bedf3ee11c2753fe76"
  ]),
  ("name-candidate:702f7a27112106fec22a9f371f03356cfe601052cce4bd439897e5c450bac87b", [
      "name-candidate:2e6076039d1d692720c86f5a3f9951550c56b8ead528fb243cde09c3b43ec5dd",
      "name-candidate:6af861d3e69b4a1bfd3e2ab1215b8ff44e4387d12491eccd4edb2e9f4d61ee85",
      "name-candidate:702f7a27112106fec22a9f371f03356cfe601052cce4bd439897e5c450bac87b"
  ]),
  ("name-candidate:3d0907f01a84d2cbfd6bea4d6e7fdf8d5de8acbc0feff46c6b66279db7bac481", [
      "name-candidate:3d0907f01a84d2cbfd6bea4d6e7fdf8d5de8acbc0feff46c6b66279db7bac481",
      "name-candidate:a779c9cc9f24922b8ee62655850dc6039acf46718deeb7aad4d6b99dc692b0c1",
      "name-candidate:b5c8a82e9b6c4be522f5a8d664d4ab59d5d0bbc5ecb382b78ac999d155986925"
  ]),
  ("name-candidate:7ce4ebf11921bd922eb6347140d96a66cfe4d39367dc6ee41e0ee21a4789857f", [
      "name-candidate:20651515f03a463704406be55d35d6dd35480ade4df44df0e11134c4911c3c65",
      "name-candidate:7ce4ebf11921bd922eb6347140d96a66cfe4d39367dc6ee41e0ee21a4789857f",
      "name-candidate:c8812347403772f5d71ab41fe81e8430c3e1abfc606a141be2906218d5e657ed"
  ]),
  ("name-candidate:ce754dc93c547dbcb6143de04ac4d5bece924c93f59eebdd1210cbe7668f3b9a", [
      "name-candidate:0c84016b3e22a8ea46eb7f912ab6f2a16fadaa326dfe4f9a3b2f5caaa058e43f",
      "name-candidate:ce754dc93c547dbcb6143de04ac4d5bece924c93f59eebdd1210cbe7668f3b9a",
      "name-candidate:e94b7fe9c7bf5b94bd077aa082aacbd3b3a479f753e8a6784acce140ace08d8a"
  ]),
  ("name-candidate:2146fbea9ccbd72097334f12cba55804855d8be64e006b912551f64c2a60ab38", [
      "name-candidate:2146fbea9ccbd72097334f12cba55804855d8be64e006b912551f64c2a60ab38",
      "name-candidate:4f919ce05fda67a3e5d70a4f002bef6e9f1c1cc6cf56d802e3a0af185c3e147c",
      "name-candidate:77b9cfa14bf703661a9540465d45d35394b8c7ee38f747b473050f9e1f48afcb"
  ]),
  ("name-candidate:8cece4266200824ac7af5aa3d03efe8945e48de3219e66cadedb8ac6ecd195a7", [
      "name-candidate:1c973f73d2495c5ebdf08bf922dc50374c3012f70f0a77bfeff1f3c9a7289f56",
      "name-candidate:7a26ec727965b7092ef54553ce387a227f1fc680a1e1f49a6cbfdd388abf1c57",
      "name-candidate:8cece4266200824ac7af5aa3d03efe8945e48de3219e66cadedb8ac6ecd195a7"
  ]),
  ("name-candidate:ebda47767fb84557c430cdc60bf5f7c805e1e4772280bda1c5b89ffd3faa1773", [
      "name-candidate:3eedb02b698d89ff9e8c9835abd0d84034fe91f450ad4c67137742a32375e6ca",
      "name-candidate:d260e07130415a71dd434417d41849bfec24da4341ce3485a4bbf24e60419ced",
      "name-candidate:ebda47767fb84557c430cdc60bf5f7c805e1e4772280bda1c5b89ffd3faa1773"
  ]),
  ("name-candidate:5343e50a982954ecc377d0a53a26b93554604b51cea6c4901071de683af79ca0", [
      "name-candidate:5343e50a982954ecc377d0a53a26b93554604b51cea6c4901071de683af79ca0",
      "name-candidate:55e4e3a7d038e5eab9ac7ddc59a93b9fcf0bdf0d0f98a7b9bc729697f819e11d",
      "name-candidate:b8f2369abe25a217da51185b36dfb88ed3f44f61b34d524d84b836d497554492"
  ]),
  ("name-candidate:1c336e656e8887985674e076e28e5e0c1b144e33efb20e2bfd4e153f191eb701", [
      "name-candidate:1c336e656e8887985674e076e28e5e0c1b144e33efb20e2bfd4e153f191eb701",
      "name-candidate:6aee1c450c4e6cdc09159a03df31db917df255e71e1cdf7ba32116b2be55785c",
      "name-candidate:efacb958f2aaeeca05ab7a2daed5788732af9730eb3a32497227651b5b661cb5"
  ]),
  ("name-candidate:c67212bcd27652e57621e6296570410c58c4f9b65a32d9f497e4bfe922e83251", [
      "name-candidate:038c1982ee23a60e478b08fa8154eca4f834200d53ec688ca2b3816fd834dc64",
      "name-candidate:c67212bcd27652e57621e6296570410c58c4f9b65a32d9f497e4bfe922e83251",
      "name-candidate:c791a73b186d6f6cbcf9ee21745a9554198192d9c7ef8b97fb039fbd12a97b8e"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L45973).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
