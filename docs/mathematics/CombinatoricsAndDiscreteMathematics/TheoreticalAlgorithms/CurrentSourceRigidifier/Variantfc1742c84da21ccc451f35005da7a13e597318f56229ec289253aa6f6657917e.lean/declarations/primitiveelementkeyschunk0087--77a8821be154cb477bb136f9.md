# primitiveElementKeysChunk0087

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:588849c1d561284b089dc8167c02f4077834cddb8d90a74c45d4641378d0aa77",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0087",
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
  "slug": "primitiveelementkeyschunk0087--77a8821be154cb477bb136f9",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6008,
    "line": 5941,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77a8821be154cb477bb136f9965a16b9b5bfc36d9306497273a8b54ac051fcd3",
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

Occurrence: `declaration:588849c1d561284b089dc8167c02f4077834cddb8d90a74c45d4641378d0aa77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5941–6008.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0087 : List String :=
[
  "source-element:cba8032c7bc0d4b80c680603e75b87ff3e9d978d67b3baf27d5343cd7f295ea2",
  "source-element:cc1b3e173b435f600d889462646888f735bf3b2849cc11d16a4642d85db39392",
  "source-element:cc215338274f59ebfabdc084b8d454c881befa96664c4b8048082db1e287790d",
  "source-element:cc64660a3d994329ebe001ae8584983015113b27baeb0b4ba4b81d664bddd0fa",
  "source-element:cc678b5606502f86e6e62a90f94a5c94644d9cb07be9dc4a03cd9a7e0fa032d1",
  "source-element:cc7f56e692523417455681ed7ebdb3bdfbe0fd1faaffc5bbe12a9ebc0dd20b3e",
  "source-element:ccb08c046e6a4d2eeacdc1e498f2957d21666c771ba9f6a533c032de40048c3e",
  "source-element:ccb2e406999aa6e471d5cb109391bbf7f3001c2346c7c5de0f00d69dec7b435f",
  "source-element:ccc5c99fb7e59009be045b65bcbdf93cea2eebe83cd4d33057ce090929359200",
  "source-element:cce076291b880b2f8c320ed709b053435a7b538ece02e8e4be5ef637a1ffa5ca",
  "source-element:cce62d7d33faa30ecddf4aa048e6e5b668cc2f6b66238f069ef3c152cecbd195",
  "source-element:cce870e551e595b64b120bcab82f6a12f3da505cc756de379463c358868852ae",
  "source-element:cd218ac9015fedd98a314e2be4652e3e85bf24968f1d792713dde58724913be9",
  "source-element:cd29964cdc1b6f5689ccb795c0b785546e00209e483f042af66f0bf283c78d93",
  "source-element:cd362959a73d71162560b4362e851e2152b13cb0d6baec0478e91a94e0b655eb",
  "source-element:cd8a128e1984e45f4c7cf5a25555f757f8085224ed7c9a3d9dd4b0e218433827",
  "source-element:cdac491ea04d5723ca81beea05d750a326394bace1ea497b0c9d0e4dcdb3578a",
  "source-element:cdbe44eff0d6d65d25b59a7a27c61a6544176c131924dd8b4fd8a4d358190dd9",
  "source-element:cdc59f61d8dfe7def5bc5fe6cb705a9b25206109461de042e89114251b81cf2f",
  "source-element:ce0d3a88f61990a46fad97b88608d06e1b3bbd168f97352bb9c7bbfbd815a1f8",
  "source-element:ce11758e38716b8cf461a28f16848c2e89decb1480c16efaec1921cf94bfebce",
  "source-element:cec63cbef4f2a86bc4c4a6cdf78ef6ba842b5513ee04564ddd91a221d513e2ed",
  "source-element:ced399986c02c6ad2e3f3793ed40c3372499e001ceb51ab8fdf6837f942ab33f",
  "source-element:cf169b328d3d7216c2750ce24b23aa1021b8accf56ce345f0bce83ebe743e59f",
  "source-element:cf37d07f261d95ad47e3453f52f373600f15ad13e5c355f417ace8e83e72bb3a",
  "source-element:cf7bcf4dccaf1eb73b14e0a7e288c0b1e692beec2da57e19d6a7a372a9391902",
  "source-element:cf8aa13ebd286a2dca60055e46249a076072fdaa6c97ccc0ea2b7fada1cc2b16",
  "source-element:cfac4c010380a800a1b7c250e1cb3cdd41681f5bdc798abda8f0b611eb40c0ea",
  "source-element:cfcf0321ae518148e1d75518b18b1a97cb56eadb09a862216d032842a74070a8",
  "source-element:d00794c90b1084af012bc3d0a0591da234e768e1618fdb939322155383a0ec19",
  "source-element:d08e0b3094807a3a8567100c07949c38f73203e7c7d1bad2a852be01627e9ae4",
  "source-element:d0e14fdb9b63a6c3dad8cbd8974eb88cb379f72b0d20414f6c3caabb8346498c",
  "source-element:d102f5761fa580113fad4db40c98ddb256d0e108f01cc526bc6f6e80af33c062",
  "source-element:d128fd8e65fd722c440d0eae34c7ba11ce18b6a7f3703178737b30034afd7115",
  "source-element:d14a054780f5b0c17ce1fdf112e726f225d1b92d54019237bfe0221f4f527a54",
  "source-element:d18645691841ff034067c7e40991f7f5d84a7c1ebe94cab25eb2ce48c6c30d1b",
  "source-element:d18de5fc004f85596e8134e1a8e29aa139f0002d2183c7826b1922b5ad8ebf37",
  "source-element:d1b5c59d88974a8f50c4308c806868a75613f74e1e24b746cc22a06083b285d0",
  "source-element:d1c742d1f91b1f0ed45872dcc621f4dae81d9f968eb5dbfe684b5a3f88992bc0",
  "source-element:d1d2479a9072413f47ec98d0514d86c4051a69f9ac0dbdf5987c2aee128d120f",
  "source-element:d20da1c2123e76524a148e3b2cf4ab7b400cbe159875576079a46eb29b4b2927",
  "source-element:d211baa9eb4e899c60045d086cab5816a6ed5fc60f5380a3ece80561e860e527",
  "source-element:d2202601e30780fc46a5af09da2f54bd798fbd558aebe99bdb35ee5a64f9b1ff",
  "source-element:d225486b70d89a96550f6fdb47a543f7f0bf64b7c45ecfa3fd9bf9cff44505b7",
  "source-element:d2530d8ab20519fee1bafe3cfb55684f39329ffa49ee9a5b88dd24cefff546e7",
  "source-element:d2609dbb967347ee3d3e7759e77b14dec5eb89fe0dd30d89bc665c5b896048ef",
  "source-element:d262793a634b3ec1cb861286705537e6490ab8e779c669a083d32931755a2e21",
  "source-element:d2e4097b6325b9ba6542ad9b233c95fa43e0e2d2f65782853569528096c46e53",
  "source-element:d312d00c17585db87b03f51cd0fa1636ea8161cbf1e0ae08902daf77902b0827",
  "source-element:d43f208a234e5aacb5ad2310cb908c3484535e573076f80b82e4fce6ff60edae",
  "source-element:d449506b80dc4719c459943edddb658f326557b00e457964b14d584fc6a5eb8a",
  "source-element:d4542462409029373a1ab5e733095faadde0efd8a90b17add232facf7bbcc298",
  "source-element:d46848fa47c0428b52778dc564b6a0f039179daf0e2ddc4702cc3bcfd699c8cc",
  "source-element:d4a2af260fdf228a34a925116111fc6cf789ed8bb8d6e99edb8344f4e250c3b0",
  "source-element:d4bc97634e0160e7f32c5a0c9d01129baba0c909f4c68d559816cb65cd13f241",
  "source-element:d5682837c5b532ae430d279608107913ae5348331ec34e373a9f04e050ab0f2a",
  "source-element:d5a7dc10f3c5e7cfc5e6278dbf5dcff5ad5bc626903b604070d672749e52bf58",
  "source-element:d5d50389839bdde1654f3a58bf9af6a283165b4a5f89e8c25ad6fb8d6d2cd6d5",
  "source-element:d5e556d6cc21b3c965f5912e971d15bd3bc85d0f498ac67d3a2ea5d5b2bfbbfe",
  "source-element:d5e7e9c251a89aced0501b1a314548f68b7601421bdf98a65e4b9c082112f158",
  "source-element:d5eb84538c101b67738b6013dfe7011c06b7041ffb191206dd2710675194df73",
  "source-element:d5f40171238ad61d493e24412a7acf33d1f404688ddd910913ceb0c59798d058",
  "source-element:d65e92d2c755b99990f48464e1d6c6eacd47e81fa9b7bef8005d041d4d3ffad3",
  "source-element:d672dfa9be4bc16acfc9bcb6f40cdd96e80a6f25a1952a93b80542271362ae07"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L5941).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
