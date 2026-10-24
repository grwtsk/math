# modelCandidateSelectionsChunk0015

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55358b31e6bd9b347fda279945cbf09176b867dea74e801bb18feef7a2a07ef8",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0015",
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
  "slug": "modelcandidateselectionschunk0015--335e493279db89645411ea8c",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59709,
    "line": 59373,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:335e493279db89645411ea8c12f2533507141502fd01d7423259727c814a228d",
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

Occurrence: `declaration:55358b31e6bd9b347fda279945cbf09176b867dea74e801bb18feef7a2a07ef8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59373–59709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0015 : List (String × List String) :=
[
  ("name-candidate:2440e9dc3f41055410551d2d151d6432578b572987157ebba9a52e05f84dd922", [
      "name-candidate:00e084a7fb2987ac68fe75ec35b87df62eceb99ccc08572df37c7506655e1f61",
      "name-candidate:2440e9dc3f41055410551d2d151d6432578b572987157ebba9a52e05f84dd922",
      "name-candidate:bb91618b1a45087e593f8834336c2a3e42d63509ed548b584995f22ab7da6ec4"
  ]),
  ("name-candidate:2aaf44bb66d287d279e06eaad58fab8e7e8c2e13353c4df3da62611739444d8c", [
      "name-candidate:20ea2773d3690c57db914ef2245b696635c3e78eac010ff684cf4ef1507dcd7b",
      "name-candidate:2aaf44bb66d287d279e06eaad58fab8e7e8c2e13353c4df3da62611739444d8c",
      "name-candidate:8a4371a7f224ad78bb7eef00fc6f300f1ac1724553ce411ec4b7038b0aa98b2b"
  ]),
  ("name-candidate:c9f61bf444e104961e875eda41132f10fdf974032b5891c5f1644f7de02dfc89", [
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
  ("name-candidate:fbe0c8bb88774f108ec8d6bb5d4ccaef37652f104474b25f5ad806e72c7f75ce", [
      "name-candidate:1dbe722f669040542769513b7d202f388b9f343da767de24deaa0e3e416acd78",
      "name-candidate:30781c369407acc0b83c7222246fc48eeeabe0fcb492de0b36fc1aedb70057df",
      "name-candidate:fbe0c8bb88774f108ec8d6bb5d4ccaef37652f104474b25f5ad806e72c7f75ce"
  ]),
  ("name-candidate:ceabdc65410e89d64ed6ebf8d51398d9c784218aafad88a5365e96f5c00ffcc5", [
      "name-candidate:87d086b6ccdc3dc9ad4343cea8e38db33a627a43f60f7dd9ef3d0976bc5351f5",
      "name-candidate:b80628d9212f4850898b0905cc39c95f5fa08b3b6677ad3ebad7e30907808907",
      "name-candidate:ceabdc65410e89d64ed6ebf8d51398d9c784218aafad88a5365e96f5c00ffcc5"
  ]),
  ("name-candidate:d2650018d17e223e86887b7ff9b2613dbde31d05f39e49d67bbdda7345b60108", [
      "name-candidate:91a26407dadf7a6dae8f2c1ba501bf6b0f65bfa4a3a99e7d43632e2b37dbf270",
      "name-candidate:d2650018d17e223e86887b7ff9b2613dbde31d05f39e49d67bbdda7345b60108",
      "name-candidate:e415c2c66205d89633ccc4325ea979014e7e7376339a16afd16dd8631550a60f"
  ]),
  ("name-candidate:b5c7c82c10881180a021d0411d57f94438b9d4a3907707702edc73df94ad2bc5", [
      "name-candidate:30eba4e1ee1c8a25d011c19c1344d8870144f02288563c8ce0ff133677f19eaf",
      "name-candidate:8f1439f2d204fa2b2b274083ad4cc02405ed8d5f258fb7cf285ca52155240554",
      "name-candidate:b5c7c82c10881180a021d0411d57f94438b9d4a3907707702edc73df94ad2bc5"
  ]),
  ("name-candidate:0ca9b03ecd436e7cf28fd473f521cf4aacef941b7651e80965ada6d2120cdbad", [
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
  ("name-candidate:ec3256a479a3f5e2e9315c781d4e21f233553d5c1d7e4577bb8cd5e682db4755", [
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
  ("name-candidate:754e2fb9fd8e4c523a1f342a8c4735264888cc692d84bd670c9bc93b409ec9ce", [
      "name-candidate:0299e7fc32f5f6ce47c389c7eb160298fab98d221365d9860bb0f61034d33544",
      "name-candidate:1d89ac472657778e50c6c458fac415030c82e0fc70dd36a5738ca0d33829c2dc",
      "name-candidate:754e2fb9fd8e4c523a1f342a8c4735264888cc692d84bd670c9bc93b409ec9ce"
  ]),
  ("name-candidate:7240c75ac3b183dd7a01eb0113ab0aa4b108329e8bd1dac6791839bb25eae085", [
      "name-candidate:6640429433e711ec1ddfae4be8ffa4e9ffc96a4c831a3d6814af8cf3326a8c73",
      "name-candidate:7240c75ac3b183dd7a01eb0113ab0aa4b108329e8bd1dac6791839bb25eae085",
      "name-candidate:96337c9b3f3a70def4a4f9e673409005aef238c6933925efb645f97cb4eba3de"
  ]),
  ("name-candidate:8e33e2c78f73cc558f0afcd74d8a8b97a03eae8effea54cb8bcc5e8de008c770", [
      "name-candidate:8e33e2c78f73cc558f0afcd74d8a8b97a03eae8effea54cb8bcc5e8de008c770",
      "name-candidate:97618b83a04ac81cb8764db73e5d1cd9d3257ffe43cfa5a1f73b6b1a656611fa",
      "name-candidate:edce82241f19e4911eee526bb99a469e383b19c3749d09e264d2d370120e0890"
  ]),
  ("name-candidate:42165ef258108144d636236f26304022ea8824ebb8c69bfdf81be8e1d0874fd5", [
      "name-candidate:42165ef258108144d636236f26304022ea8824ebb8c69bfdf81be8e1d0874fd5",
      "name-candidate:aa739e262084d765c7e07ba48aea27717ef9315786f733f42aca3d0efb1caabb",
      "name-candidate:f57f5124c828d1349ddc4a1f0280b6c159850ff7c219ac58ab063fae26a787db"
  ]),
  ("name-candidate:b0a92596232b9ad265c8e6cbd161250b07cbbfae49c7eb980ec4044a7883065e", [
      "name-candidate:ae86bb17546c0b0fc375b218289158e3722bef4bd45f6f8ae0beef09a80c6fc8",
      "name-candidate:b0a92596232b9ad265c8e6cbd161250b07cbbfae49c7eb980ec4044a7883065e",
      "name-candidate:b4aa5a351cba618aa09ad5c600f002a54cb9af5489f075463ada95799167c393"
  ]),
  ("name-candidate:fcef993c238325115cf4f3b188bb9e21d1e394e81b42eb55b59a714164e9b608", [
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
  ("name-candidate:b5c8a82e9b6c4be522f5a8d664d4ab59d5d0bbc5ecb382b78ac999d155986925", [
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
  ("name-candidate:4f919ce05fda67a3e5d70a4f002bef6e9f1c1cc6cf56d802e3a0af185c3e147c", [
      "name-candidate:2146fbea9ccbd72097334f12cba55804855d8be64e006b912551f64c2a60ab38",
      "name-candidate:4f919ce05fda67a3e5d70a4f002bef6e9f1c1cc6cf56d802e3a0af185c3e147c",
      "name-candidate:77b9cfa14bf703661a9540465d45d35394b8c7ee38f747b473050f9e1f48afcb"
  ]),
  ("name-candidate:8cece4266200824ac7af5aa3d03efe8945e48de3219e66cadedb8ac6ecd195a7", [
      "name-candidate:1c973f73d2495c5ebdf08bf922dc50374c3012f70f0a77bfeff1f3c9a7289f56",
      "name-candidate:7a26ec727965b7092ef54553ce387a227f1fc680a1e1f49a6cbfdd388abf1c57",
      "name-candidate:8cece4266200824ac7af5aa3d03efe8945e48de3219e66cadedb8ac6ecd195a7"
  ]),
  ("name-candidate:3eedb02b698d89ff9e8c9835abd0d84034fe91f450ad4c67137742a32375e6ca", [
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
  ("name-candidate:c791a73b186d6f6cbcf9ee21745a9554198192d9c7ef8b97fb039fbd12a97b8e", [
      "name-candidate:038c1982ee23a60e478b08fa8154eca4f834200d53ec688ca2b3816fd834dc64",
      "name-candidate:c67212bcd27652e57621e6296570410c58c4f9b65a32d9f497e4bfe922e83251",
      "name-candidate:c791a73b186d6f6cbcf9ee21745a9554198192d9c7ef8b97fb039fbd12a97b8e"
  ]),
  ("name-candidate:2bfd61ba2e1ec5fc3ece7d9c957c62025c9215d22e3f5197bc32892b6f686caa", [
      "name-candidate:2bfd61ba2e1ec5fc3ece7d9c957c62025c9215d22e3f5197bc32892b6f686caa",
      "name-candidate:8024110b80427d802572123999e4eb223b64d4eeb503d965c5fe1760b96c2009",
      "name-candidate:912693022f30bea3bd37d122cd15f0b90e521277dd0da71750db1952738977b9"
  ]),
  ("name-candidate:0ee54053d2861d79e48ff66692bcbd9bb2bd3b81a5fa7f1b32788831f63c5e18", [
      "name-candidate:0ee54053d2861d79e48ff66692bcbd9bb2bd3b81a5fa7f1b32788831f63c5e18",
      "name-candidate:32aef16235e07755811faa221a0fddac6a3aa8af2e2ecc2ee6cd4b9dafb9562e",
      "name-candidate:65b67acf52b19f976756e878fdf028211a0692e9e00ea7dd0e442c337c2a2e2a"
  ]),
  ("name-candidate:766a5cdf66bb0a12d930602ab82b6070a9a90202f9e447e1bc4abaa5269f8561", [
      "name-candidate:6372cd37759564f3953fbc060108455e01ae190533243dd20053ed5992c35582",
      "name-candidate:766a5cdf66bb0a12d930602ab82b6070a9a90202f9e447e1bc4abaa5269f8561",
      "name-candidate:806c04e362ed68c1341dea719b53a800b7f8e7b85220d8f7ac33bdb0d8a7439e"
  ]),
  ("name-candidate:74b6bd04e4b4e69c4e9a3730e5c3af76292841893e6405972ff7579fd0998240", [
      "name-candidate:74b6bd04e4b4e69c4e9a3730e5c3af76292841893e6405972ff7579fd0998240",
      "name-candidate:a03aa3fce1e9ac822567707bb9f7866fdc8fe1cdd218234014d7febb2ddf0584",
      "name-candidate:c3f75e7a676f5964921a682b301bfc9ffee36b4abb6195663af9250c93a360d3"
  ]),
  ("name-candidate:fb4d719ae01457188ca33fc885a272c7e733198fad5099cad2421cb3cd0d1b9f", [
      "name-candidate:49bfb4bede27b5235948dd01fa3fb20332092b516c0ee723c068a3b1ed934aba",
      "name-candidate:fb4d719ae01457188ca33fc885a272c7e733198fad5099cad2421cb3cd0d1b9f",
      "name-candidate:fd3329ed6c222dcebf558401ecfba1ed61c4ba57ed87bf1a55278c93bf99aa57"
  ]),
  ("name-candidate:b5ea769f08a192b32eb2748767f93c552a49a1b03a686e2ca7c0635c9669d6a0", [
      "name-candidate:8e4ac63dbf22b8ffbcc37f11805838d67904c25d9281f024a06d593a78417dcd",
      "name-candidate:b5ea769f08a192b32eb2748767f93c552a49a1b03a686e2ca7c0635c9669d6a0",
      "name-candidate:da5388b9b473a893443f79910a17d94232b5b06976774653ede806a2100e5237"
  ]),
  ("name-candidate:d00b0b4d1730b93e4f9de31a89c7c520cadbd66bbaa5c41573ad1903bf06822b", [
      "name-candidate:514f0acbf0aded1de92438b31b4d749b92b6b1897e6da1b782510bd774bb7824",
      "name-candidate:7814ac4c42581365041951c1cd52e102c51a22c325b1eab7b3f8925d91e7fe4d",
      "name-candidate:d00b0b4d1730b93e4f9de31a89c7c520cadbd66bbaa5c41573ad1903bf06822b"
  ]),
  ("name-candidate:de71c61939ee0434c8405df12aefc8a205afdb055672388ab06762f8dc1cceea", [
      "name-candidate:73c992daa54ee5a378323ffe2cce7ab9e1e37915f2c938bea7609e3ff864a0e2",
      "name-candidate:c001861fca2af421a01461f463ab0bf22c9b10dfd98dd31d58f4ce99e1ec2d8d",
      "name-candidate:de71c61939ee0434c8405df12aefc8a205afdb055672388ab06762f8dc1cceea"
  ]),
  ("name-candidate:a40691cbf8721269cac392241c1e102b12f47516af253f4ecf6053d0eb9969f9", [
      "name-candidate:10e6991ad395124171dd1e65cd5ab74021c6308ef159925afeda97977bf52432",
      "name-candidate:2603b41d15af852bceafa62e67d5b82302b7f71f42f69024840d5584e53005d8",
      "name-candidate:30d7242924336113f235a9d7e04bebba8895b81ce6d8c44455c72593de727357",
      "name-candidate:a40691cbf8721269cac392241c1e102b12f47516af253f4ecf6053d0eb9969f9"
  ]),
  ("name-candidate:f43609bda1db8dfbb516ea744e7f14e208908e190437837cac3ce282147d73a8", [
      "name-candidate:7cd719b9ab33e4dbc3360348143e9316908ac2e8ee637d6957f8fc15ec58408d",
      "name-candidate:8d603f7d0e71c9b62ad57c89123e617082a0a67f53e2e7b8cbcb4d0c37da809c",
      "name-candidate:ecdf8f89c4f2415f169ecd9bcf4df130daff4c9cc8bcfe1f16b2ea2208082017",
      "name-candidate:f43609bda1db8dfbb516ea744e7f14e208908e190437837cac3ce282147d73a8"
  ]),
  ("name-candidate:535b5d9f9117cff4166126f8cd005abf2a7bbc518cc47c4503d07a5dbf58b33f", [
      "name-candidate:1f0916935adf10cc22946c49e7bb31e421c2b4fd2d4dd6709c9549a03e7e721f",
      "name-candidate:535b5d9f9117cff4166126f8cd005abf2a7bbc518cc47c4503d07a5dbf58b33f",
      "name-candidate:56250bfdfc861e25c3a19f251c6baa61dd7176b424aae74314f534e8dfc0e666",
      "name-candidate:b0a9f92736d6628a22bb23ee2f7596e351385beb82e77592e2aa65ee91789d3e"
  ]),
  ("name-candidate:8ace999d897b08e4b105912beaf9c4a91730a4885eba8644f016822c95e22c5a", [
      "name-candidate:5560755e4a4b6a1caf769834d37e6ebf99f920ef2430d5c3179c0474e1a144ea",
      "name-candidate:8ace999d897b08e4b105912beaf9c4a91730a4885eba8644f016822c95e22c5a",
      "name-candidate:93d1de9aa1e77c01f4684751691292f009ccca85eca01b579991b0fde5ed4b71"
  ]),
  ("name-candidate:8d7592e14fd3c595a04f7f0f865897be013f04b07e9f711a76851c4cdb52f970", [
      "name-candidate:098a97ead7cb17c418895b90c8c02f4521183e23aac1d93178d54f10f6068fd4",
      "name-candidate:2842400d86c6304ee5b224e6a3a31b071781fb9aeb261dcf4f18a9947e4d54dd",
      "name-candidate:8d7592e14fd3c595a04f7f0f865897be013f04b07e9f711a76851c4cdb52f970",
      "name-candidate:b7f9430ea5a2b3109d86d8c382e37aa2ad98068db8c811b4522c7fba82499e0a"
  ]),
  ("name-candidate:614aaa6537067390aa32cf585b107d3a3b9b30fc82b1f30bf73ec0dc44899e3e", [
      "name-candidate:057cc0a0121e7f45e008290529c30c00334e0e97cfa67af266b4c962a0084fc6",
      "name-candidate:31f8e92b56a565064ce2285f4c2b1a68dc7802d49763bffe4d2164ccc6eb7358",
      "name-candidate:614aaa6537067390aa32cf585b107d3a3b9b30fc82b1f30bf73ec0dc44899e3e",
      "name-candidate:c146c6666ee1a9fc3a2bd47597524de83efb86c9d61335d21d5f28f776913e54"
  ]),
  ("name-candidate:36105a877a2877606de8be173a079d0acc9d8c61dbc072b255abfaff232d8d7e", [
      "name-candidate:36105a877a2877606de8be173a079d0acc9d8c61dbc072b255abfaff232d8d7e",
      "name-candidate:bb9598d0bc519727442f47685f4b8fb1b400b0a43df491bfd6c96c3190c85c37",
      "name-candidate:bf8fb3432f65b5e5da57442782f1571908e56ae3a51a96de101906205768733c",
      "name-candidate:cc5ad912b697331575f120e8565a58e89af39285c04fbb6e8a08876ec3fa6592"
  ]),
  ("name-candidate:3d3253a4416854192aaebce37717259613f6f3fa693b4a796e12a03fff212e6a", [
      "name-candidate:106e77a1464eb9aaf2310025ce45cb5723a85a899fdafd0af539d90fbcde9c40",
      "name-candidate:355720cd28492c9104e69331d2a8a6edb23d816580893a08a6e6ed94b60ff6f5",
      "name-candidate:3d3253a4416854192aaebce37717259613f6f3fa693b4a796e12a03fff212e6a",
      "name-candidate:aee47ec046c3501cdab215bfb6e91f377187e8a6d06d9b6c7a6caf83b012d7af"
  ]),
  ("name-candidate:38a749891c894aa27d9104a87f5dfce46b646729d4fa627aac90afc7059c0341", [
      "name-candidate:38a749891c894aa27d9104a87f5dfce46b646729d4fa627aac90afc7059c0341",
      "name-candidate:c0e463001dbc037f31d23a506bdd59693fefd7c35343cb1d207bd76be9732ed6",
      "name-candidate:e477cc3048af0291fc6ddb964bfc881b42e5285182f0755c31354f4093815bc4",
      "name-candidate:eea712f89f33f46ae3088f238ff2fb5099442307003fc2e4bd1f8e50016a8232"
  ]),
  ("name-candidate:df6620a2963fadfbc24b078d92fb196d888b208ba8f68ab9d2e0f52e342b8a32", [
      "name-candidate:1667411181cc1d7764353d7663d16144ab3cbd4f2f66e6c44b3c339a1c4a56dc",
      "name-candidate:1a026e34369dd4a628bd6afb7b6f037d9514708a84c690b3826e01aae730c1d7",
      "name-candidate:9c233f16507d75945ad42d45761997fa85c2e542c84f1f3b4c622e90f755b550",
      "name-candidate:df6620a2963fadfbc24b078d92fb196d888b208ba8f68ab9d2e0f52e342b8a32"
  ]),
  ("name-candidate:3254d580ee87b5ccf2024c1aa90fe016b8344394a0500dee94d2d6e39b306562", [
      "name-candidate:3254d580ee87b5ccf2024c1aa90fe016b8344394a0500dee94d2d6e39b306562",
      "name-candidate:a03e3122bba112e89735fefeb908333c96e87e6f20dcf94f59942f241ea06b11",
      "name-candidate:aa43d1998c1b330e3cb288ce290d556010fb5cb6f9ee9f4bcb7ef73b7e738246",
      "name-candidate:bc558597a0122c07c08e8bd36bf2751f5dda449671a3dde1c3903e02b1545119"
  ]),
  ("name-candidate:deef1a80b32a0391e83f68ba51600645c09924a06908c4553764deb013ee2e1b", [
      "name-candidate:90e4edd52586bede7b830989c64c6840ad92b8a520b2cdf3d552da235a07a123",
      "name-candidate:9b4f586fa46b066edde8fcdc131b7fc400b50f40aab6797ce30f47035b622bb0",
      "name-candidate:deef1a80b32a0391e83f68ba51600645c09924a06908c4553764deb013ee2e1b",
      "name-candidate:fb1018115ba94505bd2fb8a686f0abc4172fd6ab1bc9ec078f83e84eb9d6b111"
  ]),
  ("name-candidate:4f34b76a40f0712e765e0e8f950d084394467d6ee5eadfdaf4291d9ae066bf8c", [
      "name-candidate:4f34b76a40f0712e765e0e8f950d084394467d6ee5eadfdaf4291d9ae066bf8c",
      "name-candidate:556613cf8f0bba435d4ba8e8f79bf441005bf782c582223262b046f94f46e8de",
      "name-candidate:5c475cf1a1399dbaf9423f0c0df9f5d81ef50e405b8d2e56251d13e148dd0d94",
      "name-candidate:b6db65d7dddce75b41c008112d3fa8aa5c66bff4d05a07f4fdfae3255614a092"
  ]),
  ("name-candidate:6b157f2b1464a802dabc9bfe451aa86279b69d9a3eb566e922bcdee647c26d35", [
      "name-candidate:2cf18d5a24b730c7273f51902fb54ae127846e3e1494e103a50019125858a226",
      "name-candidate:60e3e12806282f3e56d6bc14ab63f89a1e16fd5ba23dd417b245c30bc205ccd9",
      "name-candidate:6b157f2b1464a802dabc9bfe451aa86279b69d9a3eb566e922bcdee647c26d35",
      "name-candidate:e58fb92e419d265fcd345b2687d7c6dd0821cfeeb54c031c696eb1f94b78733c"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L59373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
