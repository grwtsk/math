# candidateSelectionsChunk0013

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3526ecb4227029bbbe3d0145acd9e55e920f74307efdb7ee8bbdf1c005fbdd2d",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0013",
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
  "slug": "candidateselectionschunk0013--797f2460f60e585e4d6c0fc6",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45972,
    "line": 45649,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:797f2460f60e585e4d6c0fc6b4a438476c2acbf664626f14b5ca7aa7452869bf",
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

Occurrence: `declaration:3526ecb4227029bbbe3d0145acd9e55e920f74307efdb7ee8bbdf1c005fbdd2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45649–45972.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0013 : List (String × List String) :=
[
  ("name-candidate:57312dd67d181ff2cd2ddb7b6758cdeb4d061204329021cc8c75a9f92720656e", [
      "name-candidate:13d68be482923863d4eed5f564fc22edb143ca2c1660e2a486aca564e8aa0003",
      "name-candidate:57312dd67d181ff2cd2ddb7b6758cdeb4d061204329021cc8c75a9f92720656e",
      "name-candidate:9f5c98cb140f0f125283202c8055929a4768963cb20131f9c64419717668738d"
  ]),
  ("name-candidate:fd308af733a901c7ab866b36c28489d27384c3cb0ed571244dadad245124bd07", [
      "name-candidate:8029251f60874b0b03eaa5d174174cb535520656f0619cdb77aa8e051bc7b988",
      "name-candidate:ada31d6d42c9b3dbe78c9a86becd38e887f5b5a8f644aa1d9a2bef7c9ac00bf1",
      "name-candidate:fd308af733a901c7ab866b36c28489d27384c3cb0ed571244dadad245124bd07"
  ]),
  ("name-candidate:62d64aee4b9066408be8e367870d7507362f0e8a201d205de29df49969bb0c06", [
      "name-candidate:62d64aee4b9066408be8e367870d7507362f0e8a201d205de29df49969bb0c06",
      "name-candidate:74b9fdb2408775fccd9ac2e9f843c0279ec96b121a01cbef2a7c175a7a1ba8e1",
      "name-candidate:af30e54368388b2503e75a66a841c9f2b9f86500e74374dc8138967cdd471dc8"
  ]),
  ("name-candidate:2737e6ce1f6c07461daa7246eaf41f7b0421e9d6e42e21b50a71d314eec390d7", [
      "name-candidate:2737e6ce1f6c07461daa7246eaf41f7b0421e9d6e42e21b50a71d314eec390d7",
      "name-candidate:2f192c2ef6b34db140237bdb716b8d14ca3916dd207ec13c1d3d49a4772e2c4f",
      "name-candidate:df0f9e3a3693a70377a0285496b5ba600fb86c6fa763f4c6ae611ddc9c3f186c"
  ]),
  ("name-candidate:6ff4fe35dc8746dbe3abfa3127abb1d9d95adca7746e748e1b184ef980ecb8e2", [
      "name-candidate:1e15287181dd97a1ed72125f93e6e88785d02a0a4d6caca56416c5e4dfbbc4c8",
      "name-candidate:6ff4fe35dc8746dbe3abfa3127abb1d9d95adca7746e748e1b184ef980ecb8e2",
      "name-candidate:c08ef9505c85e40ab3bb89f2417946f61b4d2e76c3b20f6bf06a3bc361eca420"
  ]),
  ("name-candidate:155dff721d9a159487f8df7b79903dd9cd3ca5942da8ad760323a091db81a7a0", [
      "name-candidate:155dff721d9a159487f8df7b79903dd9cd3ca5942da8ad760323a091db81a7a0",
      "name-candidate:212504df80589a616c5d6ca25a70afcf494079681246464848b98b4c33c89231",
      "name-candidate:6f1a549cd24e8511a9f4c11c283c3cd495bbbb2f521624e4079a4de81a92e6ce"
  ]),
  ("name-candidate:49eac0bb34c34a3bc4170597196fb60ff298c6533613f17ea1f40c2db69b0e2a", [
      "name-candidate:49eac0bb34c34a3bc4170597196fb60ff298c6533613f17ea1f40c2db69b0e2a",
      "name-candidate:69f21bd1502ba5c7aa9c9a4c613aca798748fa0d6601f78e5f3793d687d23826",
      "name-candidate:77797f5ad55a66c79306def66332bcb903f1551ed6d2742f720b7226e74afc76"
  ]),
  ("name-candidate:a73cdc10283179bc1a076de2b0b89af27e321e8481c664d2cc61422668f659b3", [
      "name-candidate:173e0f254ba8d95f4cbfe38bc3efbb7b23be8119bee01ba9b12d4c03f6b639b5",
      "name-candidate:6a62640165dcea8b97a2163767f0072b33282fac6da473e0f60ac5d2e5443f2b",
      "name-candidate:a73cdc10283179bc1a076de2b0b89af27e321e8481c664d2cc61422668f659b3"
  ]),
  ("name-candidate:fa7fba124befb5dd51c65b2733ca3d5f42cac46d3dd4289f663330b2fdd65ccf", [
      "name-candidate:1e5f5957149f2ab949f3dcd24c61b93bcad5a750c53fb6f4e4e269d0d5ef235d",
      "name-candidate:3e752b0960712ece2b9a58692b9f54bda7034fcba38f5b72e3cd8423082dfbb1",
      "name-candidate:fa7fba124befb5dd51c65b2733ca3d5f42cac46d3dd4289f663330b2fdd65ccf"
  ]),
  ("name-candidate:cb36897f84d30d6b984d4227c2db8d45ba74afc997506394a8caec2b56d52935", [
      "name-candidate:6f9fb98fe3c5acd9ba5622f82fc85628068e3af00a2a2391b204b55222ae59e3",
      "name-candidate:95981fd9e0b512c5264eeb9482846cb163b7c409c69000761a42f857d2ba5017",
      "name-candidate:cb36897f84d30d6b984d4227c2db8d45ba74afc997506394a8caec2b56d52935"
  ]),
  ("name-candidate:5c7b8c4baecd8a0d1a2c01513035ff1792ee242fba58ee214db3918c7dce7d99", [
      "name-candidate:1d78323fcfd41c0df7217b48d9cb761c59d2e2b751db301b136146e52ad76fbb",
      "name-candidate:5c7b8c4baecd8a0d1a2c01513035ff1792ee242fba58ee214db3918c7dce7d99",
      "name-candidate:caee1efdc981adeb166e38a9bc6a87569718c46259ae025f80a1da08ee0eb0e4"
  ]),
  ("name-candidate:2acab39d02ba85b713d884d5c329e661df971b980222815b8e8faa6eb32cfa69", [
      "name-candidate:2545cc083890a4ce55b1d085fd9931dc9ff7531cda95a4381153685dfbb95f38",
      "name-candidate:2acab39d02ba85b713d884d5c329e661df971b980222815b8e8faa6eb32cfa69",
      "name-candidate:f47fe449caec1d37b6268300baff5e29ba50214764a03ae4ffa99daf86faa6e6"
  ]),
  ("name-candidate:37d5e25ee6524f4dd5c35ac59b663d37e51634400dad1fa93e43a6af179221e1", [
      "name-candidate:37d5e25ee6524f4dd5c35ac59b663d37e51634400dad1fa93e43a6af179221e1",
      "name-candidate:d6273ba1ba84d81d5274cf6b344541ae220caf291e19d7eed7fd8a7bdcff9a94",
      "name-candidate:dc4da8df1550875f0ea4356efdacba8a91b2865368be6fe78d0f25d825ea3591"
  ]),
  ("name-candidate:d7ba0a86ac1ef76c8d11916dfb51dbb968735d2a7cd955b5b406903907bb801f", [
      "name-candidate:7c05cb769ccef7a99e4637fc8db04ae17a69f07c30fc7b476b3801880d8061d0",
      "name-candidate:8dc9291ea068b3f1183ebf5775ab15b400aaf77cbf998a785ff018801026933b",
      "name-candidate:d7ba0a86ac1ef76c8d11916dfb51dbb968735d2a7cd955b5b406903907bb801f"
  ]),
  ("name-candidate:0884cab60b251b2ab5cd46cceae527cca1afd578b68faed6bbb51f2d62dd6d07", [
      "name-candidate:0884cab60b251b2ab5cd46cceae527cca1afd578b68faed6bbb51f2d62dd6d07",
      "name-candidate:26d7f0f6de7136cb84044d548f0d399ee0c87e4f5fdccc4bfc7155060961b975",
      "name-candidate:b30139762e1d81fa2e8eaba350c4f2ba3d2ceb68fa318f142e2c0d1e4b988bed"
  ]),
  ("name-candidate:2a5b4826788a525a068e14876754eac79ecab104cec15fa8fc8aab64dc8e023a", [
      "name-candidate:2a5b4826788a525a068e14876754eac79ecab104cec15fa8fc8aab64dc8e023a",
      "name-candidate:b81505ba38d0d06b0c1820f25ed4f0621e59328b3a0bc18c842c369a7891982f",
      "name-candidate:e727057bfbf23405499c71e654304e8b4a3d6e152068873a807601d0777d9406"
  ]),
  ("name-candidate:7868690e4e3437e11612a4817dbd2bfc60a56ff34c1b97dffbc0a76ccc5326ea", [
      "name-candidate:0d82adbf8108adb5da8448d8c4ab46dae1db34fa3fe8af1680376ae083df1c1b",
      "name-candidate:325d199ff63c8e229503ad14b59111baa91c9e4f00025ae27179868e5676c0bf",
      "name-candidate:7868690e4e3437e11612a4817dbd2bfc60a56ff34c1b97dffbc0a76ccc5326ea"
  ]),
  ("name-candidate:137cfaa21251f067ea4856c272946093e6f224187fb72259416261b90386b402", [
      "name-candidate:088d5b3a798d3ae11717f2332f2ca7845994162f2fed69f628895d154a3822c9",
      "name-candidate:137cfaa21251f067ea4856c272946093e6f224187fb72259416261b90386b402",
      "name-candidate:58d51f38863676c52697865d3520085c1da46e6ae9d6b9c3cb1e088dc640fe0b"
  ]),
  ("name-candidate:d48689136d458314dd3b49a41de2291cdb09467275134245d1c2bca2018e8cb7", [
      "name-candidate:1c030bd93fd68270c6651003597f120d04cbcff9fc470e855322104b91b11868",
      "name-candidate:65ba1e0cd1579a6fee0c3bb51483404b1296c686b60ff27a8642beacd368aeb9",
      "name-candidate:d48689136d458314dd3b49a41de2291cdb09467275134245d1c2bca2018e8cb7"
  ]),
  ("name-candidate:f96398400340f6fc6d38f11b5eaa8773919ddfc3b930efad537562fc8f158e5b", [
      "name-candidate:8de82570039ffcb2af52490fd8419b24e51409a2f2d58fde51590eb1387ebbc1",
      "name-candidate:b0667f10eda11c951fa37a6e5180d7362ad5f0e66e8ab8c613f4a6a21d4f5ecb",
      "name-candidate:f96398400340f6fc6d38f11b5eaa8773919ddfc3b930efad537562fc8f158e5b"
  ]),
  ("name-candidate:77990a71c0688f3f85073a105d5eb4e93ae8f332cbe3fc6b300bf68da959b666", [
      "name-candidate:6dc0af66e18e0df1dcebd9c9826b3b1b93271132fb87355c76c397701dc2e4f7",
      "name-candidate:77990a71c0688f3f85073a105d5eb4e93ae8f332cbe3fc6b300bf68da959b666",
      "name-candidate:b2c0d2fe19b5f7f3375dbbb3076b4d4c2dbfede7c9814a9a5e32bf98a9190ba6"
  ]),
  ("name-candidate:0666a9f41a4924856b24110a06322b96aff2c3e0ce375963576fea1beb02d6f2", [
      "name-candidate:0666a9f41a4924856b24110a06322b96aff2c3e0ce375963576fea1beb02d6f2",
      "name-candidate:23def39ed84e3bc53028a8c6a9d185a920618109b5eda4456a658993ec86ccac",
      "name-candidate:6b7676667445b56f033f91fa20d23890ff836ca80bc8c07953be7ea3a53427b1"
  ]),
  ("name-candidate:d0f3e0b47dcb47f0669017c37a72afd917266448c7715ae5d6bf511d0d8932c1", [
      "name-candidate:5acd1f23a82d1c380124f7486af75d0362c9a4db42d8745169fc94abfd057587",
      "name-candidate:5fe019397886a948f4f0baefa84c9ec76893e640ab5ccc72bc7c9b4bee7239e0",
      "name-candidate:d0f3e0b47dcb47f0669017c37a72afd917266448c7715ae5d6bf511d0d8932c1"
  ]),
  ("name-candidate:839209166c0171e7861fea55b869f66d00e6aefe0d7c692bf13686306986ae11", [
      "name-candidate:5be37fdca7931ab9370eb4fe7a1585eee5063d58dbe8bcf1a807ad4c965c7bb1",
      "name-candidate:839209166c0171e7861fea55b869f66d00e6aefe0d7c692bf13686306986ae11",
      "name-candidate:db96e55a78cddf4adb9053ec5f839d2acef87b47934d46a24c15bc16cf9f9146"
  ]),
  ("name-candidate:8729b579cd45105aa11651ae39cde79878d71a86305820c659fcdc4f15ac2c0d", [
      "name-candidate:240d1619be11ff023c565a3dae59db8b4771b7a0a05f435fbf2c82f0898a05d2",
      "name-candidate:8729b579cd45105aa11651ae39cde79878d71a86305820c659fcdc4f15ac2c0d",
      "name-candidate:c0ec69fdda7a46a5b01e7a2c0f93aa78f78d44afe28de435e3b4b12f8089d3e4"
  ]),
  ("name-candidate:da5c6ab7a9b1ee588c6f2606d99e4b3a549ce0354d9864a6f8f6277d1d3b7bf5", [
      "name-candidate:6722bebf5ec6d6616a03f0c40c032476e3eb9e66894016a1837c5df0ba8cf06d",
      "name-candidate:b7ffe0b675205279bcec5873c8e6a99a71ba91a7c4f80f14ec99eae3c61cd51e",
      "name-candidate:da5c6ab7a9b1ee588c6f2606d99e4b3a549ce0354d9864a6f8f6277d1d3b7bf5"
  ]),
  ("name-candidate:84caba57b5b674dd0a8adc0094ea05d615c494ae290798794922f272cb38367b", [
      "name-candidate:34f0abc4f231899e1df87ae3ae93a5f34f31e8097f6fdab1aadb46dbe1489349",
      "name-candidate:4e1a16ea85fe854803d44cc5900cd6a05c681619900ade52f51c69611fbaf71e",
      "name-candidate:84caba57b5b674dd0a8adc0094ea05d615c494ae290798794922f272cb38367b"
  ]),
  ("name-candidate:7d8acb44fdf84decec17e29224eb5baaf7586ca78d55d644487697e7c30b8eaf", [
      "name-candidate:2b721845d4c5250aa32086c4b36b5f9238252afef91557891c4607613a4fff66",
      "name-candidate:7d8acb44fdf84decec17e29224eb5baaf7586ca78d55d644487697e7c30b8eaf",
      "name-candidate:cb59d1ed3d7ba0872b3d0b5fbdd0ccdce1675465f366111e28863833f656f57a"
  ]),
  ("name-candidate:fd36f941e0572a4a3bfbe813f4470dfb9c2973c31703cff9040f589b308b41a2", [
      "name-candidate:76db960c94974731dba471a4a55da6321ca780bed55cbb0f2e4827a9b3257f0a",
      "name-candidate:fc3c8f982b0863a0e5e6f26f82fa10707c297ba17d84cde86653a9ea2aefe0bf",
      "name-candidate:fd36f941e0572a4a3bfbe813f4470dfb9c2973c31703cff9040f589b308b41a2"
  ]),
  ("name-candidate:039da94d140f0870be3fa39b0ac80ef4a628f1cd02f37cfd9fa1890bfce62116", [
      "name-candidate:039da94d140f0870be3fa39b0ac80ef4a628f1cd02f37cfd9fa1890bfce62116",
      "name-candidate:14c8c4bfb1aa6269ee3dfd0e4a48fdccb3a12dee936b0ef6eefd0e0e1bfaa081",
      "name-candidate:bb60a7f027372257f3431bb0a9a442b74cca59d5449c46fac8c7395d1e99be8d"
  ]),
  ("name-candidate:23dcfd505ad1f724c2e13db280dba65b9589dfb4523547596328ff79f25d5003", [
      "name-candidate:23dcfd505ad1f724c2e13db280dba65b9589dfb4523547596328ff79f25d5003",
      "name-candidate:4f2f2c8f5571991dfde4ecbeb1cd4b70c73a89d626d5bb43b495087a1b949996",
      "name-candidate:9bbab4fa696a77ebaec33b2d13ddc53b7a2d330d2a3742e58babfa70c046aa5e"
  ]),
  ("name-candidate:059491f3bc65265eb59a961a79132bdfda54f361660e50d96d5251d80c5c6f27", [
      "name-candidate:059491f3bc65265eb59a961a79132bdfda54f361660e50d96d5251d80c5c6f27",
      "name-candidate:51026d5d2bdbe1cf93f5f5e064295c3db3a930e052336f53f51bc85037b5d3b7",
      "name-candidate:bb4c9dda1a7cd06d43c2e2f8acf5c6c94e7446d699c1455f54b9a73fc13219c4"
  ]),
  ("name-candidate:fd87b64346cb31964332671fc7ee26632489484cf11f5ebcae2cc43e92bda571", [
      "name-candidate:097c0345f6ab56875a94cab77b15f7ff244d37b62800e4a9a1115ce8cea46ddc",
      "name-candidate:a3e9ad7752b92b25023a0993ab248258b4ecac3886d43a47096d12baf45e9e50",
      "name-candidate:fd87b64346cb31964332671fc7ee26632489484cf11f5ebcae2cc43e92bda571"
  ]),
  ("name-candidate:2e654b0192f55a7be259c99b1983fc0329facf3bc7323bcb9521a87c79947f1d", [
      "name-candidate:2e654b0192f55a7be259c99b1983fc0329facf3bc7323bcb9521a87c79947f1d",
      "name-candidate:53cc4d8b7439a043b5c0976c658be98ea03f9c1f556b54789fe9b553d0f489ff",
      "name-candidate:d7574160d7fb3aed647c4fffb88a2d383b97d7001f26c84d3916345a2abfb9a1"
  ]),
  ("name-candidate:8a5f877bf1c40ed6cbdad3b8963a2d21644e799fbbea87067bd09ed26f729c27", [
      "name-candidate:6213de213375664b51cab8f62b5e5e8974d99d665e5624639dcf599186c7cfbb",
      "name-candidate:8a5f877bf1c40ed6cbdad3b8963a2d21644e799fbbea87067bd09ed26f729c27",
      "name-candidate:ec24505c8be59ac667ffebc4d37cebad51db56258dc4b26d19204e9355916e46"
  ]),
  ("name-candidate:7a5bee54b5d47605ea646c41508f7bd15321628c3ec9f706b6cc05e262a4c92e", [
      "name-candidate:22427cabea8e88793060660e78f0b6fa2dafc891aae95efaabcf46514f8bc99a",
      "name-candidate:733a0ee8aba62d124fa709457d72758fdee8c88b63480704ddb84565c7dcaf62",
      "name-candidate:7a5bee54b5d47605ea646c41508f7bd15321628c3ec9f706b6cc05e262a4c92e"
  ]),
  ("name-candidate:37b5d5fae19f5791d3c171401700d5c57d807df82a9cf470f8d9a0b4eab08472", [
      "name-candidate:313da5f24dbd882ab90337411e8a991bf4c945d2762155dd86c840202011077c",
      "name-candidate:37b5d5fae19f5791d3c171401700d5c57d807df82a9cf470f8d9a0b4eab08472",
      "name-candidate:67203c0ce9623b005a653f2cc6fd2367ef68f417ccd7e0bae65f83b2838889c5"
  ]),
  ("name-candidate:da47ad632e7be91f513dfd6be6adec6c5608203b5eec4f177e26869fe6fec81f", [
      "name-candidate:84b2f57b27b766c866cdff41753f4715ae0b310a89275cff058cea1bd899695f",
      "name-candidate:cf3c5619c4dfa44a12b52b8e399b377eb9ee4a9ba2b043412fe0f9e199ec45b5",
      "name-candidate:da47ad632e7be91f513dfd6be6adec6c5608203b5eec4f177e26869fe6fec81f"
  ]),
  ("name-candidate:5373d7f136898c4374641d817eff2fc067d2dcf18dfac7086af7416a6a056dd4", [
      "name-candidate:5373d7f136898c4374641d817eff2fc067d2dcf18dfac7086af7416a6a056dd4",
      "name-candidate:7ea287b1d1666e23e25d7254cbc3fc4ecbe3150d04827df8e752a21ef01f66d9",
      "name-candidate:e28204d1f2fc7f07494492e6f944118d008cc53897c0fc097c74e6a7f83e8374"
  ]),
  ("name-candidate:db6b0a18f3142cd72b00cdcf5236a151f6211190bf003089ec45a9f43e933fb0", [
      "name-candidate:7728df8f89aa8d047ff9be5a35a3ea6e08017587f51f0439f9ab47cd51260bb8",
      "name-candidate:db6b0a18f3142cd72b00cdcf5236a151f6211190bf003089ec45a9f43e933fb0",
      "name-candidate:de41f13abe59714c04a4cd01a9ce22dac31e7b85b6a9ff00e15e09a91d962180"
  ]),
  ("name-candidate:eb6187e68890c8cc67d300693e768a0072d549ab7b3fe8bed9a3e459488fd7a0", [
      "name-candidate:a70c3e442f0ead41255cc5a01be3509795eaa4275af737119672a5902c240709",
      "name-candidate:eb6187e68890c8cc67d300693e768a0072d549ab7b3fe8bed9a3e459488fd7a0",
      "name-candidate:f4552d0045600f32dab7b930a6ec066b51c743885f33ce22e89ed272b6af978b"
  ]),
  ("name-candidate:26d11408f0468a8842982fa17ff586cfd9d5089e22f7ea283b4aba960b864da7", [
      "name-candidate:26d11408f0468a8842982fa17ff586cfd9d5089e22f7ea283b4aba960b864da7",
      "name-candidate:c9d14851d3a590aaed66f4126d99b7677f4818e4315e7727580fca6781cd1a5e",
      "name-candidate:ca9600f1aeeb76709c16201b01e066e8ff17e8b5439f8e36456dbb59dcbd1745"
  ]),
  ("name-candidate:d05062456aa050656d57e3d1099191028aafb70b97bd938f3614a84d94c7d9e6", [
      "name-candidate:4ae9b1d4e8b24705df1b0ac7d93c14dc95aa52fa66fa1b7237a650e3602996b6",
      "name-candidate:99d2aa68493b855cca57425b02454e4757b7832d0ef25115ec9029802c80e041",
      "name-candidate:d05062456aa050656d57e3d1099191028aafb70b97bd938f3614a84d94c7d9e6"
  ]),
  ("name-candidate:be8730488b249b456d73f7866daa413988378c03020acbf8e67f4ea12ce293e0", [
      "name-candidate:7738af08a4f91d82d77d19557312aea7f8d80f1a78a60a9452ef1f5d80bd4b62",
      "name-candidate:9f96c570802dedac85475010addc722fa9d52c463131d8cbac6fa5a42cae16ab",
      "name-candidate:be8730488b249b456d73f7866daa413988378c03020acbf8e67f4ea12ce293e0"
  ]),
  ("name-candidate:b9fdf41750a3772c8e0bf6f341ba7ad84a87749535c374b19092b5b9d6ff673d", [
      "name-candidate:9e731f7c4d818e3f6d255cf8208c0b6821b88497bcb307c029fa152def05bfda",
      "name-candidate:b9fdf41750a3772c8e0bf6f341ba7ad84a87749535c374b19092b5b9d6ff673d",
      "name-candidate:cd9bc9131ec3bddd4fd5b7aaa85dbbca3ab06bef9d3a4cd9db78a5e0360bc1d8"
  ]),
  ("name-candidate:cfa00e6447cc921e91148c5c0036b2a3561dc4eee393261c1b4cd111f2bb9a95", [
      "name-candidate:0d4dbafdab667836d8ff7816e3fc8683e35cf9fd45958f85a28edf58d2c5c24e",
      "name-candidate:28a1f81fa7a6bc889db3bbc6c96405eea5ed6c90c3865752c3acffc7fe104bc9",
      "name-candidate:cfa00e6447cc921e91148c5c0036b2a3561dc4eee393261c1b4cd111f2bb9a95"
  ]),
  ("name-candidate:509f43a6a15b7b6dda3671c2906e2c6d335bab5c2f46c2b6bbb27d6d677861b8", [
      "name-candidate:509f43a6a15b7b6dda3671c2906e2c6d335bab5c2f46c2b6bbb27d6d677861b8",
      "name-candidate:5b86500718dd1282623d330f63404390cc7bb76d3770d3741d3602ec087374bd",
      "name-candidate:e08aac7792016f35fafde87560af50ed55fe1e7e8cbd4dbd5b505fffb44a4768"
  ]),
  ("name-candidate:f1cb7b77f5e688ce46774fbbe2fdf76c1ec75ed8bcdb45524f2ef24ec4d8b59f", [
      "name-candidate:3c313ae38322fe1a79595508a00ab177940047fdbeac3b646e35c4edfe7aa4fb",
      "name-candidate:f1cb7b77f5e688ce46774fbbe2fdf76c1ec75ed8bcdb45524f2ef24ec4d8b59f",
      "name-candidate:f3af575ee1d8e47241a007a66d8a6ef9c5282a12e60e01f0de1e8a680344d3e5"
  ]),
  ("name-candidate:559962dbaaef75832a9668bcc50bf493f39a1a9eaf5d5a4573fb7cda91adfaac", [
      "name-candidate:559962dbaaef75832a9668bcc50bf493f39a1a9eaf5d5a4573fb7cda91adfaac",
      "name-candidate:9c4d63ff33cc335f165c8a9f7e3eb3d7eeb8676f850760942d165792bdaacea1",
      "name-candidate:ca60669f2d1bb6ae7466667a846a2673807d4bd73dd548a8b5547fac8ed6ef76"
  ]),
  ("name-candidate:bfb5ae882aa2cf9f4d2f0da8eb54ef9719c6a5354e8aebfadc7dce925e1fab88", [
      "name-candidate:6599f4d8d419f4bf23306c2ecc54b8b6ef7f80162f4d19df454800c26622c4bc",
      "name-candidate:bfb5ae882aa2cf9f4d2f0da8eb54ef9719c6a5354e8aebfadc7dce925e1fab88",
      "name-candidate:d69644a60aabc14204acc833e640057562d191bafac161f235535519924c411c"
  ]),
  ("name-candidate:394f0d2a5165612ebdb41bc600b88fdbb1c958e242a96e472d4c8ac1a98ad985", [
      "name-candidate:3810f027a96f8730fbb991b26a1159ef493d428cb99340088e01046ad506afe7",
      "name-candidate:394f0d2a5165612ebdb41bc600b88fdbb1c958e242a96e472d4c8ac1a98ad985",
      "name-candidate:68fcac4a3f9a5019f2c07820286498a4b812d818e2ef4b46f63f3220c2acc903"
  ]),
  ("name-candidate:77f0b05d3f5cf829136ac0476676167d3b2c2e636e53163ee63c4afa3c28350d", [
      "name-candidate:2628c9c66b1fece930b014a554826e707fad1fe61417530fd6af0e477ae372fc",
      "name-candidate:77f0b05d3f5cf829136ac0476676167d3b2c2e636e53163ee63c4afa3c28350d",
      "name-candidate:c32540e7a429780c3e113d5592fafd91b65746356ca14cabc22163256aa4e770"
  ]),
  ("name-candidate:772d12037dbbd95645383dc7e414e9f4c4ce2754f7b4e14c32f1187955dd9b63", [
      "name-candidate:149be72388381f89e7b2c05e93ea13783b8cca5e982f9bdb9cc0c6d9075d8563",
      "name-candidate:772d12037dbbd95645383dc7e414e9f4c4ce2754f7b4e14c32f1187955dd9b63",
      "name-candidate:8f3f67db8bf1ac7b633fe1d136750d013d5c6c0456418d1a131bd73599456a7a"
  ]),
  ("name-candidate:1382b22d77dccda9dedf22aaddff09c003670b2cbc49fa9b840f8f327af2ba94", [
      "name-candidate:1382b22d77dccda9dedf22aaddff09c003670b2cbc49fa9b840f8f327af2ba94",
      "name-candidate:2f863942f85be5d9f168bb152da564391e2d0845316489a040b3f5077fceadf8",
      "name-candidate:f0de2288d7b99154139b74dc6852b95161f8d98962bbcb0985979e14bf054f93"
  ]),
  ("name-candidate:d194b96f398ef42f7187cb085b488d94747d6bef2dcd43fb303d729c6cb13328", [
      "name-candidate:9f8c89c97f00356716767410e586849ad39fb1c9656821f1b264d95b24b3538e",
      "name-candidate:d194b96f398ef42f7187cb085b488d94747d6bef2dcd43fb303d729c6cb13328",
      "name-candidate:f85b5b9574ab28405a6ca2e1c3b72775ac2698b93885a06b5dc9c15839b0f7aa"
  ]),
  ("name-candidate:d15a94a29c392b496db3828c1bad5f9d7084445434dda25d33bfcea118300398", [
      "name-candidate:7e3cfb69bdae30f1aeb9380c88f53a7ba5d1f896d8d9fbd866618b92d42962f8",
      "name-candidate:cd7e33cc48f0b87074379ad348584d107d68094b705c9b753051ec09fa16c9ff",
      "name-candidate:d15a94a29c392b496db3828c1bad5f9d7084445434dda25d33bfcea118300398"
  ]),
  ("name-candidate:26eb9a17697529d07b5f1c98c84fa3effedfa86ce9ecb0e61ab92236cf067d21", [
      "name-candidate:26eb9a17697529d07b5f1c98c84fa3effedfa86ce9ecb0e61ab92236cf067d21",
      "name-candidate:464599ebc1c2c9ff9cb7a6ee14dbbecfc97adc10045a1e96fc38f7e20f35ec94",
      "name-candidate:5b12d54fd8b6a6d3e4702023026d8511f21bf3b2139b1536eff6dcca16729bb5"
  ]),
  ("name-candidate:d8ec1b05ed15c00769f38f5fa9d4816ec45b9ae879f2bfb211c1ee6052aa0c58", [
      "name-candidate:58a1f29fcf828acf7c6d41e25dbdcfbffc6ed4f2dfd6e90d8734f77d676df6fe",
      "name-candidate:bb930832765afe764bcb70cc6d2a18893a8365e4265a5853a0c0f51b0a9ec3c0",
      "name-candidate:d8ec1b05ed15c00769f38f5fa9d4816ec45b9ae879f2bfb211c1ee6052aa0c58"
  ]),
  ("name-candidate:dc15005a79bbf13463d5ac8758b0cb8288d762e7ef79e3cea1e0f5a013c505f9", [
      "name-candidate:7da91e8ab791174c1175779a53c53afb45415fc5fac0be6c93951d43e1cdf72f",
      "name-candidate:b981e2bc53e2ed9ac4d7e25ebe8570cb9539309849b132408f68884929b7e5b1",
      "name-candidate:dc15005a79bbf13463d5ac8758b0cb8288d762e7ef79e3cea1e0f5a013c505f9"
  ]),
  ("name-candidate:630cd32cf31c376126973c19429ec74c7ef63d79fdf739746f99b2fb0142a02e", [
      "name-candidate:4b30c3a58d8ab7a05fa0c260d6fe0810b55a811c8d5b184b8bd3005623f072b9",
      "name-candidate:630cd32cf31c376126973c19429ec74c7ef63d79fdf739746f99b2fb0142a02e",
      "name-candidate:9b40e874c518bedc49f2d6c272423f4b895df2dc8dd12f684c22604d83007baf"
  ]),
  ("name-candidate:c79cc64dce11a77279a182053acab734bfb57fc28083027c8ea3f8311b9cb63f", [
      "name-candidate:9faba17e414ac48e82d27d01598b80e539250d15beb1de1b10316c8d8266f7ea",
      "name-candidate:c79cc64dce11a77279a182053acab734bfb57fc28083027c8ea3f8311b9cb63f",
      "name-candidate:f5d4cd541c5c4cbfae208809e22930bd15bd58383a6f632df1e5c2ff80e5804a"
  ]),
  ("name-candidate:7514f1c1bac9df77c84668016018bd53affbd09b4ee07a5cd71ed65f3632d4b3", [
      "name-candidate:0fab1f9b53ef8040b04df558056c22bb1ecde9b04e5d02679cd1d4daf57ed627",
      "name-candidate:7514f1c1bac9df77c84668016018bd53affbd09b4ee07a5cd71ed65f3632d4b3",
      "name-candidate:fd22383a904a41b9c3eb880237772d6b9e383b10c1b92a667ec2730a8d26b512"
  ]),
  ("name-candidate:9e7b0edc8b11d23892a972d206e9d9a67ef10d78808d1cce22a393c8e162ac12", [
      "name-candidate:83c14f3c9192aee07ed08a8da26e7efe356f27a6eb821683a493d119f7fdab24",
      "name-candidate:9e7b0edc8b11d23892a972d206e9d9a67ef10d78808d1cce22a393c8e162ac12",
      "name-candidate:ad87e4ce8d742d0b290f89a44ea96487465bb4b710b052653e7ff080f57e3959"
  ]),
  ("name-candidate:0781290782780cc2f5b68edf7c277d52ff1d2b2842e3d93f34cdd4076e9152e0", [
      "name-candidate:056dc0ba6ac63bb8a440e2481f4eb8f347e54795a2f97fc02b4e3d8bf7f38f25",
      "name-candidate:0781290782780cc2f5b68edf7c277d52ff1d2b2842e3d93f34cdd4076e9152e0",
      "name-candidate:7f5fe6ff75136551cdd2a5d8717554bb3c0967b2c5da7241b2cd0237004965e4"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L45649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
