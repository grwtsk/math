# modelCandidateSelectionsChunk0021

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11ea892d9b7fa546a0191ce4ce60bda6f82e08db5bf593786ab1915cdef5874e",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0021",
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
  "slug": "modelcandidateselectionschunk0021--0888959beab64cf8611a173d",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61925,
    "line": 61559,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0888959beab64cf8611a173d2eab80bb785512786c61ce747fea2d15e70c5c56",
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

Occurrence: `declaration:11ea892d9b7fa546a0191ce4ce60bda6f82e08db5bf593786ab1915cdef5874e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61559–61925.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0021 : List (String × List String) :=
[
  ("name-candidate:1a1e092894ba1676615ae1558ebf329c726e65b9a20b3702cd5ebac32e3afba4", [
      "name-candidate:1a1e092894ba1676615ae1558ebf329c726e65b9a20b3702cd5ebac32e3afba4",
      "name-candidate:7cfef1f3a3147350a1f98bfb0d91a4becef6174e4df13d23f569a23ad8372df5",
      "name-candidate:ca6ce093cf578a520cd1da422c849aab519f1334501387679698bec7d588e273",
      "name-candidate:d35a999bd137a97eb377329699b28a209899a1ac86c9704d3a6df4188abed907"
  ]),
  ("name-candidate:0ac663876605aee9ff08b2516accadc1f39503a41fd09d44e26dd5f9f3bcd99e", [
      "name-candidate:0ac663876605aee9ff08b2516accadc1f39503a41fd09d44e26dd5f9f3bcd99e",
      "name-candidate:432e6c0c8d420455d4b33f8ed49e3116a2bb4b2446b6dab1a07de98f6901859c"
  ]),
  ("name-candidate:fbcfdd4f5fc9f6138919e314ce60a55e1126f3d9f93149afd227faabd57777a3", [
      "name-candidate:afc31abce48052cf950368e2bbe21d3e86f64195995a67ff8aa9599d336cc9fb",
      "name-candidate:c04d49fbfa1622e381c4938f8182aa949a6a8e1b5d0530afdda76ab219fd4a92",
      "name-candidate:cc062e9bf44a1b8572789639aeeb1b6bf89d9ca6c6af37ecf65138126f79ab94",
      "name-candidate:fbcfdd4f5fc9f6138919e314ce60a55e1126f3d9f93149afd227faabd57777a3"
  ]),
  ("name-candidate:953584562e9df7fb998abdf31f656b4eed12ffec5562dd32fe7a565148cd6ca2", [
      "name-candidate:59fc5e3cfdc57c7164e9b0c6df41ad9ff5650259f9a89076c2f4933fe57d3fb5",
      "name-candidate:5b547d9551fb591ef9d878fdf2a5e8a8742d9cf44e0cad0673ebfb8a42f9b4f1",
      "name-candidate:953584562e9df7fb998abdf31f656b4eed12ffec5562dd32fe7a565148cd6ca2"
  ]),
  ("name-candidate:b880328d589b3c9b9009383d0d35ee98c0254bce7edde339dc074e1416b9c384", [
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
  ("name-candidate:2e5687d85a96e8c2a14f223662e417dd8b0e0d6c5301a6706dc87ebb5ef90118", [
      "name-candidate:27cecfe9a96b6786e4f2b9aea9f73328124f2f8a546a5a09c7984508b584b830",
      "name-candidate:2e5687d85a96e8c2a14f223662e417dd8b0e0d6c5301a6706dc87ebb5ef90118",
      "name-candidate:39257afaf21c19a9d652873f4a034a4eca0dc163cea8a36aa749a37a23b6bf4f",
      "name-candidate:a4db7eee6f5761c7eccc0c4495050e1ad2e5609921f036a1c0d7fadeaaeb869a"
  ]),
  ("name-candidate:45999bfee6f64270759d164011c35ad2308179fa103faccc7e43d6d887258c68", [
      "name-candidate:1be96ac12be4736d58edc43091af495454b9399197f6de43fc8070dd312fb426",
      "name-candidate:3cd5532717e3c523405dc23ded4e214cabb88c15e2333dc26641d95a3d862088",
      "name-candidate:45999bfee6f64270759d164011c35ad2308179fa103faccc7e43d6d887258c68",
      "name-candidate:84119bc0c47d44b4a72817178b1a231ece4247fcaf6893911c827c16e8f1004b"
  ]),
  ("name-candidate:c31ac0ed278322322ab5c1ef811923354dac521cb34b1af7ddcbe8b72da18648", [
      "name-candidate:22d0bdb537e4ca8ff771a98e7374c593e3a2d34df9602d47f88ecde4463e7af7",
      "name-candidate:acc4a73e54ebbc96585ccc7602fb09877e708f1e2ed733baa80b952d5d2b0eba",
      "name-candidate:c31ac0ed278322322ab5c1ef811923354dac521cb34b1af7ddcbe8b72da18648",
      "name-candidate:c899b6b02a27cea3040f59f01cea05c9f985dbdb0bf6a4b437c5712668d96dc4"
  ]),
  ("name-candidate:bedd3c0bd89a44b1d5daa33cae6e90440450b7f365ad6a51d435621f699ec77d", [
      "name-candidate:3285af5f1b548c306711c06b5c4d2654dcb82dac84743b6822f6201ed514402a",
      "name-candidate:410d6751778d3265eb236cf0c6455f44366f8802e27464ab028af990c5e8c16a",
      "name-candidate:79fb44c40c9d9a7011fe6413ded7825f8d4f1ede8b76485a2cef3b835b127558",
      "name-candidate:bedd3c0bd89a44b1d5daa33cae6e90440450b7f365ad6a51d435621f699ec77d"
  ]),
  ("name-candidate:dd8fe94bc52843ccafdcb608c8f643bac454f47dc693ebc463b12a8bb78b9bc1", [
      "name-candidate:92d44aa1f15af9791ac7889c71f08e1b7e3f096c8a91a2283d91f8285a788c91",
      "name-candidate:a8fc62ff711363c687c12c96f20a491befc7c391787086f7df2ae068d3f9902a",
      "name-candidate:a908023196037e769f7da1842f54ce70fc1c5bd7f44bc150718c6b530ca813cd",
      "name-candidate:dd8fe94bc52843ccafdcb608c8f643bac454f47dc693ebc463b12a8bb78b9bc1"
  ]),
  ("name-candidate:6201cad41f205d1fe75daf73a8b0122a5600156019bcaf46f49080053324c384", [
      "name-candidate:6201cad41f205d1fe75daf73a8b0122a5600156019bcaf46f49080053324c384",
      "name-candidate:cf6399ef9ecc11c6c7a075d5d18d909063404840b7f253a4a008725ce501a244"
  ]),
  ("name-candidate:afd475d65e7f5b5f4a4d637f4dbf3eca51b69b0033e6a37348c0bacb06f78f44", [
      "name-candidate:0d7bc7e9f91117f33c0c96c06dd9689a4c7aa7421d929c659713101ab3d060bf",
      "name-candidate:afd475d65e7f5b5f4a4d637f4dbf3eca51b69b0033e6a37348c0bacb06f78f44"
  ]),
  ("name-candidate:48eff4323bff0b0de875081b137cc171a2ab92d3c1b6e9a2c748609039410edf", [
      "name-candidate:48eff4323bff0b0de875081b137cc171a2ab92d3c1b6e9a2c748609039410edf",
      "name-candidate:4bc2546623d65fbd50406ac0827789277729c7d8d4d2e6a916e1c0c4029ed622",
      "name-candidate:9232a1307a656fb9194355d53483e116b56cbadfe456b97700b500605085a052",
      "name-candidate:f374a250efda61b713cd98c32c6a808217346a0fecac73f284330ad2307c9c5c"
  ]),
  ("name-candidate:13b83e982a300d52d96f2f52ecfc049fde045aba3c9202610a1f6cb4e824879d", [
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
  ("name-candidate:25c2ffeb3069e1fbc896f0df5f4c0ce52bfc648590fd146d3c4451d4b6350376", [
      "name-candidate:25c2ffeb3069e1fbc896f0df5f4c0ce52bfc648590fd146d3c4451d4b6350376",
      "name-candidate:87581a10c553a23082339a6021d739358240c79fe8ad808e870369b18f9260d9",
      "name-candidate:bcf431427af3df021123df91a9664e21fbc0f9b4d59162f6886710c968e7e3f1",
      "name-candidate:c2e9538fc5e81ad20e567616be0f6cdc238009a3f3eabddbe70f1ecd8a7b86b8"
  ]),
  ("name-candidate:8918ded3a39149724ac22addbc8439d713c8e462014ddfeaf7cdcc2758dcc7a5", [
      "name-candidate:5e4d204af9dc73e1444449d4126a92242c028fe321a7b0628b61592c6c3ff3b1",
      "name-candidate:8918ded3a39149724ac22addbc8439d713c8e462014ddfeaf7cdcc2758dcc7a5",
      "name-candidate:b598fe21f3ac8f48eeff59f4e23c7bbe076b48d4454e197bba30b0daa17bf3cd",
      "name-candidate:ba66856fd33dff34d4d4e076043a2bce50587fe3d15ac842f7c99e008e7bf88e"
  ]),
  ("name-candidate:262bf77f2857e486fa02f092c451a8b6281853d439437e60f924e78256000378", [
      "name-candidate:262bf77f2857e486fa02f092c451a8b6281853d439437e60f924e78256000378",
      "name-candidate:9799804459394a46ef397a85de9b189d63fcc1d448d36c90dc600be6f01d9928",
      "name-candidate:b17a5ef29cc5bfee3ae7b92472f2c3fd394cf06621c7529f3031e7e92ed10de7",
      "name-candidate:d10fb00b9d41542173d332ac97e3f97a27a24a6ff1d9fb78ea08a1f22ce619e5"
  ]),
  ("name-candidate:b69a6ac4d3f5b668477fe1ef0d3b0542f69fdee2990f0a98092a05850cb20bad", [
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
  ("name-candidate:9ba43f6586a024057a818853221a46598037259a4a591a7367aa84aa6cce0fa2", [
      "name-candidate:921a3b2f5560f6c119fd6d2871a841a1dd0edaec12be2a62a2856c7d7c62042f",
      "name-candidate:9ba43f6586a024057a818853221a46598037259a4a591a7367aa84aa6cce0fa2",
      "name-candidate:fe4352a21f415a1a1274293fa358e0a460a846365c878a9ab7a78cf2d2e53386"
  ]),
  ("name-candidate:217ea0b81a340ee9d6b10153b081381fc3e6d0a41ae9b1b731c278efb465eeb8", [
      "name-candidate:217ea0b81a340ee9d6b10153b081381fc3e6d0a41ae9b1b731c278efb465eeb8",
      "name-candidate:3260d6114330b8910863fe6914630d262dd4b8e21e5ac39398c012b3d1929cef",
      "name-candidate:b7a49b136a091693e5d7c96ca0575f98c0e51e99284f0c05ba679c60624c6d4c"
  ]),
  ("name-candidate:dd2ef6c152e7b9e50553dff8baa2a457080e7fd37afaab17c1205deb777bf499", [
      "name-candidate:7e1e26babb90fad761a9d70ffe075bc8b4e97a6de0a2efb78b84bb50cdcf254f",
      "name-candidate:9dc3e74edac2b7ede864540b0e3f8f2d383567b592614b6530b02535aa638d22",
      "name-candidate:dd2ef6c152e7b9e50553dff8baa2a457080e7fd37afaab17c1205deb777bf499",
      "name-candidate:ff6efa7d77c4dd576432e61272b1f77aa1806a1e180ff7702c706b7e48d0799c"
  ]),
  ("name-candidate:7f778dbe66a41a985c61e1fba4f0d91208048ea95b6eb07c4b12a26a60558b65", [
      "name-candidate:08492475e3bde1050ba35751c8ef690aa6c16a409a279c78d36b69603a255803",
      "name-candidate:468398ca9c918f5ce0bdcd6a7758ba50d388684aa357a676eda0e927dd86967b",
      "name-candidate:7e2dca9f8b6eacae1a721c6836a67a0a1aa84c44394be75e6f9e7a8340b7758f",
      "name-candidate:7f778dbe66a41a985c61e1fba4f0d91208048ea95b6eb07c4b12a26a60558b65"
  ]),
  ("name-candidate:4ba265c0104195566a3e3e5605514313c7bc23400b0fc9d37514f319ade224e0", [
      "name-candidate:4ba265c0104195566a3e3e5605514313c7bc23400b0fc9d37514f319ade224e0",
      "name-candidate:de88f2b1fdfedb0aba108be2ec8578a082c8cce1868131ea9c99dde7dd1c88c2",
      "name-candidate:eb27961e20cf49c426b97a7be536af626b2a60a05040d7b5075d86175ec2819b"
  ]),
  ("name-candidate:d10d2b350a6e843199eea8a0edf367efb75c2dbd3f6567da1eadfc21d8a585a5", [
      "name-candidate:7299d3d158f15cb060b7db0e0ffaad3fe7569260c94cca2f1383a267362a461f",
      "name-candidate:902a926eb53ad1991dbb8675030706ea9d937719660f6b4de8160d51eef76c50",
      "name-candidate:c48475f0b2a0e90364abc9780d17596b51b5838412d34117850bd4ae317c1f7b",
      "name-candidate:d10d2b350a6e843199eea8a0edf367efb75c2dbd3f6567da1eadfc21d8a585a5"
  ]),
  ("name-candidate:e415bfd884ff6901a6301a2fea6740c8240c071d2e0155e3b068c104eb5739f3", [
      "name-candidate:5a333310eea09f12189fb0f498986d46b827f579b9f6b14b87d1766bfc4ecd68",
      "name-candidate:e415bfd884ff6901a6301a2fea6740c8240c071d2e0155e3b068c104eb5739f3"
  ]),
  ("name-candidate:ad2cd4769cca2148332b9f0cf5b87112db61f493503399feae12d3a99486337c", [
      "name-candidate:58f6408f1f7fe10056f6ab54ce7003d3ea146aa3c332e7808da0d714efdaaad4",
      "name-candidate:68674d3d19fe5de2f0453fe4b299610d8d6958688d0031cef954264a7bc29575",
      "name-candidate:6d6f7e4daace17545837e60df36269e30f3ce3c28ca03b816149925980b38e72",
      "name-candidate:ad2cd4769cca2148332b9f0cf5b87112db61f493503399feae12d3a99486337c"
  ]),
  ("name-candidate:27e3e75550b7514d38c70586828e31250fdf2dfbe2f666d65e0940a6cee40a62", [
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
  ("name-candidate:f46647c973b90e8a68352150a6e2a62cc83cc8450f6c0d43e7892897775efd67", [
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
  ("name-candidate:4c9346d4ff7ba9559a94fa9ba8e9b5cdb7ad66db88bbe167a73177ea0e1fce65", [
      "name-candidate:4c9346d4ff7ba9559a94fa9ba8e9b5cdb7ad66db88bbe167a73177ea0e1fce65",
      "name-candidate:61b0677122c794bde287be7443d198b93cb992bc92f99efd1f12fbae80b59a85",
      "name-candidate:91b873d03562dbb70c08fd0b67c04810b4df09035760b33b1ecab6b9de7fab7d",
      "name-candidate:d390d58146d092fe7b4987d9018b46f90210be2a58fc543b2c18eed20aab78c8"
  ]),
  ("name-candidate:f35756f3ee21dc4787f6a9d87eefcebecadb9911891f75142cdc7d2e2102171c", [
      "name-candidate:2a371b0e52578dbc833819a1372ef854bde66f65a6622d48e86c548c575e8b0c",
      "name-candidate:e13a8edd0f03dbfd7121fba700cd134e3fd9e5912bd21f8395473e104a075e67",
      "name-candidate:f35756f3ee21dc4787f6a9d87eefcebecadb9911891f75142cdc7d2e2102171c"
  ]),
  ("name-candidate:5a8d6a8195146021e293de9d9a2799bb445345673678dbec5abdfeb87e592f56", [
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
  ("name-candidate:638d076c02e36dd64d43d5365c1e31ec3886d0132f2d291ef94946093d99a920", [
      "name-candidate:4cbc5b426e9b0ba83b9992642af0378446e70c0e7a58f90340def082832a8455",
      "name-candidate:54f3f1210d4993b1ff28bb8506ecc6a3eb6d50e1c26b9acfed9b9e0c7c8f9a6f",
      "name-candidate:638d076c02e36dd64d43d5365c1e31ec3886d0132f2d291ef94946093d99a920",
      "name-candidate:860e597a6664957561afccea346313ae906c184bcff2a9c3574ad3dd4d2f2de1"
  ]),
  ("name-candidate:df1f65e733cfb2bbd03b0a4e06c3ca69f9695fe8a759dca1ebf3e24e2d7e56a0", [
      "name-candidate:25c09cb192fe71473c07fc7860ca71356e3ed7aa0159c72543062b15fca231db",
      "name-candidate:dbe5bee66ccd568aff0d5333346b81c5e9aed073a6a7c79022c9e9ffa72e789a",
      "name-candidate:df1f65e733cfb2bbd03b0a4e06c3ca69f9695fe8a759dca1ebf3e24e2d7e56a0",
      "name-candidate:f930478d0b04ee8a6b450a513c5e9eaff4a81ad74ad006970180daedac4a6c66"
  ]),
  ("name-candidate:84bf2af211bfe74efb09f0b54dc48c4a355c69fe16c9d7142f9994291821b68e", [
      "name-candidate:5bf855433c1be9dd26d42a77381d0a68c44050669850bd4a6f2901e6008feb0a",
      "name-candidate:84bf2af211bfe74efb09f0b54dc48c4a355c69fe16c9d7142f9994291821b68e",
      "name-candidate:af86db32df8448cb4230cfcfaace5a94ee641dfa39e6816e7b3184d6587cecc9",
      "name-candidate:f9e4808d1f89bd567df86d658aa418ae3c89ad3bcd687c5c1989d08aaa2828c8"
  ]),
  ("name-candidate:a60085784cc36835f58da7f2c632336180574aac6e7ca7aad7a704dc12b97fbe", [
      "name-candidate:2df57510143517c5c5a8aa9bcffe733c6336d6bc958629a8116a72493ffc23c7",
      "name-candidate:3dc816d2ed7c617b756ab4c62e8a31cb5ca003924354370e3327acca4a07e4b8",
      "name-candidate:a60085784cc36835f58da7f2c632336180574aac6e7ca7aad7a704dc12b97fbe"
  ]),
  ("name-candidate:28430d2800b219a1ab67f31b28c24cce64cb22191abb18e1fcaaa4cc7e6875b0", [
      "name-candidate:140902f7867eb1bee70b21e9fdd893e93da27cc28b63cabb05a3b365ed011434",
      "name-candidate:28430d2800b219a1ab67f31b28c24cce64cb22191abb18e1fcaaa4cc7e6875b0",
      "name-candidate:35a0cbbe3c86c6c18e61618baee44d6148069fe7e770a70168d86df1f02c4af8",
      "name-candidate:7f6f6e3792c3982ad9616db21cbfacbcb79c1aa35dfe9b88ca79e57d2161558a"
  ]),
  ("name-candidate:aec9eaf917dbacfc8a09427738da1fe03a022ecac499d7ae2e38a8d6182cf295", [
      "name-candidate:536ceb997fdd26680665c33d1f7cdb93aefb9db92bdde7d14eb56ab8ebdf2f46",
      "name-candidate:aec9eaf917dbacfc8a09427738da1fe03a022ecac499d7ae2e38a8d6182cf295",
      "name-candidate:c1d5abb5dd47b99493ab9cac1d6c7b54fd16883984b46b4545c9fc320317f69d",
      "name-candidate:e284ab93522c8927de6cc7e27d302956e5f65a60cac9b68dfb98426c399fd6c8"
  ]),
  ("name-candidate:eaf25a8d53309b2d6188401e6069ddc760a6d9e9e5a176748dc7b9ed33ba7d08", [
      "name-candidate:079d51daf4b434b4a43f12d6b4341c783736ef08d1443b65fa3856e5fe183663",
      "name-candidate:3f1d19093fed89dec392db32154e7444e5dd64c2fd77d88b0ef43082f385e3c1",
      "name-candidate:eaf25a8d53309b2d6188401e6069ddc760a6d9e9e5a176748dc7b9ed33ba7d08",
      "name-candidate:f8132e0a00a567cd56dce94e7987825dde87fffdc7f77aa983e6d60c9837e545"
  ]),
  ("name-candidate:1ea2114c2a9924ed4004be4a7884fb415b47e5bcb898ce7a88cb521f8f2e64d8", [
      "name-candidate:1ea2114c2a9924ed4004be4a7884fb415b47e5bcb898ce7a88cb521f8f2e64d8",
      "name-candidate:2bcf355e5a4a8e6c30f8c948fec3a6ec30110989823409eb28a4152cfa967c31",
      "name-candidate:b7ebeb96f6ef964d34c8471d3997533198dc0daa6975ee7ab915ad85efba0afd",
      "name-candidate:ea1be85a4272af11bfceec9aad26239752dff6a6e83e045e2bcb025a2bfa9a37"
  ]),
  ("name-candidate:ee4b12cc8c7562b7ba49a58f3ae639d68553fb9cb3891125b01f965e8271dcd4", [
      "name-candidate:30d7de2d92db65e5839d5f40b767366e597997af7c3c8ee2d6703ff03781a62a",
      "name-candidate:5fd5ee12af9fc37619c1a80ed2532c869cd346b3fb60bb2e712d5a27f5203c16",
      "name-candidate:86406dc10709686b1a41a403c978fd99bad220fa53f272f21526b3f80f863f3e",
      "name-candidate:ee4b12cc8c7562b7ba49a58f3ae639d68553fb9cb3891125b01f965e8271dcd4"
  ]),
  ("name-candidate:b65a17c6359f3951911f47c1636803ea1b8250ac4e803c7b39e00d9034f61722", [
      "name-candidate:046905b29e68227970bd9e850c62fc3b95f12651496b641342d4ff66ca996360",
      "name-candidate:5ea27e8e9b97f7420eb7e4834fdf86f6e320cecfd3646e473c34ce1125d5342e",
      "name-candidate:8c5679d8fe712e5895d28055364abafb8bf5127cf934f8d5d2021197bba2b8c2",
      "name-candidate:b65a17c6359f3951911f47c1636803ea1b8250ac4e803c7b39e00d9034f61722"
  ]),
  ("name-candidate:06bf7b05fd170d14f10f5e44e4fd262e5aa9623dcdab15b9770431d00d640dc7", [
      "name-candidate:021abee571570e20f5ca5c4ed85d6bcb05ff3615daf061c4937582503572ac09",
      "name-candidate:06bf7b05fd170d14f10f5e44e4fd262e5aa9623dcdab15b9770431d00d640dc7",
      "name-candidate:8560da0a23b9700f28526977d45a88d342d7c1b64d45c6176c910189238f3664",
      "name-candidate:c05933e557ab01705ab5368df0686963482a11af6ed7934821f8a10a38603c84"
  ]),
  ("name-candidate:68bd42a2f0cc513c6c0b543b5317030a725d208621bc0eb6b10252fb0bea264c", [
      "name-candidate:192e94dea9ef31bf18aa221e8ffc339462d6903b606e4ac7d28568fbf8d4fcf2",
      "name-candidate:4fd09f728b0f0a5dc76d12eb9cd7ae9c8c597935aaa3d1366515e742e3b62bc9",
      "name-candidate:68bd42a2f0cc513c6c0b543b5317030a725d208621bc0eb6b10252fb0bea264c",
      "name-candidate:88d4f0cdb0faaf95a9eb840baa2c44115e9cda777a3f7e31dfe10154676c74de"
  ]),
  ("name-candidate:af3a7412982d472aa451d5fbe960ad959e4567177ca78868dc95564ef6c9904c", [
      "name-candidate:78efe8572166e7bf32072c6305ad6334efaae2dfd05dab24c4f78b10d54b327f",
      "name-candidate:a4353c4baff1e8179685bcf24ee4bd0b62786f79d9d1ae3f6b000155e9b0ccd9",
      "name-candidate:af3a7412982d472aa451d5fbe960ad959e4567177ca78868dc95564ef6c9904c",
      "name-candidate:d5a9169aa98eb7850a39caf1d77fa8d98401def93a691e69953cbcc135fa4326"
  ]),
  ("name-candidate:08617fd494d0ceed883293cea9bb73a9a543e4b1b303f487cae42cc64ffa9deb", [
      "name-candidate:08617fd494d0ceed883293cea9bb73a9a543e4b1b303f487cae42cc64ffa9deb",
      "name-candidate:4fb5cf9ebe27d1278b51b59bc573cc88e48fcdcfe12f61fdac90ada96ddb947a",
      "name-candidate:730c3db8298896b12ce0a7cfb8aae7dee4cd1fbaaf7d2c6f88d576cfdb755e9b",
      "name-candidate:f9933156e29c8d1d9bde240b717aafdb1b080ddf802adf6f5e46fadf316b04bc"
  ]),
  ("name-candidate:2c31037be0e26ce0b77429a328d62a669d900305dd522df9d380b1ea7dbd02e6", [
      "name-candidate:08055465d4c1d2b7a98a7669a9253958bab7758270ac88e5646254ec3675ec18",
      "name-candidate:2c31037be0e26ce0b77429a328d62a669d900305dd522df9d380b1ea7dbd02e6",
      "name-candidate:9024f5b154cfe1940ca2cfc4740297f961e2d56082d4916ec4ee254c9e68baa3",
      "name-candidate:9d0dd6d3caef8e4fd25a1f89ed1335641a2b6c06598eb7110f25a1f326a82e90"
  ]),
  ("name-candidate:1d176b444b84740e3661f5e24b6491cf578fae8e2fef10fde1e61dde5986b022", [
      "name-candidate:1d176b444b84740e3661f5e24b6491cf578fae8e2fef10fde1e61dde5986b022",
      "name-candidate:356a9c24b8ee7aed2156926e9c66e60501c137e4d1e1d9659c3ddbc9506c93c4"
  ]),
  ("name-candidate:bbe02383d8423887e96eeabc81aa85f7ad10b6acbad28b0c1c9340b3a6c058de", [
      "name-candidate:94a58875f7c35f53539d37b581c0e36a8d5c070cacb1fa872bb3a5c50f84b4c7",
      "name-candidate:bbe02383d8423887e96eeabc81aa85f7ad10b6acbad28b0c1c9340b3a6c058de",
      "name-candidate:bf1b6d22c5d4ce7760803b5286f2fe29e84a74eb15a494c8b110e36124c98d21",
      "name-candidate:c3704ace6f18b7ff6ccdfbb6a442ad9c74b83f65e3223c2666c206c3362e093c"
  ]),
  ("name-candidate:547e88c3d7006f8fd37aaa624818268bedefaaa25494ca52c6fff98b05848e39", [
      "name-candidate:39a31d90e63cac1e5614c8a26b484a69d3aabe3b2086ef4f3a090eabd1898b49",
      "name-candidate:547e88c3d7006f8fd37aaa624818268bedefaaa25494ca52c6fff98b05848e39",
      "name-candidate:7832937829b6106fe82a7d0b4877a0348078208075ca39ae9b7d9a7898f67413",
      "name-candidate:caa951bd869f00c50a434313dcf6db002fd7690ab52c44fcff0532a035f14428"
  ]),
  ("name-candidate:ce6786ef821041618625305f3bae957b1c9090934fb33abcc698b9fb6cd9bf33", [
      "name-candidate:7ce2ae4da4522772101723e2c8199dc51fcf083011cd15e85594c25324db8f56",
      "name-candidate:978bac718d6e3ddd18a7d59d83f30325681de89a4ccb8822ad4f2c480b96aa0c",
      "name-candidate:ce6786ef821041618625305f3bae957b1c9090934fb33abcc698b9fb6cd9bf33",
      "name-candidate:eb0ba8d5d19a7d4b5fe914416503afb2add7d42760ecbe5f9744c85de07deead"
  ]),
  ("name-candidate:509495132f7166a5b53b5f7b85a457605443110b4416640d1232386d608504f9", [
      "name-candidate:31b5c176c0957aac851b608962b0e3e9ba6d61a8ff2705c3445e752f4208c261",
      "name-candidate:509495132f7166a5b53b5f7b85a457605443110b4416640d1232386d608504f9",
      "name-candidate:c066d7ac3c806d309ca8ad9d642a41fbd08617e33ebb02a297dc700dfceba808",
      "name-candidate:c7f94e4db4a328cf314fc0309fc9ed05269b981c4ec86b3109e2f26b7b1bc35c"
  ]),
  ("name-candidate:e095cd81de9f496a0bf9a246e78f3196af715fbf9d484779e122beec4cc8f994", [
      "name-candidate:030de9ef13350c63a0523e2f3c8565eeb9e52feadb583b36640847e49daa0ece",
      "name-candidate:9452f89e2ac616a9eaa408375cd0509c72bb70d2bd3c9716c7b25c50c24ce64c",
      "name-candidate:aba8310f4f099cc0c6be1a3aab7d3b619468a16727f80f0fd52d47778013d255",
      "name-candidate:e095cd81de9f496a0bf9a246e78f3196af715fbf9d484779e122beec4cc8f994"
  ]),
  ("name-candidate:3630ed63347cef80a60e62dce30181f83d1c66499e06fa541e57aba3beb5b7f2", [
      "name-candidate:1bbf595c8854538f0f248f5307a388a96412d39c871aab0462c2e1beaf52d32d",
      "name-candidate:3630ed63347cef80a60e62dce30181f83d1c66499e06fa541e57aba3beb5b7f2",
      "name-candidate:af8edb13eb098d87b5c64513b3a9372b0d8a2e204ab635681578f449e60a9020",
      "name-candidate:d8fb9da54d5a85edf8ffd28f21ea16f0fa14ccf325a58acd94e26f899c1fda7c"
  ]),
  ("name-candidate:412dbb83e90a787b3d5ef4883dbbccd7312d8d5e8517c4788f8c6144baf80c49", [
      "name-candidate:05b3444578fe148f0bac73410c97d9b9b481b2d18d051401639418f7266dfe44",
      "name-candidate:412dbb83e90a787b3d5ef4883dbbccd7312d8d5e8517c4788f8c6144baf80c49",
      "name-candidate:4e2d754b89284e4173ed54de5532b2c621bec6274a5a81f3d5b48d2d51785672",
      "name-candidate:bbcf644298b3c1755dee39250b5b12343203d01d54618895e944047b3da20948"
  ]),
  ("name-candidate:66b80a53b824247913f338376c484f14fad16bad9a23ce2d117f0470c4ffeb1d", [
      "name-candidate:561af2841c5e2aa28f979fc43ec9e2d7cb99f0171ae3806d70a7973c6447a232",
      "name-candidate:66b80a53b824247913f338376c484f14fad16bad9a23ce2d117f0470c4ffeb1d",
      "name-candidate:a287b6a5c2f2769d76e9d0e6af9473467b6a646af92a7a930110fbeb0dc00efc",
      "name-candidate:b19a523d2b3af89cb728b11ac13dfe9a476f831d4faec4a1d4eedf557ebeb57b"
  ]),
  ("name-candidate:19eebde2c8496467bce79361477f9890fff899b7369f179298f67b0307dfe6a5", [
      "name-candidate:19eebde2c8496467bce79361477f9890fff899b7369f179298f67b0307dfe6a5",
      "name-candidate:74926a0718a670271f82c4a26670366f4ca46e27c5a21272d41ac70c1907d6bf",
      "name-candidate:f4ce13c7af77d60dd0cfb5036cbf04f7375409b4ccb068765b9da47d5e51bb52"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L61559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
