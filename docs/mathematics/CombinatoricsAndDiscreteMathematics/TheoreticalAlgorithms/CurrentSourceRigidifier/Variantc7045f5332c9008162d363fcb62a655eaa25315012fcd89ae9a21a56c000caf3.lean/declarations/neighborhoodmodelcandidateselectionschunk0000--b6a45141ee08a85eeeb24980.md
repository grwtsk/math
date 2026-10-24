# neighborhoodModelCandidateSelectionsChunk0000

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e10a10e17a5fdb45b996ad8aed3695d4140955b279341b3268039f42673badf",
  "kind": "def",
  "lexical_name": "neighborhoodModelCandidateSelectionsChunk0000",
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
  "slug": "neighborhoodmodelcandidateselectionschunk0000--b6a45141ee08a85eeeb24980",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129646,
    "line": 129239,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6a45141ee08a85eeeb24980c5bc6590251f35bb7f3e7721a5930c052121c821",
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

Occurrence: `declaration:2e10a10e17a5fdb45b996ad8aed3695d4140955b279341b3268039f42673badf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129239–129646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodModelCandidateSelectionsChunk0000 : List (String × List String) :=
[
  ("neighborhood-name-candidate:422b8197b5e114a85c4c17e0c5f142ae11c357766347a18b5a8d45f8c9d53730", [
      "neighborhood-name-candidate:1438262f7fad32ff78ee3cd3ba7ac0ed7f3fdf02fe8dfcae2e997ef65c06a885",
      "neighborhood-name-candidate:20639bc039e29f2d40291ec95ad121f6b14980f4dad4f057e96123e97efbed6e",
      "neighborhood-name-candidate:387cb5baca9ec8541f1bca4200d9ef00999cde9fb27dd94102888a408dd74ecb",
      "neighborhood-name-candidate:422b8197b5e114a85c4c17e0c5f142ae11c357766347a18b5a8d45f8c9d53730",
      "neighborhood-name-candidate:db202344330bb105f8dfbadc80d85db0e5e8037fe9aa83a97960bf1bc95dcf28",
      "neighborhood-name-candidate:de78a93ec36954969eca240028a4ec36e4e8a5971a2384b65d75e4fb802abebe"
  ]),
  ("neighborhood-name-candidate:7c1193c80464267c947df16e9d26c7dd0f240849df3ed49f113e0cd116a041cb", [
      "neighborhood-name-candidate:4db9c32b4bb4858305e916d2d85531307874de358fade6d3b840698045cad02e",
      "neighborhood-name-candidate:7c1193c80464267c947df16e9d26c7dd0f240849df3ed49f113e0cd116a041cb",
      "neighborhood-name-candidate:b1b044d4e5398fb040a2b46c8051af77b199aa887134b7cd14452026191317b0",
      "neighborhood-name-candidate:c7eee95b0f3d0bd9b85a0b00bbfe2b1b7c13bff4a6e825e148820e289926c608"
  ]),
  ("neighborhood-name-candidate:6e20366391d447b3fc9e9b2bc52b6683b15ccc3256ee32485092564e47061859", [
      "neighborhood-name-candidate:4a859c02bfd02c35597d4c31bc2bfb1adc0c010b232acb0f01801d29179700ef",
      "neighborhood-name-candidate:6e20366391d447b3fc9e9b2bc52b6683b15ccc3256ee32485092564e47061859",
      "neighborhood-name-candidate:e12a0a73f1c4f4a2e00d8c75edd83e59ded68c5b4be00220c0d12207e470a440",
      "neighborhood-name-candidate:f001d388130ca386ecce5d1ec5822c72728ff8d879bf47db3a1377c69fc13f07"
  ]),
  ("neighborhood-name-candidate:789d51b1ec32c08d7a1a6eac9440d1e8f83d0d9fc32b43e05c9d18285f3371ff", [
      "neighborhood-name-candidate:0dead7a74476f8aa7446fd3ebb1450cc3d07f093fbc8a524081cc4432332eed2",
      "neighborhood-name-candidate:789d51b1ec32c08d7a1a6eac9440d1e8f83d0d9fc32b43e05c9d18285f3371ff"
  ]),
  ("neighborhood-name-candidate:0db42ee1c95c9b894dc5192a18ad5b1b1bd8bef0c004c2c7ae582028562256a3", [
      "neighborhood-name-candidate:0db42ee1c95c9b894dc5192a18ad5b1b1bd8bef0c004c2c7ae582028562256a3",
      "neighborhood-name-candidate:4447387beec8867ca98dd3654b445797f8546b500799f9d7fe101b8ef9f31451"
  ]),
  ("neighborhood-name-candidate:15d62fe05e38d6537d7e75d8bcdb4f6f3ff8f963bcee02604c2cd657b5619ce3", [
      "neighborhood-name-candidate:15d62fe05e38d6537d7e75d8bcdb4f6f3ff8f963bcee02604c2cd657b5619ce3",
      "neighborhood-name-candidate:71fa0797116a868f8dcb836502e0d2946eea436822768052d430c5c401840464",
      "neighborhood-name-candidate:966cb13f45173f27b198e2fa3e221a3ca2feb20f5ae3ec23bea3fb5e35230f7a",
      "neighborhood-name-candidate:ad63244b2a751e81718d015acabbce61fe9e32c06198418e220d1d97569530aa",
      "neighborhood-name-candidate:d3a648baa9d59d0333c643ab72b4c97b01842f589ba6e08a2647def0a4abc87e",
      "neighborhood-name-candidate:e27e79b17e5dd482b16d5486f3bc588bdf70abe38f2759ac6c939187f9ccf2cc",
      "neighborhood-name-candidate:ed9b6dfb7dc9903ffc615b008f1ff4a930f61be9be823e85f30a1d021ff4298d"
  ]),
  ("neighborhood-name-candidate:0ebf5fe9594690feb83630204bf4f8d9e4f1a7d183b170413c70405c9663488d", [
      "neighborhood-name-candidate:0ebf5fe9594690feb83630204bf4f8d9e4f1a7d183b170413c70405c9663488d",
      "neighborhood-name-candidate:42f51562aaaac893fa64ebdac06b708c6d198fe254cd61400b26c49d5bc11c32",
      "neighborhood-name-candidate:5ed1d0577de79be765e8eae720b4e613dab3b0d8605e24639e2ed07183f61f35",
      "neighborhood-name-candidate:8fc5864a5f060f90ef1e403572de22cc1c81604a451c5095ee79d1753ad201c0",
      "neighborhood-name-candidate:faefb3d8f9274d0388c66e3dce770d66976a63fd3bfe6963a2dc4050b5160a92"
  ]),
  ("neighborhood-name-candidate:3731689ade1ae887cc36d81700b6709776499f392f9a169b406968e4a777f115", [
      "neighborhood-name-candidate:3731689ade1ae887cc36d81700b6709776499f392f9a169b406968e4a777f115",
      "neighborhood-name-candidate:3d01bf4d4f002c38966cde57db4a9fe0b7c0d7ed7742b8f3604579b451490df3",
      "neighborhood-name-candidate:4a0c0e46aa7e06531395f3d79f98b04dc5a5e84b9beaa5e9d783d3ed12a5a6e3",
      "neighborhood-name-candidate:9153f440967943e644f31aa737892f7ee2e4bdd6b61d997df487d53c98ffab65",
      "neighborhood-name-candidate:95d92b99811c3eb68e6f82ae9325cae56983d3758b240db1179ac640baf5bea5"
  ]),
  ("neighborhood-name-candidate:2c2da072e318e3a898fb81e2746c1df208dbc5b657820b4b1a766276171bda4f", [
      "neighborhood-name-candidate:01b9c6f9ee02bb274dcfdeb956bace2ef8d2c276edb05b4526f7ce84293a1214",
      "neighborhood-name-candidate:2c2da072e318e3a898fb81e2746c1df208dbc5b657820b4b1a766276171bda4f",
      "neighborhood-name-candidate:4dc6e6703cabb1f41b00c1ed18728f04e84bbcf74135cabd653acf65a408f048",
      "neighborhood-name-candidate:6279df1a63d4876c21373c335f50813a62a00430c71545028aeac935a51bd4a0",
      "neighborhood-name-candidate:6fba21cd4f5458290ff56713bd594c8f691d87a21a4bcb809e6ab1b1b27b9f33"
  ]),
  ("neighborhood-name-candidate:74e8edf64c1c7663511fc84d1dd713e812b4655c5dbe15d6d2a392a23a93e62e", [
      "neighborhood-name-candidate:0354099063457c7434ed2cb653859a5e7b7f2b51374280fad779989d8431e9da",
      "neighborhood-name-candidate:3335144a5b3bb90bd509ac79c1474dd5e179e3d9f641c04ee4cd6ce65eb6d300",
      "neighborhood-name-candidate:4aafec95d8ce7c4b1802ed627014225ef02226e0dba5e7be28e1facf0046fd9f",
      "neighborhood-name-candidate:58d4eab2fc2c1fb97e04aafda43240de3228b98d8c3dff7eb54c58d4eb9b2039",
      "neighborhood-name-candidate:72ec6e2e4677ded03a88270cb6993d4694731233c1ed2bd6e2acd31d0108efc8",
      "neighborhood-name-candidate:74e8edf64c1c7663511fc84d1dd713e812b4655c5dbe15d6d2a392a23a93e62e",
      "neighborhood-name-candidate:7d1ca55b443f4ab96bd5cf67f57fc0e6c8fff26fdea4119943e19efd65851e92",
      "neighborhood-name-candidate:80d3f3e001464a806e66f10509667460a3167bfb100459f6cd32cceed8ecb2b4",
      "neighborhood-name-candidate:b136844fe4755e931d1d0268f113adbce9c1390a6f27bc57b6e391ef680d967c",
      "neighborhood-name-candidate:c5b9ff4654f2de9d723a956bea4066340ea923ddc28fd575765b8d84364363bd",
      "neighborhood-name-candidate:ed48f55f1c7da48a02fca10f994b48f71e886afacb5c7aa70f8179f4827b0bf9"
  ]),
  ("neighborhood-name-candidate:bbb0f233d8e1932e5daa36057edc36262676fcd2b94f79e1b608b4d3c85b1655", [
      "neighborhood-name-candidate:12cb004d3cc216ac6c4d716d8414171035869d63b046a92a7d3df18146c1f0cc",
      "neighborhood-name-candidate:3fa4be6c2936bbb674848a1779f752047a0192c314543d459ebd5933091c1ab0",
      "neighborhood-name-candidate:4d0b7add9724f97c8b19384886d29a886f282c041b3af582ffc1167d3901870e",
      "neighborhood-name-candidate:4ff0df92e623ee29de2e71e41e3f57a1180c37fc3405b0e73d3a09844e56e8a8",
      "neighborhood-name-candidate:937566638ab861c88ede1b049df984940e4ff7c1f8df508116e08bf9f9303bbd",
      "neighborhood-name-candidate:968eba9186eceee3ab3882a3463a82685ce70e51b9a73167d89140f35b696082",
      "neighborhood-name-candidate:bbb0f233d8e1932e5daa36057edc36262676fcd2b94f79e1b608b4d3c85b1655"
  ]),
  ("neighborhood-name-candidate:9ad052ed9471a9b701360e1aff4f5d798e5f6aff1a294470ffd0b3e5d41b08b7", [
      "neighborhood-name-candidate:9ad052ed9471a9b701360e1aff4f5d798e5f6aff1a294470ffd0b3e5d41b08b7",
      "neighborhood-name-candidate:ae8069310420b0f76f49b25c7245d52332d96791fa630a1335c36252b472a773"
  ]),
  ("neighborhood-name-candidate:59e33f35662f7955a75111ea8fb68dff24d52c9d4a59cbe2056b9105720d5e27", [
      "neighborhood-name-candidate:1a845f56ad594b9bcc3c99f4465b108fdc32def19307de7fc68a859a1f351244",
      "neighborhood-name-candidate:23d2f05588ba60a1b671eb171b3e70e2a5d9b037120e1f363ed219e79901c536",
      "neighborhood-name-candidate:59e33f35662f7955a75111ea8fb68dff24d52c9d4a59cbe2056b9105720d5e27",
      "neighborhood-name-candidate:ae1584b7e818e4b2c4386b9de3ffeba27ceb5d68b5ea21f02d8d19aec6332cab"
  ]),
  ("neighborhood-name-candidate:3c9adbc28955dd146505145db044ff3d699fdac5f6e23582c37af2834b2389ee", [
      "neighborhood-name-candidate:16a4c72bf6d0acbe79465d21bc9097c847cd0a4b05ccf68b9b5c3de607108472",
      "neighborhood-name-candidate:3c9adbc28955dd146505145db044ff3d699fdac5f6e23582c37af2834b2389ee",
      "neighborhood-name-candidate:d809f4180a0b764e666a1a25bb3fcfc0d3d98479b527b8d979db7f976d989a93",
      "neighborhood-name-candidate:f8705492464c7d2ea79a2b9c210627151e0e5adcb08ac238177a596c3a0ff25e"
  ]),
  ("neighborhood-name-candidate:03e8a13b27cd5a1a8ddae9633714e1812108c3d7ac5e1af0d145027c635c6e10", [
      "neighborhood-name-candidate:03e8a13b27cd5a1a8ddae9633714e1812108c3d7ac5e1af0d145027c635c6e10",
      "neighborhood-name-candidate:29140b2c1b1d349f711fd7f35ed89397637eedc9c25085ab2d7b930c04f1d734",
      "neighborhood-name-candidate:35a5ffde67a776b5ca5c513af467caf27d659f8024c8543cf3deeb722f012ef8",
      "neighborhood-name-candidate:b001b55662c45d3a85aedb548249a104f37c78209e790424e520bc5c8a8e396e",
      "neighborhood-name-candidate:eb4ab421e6f06f2920d1843b057873863b314f21d4b9d0b9e957be2db75b1c0f"
  ]),
  ("neighborhood-name-candidate:9b89fef6826ce793926d517649b5633a229fcd65d5084f9be4bba9a8292d96d2", [
      "neighborhood-name-candidate:9b89fef6826ce793926d517649b5633a229fcd65d5084f9be4bba9a8292d96d2",
      "neighborhood-name-candidate:e2dfa38012d5e91fd33b4ba4a09656c2bbbbf03ef024e87b9c9b1961d528da46"
  ]),
  ("neighborhood-name-candidate:3f73463d279d797587cbf74a231f3d44473ac7aa055fd5a1ac2f19d6bdd26b1c", [
      "neighborhood-name-candidate:1a44a160b73b8f232288d8a236d24817be3d01d20db2e2247baa76f7a0b0750b",
      "neighborhood-name-candidate:3f73463d279d797587cbf74a231f3d44473ac7aa055fd5a1ac2f19d6bdd26b1c",
      "neighborhood-name-candidate:d9349a8147ae972335a6d08e7d2e09a834b29590ae87ed467014687348d13267",
      "neighborhood-name-candidate:db75596c28e25333875ca37510b5ba3deaeef40b524a76652f744dfdbb0a2e48",
      "neighborhood-name-candidate:f97fec44934cfc18c58889a2e750efd4a565a6ab96f4a02c4d5e2e5101681961"
  ]),
  ("neighborhood-name-candidate:cdf512e26f31304a1fb9cfbde2c20b7fc39d4dd9d13266eb746c69df7ffe98f0", [
      "neighborhood-name-candidate:270cb02f3bf967c853d51da80645622abbe26249beb6639ab674f7dcae4b92c4",
      "neighborhood-name-candidate:4f1fef78d921c20aeb9ecb73596c1af2e170496eda0eab526a5ea8fe75ad6440",
      "neighborhood-name-candidate:ad0caab364d4b20a33b935ce8e74cb8c4f218835e8932e907e68127d909f4713",
      "neighborhood-name-candidate:cdf512e26f31304a1fb9cfbde2c20b7fc39d4dd9d13266eb746c69df7ffe98f0"
  ]),
  ("neighborhood-name-candidate:4c522373d48aeee1a89b5fe09084349a0661f3e462ec996cc3101ac1a8665d14", [
      "neighborhood-name-candidate:4c522373d48aeee1a89b5fe09084349a0661f3e462ec996cc3101ac1a8665d14",
      "neighborhood-name-candidate:cc63e6000c41ec54ee3b391989da335ec1c2a824b813f2ca363fef39d6ada338"
  ]),
  ("neighborhood-name-candidate:18c077a57f8b7488c8531676b37b909c406b0ac712122d7df94c81db87f827d1", [
      "neighborhood-name-candidate:18c077a57f8b7488c8531676b37b909c406b0ac712122d7df94c81db87f827d1",
      "neighborhood-name-candidate:53fd58a0ad95fd8864dcdf03a2db8256cbe86ec6009bf208df606938d9ad5506",
      "neighborhood-name-candidate:5e81dc98aae395760a33e583a3a9095eee10a01e23b8526613627fded36075d0",
      "neighborhood-name-candidate:69f7592a2a7a49977ac96fab98c9cd3c28da7cbbc0dde84871f8766982af0730",
      "neighborhood-name-candidate:a1043e02f8a9f6043e3f28a81349a05bb453dbed76062a2cf714eb5c30d38aac",
      "neighborhood-name-candidate:c37c0d9bf2d7b93618e9c28788dc3d80e8cba0200bdafbf08e1a1787e29c1983",
      "neighborhood-name-candidate:cc477c9d90aed0668b2966a530b9320faa1818bde6eefbbc07673ee832f340fb",
      "neighborhood-name-candidate:d02b07321f10fd341fd0a92e9bcbaa012aaaed4e22169dc8dcf8cfb9162f2225",
      "neighborhood-name-candidate:e7a545329014e510e497dfc0cb3a24627e0b2272e4f82b2d212f42887ef13d1b",
      "neighborhood-name-candidate:ecb6bc4d04109c518dde21d9bf68890800445b6842fab0cea539770357ff90f4"
  ]),
  ("neighborhood-name-candidate:7197a98f6cbdb23ebe760c1e844130fada2827276b199102f94bac8f8ee999e2", [
      "neighborhood-name-candidate:7197a98f6cbdb23ebe760c1e844130fada2827276b199102f94bac8f8ee999e2",
      "neighborhood-name-candidate:b14facea8eff835509375312ca8d5f219e2aecbe59bf097f37efb5d4cc08a825"
  ]),
  ("neighborhood-name-candidate:2c4088f5fc808c32bd0309c0c2aa8eae82129e260f93c239db028ee3775da597", [
      "neighborhood-name-candidate:2c4088f5fc808c32bd0309c0c2aa8eae82129e260f93c239db028ee3775da597",
      "neighborhood-name-candidate:3513e8720096c0a2723aab702cf01e95d8d6a19b72ff3abac1ffa66dbb3fbef7"
  ]),
  ("neighborhood-name-candidate:348c0b531870f8569b98325c1d23db87dec7891c9f286be2b91e10eec6f166de", [
      "neighborhood-name-candidate:3279b0e9716ba9514b95e2a9f4779c026dc20e61068680d18a6b9c43a3a6e958",
      "neighborhood-name-candidate:348c0b531870f8569b98325c1d23db87dec7891c9f286be2b91e10eec6f166de",
      "neighborhood-name-candidate:3efc330c557729ff5184b6768f62179cb19b12e52aac612ba5028bbd05e955d9",
      "neighborhood-name-candidate:56618794d28b797328bc84a8084eeb1b73a1fe86ae43ec81ca503581f8c02fd2",
      "neighborhood-name-candidate:b1a4582a5ce472b5532f5dbda4ffbfb5ade40422f731965e6d19234ebfca548e",
      "neighborhood-name-candidate:b80f541903899595eb939effae5aeedc297739404a6092a179aa3b3820307676",
      "neighborhood-name-candidate:d1eca05bca7d055f6b56eeb67000f62ccc8129d07385c47bc559e1819a2855b0"
  ]),
  ("neighborhood-name-candidate:c0a2d3474ecd3bbad5568298b88c8d34bc00aa60ca01729407180298dd4f7374", [
      "neighborhood-name-candidate:7102b140270dfe1ecb3aed27c303d25a658a1b35bc2cd7b2cefdaa0ffc2f9403",
      "neighborhood-name-candidate:7aecd52dc599ecb38f998369a5e825a632b8328e58fb2ed97201a500c4230165",
      "neighborhood-name-candidate:c0a2d3474ecd3bbad5568298b88c8d34bc00aa60ca01729407180298dd4f7374",
      "neighborhood-name-candidate:c2cb1d29a1ebb8167a3fbc604afb00c6f372937d143b666a0ed3f17b6d4f5d82"
  ]),
  ("neighborhood-name-candidate:cf4d6f2612d00283d6fd75fb89a1b9bcaffd1e39a9640f08a02558382cc5d7e1", [
      "neighborhood-name-candidate:c5c0a6c3bcd29d16eae35568258ecd3c451141a17bfbd5e2020276c40f8721f7",
      "neighborhood-name-candidate:cf4d6f2612d00283d6fd75fb89a1b9bcaffd1e39a9640f08a02558382cc5d7e1"
  ]),
  ("neighborhood-name-candidate:292a22d4e71fd4ea215c989112e4b84c65f48aa26095783c483bc533d435d0e0", [
      "neighborhood-name-candidate:292a22d4e71fd4ea215c989112e4b84c65f48aa26095783c483bc533d435d0e0",
      "neighborhood-name-candidate:49dceddc844b3aa2d2bedff5593606be21737915e225a088a081878f6f6b196e",
      "neighborhood-name-candidate:a6ff39d10094a1c4921ce9c225418b2aa143035821aca63aa4367e1dfa10d28d",
      "neighborhood-name-candidate:dd8074b8e2f7f5c03b9dba8da07a284ad40e6ec0dc5ae70a7955baf054da99f8"
  ]),
  ("neighborhood-name-candidate:5779feae32d96f43474b5fa11ac74d89554fd0b6435e7e6fd6dd82aa141ec828", [
      "neighborhood-name-candidate:2e57d1871f4928be8341243256755af731aefe5311ba0c2b5edfcff878a4c3e3",
      "neighborhood-name-candidate:5779feae32d96f43474b5fa11ac74d89554fd0b6435e7e6fd6dd82aa141ec828",
      "neighborhood-name-candidate:642d549542367955bd1276ac1f51c03fe3b735d32e16806d776d4f6e29e8e184",
      "neighborhood-name-candidate:bbc8c21c820ef057d9ef6b4376c0c2aae3794244c4a5056f007ff1c7982c2bc0",
      "neighborhood-name-candidate:e9d80159adb7bab76cf2bedb1a2143106946551722370f56c5013e63bcfc1a37"
  ]),
  ("neighborhood-name-candidate:5a9983dc5ece931f8d487ab9e0e4d32ac715845802f5e6dad58a2d8a99b9be9f", [
      "neighborhood-name-candidate:3119e9fe75853e3d4fdf24c1076685bd7773e573d56fc8cf8af388cd08bd5f9c",
      "neighborhood-name-candidate:5a9983dc5ece931f8d487ab9e0e4d32ac715845802f5e6dad58a2d8a99b9be9f"
  ]),
  ("neighborhood-name-candidate:860ef485c2c31a95446324d1fa6e343246f41ab56269bfa2afc014a8c36538f3", [
      "neighborhood-name-candidate:4643ef36ec9399e5fac60abdf55e55f26f426460e7cc17c4a827b0c89e302102",
      "neighborhood-name-candidate:860ef485c2c31a95446324d1fa6e343246f41ab56269bfa2afc014a8c36538f3"
  ]),
  ("neighborhood-name-candidate:f1792fe14e9c6771ed90e778e755f99a14d8fb1e0b435f924bf400d0604750b2", [
      "neighborhood-name-candidate:0084725654d26b8e2cbeae436b1c3c050eab0abe9676d5b37a4ea4fa4e6213b0",
      "neighborhood-name-candidate:3bb49f00505ace7e0414ce4b1cbbea02a9b2f156b3bcdd8de1d36137c5cf1aad",
      "neighborhood-name-candidate:5ab201b7047694e4d289c6a03d1c1f614563954394358962354f9f9f4c5b38c8",
      "neighborhood-name-candidate:f1792fe14e9c6771ed90e778e755f99a14d8fb1e0b435f924bf400d0604750b2"
  ]),
  ("neighborhood-name-candidate:f69038d1204ad904cd3b58a8e5aef8c0acec34107f72a64f6ebd849eeafdc89c", [
      "neighborhood-name-candidate:0bafcc661531070a6feb7e746b5f11a7deb5270603f64d1aed4d18bb4f4aad45",
      "neighborhood-name-candidate:f69038d1204ad904cd3b58a8e5aef8c0acec34107f72a64f6ebd849eeafdc89c"
  ]),
  ("neighborhood-name-candidate:108cb6aff29a1db18eab427a2e5a1936383c0e5786293e9f7a39c3af703203fd", [
      "neighborhood-name-candidate:108cb6aff29a1db18eab427a2e5a1936383c0e5786293e9f7a39c3af703203fd",
      "neighborhood-name-candidate:58fea89f16b9ce2d67d5930ed9b9ca3ea6f2fd511a523715fc90b1c28a426cbb"
  ]),
  ("neighborhood-name-candidate:ec105ae3018f4d73e9422157e9935510df7734ea9b1b72704ac1cb4c7bf626b7", [
      "neighborhood-name-candidate:53ecb65295926dfd4e2e72821e0ca0c130f0b37700e93abc667cccc11fdb1fb7",
      "neighborhood-name-candidate:ec105ae3018f4d73e9422157e9935510df7734ea9b1b72704ac1cb4c7bf626b7"
  ]),
  ("neighborhood-name-candidate:75d25f3a6d10e71dedcdb125767a5f4989016dcc461e49c4837eab4078d78a6f", [
      "neighborhood-name-candidate:75d25f3a6d10e71dedcdb125767a5f4989016dcc461e49c4837eab4078d78a6f",
      "neighborhood-name-candidate:95988328aed29a704464af355ccfe80f693e058355dc233dca73f5a95569aa64",
      "neighborhood-name-candidate:a70eb43d589c4a410fe43d3c5bed6407460424372541c6b1fde47a4b512aa905",
      "neighborhood-name-candidate:b448d676fd31f6e9d37353e0d14183ef302b523a31d0c05a8edce0de5d90b845"
  ]),
  ("neighborhood-name-candidate:6fe82aa00c7069d0dee03555ce6817563e811faaa4a96d5f4abfc1cf104346dc", [
      "neighborhood-name-candidate:6fe82aa00c7069d0dee03555ce6817563e811faaa4a96d5f4abfc1cf104346dc",
      "neighborhood-name-candidate:9803be53d431d57a31e52857278952bc130159f3ea87555f597835d98837d4b2"
  ]),
  ("neighborhood-name-candidate:a84d9da520bbe730af5415378c377b8f856a9eeceda5819a607fb75154cf01ed", [
      "neighborhood-name-candidate:a84d9da520bbe730af5415378c377b8f856a9eeceda5819a607fb75154cf01ed",
      "neighborhood-name-candidate:b1af19fad793069b7474e21e25b049ea5df5aa9e6408f01dea44cf9500364a33"
  ]),
  ("neighborhood-name-candidate:f89d84546a7c02cc23079ae3e8d6987a6438e75c2f41a99a832734906293b11c", [
      "neighborhood-name-candidate:0bfe2eacaf84f7923c9d4d9653b9bc79dadbbd011c7b6747a7f1ddc7fbc21094",
      "neighborhood-name-candidate:1bdf44daa29f4ebd0550804717b1c69a027a487ef712d5d44096309246ac64d0",
      "neighborhood-name-candidate:42a97146296bcf0a023fcc894451211008045e9428f3901a26a58505d62a15fb",
      "neighborhood-name-candidate:472348bb3e79ade2459fa419c8a91d4054243c209e47043fd04c3cf61188e801",
      "neighborhood-name-candidate:654a0cf2493526529193c7db94bf18673687ccbbc4e114a7e4fc1e0834ac6c07",
      "neighborhood-name-candidate:7ef4aa5b622185b39923f61a0a1ec67c0a819023fc3d2b53aeae00349a90bb12",
      "neighborhood-name-candidate:8d27c5be03ad7f6c1f5274171e7384d2dfb58f8180c6401a4125e996763b3bed",
      "neighborhood-name-candidate:bb3b8ee7c23b62ba94c9d379c839aa6b4748d70915fc69a0d0e4e1532a56439d",
      "neighborhood-name-candidate:cd5050a23633ffc89b62d814364ec4069e0734ad938850e36eb8c19596a28787",
      "neighborhood-name-candidate:e553c4013468a01c2b7cdc3c2801b3e6f90d521246f9f71c197159425898a345",
      "neighborhood-name-candidate:f89d84546a7c02cc23079ae3e8d6987a6438e75c2f41a99a832734906293b11c"
  ]),
  ("neighborhood-name-candidate:8da1315482f25aab50621e1055e5f72ba6bf7420b5df0e4ea3f2f99b59d61930", [
      "neighborhood-name-candidate:0dbd6d43851a88b95b214faa39afa4addf613f86d2c0c51bf5fe8c1091b48de3",
      "neighborhood-name-candidate:26c282b50039f63bb78a0391e0e6c5783c359c526f29e658b92f600e1c4c9523",
      "neighborhood-name-candidate:3d2016b352398d2fa90dcfde1e94492925fcd1ff6d6ad8baade21e09d91f7d21",
      "neighborhood-name-candidate:69f4b335ba5416ff2f1da004112247947b48be315449d7d723536a323ca9c2c4",
      "neighborhood-name-candidate:7c18c5d19492ec3e9530973c26df71539826ac43ebb80db6cf9d14aeb3953612",
      "neighborhood-name-candidate:8da1315482f25aab50621e1055e5f72ba6bf7420b5df0e4ea3f2f99b59d61930",
      "neighborhood-name-candidate:b38faa61a987975c4203a63e90ecc417b61d2f6158c7012e8656e6fb3c1f04b9",
      "neighborhood-name-candidate:c03977b31260f30b3cda9afe29c4c9f08f313540ffb6dd1fd853888df78d6a1f",
      "neighborhood-name-candidate:d676542a378bdc5b24cd6afed63d58312bc952531b3890cd4e76f2a54ea8e202"
  ]),
  ("neighborhood-name-candidate:bc8afdafaaccb51c3ca342e3fc0f6f7aefb713e713cd065061810df6b5d9402c", [
      "neighborhood-name-candidate:10a40eb609fe361f1057e8aea01f4d49dafe0e53629d4ed4da9808a6d6438f3d",
      "neighborhood-name-candidate:65dc833c6a42f2ace6e548a74d069bd7667e4ccf116218c8a1db79eaa9327e7f",
      "neighborhood-name-candidate:724c85a73d7279cecdf1fff1248f6c69bc1c49cec59a7ca3f0eeea3127a33786",
      "neighborhood-name-candidate:7a8c881748cd1b4fb6422a2c2517535a254c0b97122d820edd6fe5cf5e25d2d0",
      "neighborhood-name-candidate:80113c190721a19f206af4b7b1523bb5a65a04e3bfd9da2d931feb3e9330bc15",
      "neighborhood-name-candidate:bc8afdafaaccb51c3ca342e3fc0f6f7aefb713e713cd065061810df6b5d9402c"
  ]),
  ("neighborhood-name-candidate:8ab5abc50a9442c4d00b901c4388cd7d52d983b70ede6c28bce5f55501264f7a", [
      "neighborhood-name-candidate:2b3132cd4d1dc7871290ddb2a68dc7c3a264b085574ddfcc465cc0b95bd968ae",
      "neighborhood-name-candidate:8ab5abc50a9442c4d00b901c4388cd7d52d983b70ede6c28bce5f55501264f7a",
      "neighborhood-name-candidate:d1b4e08c50717f5056751b2b9beb2bbbc5a9c74833416520f87326ab6538d90b"
  ]),
  ("neighborhood-name-candidate:82850190e95c3d38d0dadc17deaab87f0c1e4d3e92430aa005f2801abd4bbf98", [
      "neighborhood-name-candidate:3ccf359ed99082a652f0e276449d2e0aed25d5120168376af3cdfda38bec2e53",
      "neighborhood-name-candidate:82850190e95c3d38d0dadc17deaab87f0c1e4d3e92430aa005f2801abd4bbf98",
      "neighborhood-name-candidate:9748cae84c74f838db98dd6ed0b06ec83c76273a68551645cd7cc59d51212f95",
      "neighborhood-name-candidate:ba3ae6efcca5f1ba0849a460adb15011fff69f864ca4020081cf349ab60095b4"
  ]),
  ("neighborhood-name-candidate:02003f88273ceab356d558baa5f72273c660683619859327cf48f043c83e947c", [
      "neighborhood-name-candidate:02003f88273ceab356d558baa5f72273c660683619859327cf48f043c83e947c",
      "neighborhood-name-candidate:3b0ffa1798d7d5a5760b28d4b8a89dbca5716f3bc8ddcae560015b645aaa6210",
      "neighborhood-name-candidate:6ee0c39fb19f7f493bccc07adff7194c2c0ddb52db2a7f53182102237a91bb58",
      "neighborhood-name-candidate:d7e3e4143a9deb1c766c15c50be313f04582acc19ea780c92b0565712063d638"
  ]),
  ("neighborhood-name-candidate:aef6f377759480c2fb1d8fea08b4c400f468ebe0776e034474cf30bbe0af718d", [
      "neighborhood-name-candidate:58ddfaa11319253258c8ef17d112aedb997a3d6f459aec10080432cb26d11ef8",
      "neighborhood-name-candidate:7afe170e55f0d18e9b764a644c1b3fcd7f2c15beb2423f4095c60b03f902c79a",
      "neighborhood-name-candidate:aef6f377759480c2fb1d8fea08b4c400f468ebe0776e034474cf30bbe0af718d"
  ]),
  ("neighborhood-name-candidate:bf001e839a891264bf1a6a1bb26521e9a7f0826614e3839624a0a54ecddb3535", [
      "neighborhood-name-candidate:522dc7a75109ac9221dd862efbc5a07d893e977d86251687cfb47de0367c65d4",
      "neighborhood-name-candidate:be136aa6a331c841aef10030690b7d0a2a6bc66f7e92e29fd638ee0b7f039fd9",
      "neighborhood-name-candidate:bf001e839a891264bf1a6a1bb26521e9a7f0826614e3839624a0a54ecddb3535",
      "neighborhood-name-candidate:e26af3525cefce6d81cb8628911cd1dcc94cd89a49b14ce230c133ea2874d8bf",
      "neighborhood-name-candidate:e8f7b8c89bd8964285579582ca75e9a02be989a0bf2a57a0099a8a02f46dabd8"
  ]),
  ("neighborhood-name-candidate:5cd275cae705ec6e34c21dc724eed29b565382230ecda3595e755b2a6720d52b", [
      "neighborhood-name-candidate:2b6f6e4eec173585e5ee9223bdbbd8a0b274f3152609177e0424e99f7f89e64f",
      "neighborhood-name-candidate:5cd275cae705ec6e34c21dc724eed29b565382230ecda3595e755b2a6720d52b",
      "neighborhood-name-candidate:5f8098e033dfe138d26aa784e34f59c73c78b77f3974c101edae50243b280d31",
      "neighborhood-name-candidate:691bb71e2986e9c1f0ab8327c5408abbaeb1104be7f71dda15ec4b0bfec10d94",
      "neighborhood-name-candidate:da463882014e7e52a2bc4031486930945a88a2c4482d0b397b579a2abb1bffb5"
  ]),
  ("neighborhood-name-candidate:1c90934ada7637a41c67064d9e0cee3723984a9c0e55071d71409d45a400ecad", [
      "neighborhood-name-candidate:066c02e5cd7a7e593a72a5de118604b73f5ba4ba1aee162904ca8c83d077839a",
      "neighborhood-name-candidate:1c90934ada7637a41c67064d9e0cee3723984a9c0e55071d71409d45a400ecad",
      "neighborhood-name-candidate:32b51b05d4da0c0933e698853ca0ad56fa886521ab680c7611ce8be0b4e15c8e",
      "neighborhood-name-candidate:e29d5d1f6d3dd688bba9bfddbd6a2b24ce5b51ba2375b5131f4ed99ed4ac0292"
  ]),
  ("neighborhood-name-candidate:25032df2adae4cc5e6ac7bd473ad4b5b67402f098e3bb02880de5376994ba913", [
      "neighborhood-name-candidate:25032df2adae4cc5e6ac7bd473ad4b5b67402f098e3bb02880de5376994ba913",
      "neighborhood-name-candidate:afef27fef677b5828bf6ced4bc5de0df42efc706e6288b9dc98f37d5c1ce8e3d"
  ]),
  ("neighborhood-name-candidate:820370b63ea9b77c0cda06b1fb0e7b32ffa1ca031ec2587da15226c05b9e403f", [
      "neighborhood-name-candidate:15ef8d5a4d56880186f1f2d59c9bb0b08e5a70867c8604662d6f263afe5846b6",
      "neighborhood-name-candidate:820370b63ea9b77c0cda06b1fb0e7b32ffa1ca031ec2587da15226c05b9e403f",
      "neighborhood-name-candidate:ae703836909b3b9109f5f05bc5ac27d8851ec7d1068b325cb434a3a202f61998",
      "neighborhood-name-candidate:b9c11ca1a0b3e9adb300f5429e60819923c1344c54ea665d09db7c269a9cd2d2"
  ]),
  ("neighborhood-name-candidate:7584c70aec424d648e33800dac52d688d708bb70db6cc4a05d31983e437b93a8", [
      "neighborhood-name-candidate:1ad20a1de53a79f804b0d4db8d17ae1bf9d3aba4ac2a2a4d7bb898424206e3cf",
      "neighborhood-name-candidate:7584c70aec424d648e33800dac52d688d708bb70db6cc4a05d31983e437b93a8"
  ]),
  ("neighborhood-name-candidate:90c989918e179c371f20903227e5fc37b37303a0909e6e90609dde434ef8bc8d", [
      "neighborhood-name-candidate:10e19de07d8461b684a59ed37b34c0404e2b623b6931b1d8fcd6dbdba8a0371b",
      "neighborhood-name-candidate:423f1f50bb342659c11929537de9cc3f00315552d2ad6bfcbb24959b126478de",
      "neighborhood-name-candidate:4e79a203840fa98e286dfe9ddc57c3b56ebcca9d569eb3f372b3d7361b5e99aa",
      "neighborhood-name-candidate:90c989918e179c371f20903227e5fc37b37303a0909e6e90609dde434ef8bc8d"
  ]),
  ("neighborhood-name-candidate:b90d2a5ba9716f7acdc7ddde21e26177b02e05bb9e4f7bd3849847b9e2a8dbb0", [
      "neighborhood-name-candidate:1235e53deb36bd06a38197f3a60ea9a2aec0ea91d2068a21779df1796342d049",
      "neighborhood-name-candidate:834a7741705be4cb38e3cf7d46886ac6e8bebe85efecb61d6ff94ee469a712ff",
      "neighborhood-name-candidate:8da3690e7c2ff0ef6a4aab80444f5371767eee0b7abb937cbd37ba8a91dc2633",
      "neighborhood-name-candidate:ac870a7a7892d159af0c6f8ae73880c499db6882a306e9422b6ac94d6bf9b858",
      "neighborhood-name-candidate:b90d2a5ba9716f7acdc7ddde21e26177b02e05bb9e4f7bd3849847b9e2a8dbb0"
  ]),
  ("neighborhood-name-candidate:bc82216b8fe9bcb8ef67023e12e366d0609e99c37b893176c218f573efc62de9", [
      "neighborhood-name-candidate:4562a4fb7f6067f43ed11a18105e48493a84167e9b677aa1e52bab6b6acac3bf",
      "neighborhood-name-candidate:5b6d714190db576f467e80bb99e7295285526d62c95971824be189ab1aeaf79f",
      "neighborhood-name-candidate:7ba0a161aeac46f906a9276c438f8a3ff0f56f79d8eff22c30c6ce24f2178b43",
      "neighborhood-name-candidate:8317509e2c35f49aea6a8050b68f7bbf6efecb7bb61cffbf54f8f05f53042d8d",
      "neighborhood-name-candidate:aa2d76abc9dcff63e88bd5f6509edadfccfd171fd33255c94952a15f8793bbd4",
      "neighborhood-name-candidate:bc82216b8fe9bcb8ef67023e12e366d0609e99c37b893176c218f573efc62de9",
      "neighborhood-name-candidate:f033f8c5504eca94efff97350eaf57616162c2521d70b4d4486862999f359bbe"
  ]),
  ("neighborhood-name-candidate:173b71c90cf6d36b1365e458465af5be4b67eac0eeed0a5c5e94ba440863921e", [
      "neighborhood-name-candidate:173b71c90cf6d36b1365e458465af5be4b67eac0eeed0a5c5e94ba440863921e",
      "neighborhood-name-candidate:6171d7f6948327cfa3750cb8bbaa21b30062edbd53b30a6416f6ef0a212d6016"
  ]),
  ("neighborhood-name-candidate:07989db7aa6410ff022396a6db9ff3db641517777114eb77c3dc0cf8a570d92c", [
      "neighborhood-name-candidate:07989db7aa6410ff022396a6db9ff3db641517777114eb77c3dc0cf8a570d92c",
      "neighborhood-name-candidate:16d9bed4ed1409bd880220270d22dafc7f601c940192b95241b56cc2b00b23d5",
      "neighborhood-name-candidate:1d234601b6db0ecb51a0616dd2c86afbebbc80ff1b4f215c935f580afae1ce76",
      "neighborhood-name-candidate:98b50ff7e5ff259e9184726c2158b10378ed034ea9756fa8aa68650225e7b000",
      "neighborhood-name-candidate:eef7707bb65621924d14a5169ff851c33853d5cf6900bed91d74915c3c889704"
  ]),
  ("neighborhood-name-candidate:8755176b599543920e90927ab241fb4462064d5fff759904ddaa938430203274", [
      "neighborhood-name-candidate:8755176b599543920e90927ab241fb4462064d5fff759904ddaa938430203274",
      "neighborhood-name-candidate:f40b453f934af3f1d107662997cd189b0012d42922a590b4a4823e971ad20126"
  ]),
  ("neighborhood-name-candidate:b4b6d29160d38439cff6cacc4a8b0d48b50b5b7ee98ccd27938511a08e5f890c", [
      "neighborhood-name-candidate:2448da704525bb826feafbc67a3831b9f46a9388bd87b2c12a8b039854e21469",
      "neighborhood-name-candidate:33b5a0405fa5b7700ef303d99706a69b28eca63382445bdf7c7896593a35e46e",
      "neighborhood-name-candidate:72a286089c5c980859320da934672910918baf7d791018384cea60b727026311",
      "neighborhood-name-candidate:b4b6d29160d38439cff6cacc4a8b0d48b50b5b7ee98ccd27938511a08e5f890c",
      "neighborhood-name-candidate:db6b3e34ac2939df5527fe64b3d37d944819e3e534b599677d14e95d0552369f"
  ]),
  ("neighborhood-name-candidate:ca16fdc38f2786066aeac478d5ee5f529af125f002dd6fcf1e56ba1489108e52", [
      "neighborhood-name-candidate:04d1955b0772c26e5382d5615d6326a961bf671b3e5862541630367241659293",
      "neighborhood-name-candidate:3aca4e5497d163049624541c05e63fdd33b3e13eca69d5f478d466f932ae471c",
      "neighborhood-name-candidate:ca16fdc38f2786066aeac478d5ee5f529af125f002dd6fcf1e56ba1489108e52"
  ]),
  ("neighborhood-name-candidate:6563d07fb9f63060f68ee378686877820508ee98fff25dde4df56947b0d004aa", [
      "neighborhood-name-candidate:0cb19e579653abd4c6ae6518c35f03f726034f0f445c00db4a64042408652852",
      "neighborhood-name-candidate:1aa9d3b9d75b4774955d2df99e6697a20c599cb817dbfe4f3d7e52917d647b71",
      "neighborhood-name-candidate:545c18c73551c3483b59be51280f7bd93ff27a878b7011aa2a8bf854547d093f",
      "neighborhood-name-candidate:6563d07fb9f63060f68ee378686877820508ee98fff25dde4df56947b0d004aa",
      "neighborhood-name-candidate:834e2f1a55e3e96c97c565f75ad06f191e7e2dc979cd361c31d5ed0f6bca515f",
      "neighborhood-name-candidate:c719aeebdf8895510fdf20ccf1f8d33e2aaec43765868c3f9202ae7f048d3c14",
      "neighborhood-name-candidate:dbee0b858b8989b699e49764504a7a422e5393d2d828db719a97e659ef4fd292",
      "neighborhood-name-candidate:e85fc6cf35e484ce4fa131b208323b28e911853dc1db69bf173f719c972821ac",
      "neighborhood-name-candidate:fd2d73a18d493af29e3a33abccc7a91c826fcc82154dc7d5c0fdb26ddd224842"
  ]),
  ("neighborhood-name-candidate:8a60759aec37d4bc99d2a5907a8a6a97e2b6ea879fcb2042311b9855e4afdb59", [
      "neighborhood-name-candidate:09b1a0d039bfa163cc5a601c081ad2eaba87d97dd972fa31a9e29deafa7c4673",
      "neighborhood-name-candidate:360d0c2367070739235167513b688a1a5ea943cd0803289f27b11592f5140722",
      "neighborhood-name-candidate:56c517414753c9added26a4564b6c20e1a3e8bae4b5a3cb51071745ef1ac93f2",
      "neighborhood-name-candidate:6951f88626aebc6479a42fdd0fe9a36675bc11ab3ffaa83bd4c855cef49d5dc3",
      "neighborhood-name-candidate:89197717f84675092946e4ec8e033bae7803ed2a0c1680fe0deb1f92643bdcac",
      "neighborhood-name-candidate:8a60759aec37d4bc99d2a5907a8a6a97e2b6ea879fcb2042311b9855e4afdb59",
      "neighborhood-name-candidate:f3b5953bf47e2826c99936e0903afa7615d2eb89847831f9d1e83464e5a26cec"
  ]),
  ("neighborhood-name-candidate:2ca45abbb4b45725a228533bbcd3707c29b18ad2ac5bee996dca72c2e2f24a6c", [
      "neighborhood-name-candidate:0c1e78623f8bc45cc0a3d8f5a36a9c7a5b127bf13ef527887bb8a0b303e3b049",
      "neighborhood-name-candidate:0e2f4548076e2ea39af2bc1e27bb41d28dad319fbfbb7bd402308216addd3120",
      "neighborhood-name-candidate:1ca7c99e651359d2536900f35cc939540639a6f3bc7aa60ce044a74c979b2e4b",
      "neighborhood-name-candidate:2ca45abbb4b45725a228533bbcd3707c29b18ad2ac5bee996dca72c2e2f24a6c",
      "neighborhood-name-candidate:33056a6393a5aa1456ed0fe25689eaaee4cbab233addac8b3935e6a39267d658",
      "neighborhood-name-candidate:6ec894e17a38062affbfe8e2ee6c8aa93eac2a10988467ca12b9ac644272256e",
      "neighborhood-name-candidate:f02334414a08b898f827ae381476b345043a4874a7d88a19deb73f3b6ff1da91"
  ]),
  ("neighborhood-name-candidate:eabfa0061825968f9203e5192aed96e76d8d5c84bfcd9bc71ca0895439ddd7fa", [
      "neighborhood-name-candidate:3627e2ef6eabee51dd442f3bba6f9921eea04dfa90b98894e86b5247fbd75846",
      "neighborhood-name-candidate:eabfa0061825968f9203e5192aed96e76d8d5c84bfcd9bc71ca0895439ddd7fa"
  ]),
  ("neighborhood-name-candidate:00ff39a0aa582ef76b2203937057a0463bda485a7f890773b88c659feaa8d63a", [
      "neighborhood-name-candidate:00ff39a0aa582ef76b2203937057a0463bda485a7f890773b88c659feaa8d63a",
      "neighborhood-name-candidate:1032046529415d87c5ebc2468d65a1268f99044b81e19e337259141689b07a14",
      "neighborhood-name-candidate:5b65539cb044f63bacbf180a55a05ba94073baad9a24552cb595db62e2bb55e1",
      "neighborhood-name-candidate:5ebb99d3c9c9d5f9d32489e4225bcc141cbebd35d3a6edb23d9efb1148170ae0",
      "neighborhood-name-candidate:9240a06d454b06a831f6341370e7842e3dfcd23a991247b42494c1b99e98edd0"
  ]),
  ("neighborhood-name-candidate:c272dab8d0b753225777d06b6920533560b5dc61bc9ac62265a7d2b9c18cff61", [
      "neighborhood-name-candidate:7f5b56ea059e22ab3de42a6eec8a249ec2766fba4c0a9caa5bd5c7d3a69a899f",
      "neighborhood-name-candidate:ac6eb9dff648625425cdffd590f9d437239046c802749b8325f1d0fdf78c12b6",
      "neighborhood-name-candidate:c272dab8d0b753225777d06b6920533560b5dc61bc9ac62265a7d2b9c18cff61"
  ]),
  ("neighborhood-name-candidate:e68dae99e980ef405d7a2de7db7f865beec62ec6fd3cf24178dc74a015751931", [
      "neighborhood-name-candidate:2dea888382826f7f7e6b3787d6c1e79a078461aa9912ada6db101d67ae84ea48",
      "neighborhood-name-candidate:5571e4e047b82e0bf36f26f26f2fcb30ec570e90fa1b1775436ae829ebdb3131",
      "neighborhood-name-candidate:b346cc6278df5f5775e283044a42351eb8c7f699de4ee62c54a15d70c8987ed9",
      "neighborhood-name-candidate:e68dae99e980ef405d7a2de7db7f865beec62ec6fd3cf24178dc74a015751931"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L129239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
