# primitiveElementKeysChunk0070

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bab68dcdb4211650ca6fe0ead7f20b329ff5e5d4f0996601463f8418b1f15108",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0070",
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
  "slug": "primitiveelementkeyschunk0070--0885f3c753bfecf989d7a067",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4862,
    "line": 4795,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0885f3c753bfecf989d7a06729a4ec966be5579418b96868770cf5e603608a6b",
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

Occurrence: `declaration:bab68dcdb4211650ca6fe0ead7f20b329ff5e5d4f0996601463f8418b1f15108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4795–4862.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0070 : List String :=
[
  "source-command:f75e03fdf0bea3e05bffc50f42b958b3c4de5cd58e0ea436963decc8a36bb8c8",
  "source-command:f82f99983da50ca55f63c49af05880072f28b4a2a83907b9446c6ea75e0e7dca",
  "source-command:f83d3070136639364e587ce5f6ee6344acdf1cbd4a573cd70fa3be148a8cf738",
  "source-command:f85f8f51863af349d811bbce6df365950cf4c6463b39283b9cd39a9651f99b23",
  "source-command:f8c0df738fc1ee07fb20ad4f5927e28e990939315f0ee3c440dd1e2897004331",
  "source-command:f8d7bd957ca105b680ed12983566d8b27dafdccbb0e79a9db01e98baf487b18c",
  "source-command:f8f952866420f1f2a6ab2758287c5682c44b0194a7d2a5013a6b1f4630845c71",
  "source-command:f956ad714f570f830da79b70a2b08894cc24e0abdd1dd60831b23f177ab058c2",
  "source-command:f9734d8f1de9acc5201ced1e20979af6cb741e3dabcc8e58bbef3d37f728f3fd",
  "source-command:f9963cb2490ef41fb3e0a190fe9123fc5a2e401274fc5ee261630a4964dc2942",
  "source-command:f9a370f262c7664ae62e1c403c74beae2670adf83cc1c46101c81f8619b3e58b",
  "source-command:f9d594dbb3bea5ded060a53831938d00ef7df4dd12e1e0283b0b2bb61d419f2e",
  "source-command:f9e8d08d55fafc37006f76aeb55ac9724dd43eb5022c65d60a7637b719a9c211",
  "source-command:fa1342c05b2bc3767bb6388cf445bd523d1961cec0dd7f7973e71770949eae19",
  "source-command:fa15f13a0245a19ef5e2f066a87ed88dd3dbdf9e3fbaafcef15e2a87fa3bef2b",
  "source-command:fa4068abbe4c1eca78fd62969e7cd4fcce0082a74960b07b859f0e9c1c265b6b",
  "source-command:fa4c909749700a519eb7c90dc24c1d1fa4ff4861c005dd549e134326650dd3ea",
  "source-command:faaf8088583595ca85db70cc5fc791a0f3e7fc7c20e50f2c2afb76f7e3408ae8",
  "source-command:face37b626a164b5f1dc75181d8359de93f530f6976cc3c934d56a7c9f8e4a2d",
  "source-command:fad4d2214ef1b79b7d4d7c05503fe974ba07eef5dd90f29cf74873d3b70ee254",
  "source-command:faeb06d402a3b5fc9eeb9258b4953379a87f89042979b126d927e7879c57949b",
  "source-command:faed415856397777fc86360de7d7b081b9c4a711df66f1bddd2b47f554591089",
  "source-command:fb334982e279a71878b5b7e51788dab2bd9f89773c9cd2828afaa09d67c4e9c8",
  "source-command:fb340cb9b7b16e416adf33522d5f9524e38fab5a7ef939474b15bf065bd51efa",
  "source-command:fb502eb45e681bea2b191412832a8fd472e4acaccfbc5328578d01287d59d708",
  "source-command:fba0ac455b4ae837698ce84f4b58ebc68be37a988decde418a48a63efa594272",
  "source-command:fbb1acfa5c607ee81d91adb15708a7df32f44acf35bea97b64d92b567653330f",
  "source-command:fbca8782f8d029d475f6842406ecb80c36b7a92b7c00e570782abe473bc66e46",
  "source-command:fbe19c08b49c879cc8084904d2fa558707ace35a9a8e4275137a3070598b87aa",
  "source-command:fbe69d6dd3c3dbc08961f2c21c4a4ce5158746cf32fb29a1d3f464d7fdd348aa",
  "source-command:fbef7d15357c26fe6d947f5a84a627287ef30369b72f503d49ad6bdd9871d9e4",
  "source-command:fbfe25b586a257ce4178dcfdd4ae64da336fcdd940869daa6592c882677d1944",
  "source-command:fbfef9074aac2404f698deeddc77aa4a6e926c2c7c396d6ba5f7fc448a7e1a74",
  "source-command:fc609a151d2f94e3c21b2daee6210beb7737b88311db4369164d52b6cc4eb59c",
  "source-command:fc89ca92ce1aaf1e3272b3288d265dba65aa363d142815efaaaa0226a6b8f23b",
  "source-command:fcdfe2dc979f477ebc12795bbc0e0327aadb9c4d9a4bea3198afc3a07097a508",
  "source-command:fd83a72ad7c821c7595db18caf803dd7dd43f0cd6d4be17ed4878131b73b4764",
  "source-command:fdd4a63159f30a236a1129d89ecbe56f13e69d14a5a9763c965483fdb294826c",
  "source-command:fe5d59d71a5345182778ab87b676308cec8cd7b13fb39844559e2071776a186d",
  "source-command:fea5e071722d1339c4606ea43aab186893f3aba6e4738f00c614d13de18ae2cd",
  "source-command:fed8fc2352cd9723a7f9c17ed4d6556b1b457e242478bbf588bdfeba96e744b5",
  "source-command:fef26f7118ca3e6440b78a821dae72cf1b5c712d03b3d4457a0ed2f94677129f",
  "source-command:ff1e14ccbef7e0e0722de68de4a366c7f9c83e195233e058c30f1a812b6f133a",
  "source-command:ff4873f8470822693e08faee6cbd14c6a7f77195da92ed078a5a5422055bc29d",
  "source-command:ff4dd2962468d50cccda0c56b9e644e4d48651883edb820e04d2d0d2f7c5735e",
  "source-command:ff86be23a9621257d55037d65b7b0b3ddade886beb9605afbf6ba49c5af480f1",
  "source-command:ffdb63c3dd629670a37500463788974f217bc61411455814aadda16b88a0ce4e",
  "source-element:0007d991f8ef203c7e86d96e925acc1c2c2961fdcebc53db6c4257205998ca7d",
  "source-element:0054b12a6ad9423b676a86a48fe39d0bff5e90b7069da33da2a9df606a52bc51",
  "source-element:005e3e4ff316ce5ffcb13b2a636a9a43921bc168f65f7539140bae5835736627",
  "source-element:006be8ba8da045a2c384627bcdccfc0608c2332b107ef0acb2225b16b1515060",
  "source-element:00a64ac1ed69296a41680ac8359803142af003328b3869d73a81dbefaa792a33",
  "source-element:00b8f64ab1656e591ddfebdc99eb001c984ca5a3bdc06ed2e6fa5307b053cca9",
  "source-element:016f0a7b2bf45fd76f84e5e78edce6260d67a7f40fb74dbacd989b236c6d4557",
  "source-element:01a857518101ac5b4c491655bf23ee0bcb9d7ffcfe0744c0080d17a5532f266f",
  "source-element:01ebce45d42f53b2f10ce40cdaa06c2f877497c47fc0045ae52a302c8d781be4",
  "source-element:021487b9f858cf84c746e841d372a6c87c7640dee2189d25703264715728138c",
  "source-element:0227891a5ec8537a28fd01940c9ff3580139563499d7c70405a7ec06e6ab6888",
  "source-element:0242e0c7688730ac545899b71dab6e8fd0b74985683831a0efe611e3c187dd42",
  "source-element:02579b0089cdfd30b0b9e52390c2e7c6352b6521bd40d88dac81967d8aa57467",
  "source-element:027856b30901a0942129ff1858a0a5313dacd1577e8cbe556d6e506e983dcbcb",
  "source-element:027bbdafaada41c16350f640c0ded4f54df1e5cb0460290591288fe084fdbc81",
  "source-element:02ad0698fc894b2d6a2b3ea938c72ca85ab5984dedca7daae8076e84a5eec792",
  "source-element:02b4fd073ae35989357365628de2523d728d8c6ffcd40a3a51cc9db8e3316f99"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L4795).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
