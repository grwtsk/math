# candidateSelectionsChunk0022

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78d879e8525a6a54e62f3b74f124a261f82cc97ccbeff267525a6151304e614c",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0022",
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
  "slug": "candidateselectionschunk0022--7117fcbc9d74a89d9b33e4ec",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51833,
    "line": 51472,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7117fcbc9d74a89d9b33e4eccc4309f6fbfa2132a3c1a73355acc08f6ab3eae2",
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

Occurrence: `declaration:78d879e8525a6a54e62f3b74f124a261f82cc97ccbeff267525a6151304e614c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51472–51833.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0022 : List (String × List String) :=
[
  ("name-candidate:58924b448fe895eba209015fa382be82d1943ef6633d88f74c70dc3ef4545a70", [
      "name-candidate:41c7c2db06f3a39fd12d63274f108949162d84cdd0615cdf570a330e3260ed89",
      "name-candidate:58924b448fe895eba209015fa382be82d1943ef6633d88f74c70dc3ef4545a70",
      "name-candidate:6280fb82c862de7283d91a649e70cdcb46e435e4bade64aab960f35c3b5df6d0",
      "name-candidate:f6e1453e8dc00765891154ada5937e9ab41830270d718a6ca27d69ee991bc815"
  ]),
  ("name-candidate:0d702700dc47a3053c3064c7d1e49f556204ab88bb2540fd2869f7217907ea0f", [
      "name-candidate:0d702700dc47a3053c3064c7d1e49f556204ab88bb2540fd2869f7217907ea0f",
      "name-candidate:0e1e73d7fb2d4d554b74c9efb7cf4f66d6eadcfc98438beb3104e1bc91222d7d",
      "name-candidate:6b8de8e3d292de02a9242f37ef76e486647781010b65c81c4d92fb31e49e5907",
      "name-candidate:eb8a782aac43f00e5f1615cc860d6f05a96e4d492cb8a286f46badd8c76b1a26"
  ]),
  ("name-candidate:4d9845b99666711b28d159ca2ee3156799493d8945247acbcbd0b072734c78d5", [
      "name-candidate:34079e2a7ce176b0150067b1b2fa8bdb7a320e882d43f9ef735afdcae87c94e4",
      "name-candidate:40073674cf525f4056b628e89aaca1c5ee2dd8d54964e82eb154e7592a4d7ccd",
      "name-candidate:4d9845b99666711b28d159ca2ee3156799493d8945247acbcbd0b072734c78d5",
      "name-candidate:aace84213063cb2ff96385164e7687209d4a9740b64dba4d7d9f6105d68432de"
  ]),
  ("name-candidate:0fe11a1312dfc60ca4871c627539144d0a224ae0579b8607e002d469c7921042", [
      "name-candidate:0ed858f4db0c6eb566d9b807fdbebb97443197a9ba75e1f159330ec4240b12c8",
      "name-candidate:0fe11a1312dfc60ca4871c627539144d0a224ae0579b8607e002d469c7921042",
      "name-candidate:1df1c6e95f94517558ec2eeae1680a5e2e677f5cf1ae8b5f66ab2cfe142a6005",
      "name-candidate:bb533dfef7d1e50641eded1e326d8da06434194a8f3a4ef3f28f404b69c96c5a"
  ]),
  ("name-candidate:0c33436ed722fbc70dd94255ab8ddf1786ccabb3acdf47f5d9078053ca7517d8", [
      "name-candidate:0c33436ed722fbc70dd94255ab8ddf1786ccabb3acdf47f5d9078053ca7517d8",
      "name-candidate:fc08fec4a347af92e0845624497b144b6e7f129c666e02759e73c2d4db0e05ad"
  ]),
  ("name-candidate:3d1b87aa3ce913ee3ad6d08a3a5c4c8ff72ee1e47d3f9bb822d6b983d5d99ece", [
      "name-candidate:3d1b87aa3ce913ee3ad6d08a3a5c4c8ff72ee1e47d3f9bb822d6b983d5d99ece",
      "name-candidate:43b8f44eb9a7174c358777784bc58227f7aebeeb5964f739a5db0c13c6613fa2"
  ]),
  ("name-candidate:c416a0c448a33558f273547c7cabb8ccb7f560a305f8872be7c8f0bdccfd499a", [
      "name-candidate:51d76e9bd4e5fefea27fd987fa13807b3cc328bad91d0f6869dffe99437f42af",
      "name-candidate:54f1f8bc9214335e4c81438af566ba776a3603bb5d629530e92a0be891eab3e2",
      "name-candidate:c416a0c448a33558f273547c7cabb8ccb7f560a305f8872be7c8f0bdccfd499a"
  ]),
  ("name-candidate:9e31633da8ba409266ad0f0e9f93d96b720784f866a1c72391a8b4dc2b842cc6", [
      "name-candidate:6e0ade08740563f4e5a12e62d3fbde50945f12fb402cddbde29c5a0554737a56",
      "name-candidate:8627dfc8a690717b20eec8df92a8367914ce2ea5e3e8d2b1389fc7887d86a4c5",
      "name-candidate:9e31633da8ba409266ad0f0e9f93d96b720784f866a1c72391a8b4dc2b842cc6",
      "name-candidate:f1bc48f4ef3382d8ef9e3eab41bf702338ea2b1a0054b55418d9ee605b511a22"
  ]),
  ("name-candidate:2e2d8fa2524fb8cbb127c4709917ce21300a789eaeb13ca4424026c50e2cbd3b", [
      "name-candidate:2019e90231708cef74e8b4cf395337640c81e495dd1c7f3225d24b0ccfa28740",
      "name-candidate:2e2d8fa2524fb8cbb127c4709917ce21300a789eaeb13ca4424026c50e2cbd3b",
      "name-candidate:6aabef367c11af52398251e31e3db70abc8f35813a6f2a8e88b81b81f1233682",
      "name-candidate:f71cef3803c9957cb02b8a62658f63e020a91368e3f0a912df139c9de6a49035"
  ]),
  ("name-candidate:2fb9a3d45495422763f638ca5f2c42ac78d7334eb469cb43955b0790c40d8a0a", [
      "name-candidate:2fb9a3d45495422763f638ca5f2c42ac78d7334eb469cb43955b0790c40d8a0a",
      "name-candidate:56b4c1b6c8e3ffd8bce066838c60d0f00adcdf2005cc4a80f1a564432fb5080b",
      "name-candidate:6cb213185e95fe121d8434879f4752b8c59b7394f666e8e9c83e7cbc2f403c2c",
      "name-candidate:8c591d2783f75047fe7ecf7abcea4a239aac4308c3eadb5a9b6e1ebfdf978541"
  ]),
  ("name-candidate:8a9ed0a99becbfd540c89d85525cc085a0377cb838eb9322c07260e8e4cc3d88", [
      "name-candidate:83bd7ceb9199e8f037202bc8dc599c1801308a68f213e0841c1707885f0ad934",
      "name-candidate:8a9ed0a99becbfd540c89d85525cc085a0377cb838eb9322c07260e8e4cc3d88",
      "name-candidate:ef55d370e21aef9ad56f7738ff7f5f9ccdca260938eb90d5b223a5627fa59072",
      "name-candidate:f785c3a982b82a7ee3215e0d80c920e901c08d3f99d7f534218fc468c3fab398"
  ]),
  ("name-candidate:c184eb576bce70480d23d6b4bf1beb782d71bd222140170b9c765e0cb9af0add", [
      "name-candidate:3a843863f67e132bab053d871780e6fd96c995105a554046c05ce83df0e5d68e",
      "name-candidate:82685b4e347267b7d4fc39cd047f8ee559b41bb59910e61c5570efc20d91aef6",
      "name-candidate:c184eb576bce70480d23d6b4bf1beb782d71bd222140170b9c765e0cb9af0add",
      "name-candidate:df672de81c01bfa1ac64bd761caceeb082886fbddcc3e42a2504b1243b6612a2"
  ]),
  ("name-candidate:9b2edfb7db4487ac2cd45d851a2f720edfc081b50d4fed6163da98f92b674ce2", [
      "name-candidate:68c7018a4334b029b981cffac5fbc4c79b3792155efde963409a329f82f4daaf",
      "name-candidate:96d2269dc881e61e5650f6d1e5193acea6c03f3c03fb60570fb5e6703ce7efb7",
      "name-candidate:9b2edfb7db4487ac2cd45d851a2f720edfc081b50d4fed6163da98f92b674ce2",
      "name-candidate:df6673792785ca0b8235f987e46aa9ee4a1bda1281c415fcff0e3913b21bc4fd"
  ]),
  ("name-candidate:f5a6fa40cfa7859aebc85d58c492cd8f9bbcba1fcf5e51d51968520de79759e7", [
      "name-candidate:f5a6fa40cfa7859aebc85d58c492cd8f9bbcba1fcf5e51d51968520de79759e7",
      "name-candidate:fc8a34c9879747a0cdd3a8ce8e31da866aa316a65c30d1dd9b25e5ceef2e6f8b"
  ]),
  ("name-candidate:f10f53ee07b41009d4a471762bf19f3a92c52ad129f0149fdf7abec6637758b4", [
      "name-candidate:3cc2f8580cc351b3db8d8bfbf205b9882f40f1046a02871e31ad25195aaa1e1f",
      "name-candidate:9d23f2e0a364d62ef2f318c310bf32618b959d1df47f44a188ef686b5f5ab366",
      "name-candidate:f10f53ee07b41009d4a471762bf19f3a92c52ad129f0149fdf7abec6637758b4"
  ]),
  ("name-candidate:cf344d714225c9fdcd18177f33cabdebf651381e7d2aabb3a7b3cb0f02a07582", [
      "name-candidate:64f4ffa87807d3493756d682f03543bdedace66b94c1e31ca36007c4f61d0608",
      "name-candidate:9a45245392f41691d312e6e69df972d1b2ffcf74c2745bbe912e624f37355c4f",
      "name-candidate:cf344d714225c9fdcd18177f33cabdebf651381e7d2aabb3a7b3cb0f02a07582",
      "name-candidate:fdb6824df1558f15749f0305f8dff007c793931288bf21d122c0503ae5d4ecfe"
  ]),
  ("name-candidate:32333d6df3bd875395c189527d5d28d29b92491719a75f533223d15a966ed3b4", [
      "name-candidate:190dfa1ae86488840df94c14853a467b51af39d1ab3f8173bd3e13fdf40800e6",
      "name-candidate:32333d6df3bd875395c189527d5d28d29b92491719a75f533223d15a966ed3b4",
      "name-candidate:7e6db78c04e31cfd203a35072c5f280593125d3baddd31a70b9c1b61011e792f",
      "name-candidate:a5d117688f7073403d7a9553270cfa01d396ebc5e970afacbf7bcd5375ee971b"
  ]),
  ("name-candidate:c277b90b0b944be30ddad033cd9e242fd62d0191e86e93b2f6b499b61ed520b2", [
      "name-candidate:79b6accc31830768e1be7715075e6ceab4309179efc60f9b35ec95623f698747",
      "name-candidate:b75d2c2f91b52581df0ac3a69fa479e8e35a286719ad0110967fc28fe69518f5",
      "name-candidate:bc43d0bf394be13544d7d146c0573f813dcedc7474c934f9c4f278e9e8d78f7f",
      "name-candidate:c277b90b0b944be30ddad033cd9e242fd62d0191e86e93b2f6b499b61ed520b2"
  ]),
  ("name-candidate:53f2feafcda65dc74ac4a76c8efe9636eb5dbe71913c56397f716c59f0ef60e7", [
      "name-candidate:1cf4685403f6aa997f1334d20f98c0870a11e8516206a0faae0788053ebffd85",
      "name-candidate:53f2feafcda65dc74ac4a76c8efe9636eb5dbe71913c56397f716c59f0ef60e7",
      "name-candidate:86153ba12779b3e7e1916dcec63b3cffe25c4ae09d138a4e44625f5e72f9be12",
      "name-candidate:97a834454df260f19d4d3daa6c056becb11fae643e8c0054566fd8823c182cbb"
  ]),
  ("name-candidate:65394e5447eb504cc2e4d5227353cf763c3040fe953db3434187dede3ee92c6d", [
      "name-candidate:65394e5447eb504cc2e4d5227353cf763c3040fe953db3434187dede3ee92c6d",
      "name-candidate:6eb773131e43ba0d4f0716d5de89b1ecbd26c4e66fc5cafaee8db81c44ab539f",
      "name-candidate:bc70ffd6ef95ce8380c6835b4f35bc2c642f44e9615824713d59708fca6828b4",
      "name-candidate:c7aa55bd7f9e64994674fab995b109d2ee188069dd1129d53b00ddf67aa8e353"
  ]),
  ("name-candidate:213d23231ce2a4a81e4c25d11512224ae0942c337a292c2260d2101c593d6209", [
      "name-candidate:213d23231ce2a4a81e4c25d11512224ae0942c337a292c2260d2101c593d6209",
      "name-candidate:b4b4f30ae5ab0430e71f5dfd1d4b4c853997372ba890eb9952489e27bc3420eb"
  ]),
  ("name-candidate:6d78b31d3a66ff7cd7815e022e44d9c70cf7f905ac1c6994c7356f957b3bc999", [
      "name-candidate:418f7365d4a30d1c4d8420f4cda3d407a32431b4d6b004fe48a7ba3d32598fd9",
      "name-candidate:67d6ad62bd782f307ce2bd6ec56f67bdba3309006d95fd1f99ac3a8730962ee9",
      "name-candidate:6d78b31d3a66ff7cd7815e022e44d9c70cf7f905ac1c6994c7356f957b3bc999",
      "name-candidate:812ae1e96dd448a766aeee9267964b7401c0e2b7c0959d90961dec72a0ad59fe"
  ]),
  ("name-candidate:54d5b319ee0fa45dbcce0ce267b9a977892f385113d7c388ada0d10e973fd529", [
      "name-candidate:481838afbe22ad0167a7571fe125b0abd6d18b1fcbb0c199b214a5db5c26e99e",
      "name-candidate:49e10f1973b101fc400f2950d36dbc64f59451834cca7f3316670c279cb3816c",
      "name-candidate:54d5b319ee0fa45dbcce0ce267b9a977892f385113d7c388ada0d10e973fd529",
      "name-candidate:9a678c9cfd4759376d92ff9807617b6de23dc8cd818fd67898313b68dec9dfa7"
  ]),
  ("name-candidate:82bd3481052facd003215610bf4c70f683b9d644a9f7360a259aa7c241846f80", [
      "name-candidate:82bd3481052facd003215610bf4c70f683b9d644a9f7360a259aa7c241846f80",
      "name-candidate:b277f5aaddc2f81002547a18e5176c80d348908d8c3457d752df1d67758737a2",
      "name-candidate:c13fca8d7521f63058005027ea87bfd627489be73f0d883711640b66ca5406be",
      "name-candidate:cab77cbd1a10b2bd93c8e9cbe2c0fc6b2d52b95c940addf0bb984d89d2ab350b"
  ]),
  ("name-candidate:e011cadb3af715428024f26452e077ec3252ed7b4c8f54659c860809e1db4ec2", [
      "name-candidate:470d55e2a12e71f024251f7911e5335aade5f52a8ea4f9f44b6ed6959963be70",
      "name-candidate:5ed747fe9b0ac6d99ec29ef7604852777c5beb4e61d7eb7dc48a780d6e540cdc",
      "name-candidate:9c2b8ae3d539ff9f684cf87cc6e1e4ce338e2ca220986300af00764f5df0acda",
      "name-candidate:e011cadb3af715428024f26452e077ec3252ed7b4c8f54659c860809e1db4ec2"
  ]),
  ("name-candidate:186c35e91d2a5e462a862dfdbcc3a1643009d6bd8980495ec19720e31df4f91f", [
      "name-candidate:186c35e91d2a5e462a862dfdbcc3a1643009d6bd8980495ec19720e31df4f91f",
      "name-candidate:27115b73de3dc64d37e1d0ebd913b256d95d0d9470639ac095c120739396ca15",
      "name-candidate:72dc100571f657b73f2d80297dfd1bdf5e47d74f1ee7b88ff50a1f647e29de4a",
      "name-candidate:747a98e479547fed131791807e07e94f12474bac51254fa7005ca0b0408719dc"
  ]),
  ("name-candidate:07d9d6ca39ec8115b766a41b894a3ab4d4ce732f49be76caa6b67dbb019d4e26", [
      "name-candidate:07d9d6ca39ec8115b766a41b894a3ab4d4ce732f49be76caa6b67dbb019d4e26",
      "name-candidate:2eed5bda72a64e60dcc9da64e681249d17d6681d59b3179d0039c4228c76b57d",
      "name-candidate:6f4b930d6765dabbd2c08f46777e6279f534c2bc8d1ec0b3b0d9db50bcf822be",
      "name-candidate:a11cfe8db2bb3cc1bf48c70c9f804eeae6ced72c1bdc57a2e0ba4f48d67106ae"
  ]),
  ("name-candidate:6f633dbf45ec5895f4157e6b72972cb97f33f618e6234827eff5b866188ae7f4", [
      "name-candidate:6b7fb3e4c01ae192415083f8df94adbcacb9bd7187c4c5ad05641c94574599f1",
      "name-candidate:6f633dbf45ec5895f4157e6b72972cb97f33f618e6234827eff5b866188ae7f4",
      "name-candidate:71854540fa8ebd0b1fba846bca1f8a50884a4d98981f3fd878e376a8319beae0",
      "name-candidate:fb15e7ddfa8816c5061cdebbe9e210dedf25b8b692385ea944ef0c531e1e0f3d"
  ]),
  ("name-candidate:e73104d2112e72d2ade6c1f67167fbf7ccbc4e2a2c100412efd70b85b2ef4c07", [
      "name-candidate:010ca9e761f780e918bfe496d89d4e3789ade79cd7240581e828df2ff5c74fbe",
      "name-candidate:6d92192ec5693fa68dd4ab5b334af4b0cb2c6c8b1079327a436f8e4bceff7370",
      "name-candidate:9a6a9c3a44d6ddd16209e03466710cf0603fe904c9f96c446e4f417e9bfe427f",
      "name-candidate:e73104d2112e72d2ade6c1f67167fbf7ccbc4e2a2c100412efd70b85b2ef4c07"
  ]),
  ("name-candidate:ee09c7e59b4fd5ff042eb098bb04c168f1a0bbe6b45a82f5f30986290fb6acf4", [
      "name-candidate:4f107d3d57dec5fe3b3c543266ca08dba5d3ffce3be2d305dbf71a820212c1f2",
      "name-candidate:78846a4c29d0406013dce723b81840376c361249602a3eefe1c9b30f0107aec0",
      "name-candidate:963bfcd14f30ec063bf01565cba3fa6493a3db4298d96b9277dd2dc8d8ec94b2",
      "name-candidate:ee09c7e59b4fd5ff042eb098bb04c168f1a0bbe6b45a82f5f30986290fb6acf4"
  ]),
  ("name-candidate:daf508ef092339df277da75d2aaa2ebe04a206bea0a6e044d23b8d7597ca7203", [
      "name-candidate:529fa468b921a551445fe12312e77e8227e26be26c72292aaaf00633fdacac5c",
      "name-candidate:5b7b3a6d17312dc5958f319b5c41688575f8de05253439b2a8c06b09063b4ab6",
      "name-candidate:cf2c5a385196edd41531a698b849d4a8dd39ec329f51cbb33c6dadee21ad309e",
      "name-candidate:daf508ef092339df277da75d2aaa2ebe04a206bea0a6e044d23b8d7597ca7203"
  ]),
  ("name-candidate:b32328f5ae81f0c583fa12a2ae3a514d8e8c126a1f791c2af6728ddf9e4f46ae", [
      "name-candidate:2e13dfbe1bf66b60f8b7e9c479b267747e891321c01e35f93e5bfab102454ff5",
      "name-candidate:b32328f5ae81f0c583fa12a2ae3a514d8e8c126a1f791c2af6728ddf9e4f46ae"
  ]),
  ("name-candidate:ed0cef3635e3192b51d31939c78fa5d4ba16d9ceadef7b8b141f863266e63967", [
      "name-candidate:8ae36f1fb744abe9212d38d7145457b65341620aec0ee54cb3bc597f66f0e95d",
      "name-candidate:ed0cef3635e3192b51d31939c78fa5d4ba16d9ceadef7b8b141f863266e63967"
  ]),
  ("name-candidate:a98d6a85f163485e2da10c55353eb9498cd77551d42c0d04451dfffe2c13bf78", [
      "name-candidate:1924a24e2c9c31c437adc7921506374818af26473ead9c8018defb5431332882",
      "name-candidate:75e2d08fd88ecab7b842befb8acd06a1b15b815bbd0c68ab1aaf57232ace8828",
      "name-candidate:a094deede10f668117d86bac498ee4594e77d20a09669e3336ebb145f1909043",
      "name-candidate:a98d6a85f163485e2da10c55353eb9498cd77551d42c0d04451dfffe2c13bf78"
  ]),
  ("name-candidate:584ac893c9f93c20205f5d2192e1ca96892c602fea4db53ddd9f2678365bd3ca", [
      "name-candidate:584ac893c9f93c20205f5d2192e1ca96892c602fea4db53ddd9f2678365bd3ca",
      "name-candidate:69f837d2647fba82519b348e4b4b443e59e7e25b5edf463bc04f8f430f427087",
      "name-candidate:defacf9b27932c005f436bb597f36be8c60b671f746afff28152b07d722e28fc"
  ]),
  ("name-candidate:c04cc0a7a57ba7c96be2fcac8fe972b9f2fd5cd6ea2de8ac10d672e56cf33eb4", [
      "name-candidate:4418979a614fddbffc89847e1c452ed82233ca6a9035fcfa2e6387a270d301d4",
      "name-candidate:4837ab27dfd8cbd9e7ebf04e87f72a33b231dd7d1d74137a2f7185bc3734ff12",
      "name-candidate:c04cc0a7a57ba7c96be2fcac8fe972b9f2fd5cd6ea2de8ac10d672e56cf33eb4",
      "name-candidate:eb551605176d0360ae4d508101c12a22ba99adab719e59bcef7bc9ef681593fd"
  ]),
  ("name-candidate:c46922eb13d0b6ab33756ad8d561c7d00ddba08c0270d888144a70ed5b570704", [
      "name-candidate:0cd918f86a26f1cff3372dc34361297c715f5ec2a969c9c94ddc1a965e4ee050",
      "name-candidate:145e42d4dd05c5cfbf382e883833b8399e9c3cd4e4c08ded468fb110acf480c6",
      "name-candidate:601948939034fe4b292f03cf17818b61c804dcba1e60e5478aea1bab46390d2b",
      "name-candidate:c46922eb13d0b6ab33756ad8d561c7d00ddba08c0270d888144a70ed5b570704"
  ]),
  ("name-candidate:2b18a47855b446153c7518a007411b58ad92606031475a92d23cd389b9e45efc", [
      "name-candidate:2b18a47855b446153c7518a007411b58ad92606031475a92d23cd389b9e45efc",
      "name-candidate:40a20709c66e2e9443f16e67fc72fa6554d2d36834fc01edfed17c808380d384",
      "name-candidate:4413d523476da94725d090f2c3c7e5e1b94c9ceef70e5b5e1c30a719a155644d",
      "name-candidate:d81df5f856417505bbfcc6b2c2683d54d75236328c4a3d7d669c582da5c55b7a"
  ]),
  ("name-candidate:c6132126383842b138ec2cc08f1f91d8e27038dd07889189068b1dae406744ac", [
      "name-candidate:281a76cb9f9e3a58407b4fa744c5420c70b94882fa37a747eff5972f041d37dd",
      "name-candidate:74773b0603a71d4b8ddbb55334d462735240e2d0a17c20e7d8fc894c39e1a9eb",
      "name-candidate:903bda35c84d0f9a028b756404862fa6f34c488232ef78439e92a71062eba699",
      "name-candidate:c6132126383842b138ec2cc08f1f91d8e27038dd07889189068b1dae406744ac"
  ]),
  ("name-candidate:9abb4788cc24d390c0aabc66d123055d8210e5ee07fdfdedac93823243d5974a", [
      "name-candidate:211248ee6d4dcd0c88f5569181c39598a35a2ac06ea99e11865444d73792a44e",
      "name-candidate:809cddaa4e4fc071c24caa1237ccc5e74a9f227258f139c89da1e45fd85b92ad",
      "name-candidate:9abb4788cc24d390c0aabc66d123055d8210e5ee07fdfdedac93823243d5974a",
      "name-candidate:bebbf7fcaa430ae6bff0ce9572a2855edbdf9e27e1c3f63545639c8c0de2c995"
  ]),
  ("name-candidate:608cffeebb0ed7c652b3959305dee146c17879ad50742f973e07d52f2c1e8e69", [
      "name-candidate:608cffeebb0ed7c652b3959305dee146c17879ad50742f973e07d52f2c1e8e69",
      "name-candidate:a50d2b1874a2adfa72fbf6b1c1fd5239d9bf948838658346029cab118bce9c87",
      "name-candidate:d08400514f758bc325aeba9d74032ccc7fc13c6b18f5ee4130709e1de84f4943"
  ]),
  ("name-candidate:9f04f404e7e21b09924c84e71a52d22db148ebf81a2e08e62c889ff778358a3f", [
      "name-candidate:35bc5d47f024b627b0be1628918f5729b94c66d5b4f59392c7bec91e9dd83c7b",
      "name-candidate:9f04f404e7e21b09924c84e71a52d22db148ebf81a2e08e62c889ff778358a3f",
      "name-candidate:bb4088a231775d4c15c6ed9353d15eab523e1d9ec6160486a7cfe8758cdad74a",
      "name-candidate:f21d7ee875f9c2dd8a26b4c69b01092b4128cffcabb0df09049f5fec07c98a76"
  ]),
  ("name-candidate:2573cb354148a26eaceb1bfd57c28902f4eb535d33d9ecfb614146c837db8461", [
      "name-candidate:2573cb354148a26eaceb1bfd57c28902f4eb535d33d9ecfb614146c837db8461",
      "name-candidate:27ae8d38186b0c3f2da7c6c83778bc6df8b9d3a4edd3449f3401880dc8446b48"
  ]),
  ("name-candidate:0594d2118994a2b8321c1510c7399d3aca78fc8f7fb036cb50bbbddc4497417b", [
      "name-candidate:0594d2118994a2b8321c1510c7399d3aca78fc8f7fb036cb50bbbddc4497417b",
      "name-candidate:4d4301f01c026dc4799d1f375bc158bfc3957192ca1e0f40838635bdcd2d4b7c",
      "name-candidate:6b11f09b79d74b243ecde9212d91c1d44adcc5a48fc7607fa7809df121258641"
  ]),
  ("name-candidate:08c1e237879215fe07224a5e2b327bb4707015486346dc631708a570944560c8", [
      "name-candidate:08c1e237879215fe07224a5e2b327bb4707015486346dc631708a570944560c8",
      "name-candidate:2a9f44846538b813bf4f8e779b26291a097cd7aa507d391f605e3ba2cb7955ff"
  ]),
  ("name-candidate:1cecf034d4bcf88f89912f9f20cb853441351cb4a86e78bd22473bad7a7a5764", [
      "name-candidate:1cecf034d4bcf88f89912f9f20cb853441351cb4a86e78bd22473bad7a7a5764",
      "name-candidate:51b7d67649ca0d2b64f17e53821e7218073d01b550acd87f5f83b6cff0b98273",
      "name-candidate:64f1facfb3c284c1ee239504ba32d2ba3d95d3acafb81748cd14cb59bcc89d18",
      "name-candidate:b0ff2ae389cee0c4fee4d00176ce0e713a5a7640354c8551d7e4277e88e60308"
  ]),
  ("name-candidate:618f2adaa38516c22a868751c6db0c9f924d33fe9f9780843f3d4167ef11e918", [
      "name-candidate:618f2adaa38516c22a868751c6db0c9f924d33fe9f9780843f3d4167ef11e918",
      "name-candidate:acf536b5cedfce4bb295f514704c56ebc592d84d18b3b4029aa7a883d5dedadc",
      "name-candidate:d94de47d7d7aaa7d3e0034d6bc1919b1c686bce4af6dfab8ef3aa82f37dae7f5",
      "name-candidate:e2e5e5f560e9a2bf23c787b70fe799ae741fde8cafde59a2569d1b4137ba97bd"
  ]),
  ("name-candidate:975622d218ff2dce69f44504d4f725c2d87f73f59771cc6de65ec3d13b6bfe1a", [
      "name-candidate:21077df6154f36fde0855651c21edaceb0d656d2cfe15732a17fd1ae3d57b088",
      "name-candidate:7a5f4b056acdfc3ce3f23f881717be57839769cf9b8b7d9d5bdbc8d6ed194fed",
      "name-candidate:975622d218ff2dce69f44504d4f725c2d87f73f59771cc6de65ec3d13b6bfe1a",
      "name-candidate:9997073c3430af4b302abb171b19a273453bc8d6ebd4f148793abc1421e36727"
  ]),
  ("name-candidate:fb1b7b5a9bf9b31b13be507da3703bc6e07da26e77df77f28317b9fb47b79c4d", [
      "name-candidate:1471e3b38686e1e411e565a5042fed6dabf7939de604a435f5e39e21e5b83496",
      "name-candidate:6551e2ea3186b8ab9040a5a108ff895666442e0d35d3427c53b76238deb6cdc6",
      "name-candidate:bbcfb2f67ae94599c9236f47cb4910e99cf50411760e4d5e9763c45094e51e06",
      "name-candidate:fb1b7b5a9bf9b31b13be507da3703bc6e07da26e77df77f28317b9fb47b79c4d"
  ]),
  ("name-candidate:dbd6833300e7424c7619594b1aa60d05f2ef638373f1f5e6fd3ed7f733360b4d", [
      "name-candidate:a34d59054c27d92a71673d82e14c7991f0d5de31428ec3a0306c2f552b17879e",
      "name-candidate:c482dddf487b0f1834a76d14f03b908b6f4d1e62f654c0e59167914dc49b4788",
      "name-candidate:dbd6833300e7424c7619594b1aa60d05f2ef638373f1f5e6fd3ed7f733360b4d",
      "name-candidate:dd5d2751036c17d5e6094ecd7d92be5afc5fe07956e3fab54941b12280f713a6"
  ]),
  ("name-candidate:ae2301be43c0f12d6efb1f04c5e4a877ce176bf3bbaf448c0f25cf50138424e8", [
      "name-candidate:592d2348ddef15cf81ed6880c8468dde11b3b58e79dfa0565d750e42b37019dc",
      "name-candidate:ae2301be43c0f12d6efb1f04c5e4a877ce176bf3bbaf448c0f25cf50138424e8"
  ]),
  ("name-candidate:6599fa935b90fcd9261b5762a8885627a3636af2c189714f847d342881246d70", [
      "name-candidate:02712caf98debc917f932a3d443aacf4ad16cb5546ea4dbc61732ad82af7377c",
      "name-candidate:6599fa935b90fcd9261b5762a8885627a3636af2c189714f847d342881246d70",
      "name-candidate:7c3611407f05aa84d06228c47df5990e1f2a5199974972f5bb7ae1ec410f8e4c",
      "name-candidate:ea54ef94b7230089985e79bb0a3c64ed32c33459c41249c0aaba81f30f049d5e"
  ]),
  ("name-candidate:b1bcdbe591ee69f50316c56a994f24fa4f9174e56570306554e4ebcb80c7ea6d", [
      "name-candidate:71336e296ce43d902976672bda28635a4595c7af57844bb106a59e00a6a60b21",
      "name-candidate:a748d411777dfcd4cb2458b42424696935afa2a1f03e928a5f69a1a222966a51",
      "name-candidate:b1bcdbe591ee69f50316c56a994f24fa4f9174e56570306554e4ebcb80c7ea6d",
      "name-candidate:c43f813c99e3742a18a94c2ab4c89c6f721dfedd72783fad67a6e2d1159168d6"
  ]),
  ("name-candidate:3b225d54988f3cc60033ff4e2a763e2204869857fc6d3cb533fb087e8e426bfd", [
      "name-candidate:1b4362d7a4d277d64b798d95d3425d9e3fe8727ca61da1c19422ad4f4d150c17",
      "name-candidate:3b225d54988f3cc60033ff4e2a763e2204869857fc6d3cb533fb087e8e426bfd",
      "name-candidate:8c43055e58e0f5061a46738a822b32eeae902d19139095f89f1a41da3b702780",
      "name-candidate:fb44bd4839ddf3cfa3c09cfa9412a0a79cdefd23300fc476e7714346142d8021"
  ]),
  ("name-candidate:c45841fa36944c5ba08c5b9f47709fe0d50d2e1c668cc175091daaa6ae6f24b5", [
      "name-candidate:8a3928efadb704366cefd1015045dfcccd2925a3df0d315a422e223f5723fd75",
      "name-candidate:be7381bdb091b5b6fb5080aa00f8caaad321a93816a9b5976b07514a58f05c3f",
      "name-candidate:c45841fa36944c5ba08c5b9f47709fe0d50d2e1c668cc175091daaa6ae6f24b5"
  ]),
  ("name-candidate:09af72f27dfdd2cdb671fa35d7510c860d9df4ddea3c8cc7991244e559e8cfcf", [
      "name-candidate:034a7ec48548f44fda8af1fb29da82fe557af634790bc5a77407a6b920c44e7a",
      "name-candidate:09af72f27dfdd2cdb671fa35d7510c860d9df4ddea3c8cc7991244e559e8cfcf",
      "name-candidate:140c8b530c96aecadf491d06fc0e6e6177a4f177d4dc8bd085d09dd1651f9c14",
      "name-candidate:565466a89bac5b2bd98077b149133d9515737fdbbb3acf6d3e63996af0f79529"
  ]),
  ("name-candidate:0d1040e01bb16fd94054297b3c908ccb2166f65faec1ae4a8d23d922939629b1", [
      "name-candidate:0d1040e01bb16fd94054297b3c908ccb2166f65faec1ae4a8d23d922939629b1",
      "name-candidate:2484fc3ea06a9ccecbd1da98d966866ba36be9f59c42ec3baaab793241fa36b6",
      "name-candidate:2761102d60881ef27cfb99e1a9b497c39083ee56c9c5b5c5092298e409a2e270",
      "name-candidate:e3fc19212128f1d15bc148ac095c573acddfbed06bc5c352b3e2c7962e1dc904"
  ]),
  ("name-candidate:5a6e06dcb521311e529216266100f95e5ef855addb4b42f7e653fe3a2afcb7b7", [
      "name-candidate:1704189c4ddc9db06184f65911c91bf0272aa5353c349a03456ebc809d1c4749",
      "name-candidate:5a6e06dcb521311e529216266100f95e5ef855addb4b42f7e653fe3a2afcb7b7",
      "name-candidate:c61de5b953ad778b38d0eb1983cc4b1d67caf3de0aaa656aa947b5feecfcc334",
      "name-candidate:d71c9137b3c9c048136363faa9afd2d58204023656fcc520e8eeb2286c9d2f76"
  ]),
  ("name-candidate:69014051d208a42c7bf4ebb986c2450f877c64792690a4a46f0dd5fab22c0b27", [
      "name-candidate:69014051d208a42c7bf4ebb986c2450f877c64792690a4a46f0dd5fab22c0b27",
      "name-candidate:e068301e8e38fb195b46e2b3539c3f8deffbd4b71366897977e4473b2f1ecec8"
  ]),
  ("name-candidate:db84ce7c9f24350e15ba4d9eaea72aa75e4f0d8760933bc7eee6152d8b22136f", [
      "name-candidate:195a9566be09392be73e0cc8b585a8ac52c68c8fa65da5f557c999b75b78af7b",
      "name-candidate:332abe4c5af89a969d180745a7e119286cb75579b63a8ca87c75e3ce13211191",
      "name-candidate:b30ec247601ce9ea4c8a44d3e9e44e1739112653cc7a95d0071abd5d0cdf3b21",
      "name-candidate:db84ce7c9f24350e15ba4d9eaea72aa75e4f0d8760933bc7eee6152d8b22136f"
  ]),
  ("name-candidate:5c5dbd9d29702ee9a8150d7ee169208a282b570579ae9b961ae5750e5fdd7633", [
      "name-candidate:50b987a524b2c086dc4653a609a2bb2271f91f0105a24b128e336f04eb84983a",
      "name-candidate:5c5dbd9d29702ee9a8150d7ee169208a282b570579ae9b961ae5750e5fdd7633",
      "name-candidate:ba6b2178db6b9fb6e5b2f5336594732cdf9bf42e536268f2a9037638f1735629",
      "name-candidate:db80fee25745574c1fafa6961ecf295d913b8c25a614eb371c5850126519d38a"
  ]),
  ("name-candidate:1079f2c7b1fbd2ced932b481d7780c0d21f18f537cc7ecd0af89f49cc3c4af86", [
      "name-candidate:1079f2c7b1fbd2ced932b481d7780c0d21f18f537cc7ecd0af89f49cc3c4af86",
      "name-candidate:1d2728464ca390c0f5ae55dc8efddb42c0284ba249364835f6f7b5d09c8a673a",
      "name-candidate:2d7c2ce384036b2f4daf5755d872261c0454c610c98fb2f9755719af8acedb9a",
      "name-candidate:5df9d5a037c553dda477905dd606a36c88f2e0f1166e412d90d00fd67899cf51"
  ]),
  ("name-candidate:15dc9319dba0fb1c84b2e18980d8f95f2804b93126d0fc92f78d045ce1b9d93d", [
      "name-candidate:15dc9319dba0fb1c84b2e18980d8f95f2804b93126d0fc92f78d045ce1b9d93d",
      "name-candidate:4ff7576d305e44e68b95795ccaed5a816a942bc3ed893e285960583f2a0b452c",
      "name-candidate:7789e51b9b684ef337933d97686fc9f1e5e1a2ef3e573eee5d7d8f21f7b142ec",
      "name-candidate:8f4f554a15743e093f19968e4306dca1837cdefa93cd6c026f1c33716a7586b8"
  ]),
  ("name-candidate:e9e9abc265b17c61f55a01f5604e68cdcbb491109d3f975d2c83b7860e17e322", [
      "name-candidate:1f7102532f54ab06f930a06fca70227ab638eff2c60c702cbd17510401816c99",
      "name-candidate:2bcc744a8fa498da1870a4f33b5f89ecd381a501468c8fc06d64f1e4861bf8bf",
      "name-candidate:6a54f118a02d163df3669cf4922f69b8882065ce427159013c3ae11d5451212d",
      "name-candidate:e9e9abc265b17c61f55a01f5604e68cdcbb491109d3f975d2c83b7860e17e322"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L51472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
