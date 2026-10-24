# candidateSelectionsChunk0003

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94d8d1a3760a0c44318d21412251b5d15a0f4a377de0ad78f0d1221b88870940",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0003",
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
  "slug": "candidateselectionschunk0003--20209bf058f5ff123281d0d8",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42736,
    "line": 42415,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20209bf058f5ff123281d0d88617695e5f425788ea880e3a03353efbde10cbe3",
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

Occurrence: `declaration:94d8d1a3760a0c44318d21412251b5d15a0f4a377de0ad78f0d1221b88870940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42415–42736.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0003 : List (String × List String) :=
[
  ("name-candidate:8d43a366458996b054bce8ebee9e6ed0eb3212928315ae2c1f746709592f3a53", [
      "name-candidate:7c117062c9208317c6d2a8c487cb10601cb74e4af9adf1004f8946955b39babc",
      "name-candidate:8d43a366458996b054bce8ebee9e6ed0eb3212928315ae2c1f746709592f3a53",
      "name-candidate:b46d22d69f9e5aab4f78418b13f7501623481fab8c8237eb620441bd53b5166a"
  ]),
  ("name-candidate:860351fd9fad50932cf8698a2f9bb0a0cebc3115a841a7ecd7ff74f64069eaab", [
      "name-candidate:0968b3ebdbda037dfa64c44dbdb9198fbe7b34c8743d12a3a1e7cdb1a7d5b26c",
      "name-candidate:860351fd9fad50932cf8698a2f9bb0a0cebc3115a841a7ecd7ff74f64069eaab",
      "name-candidate:fc13f3242c66583fd3dc90ec110b834684d69fedfc49728e56ba99d3fcd5014c"
  ]),
  ("name-candidate:64165f3787d3a05f36f3d718a755e1e0974a7d81b67c1e56437004b7248b1cef", [
      "name-candidate:24d4b0e6e8ceebbc3a98f55ed41fb6332156218cd8e44309d7e68feb33ec0330",
      "name-candidate:64165f3787d3a05f36f3d718a755e1e0974a7d81b67c1e56437004b7248b1cef",
      "name-candidate:9bbd5f2ef68fcaaa82a81a2680841b8cbb283eb81265b2fb9f02ad5ed6cbff8c"
  ]),
  ("name-candidate:03c1ae5b83bc0ef41ee36df3439ad3e802b5d4e7bb9b78ca1f8f4c2a033f501d", [
      "name-candidate:03c1ae5b83bc0ef41ee36df3439ad3e802b5d4e7bb9b78ca1f8f4c2a033f501d",
      "name-candidate:1c198c293b42958286c7899bd278c1edf3a3c942a4360704f75c93047e75f3d4",
      "name-candidate:708c8c0081e4e14ec1aa3de14b488f23b334d27226a51b69fac38786fdb03939"
  ]),
  ("name-candidate:f363f7fb273cc86e339382c09a0d717812764dfee20ff27291871c33f3a95030", [
      "name-candidate:c5d264e06606038533f48b22490def860560814731b1cff0702608694c2fb998",
      "name-candidate:e2bebe2c408e3f3f5c6b03bba46661d6e2687d612e3048d5842a8a7aa0092917",
      "name-candidate:f363f7fb273cc86e339382c09a0d717812764dfee20ff27291871c33f3a95030"
  ]),
  ("name-candidate:cf84a32670f2c0c4bb3c621c46e9e6748bf928d0a5ed9360b93a17ed3623d22e", [
      "name-candidate:1140855ec20ff2eb90d20f0a64d32d531f6c3bdc7e2d8cc87a26ce759a9e7396",
      "name-candidate:c5e1bcab03a22ee045422b434deea05e1e4828e003b2c2153f325e3205659461",
      "name-candidate:cf84a32670f2c0c4bb3c621c46e9e6748bf928d0a5ed9360b93a17ed3623d22e"
  ]),
  ("name-candidate:f85289f3b18c09c9f5a81fc78d42207e186d66785ca55b708ffd38880b0060c2", [
      "name-candidate:0ef4de1a1f6b1ba9f3235ae48431e38ce5baca0fca7eb98235cc5b3cca5d68bd",
      "name-candidate:5f6d39d4ccb5230365ea0b46740b31cc62dfb3d304c85d46af74b38b38e4460b",
      "name-candidate:f85289f3b18c09c9f5a81fc78d42207e186d66785ca55b708ffd38880b0060c2"
  ]),
  ("name-candidate:3b4bb17ee493b3bf528ca7afd1563055a30702d8464cdfe180e17b0d7144bb13", [
      "name-candidate:3b4bb17ee493b3bf528ca7afd1563055a30702d8464cdfe180e17b0d7144bb13",
      "name-candidate:793c8afa7f7a6f11214ced5b39140c044b32c776edf3a8fc3aee066ae267f5a7",
      "name-candidate:eadd0b122575459f8a61aaad04af388b9f6cd4b20853046f8e94e17716202ed8"
  ]),
  ("name-candidate:6c135125f2bf61cb92868f09b1160b67b52642357aa80e526b85c4bb933847ea", [
      "name-candidate:6c135125f2bf61cb92868f09b1160b67b52642357aa80e526b85c4bb933847ea",
      "name-candidate:cb008c0ad1fcaedbc1cafa9bf112153f04039c06658ca2e6af630fd36e9e46ff",
      "name-candidate:ef7bea324edb5c3b33822352fbf25391b6c51497ecfc9fcb4462294a11a66688"
  ]),
  ("name-candidate:7694d85b7d81fb4ca0e50adbc5c8dc1a177f889fc1cea91c0a25b6846a87c4f0", [
      "name-candidate:7694d85b7d81fb4ca0e50adbc5c8dc1a177f889fc1cea91c0a25b6846a87c4f0",
      "name-candidate:a003d26e435ba76929da2337c551f2530bf495dd56ae1bb53564923e0085b4e2",
      "name-candidate:e9f22905910c2c39f7ac43821374b9bb1759e50049dc5286ccf7dbf3e1760b70"
  ]),
  ("name-candidate:f710b70d29b1fd312eb96981f2178f03e4539cc6f5f90257a361b119bad15612", [
      "name-candidate:18bd67ece28f8ce5aa666b5f20886906e1227c4e1c5fbcb9996116f0b0435f6e",
      "name-candidate:8022865d3bd080b666d91b3efd405b51d249e46be4190c1955b16d74dc08d95b",
      "name-candidate:f710b70d29b1fd312eb96981f2178f03e4539cc6f5f90257a361b119bad15612"
  ]),
  ("name-candidate:e8b722536c14276e1efad62baf9b9ec069e4aa3fef0329c9cf6b2d5cc7eb11a3", [
      "name-candidate:59a0f7eb88615c50526615e65b76391b00d8cf5720cc1646124ebd0530b12cd8",
      "name-candidate:70ceddda79a81794a96e32d36cc0a9c2fc114ae7d08707b48da88e98cf9dbfc0",
      "name-candidate:e8b722536c14276e1efad62baf9b9ec069e4aa3fef0329c9cf6b2d5cc7eb11a3"
  ]),
  ("name-candidate:14c7dc5e51e906d58ab064da1016350a1d9fd736f0d3b44fd41b956c742d3de2", [
      "name-candidate:14c7dc5e51e906d58ab064da1016350a1d9fd736f0d3b44fd41b956c742d3de2",
      "name-candidate:1daedf29fe8951c8f96fd798f499953354e50416c6887a4917a8595b102b08d1",
      "name-candidate:5840689046598ddb7bbfef8bd8e640a516814abe969db48eede8e2075483ff87"
  ]),
  ("name-candidate:516b59545e521a91bb34d60edcf7f4ca7ec14b6e2e3e1a5a1a33fa7249a1b622", [
      "name-candidate:516b59545e521a91bb34d60edcf7f4ca7ec14b6e2e3e1a5a1a33fa7249a1b622",
      "name-candidate:86a06954babefd73e23624ed17fc82c132c427559639cfe5637f382b8fad7486",
      "name-candidate:fcce635026a543c720a7abad0061ce7c4a865e8e5184ecc5fbe472d0aff255fb"
  ]),
  ("name-candidate:e06c06b062c3a63c598bab4d4b38de4d6f639f6f9c34980a071d58a8cb738b64", [
      "name-candidate:d726a6c5d70103e0cea7034a250de0873f0b282f6da7e9d74b6c1b2eea1cc5f2",
      "name-candidate:e06c06b062c3a63c598bab4d4b38de4d6f639f6f9c34980a071d58a8cb738b64",
      "name-candidate:f2460491c6b1eee3f146ba8f6454bb3159f316b72882696413df980838b407b5"
  ]),
  ("name-candidate:90a1614d7a65dd6b049463a41af747c98ca6641a3b4a02803e799f16d268d5ed", [
      "name-candidate:90a1614d7a65dd6b049463a41af747c98ca6641a3b4a02803e799f16d268d5ed",
      "name-candidate:a9e1408518dfb75e97fb3d3c6e1354e5350ee4786c507cbe7016c4afe6f8407b",
      "name-candidate:d4b34b5ed9f6e0b35b7f1425f8ca882df82ee8013ac36bfa7fe7498c21d8af70"
  ]),
  ("name-candidate:dd1de8355b5c54d27db6bfd56585f7d9e7b384c4a974a8c2a246e3ae6f4f5b5a", [
      "name-candidate:31d1324bbeb6927129e8f595d47bb4a6c625b3b488a833298a6ad4cec4197591",
      "name-candidate:4eb70390d0ad261debe17b0058e1a92d552230cf2ea8ce9512e10fd9b1116504",
      "name-candidate:dd1de8355b5c54d27db6bfd56585f7d9e7b384c4a974a8c2a246e3ae6f4f5b5a"
  ]),
  ("name-candidate:0617dbcd6c9784478fcf3fdec811f58c39210962e6f3f164997d50901950d9ad", [
      "name-candidate:0617dbcd6c9784478fcf3fdec811f58c39210962e6f3f164997d50901950d9ad",
      "name-candidate:24940fe0dc0c9013928aba7c6a48cb55ce3e8f7d55c452a3c4c9ce62c717a2c6",
      "name-candidate:ff62c21737f9fa9aa85a2481d79234216109f14ca24c1efd8f043bc61fb26657"
  ]),
  ("name-candidate:78d85ef556773f0e25aec500d7e0d672268d7c7d28ab5100d20e65edcb8a699d", [
      "name-candidate:78d85ef556773f0e25aec500d7e0d672268d7c7d28ab5100d20e65edcb8a699d",
      "name-candidate:d537b9e474aaccd7a4cc2444fa556ce7933338c99afe9b992fc87f111b223cc4",
      "name-candidate:f2e104cb7cec796a6e9dd4e5e81863f6b46ddbf7dd1c60f6181941a891681701"
  ]),
  ("name-candidate:249657a860915e85f4c7fef0f82374741495d910ea1044203470cee241d6e0cd", [
      "name-candidate:18ec79cf06adc8f95a9fe76295b34f186ae454d80bff5f5215db4eb22cbc9f39",
      "name-candidate:249657a860915e85f4c7fef0f82374741495d910ea1044203470cee241d6e0cd",
      "name-candidate:e8225b00e4c43693814eb7a27ca221e36714327828f236b2ee5ff939b502b55d"
  ]),
  ("name-candidate:f642260e95ddaf81a661e0506f390e485b3541b137e3cc7c22b4849fee8c57d6", [
      "name-candidate:3a189242134c5c347445aa1bf359a0360ee363fc9c01eeab44b41a4d9d96a341",
      "name-candidate:61598278bc7ceebb60ce1b43372a1e23699e605d021950de1ac9f47fc3079897",
      "name-candidate:f642260e95ddaf81a661e0506f390e485b3541b137e3cc7c22b4849fee8c57d6"
  ]),
  ("name-candidate:64ed99461853433f6acbe540631fedbea35887d75c018f53fa3d400fb8bb4c36", [
      "name-candidate:64ed99461853433f6acbe540631fedbea35887d75c018f53fa3d400fb8bb4c36",
      "name-candidate:881f624801111685702033ce32a3a3a76e46be257c6bfb9e30debfd66c05e97f",
      "name-candidate:a822ccb212d2f6875f12f76076fe8633c730c5c78cddf9f6e4b8183fc580560d"
  ]),
  ("name-candidate:b862f50cda593455ca7dbc5eb7be260827276585c5c1b46af9db064dd58fbfd7", [
      "name-candidate:2aa56329bd1508c1d355c0fafa33b106233f912ea1bf5cc989ad19241bbb2f09",
      "name-candidate:2d9154717c4d22528602b79d19865f8b30f772ed95d6e1134f70f71364c7d5bf",
      "name-candidate:b862f50cda593455ca7dbc5eb7be260827276585c5c1b46af9db064dd58fbfd7"
  ]),
  ("name-candidate:d4ee6a9dbdcad909f05288e7d61d93a5b60b37fb2493748f139fccb26fb47d74", [
      "name-candidate:d4ee6a9dbdcad909f05288e7d61d93a5b60b37fb2493748f139fccb26fb47d74",
      "name-candidate:f07762e6ab25558dc0dccc4a0ede2af2b6cceda8290a7e29215fd1dc1b8fec43",
      "name-candidate:f6f8d03e7d1327576f445a944be0e7bbbbd024ab5645f9e642a9eecdd6f8aa64"
  ]),
  ("name-candidate:ce9e45ff547174c25e7624699a1f2c28f4b7a47d22fd54d731f21b51c5aabc87", [
      "name-candidate:5c11dc886256a358aecf8ff7d2e4ff56ad15aa3216a030162014a02f49a1f997",
      "name-candidate:a06217d6c596dae672a00584fffcfec031203aabf3bbb4f235053094a2d58c49",
      "name-candidate:ce9e45ff547174c25e7624699a1f2c28f4b7a47d22fd54d731f21b51c5aabc87"
  ]),
  ("name-candidate:5c89800c7dfb2ee83ee70a55f73615bc97e6832027f6cb5ba2cf504c3bbfdfc1", [
      "name-candidate:5c89800c7dfb2ee83ee70a55f73615bc97e6832027f6cb5ba2cf504c3bbfdfc1",
      "name-candidate:8fb400147d8cd476188fb220ba5336f32a3831c6ee69bc852ab3750261715664",
      "name-candidate:ae06a248704501948febab30f4d5f9f02c3eb11d78568869b25670765ac4b2aa"
  ]),
  ("name-candidate:80d42e9fa20ac38e5a010ea18dd6a94b0354ca84515a6a5b27e0e19a64d2a681", [
      "name-candidate:80d42e9fa20ac38e5a010ea18dd6a94b0354ca84515a6a5b27e0e19a64d2a681",
      "name-candidate:9a9c5377db426c96b8212f181554f7dda78e0c63dec7983bd47e0057c305404b",
      "name-candidate:c67270950023354fc6bb37e66cf3b9343a4ba6705a9cad689aeba826afe34769"
  ]),
  ("name-candidate:e2bcae5cd6334b05f603be13b941aa44a0d1d89e166dec19575b1fcb244992f7", [
      "name-candidate:3bf87b315e3f34fa4de54e7535bc0b32c1e1a6bfbf48e46dec30b28d8b2a79d8",
      "name-candidate:76feb4f1036cf24a662f73cefbca5eb5c04455b0f851d5bea1bd7d48b15df0cf",
      "name-candidate:e2bcae5cd6334b05f603be13b941aa44a0d1d89e166dec19575b1fcb244992f7"
  ]),
  ("name-candidate:322147fc98391508747ecac539a7953a7a0c37c9e0afd08a300944247405d775", [
      "name-candidate:322147fc98391508747ecac539a7953a7a0c37c9e0afd08a300944247405d775",
      "name-candidate:53162bec540e4ca9b51993cee68cdc9b2939a3960e8196338549e3a82fcf81bf",
      "name-candidate:f17b9d1dd7823f3c9cffc32d1810f575ce44d72ea50bfbe75932184480ec0d9e"
  ]),
  ("name-candidate:6c4dad5e59dfd6cf6784051c11fe1f61119d6767e156db08ecca4619cb68a792", [
      "name-candidate:6c4dad5e59dfd6cf6784051c11fe1f61119d6767e156db08ecca4619cb68a792",
      "name-candidate:9bda5e9622778b5bb5f8b34f68d497f95fd41a853eb9491cacca5096b53b9376",
      "name-candidate:f28a61f5478238fae0939ea644481136872d5c28b250dcd0e2da9df9915f9bdb"
  ]),
  ("name-candidate:454f4abdb1b10e5548ba9415e50646754ebaf1293bf50b2838a3549eb5b93571", [
      "name-candidate:454f4abdb1b10e5548ba9415e50646754ebaf1293bf50b2838a3549eb5b93571",
      "name-candidate:a807d4b333bd31c46d9b8acfd84051e443ce9761991deec3e22db740c22dbdbb",
      "name-candidate:b2afea788dac2944f896ba7ff0c0c70c68148c79fbb145b752a5629fdd431aeb"
  ]),
  ("name-candidate:667a3afbb8b346bb10a15621e5022005fabdb840cb388c1a101e7dad73fac173", [
      "name-candidate:328eb93a2ccee55587a7ba9c318cd5a772110a3bb2c3d2d1d35c17a6fc297087",
      "name-candidate:667a3afbb8b346bb10a15621e5022005fabdb840cb388c1a101e7dad73fac173",
      "name-candidate:fbff216740bed0927019b78351bf49774d6ec2019520472bcf6ae3a1bec8b8f8"
  ]),
  ("name-candidate:a6db7becdb3e25c98790ddbcc5e55a13769459018a2629801247afbbdd53f6c5", [
      "name-candidate:8e7a52ba2225333739db10de852083153b0848acd3b3040594d149e7ab9f3081",
      "name-candidate:a6db7becdb3e25c98790ddbcc5e55a13769459018a2629801247afbbdd53f6c5",
      "name-candidate:bb977797ef723372c2e2136e4718cb900dd4f8d1223f6982394ee7769f510820"
  ]),
  ("name-candidate:c0e3a79280a4ae569af755ceb9d5b4d24853eab6b7d704bb02228638513dc94d", [
      "name-candidate:0acfe27200cc6073d0895a4f1b8d4eeb229e8dc13c463e86abbe0e0e6ff438e8",
      "name-candidate:c0e3a79280a4ae569af755ceb9d5b4d24853eab6b7d704bb02228638513dc94d",
      "name-candidate:ea2387d6f1372556e289ceb8ec24a1fda444a0710b645416d251af3f568209a9"
  ]),
  ("name-candidate:8e6b401d401e8ae52d56ea4c5a29c96802f3c220d7cda19860dc07499de3383b", [
      "name-candidate:1dfdd072d885e148da6b4b8c7434570b9c0f162c7cc26228b4f22fa0830c49c5",
      "name-candidate:7356881327db46129b1ef6daf2bb8c61962f41b44150de0ed2dabe52bacef50a",
      "name-candidate:8e6b401d401e8ae52d56ea4c5a29c96802f3c220d7cda19860dc07499de3383b"
  ]),
  ("name-candidate:affbcd0928e8a8cce750a73833d12535b678f4d3c915e537bf6f7faa645e4e6b", [
      "name-candidate:2b93bb07c517c6f593d36d837526893ef777544cba37e2edbba19261e1d2fa3f",
      "name-candidate:42dfcac76b09771c6241509212656e4759fce038a272b33a8da5810fed3248dd",
      "name-candidate:affbcd0928e8a8cce750a73833d12535b678f4d3c915e537bf6f7faa645e4e6b"
  ]),
  ("name-candidate:91d1ba6b05a507457bb79fc418b22a785f964207925da9e1f2ff254689f95abc", [
      "name-candidate:0cffa177e50a56126c74ece28d3a7a2f54aaa0023a5d7426a7ee016ec0476f1a",
      "name-candidate:4329571441ee31ee650e14a1caed72d7bee600eafafebfbc4b646e75b460c614",
      "name-candidate:91d1ba6b05a507457bb79fc418b22a785f964207925da9e1f2ff254689f95abc"
  ]),
  ("name-candidate:941a69b9b71725d356419c18e4f3150770feaf0d63576441f418c0af1005e264", [
      "name-candidate:2ca2f99f3895b90d81eda439f29f97265aab933af4aec5f637b2fe26e6a148e1",
      "name-candidate:93187ccdd2d70be2ff99966b3cd0f68da8138be0c0b8df4a1e07064d9844f784",
      "name-candidate:941a69b9b71725d356419c18e4f3150770feaf0d63576441f418c0af1005e264"
  ]),
  ("name-candidate:ed36ec6013fbcdb92c7cec24859c12c3e5e429c53452f7355b208a2084c24008", [
      "name-candidate:11c432dce81569c6d7b70ea0ba7880ed086e59c5e35d229c51cdfcda7e939ffb",
      "name-candidate:a7f008c3d721c57224b12bbfecf9faa65ab1cdbaf022777f2651c73036bb80b5",
      "name-candidate:ed36ec6013fbcdb92c7cec24859c12c3e5e429c53452f7355b208a2084c24008"
  ]),
  ("name-candidate:6fc23c2d064f0ddf85e903a451950da076f260e5002014dd63cdee6255618d51", [
      "name-candidate:6fc23c2d064f0ddf85e903a451950da076f260e5002014dd63cdee6255618d51",
      "name-candidate:dd72bcff22528f8e581ab313ac26eb8a898cf6985f249b393b68224045bc38af",
      "name-candidate:e204d663b4d0deb3fdb741fd074786cfc40a4f119f2da585d493cde7d6bbfa18"
  ]),
  ("name-candidate:53325260e8b6c4f1d7eb6f1c13784c58066c740095945e94d3fbe4c95ce69f96", [
      "name-candidate:53325260e8b6c4f1d7eb6f1c13784c58066c740095945e94d3fbe4c95ce69f96",
      "name-candidate:78ab048e9eefdbde11e899eb1d9f7a14a93e1d926ca3c78b00516831ddde1427",
      "name-candidate:b4107173183cf043991da62f2ea99c74a9811c5bb07a9fac4372af73c25d7afd"
  ]),
  ("name-candidate:6bdfa3b46275dc97d2340e77ae6fa50d0f70ce30f8fbe7ee93e2c9f484eed189", [
      "name-candidate:44458c27e236880b4f9c75d4522c77de644e8f7bbfc82e627359f125f939338e",
      "name-candidate:6bdfa3b46275dc97d2340e77ae6fa50d0f70ce30f8fbe7ee93e2c9f484eed189",
      "name-candidate:f04f63061974f1395511186e570316900038c970cdeb8d18be0f1ef0f1339feb"
  ]),
  ("name-candidate:52264f445f6597fa22313b6b0a3342ca5a2d7fbb9ef282ce10da52166dbacc53", [
      "name-candidate:52264f445f6597fa22313b6b0a3342ca5a2d7fbb9ef282ce10da52166dbacc53",
      "name-candidate:5bc0a68efc1380d12de4170b3b026f6f2d3c8f732042eebec7062093d4111fe7",
      "name-candidate:aad53b02e6c366e790ad9b568f59943597a62fbdd70aa334fcd7b97d34be079b"
  ]),
  ("name-candidate:136e31c9fb21d46e9dbce81efdcbd19f075c3283a4d86370a6895245f1d2f870", [
      "name-candidate:136e31c9fb21d46e9dbce81efdcbd19f075c3283a4d86370a6895245f1d2f870",
      "name-candidate:5fa5c2caece06b7206a7ebf8cb7df80dd44559c57f597a4c5a1ee3788373f6a1",
      "name-candidate:d607240b6e8d5f63435dc69f2b4aeb6b0d4a4eeb315e39cc8030d1ef94fa8c43"
  ]),
  ("name-candidate:49823e571a781fc87c6559b9dc2581038e53a5874dff75ee869c7a02dfe958fc", [
      "name-candidate:49823e571a781fc87c6559b9dc2581038e53a5874dff75ee869c7a02dfe958fc",
      "name-candidate:7cf029809234a7eb0874a553c163dce24cc0752b40d398bbe8e5bfd1fd6ad75c",
      "name-candidate:9a05502a4acde31d7f6f5e9fc3f369217f5e2823a613032c25942a3848e2e633"
  ]),
  ("name-candidate:7d9d29f0dd09fc005e82f2f725c8c22d9f3d4080d12c5a069d5c15cf30a2a86d", [
      "name-candidate:7d9d29f0dd09fc005e82f2f725c8c22d9f3d4080d12c5a069d5c15cf30a2a86d",
      "name-candidate:ed20cde29944bc98677e198888f4591e0a758f172057943e9ea9a3a17162c7b1",
      "name-candidate:f8a7839e9538ac77ea7fca219cbb56fcdb112a5fb4d78938bc00028513f12f76"
  ]),
  ("name-candidate:0c8359b8742fc1034af7e319209ba019455b73f952cc5e4ac3ff80013f5163af", [
      "name-candidate:0c8359b8742fc1034af7e319209ba019455b73f952cc5e4ac3ff80013f5163af",
      "name-candidate:a3d67ab0ca619eae8eb371d2bf7429a874b438485591a56c5908bebca9e45593",
      "name-candidate:e4ffa52021397850eedb752e16d9f9e4013fabc300941bd0ff615943c20500a8"
  ]),
  ("name-candidate:db3d6c52496e91b791f05b571c7f612cceb1a082d32c9ae555c231717c105e37", [
      "name-candidate:3434c305d5c0d26fbbef614c83d4648a1b8742d2b0401e84c0c5023f962cfff9",
      "name-candidate:db3d6c52496e91b791f05b571c7f612cceb1a082d32c9ae555c231717c105e37",
      "name-candidate:eb2e10c5e656fbcd2cbab8f63766d3142d4794f39549bb1b4ac5e10b70f108ec"
  ]),
  ("name-candidate:f44546e0a5393699d7e93bf3975afce1a81e52b7ccf9741d1e7485265c90dbe2", [
      "name-candidate:3e8df922846afaad2c124493a4428f8d73347f6bcaa9fd04c3c11c3e30672c38",
      "name-candidate:56d2af66fbae20c30ea8bc95f3d6e6cc23c57d6b7dbd28681b8c8ace741efd02",
      "name-candidate:f44546e0a5393699d7e93bf3975afce1a81e52b7ccf9741d1e7485265c90dbe2"
  ]),
  ("name-candidate:839ddbee86bacd13d7efd31e900eee437795c0ea06eda3235fc33e973fd5a21d", [
      "name-candidate:839ddbee86bacd13d7efd31e900eee437795c0ea06eda3235fc33e973fd5a21d",
      "name-candidate:ca9b5b9ba7fed13204ae5212df9785fae134e4be7cc6928ea90846be9ac8a950",
      "name-candidate:fbd746123e576ec85abf815f3a44e186bd3cfa9c99b9b1fbf23ccb28d91cfce7"
  ]),
  ("name-candidate:5d670ab9353b7882b7930717cf281396a65a1a70e8faeda6747c8cd913720260", [
      "name-candidate:54f1a475f1568e5a0d2b8f2035eb42f0890da34df854c5ddd027b7931a93f732",
      "name-candidate:5d670ab9353b7882b7930717cf281396a65a1a70e8faeda6747c8cd913720260",
      "name-candidate:b4ade38b40620ee1bc0e9fafd8ad7ff4332e83fc2a1f5ac558eb3485364199a2"
  ]),
  ("name-candidate:efd5ba3ef6c2951c2fa58e875f0d155733312e10d4b224f8207910ee14c99d36", [
      "name-candidate:79a9330ca5b4f90cad52058a0c31e504a4acd9b9e8ba9a01e01bf1dc0f1015e1",
      "name-candidate:db7b89d750a2b1b0dbd7400b20d0b190abe04d2b1a3fbd5b1ca5d61928fc2d4b",
      "name-candidate:efd5ba3ef6c2951c2fa58e875f0d155733312e10d4b224f8207910ee14c99d36"
  ]),
  ("name-candidate:0bafa5d6c74848c1ffe4ce04dfbe0ecc2d016a63a825c2865efcf2e8166e27cd", [
      "name-candidate:0bafa5d6c74848c1ffe4ce04dfbe0ecc2d016a63a825c2865efcf2e8166e27cd",
      "name-candidate:150823a12e77f2e77a732cf975b4d7504b4d28a6b3b4f2ff22ba1d2767802a83",
      "name-candidate:e95c5d341b0c0421390ec02af7144722d6f8b4e55c7f74e5135da9b272209bf5"
  ]),
  ("name-candidate:0f1b2e63d12234e32b3ad564a0cf5a793fd8e7925fe5beffbf7b5ff4075ffa38", [
      "name-candidate:0f1b2e63d12234e32b3ad564a0cf5a793fd8e7925fe5beffbf7b5ff4075ffa38",
      "name-candidate:76183b943fbe3327a250841ac3054a85928c591ac88ff2cc77f9a29ad2911fd0",
      "name-candidate:b0176c3fc25c519c2f7ffc2daa8f65e888136e819fe45350d20bd028c7a04f09"
  ]),
  ("name-candidate:d949e6a15c0433a70bd16374cb46f9f796b1f57063ec47309629ae84d69cb136", [
      "name-candidate:bff726293012610111e68480a07a6bc4d8a1ba28ebaecf1461e79865ae8d060b",
      "name-candidate:d949e6a15c0433a70bd16374cb46f9f796b1f57063ec47309629ae84d69cb136",
      "name-candidate:f93159b50200a4ece31c01d0cbe5fecfc0918047bb6678b511d2ae7e3d6bcd78"
  ]),
  ("name-candidate:8259d052dda3a29586da311019be250a378f4dd3379b9aee9fc24c062bbb62fd", [
      "name-candidate:8259d052dda3a29586da311019be250a378f4dd3379b9aee9fc24c062bbb62fd"
  ]),
  ("name-candidate:c2094d380e01720870fd7fef89f82261052e04b4bfb59bef688a6ad9d9bd186b", [
      "name-candidate:c2094d380e01720870fd7fef89f82261052e04b4bfb59bef688a6ad9d9bd186b",
      "name-candidate:c4a6a4e8fad3f1f3215260306e5f968b87385e100198b2635837f022b809a88a",
      "name-candidate:c99c0e277d20a268dcea3d9b3b469ad7266d35bf5a024254c4f13716708ed6cb"
  ]),
  ("name-candidate:99f8c2b68fcbde5d5803825ff1bde7afe9f27802bc9d4cfdae7ea5fe1791f92f", [
      "name-candidate:05f52f492a511a59ef2a223fb1a9572652f2ff5867f6cb8f36728d90bc346af0",
      "name-candidate:99f8c2b68fcbde5d5803825ff1bde7afe9f27802bc9d4cfdae7ea5fe1791f92f",
      "name-candidate:c8f5bd44e563efd35bcaf9125afbe5e2275a5851cb2774df8a879730bc3845e3"
  ]),
  ("name-candidate:44d052dc6c4755a07b139fb2efb8129e788c92dcd9b02f4be79479edaa8a6a0a", [
      "name-candidate:2e755156330618636ba8fdbcc3decc0586df643d3b485b262ceb1961a9b8a3b0",
      "name-candidate:44d052dc6c4755a07b139fb2efb8129e788c92dcd9b02f4be79479edaa8a6a0a",
      "name-candidate:c95d6e7143d10591b5845dc50f34a8353daba4396f1ea0ce44ac90075d374894"
  ]),
  ("name-candidate:9ff61f5244b779b4729d00cfdab518043fff3d2c1200bcc1ee4a587582e33d01", [
      "name-candidate:671d9897c232e7f3c01647c0f54468932a55193d246e2ee13d314bb366506ff4",
      "name-candidate:9ff61f5244b779b4729d00cfdab518043fff3d2c1200bcc1ee4a587582e33d01",
      "name-candidate:ca98384d05d65b15e40bacb4938169effc99bad0fd5ef046317982eee94c6a2a"
  ]),
  ("name-candidate:9206d63d10a506102514749a600785c0ce6d28fa256696e09fbe79a6dc4b01db", [
      "name-candidate:2c26b25ccfaef9cbc34e2da7693a50a16a8ab5746c807f43ab0a107e25631da0",
      "name-candidate:9206d63d10a506102514749a600785c0ce6d28fa256696e09fbe79a6dc4b01db",
      "name-candidate:a9d2df24b44ab7f38a58a4987b0cb725a1c136f2870fb1f615ea2baa75080e0f"
  ]),
  ("name-candidate:da7def534f671946c88c9f83ca11b6dbfefda93fb23a1558b868f4626da203ba", [
      "name-candidate:10b17b1c404d4fa21f056403971f4db0e4453c19eb2353dab0da396becb3f850",
      "name-candidate:4b34c2dd1469a3a6fa433799fe748b36e20aecf5f61c98c15020f53aa0896755",
      "name-candidate:da7def534f671946c88c9f83ca11b6dbfefda93fb23a1558b868f4626da203ba"
  ]),
  ("name-candidate:4126257ce1c2287b75da093e087d8acb175e253b51c73163723f903ea4cd8442", [
      "name-candidate:4126257ce1c2287b75da093e087d8acb175e253b51c73163723f903ea4cd8442",
      "name-candidate:ca0b29b170b951365772a369d4b600b35bdc84b6300107752aee0aeb807f115e",
      "name-candidate:ce1fa1ff418ed2a46cf940f5f5c4db05d35c48d7a89c9eee1b5b030a3e210bd8"
  ]),
  ("name-candidate:da08fd2e98f033e2acd2928837b708f5cad82f00dadb0a6022a39ea29f556bd0", [
      "name-candidate:6c9e78236ad1d4608d3c588a6b40f8bc51f8fdfad9ae58dd1bcb297a98a0d920",
      "name-candidate:89e2ba7b1fbdb6631b5fb0e82c3636d625c2fce53c023c8133e4375aa886f053",
      "name-candidate:da08fd2e98f033e2acd2928837b708f5cad82f00dadb0a6022a39ea29f556bd0"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L42415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
