# selectedCandidateIdsChunk0022

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3052654279bc258c525fabdb3277aad5c8f2eee8cead396dfeaee6a3de1d67aa",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0022",
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
  "slug": "selectedcandidateidschunk0022--8316809a2bfcc5a1d2f94dfe",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41368,
    "line": 41301,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8316809a2bfcc5a1d2f94dfed2bb7de222da9b1d13efde76c1928accd7e37b4f",
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

Occurrence: `declaration:3052654279bc258c525fabdb3277aad5c8f2eee8cead396dfeaee6a3de1d67aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41301–41368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0022 : List String :=
[
  "name-candidate:58924b448fe895eba209015fa382be82d1943ef6633d88f74c70dc3ef4545a70",
  "name-candidate:0d702700dc47a3053c3064c7d1e49f556204ab88bb2540fd2869f7217907ea0f",
  "name-candidate:4d9845b99666711b28d159ca2ee3156799493d8945247acbcbd0b072734c78d5",
  "name-candidate:0fe11a1312dfc60ca4871c627539144d0a224ae0579b8607e002d469c7921042",
  "name-candidate:0c33436ed722fbc70dd94255ab8ddf1786ccabb3acdf47f5d9078053ca7517d8",
  "name-candidate:3d1b87aa3ce913ee3ad6d08a3a5c4c8ff72ee1e47d3f9bb822d6b983d5d99ece",
  "name-candidate:c416a0c448a33558f273547c7cabb8ccb7f560a305f8872be7c8f0bdccfd499a",
  "name-candidate:9e31633da8ba409266ad0f0e9f93d96b720784f866a1c72391a8b4dc2b842cc6",
  "name-candidate:2e2d8fa2524fb8cbb127c4709917ce21300a789eaeb13ca4424026c50e2cbd3b",
  "name-candidate:2fb9a3d45495422763f638ca5f2c42ac78d7334eb469cb43955b0790c40d8a0a",
  "name-candidate:8a9ed0a99becbfd540c89d85525cc085a0377cb838eb9322c07260e8e4cc3d88",
  "name-candidate:c184eb576bce70480d23d6b4bf1beb782d71bd222140170b9c765e0cb9af0add",
  "name-candidate:9b2edfb7db4487ac2cd45d851a2f720edfc081b50d4fed6163da98f92b674ce2",
  "name-candidate:f5a6fa40cfa7859aebc85d58c492cd8f9bbcba1fcf5e51d51968520de79759e7",
  "name-candidate:f10f53ee07b41009d4a471762bf19f3a92c52ad129f0149fdf7abec6637758b4",
  "name-candidate:cf344d714225c9fdcd18177f33cabdebf651381e7d2aabb3a7b3cb0f02a07582",
  "name-candidate:32333d6df3bd875395c189527d5d28d29b92491719a75f533223d15a966ed3b4",
  "name-candidate:c277b90b0b944be30ddad033cd9e242fd62d0191e86e93b2f6b499b61ed520b2",
  "name-candidate:53f2feafcda65dc74ac4a76c8efe9636eb5dbe71913c56397f716c59f0ef60e7",
  "name-candidate:65394e5447eb504cc2e4d5227353cf763c3040fe953db3434187dede3ee92c6d",
  "name-candidate:213d23231ce2a4a81e4c25d11512224ae0942c337a292c2260d2101c593d6209",
  "name-candidate:6d78b31d3a66ff7cd7815e022e44d9c70cf7f905ac1c6994c7356f957b3bc999",
  "name-candidate:54d5b319ee0fa45dbcce0ce267b9a977892f385113d7c388ada0d10e973fd529",
  "name-candidate:82bd3481052facd003215610bf4c70f683b9d644a9f7360a259aa7c241846f80",
  "name-candidate:e011cadb3af715428024f26452e077ec3252ed7b4c8f54659c860809e1db4ec2",
  "name-candidate:186c35e91d2a5e462a862dfdbcc3a1643009d6bd8980495ec19720e31df4f91f",
  "name-candidate:07d9d6ca39ec8115b766a41b894a3ab4d4ce732f49be76caa6b67dbb019d4e26",
  "name-candidate:6f633dbf45ec5895f4157e6b72972cb97f33f618e6234827eff5b866188ae7f4",
  "name-candidate:e73104d2112e72d2ade6c1f67167fbf7ccbc4e2a2c100412efd70b85b2ef4c07",
  "name-candidate:ee09c7e59b4fd5ff042eb098bb04c168f1a0bbe6b45a82f5f30986290fb6acf4",
  "name-candidate:daf508ef092339df277da75d2aaa2ebe04a206bea0a6e044d23b8d7597ca7203",
  "name-candidate:b32328f5ae81f0c583fa12a2ae3a514d8e8c126a1f791c2af6728ddf9e4f46ae",
  "name-candidate:ed0cef3635e3192b51d31939c78fa5d4ba16d9ceadef7b8b141f863266e63967",
  "name-candidate:a98d6a85f163485e2da10c55353eb9498cd77551d42c0d04451dfffe2c13bf78",
  "name-candidate:584ac893c9f93c20205f5d2192e1ca96892c602fea4db53ddd9f2678365bd3ca",
  "name-candidate:c04cc0a7a57ba7c96be2fcac8fe972b9f2fd5cd6ea2de8ac10d672e56cf33eb4",
  "name-candidate:c46922eb13d0b6ab33756ad8d561c7d00ddba08c0270d888144a70ed5b570704",
  "name-candidate:2b18a47855b446153c7518a007411b58ad92606031475a92d23cd389b9e45efc",
  "name-candidate:c6132126383842b138ec2cc08f1f91d8e27038dd07889189068b1dae406744ac",
  "name-candidate:9abb4788cc24d390c0aabc66d123055d8210e5ee07fdfdedac93823243d5974a",
  "name-candidate:608cffeebb0ed7c652b3959305dee146c17879ad50742f973e07d52f2c1e8e69",
  "name-candidate:9f04f404e7e21b09924c84e71a52d22db148ebf81a2e08e62c889ff778358a3f",
  "name-candidate:2573cb354148a26eaceb1bfd57c28902f4eb535d33d9ecfb614146c837db8461",
  "name-candidate:0594d2118994a2b8321c1510c7399d3aca78fc8f7fb036cb50bbbddc4497417b",
  "name-candidate:08c1e237879215fe07224a5e2b327bb4707015486346dc631708a570944560c8",
  "name-candidate:1cecf034d4bcf88f89912f9f20cb853441351cb4a86e78bd22473bad7a7a5764",
  "name-candidate:618f2adaa38516c22a868751c6db0c9f924d33fe9f9780843f3d4167ef11e918",
  "name-candidate:975622d218ff2dce69f44504d4f725c2d87f73f59771cc6de65ec3d13b6bfe1a",
  "name-candidate:fb1b7b5a9bf9b31b13be507da3703bc6e07da26e77df77f28317b9fb47b79c4d",
  "name-candidate:dbd6833300e7424c7619594b1aa60d05f2ef638373f1f5e6fd3ed7f733360b4d",
  "name-candidate:ae2301be43c0f12d6efb1f04c5e4a877ce176bf3bbaf448c0f25cf50138424e8",
  "name-candidate:6599fa935b90fcd9261b5762a8885627a3636af2c189714f847d342881246d70",
  "name-candidate:b1bcdbe591ee69f50316c56a994f24fa4f9174e56570306554e4ebcb80c7ea6d",
  "name-candidate:3b225d54988f3cc60033ff4e2a763e2204869857fc6d3cb533fb087e8e426bfd",
  "name-candidate:c45841fa36944c5ba08c5b9f47709fe0d50d2e1c668cc175091daaa6ae6f24b5",
  "name-candidate:09af72f27dfdd2cdb671fa35d7510c860d9df4ddea3c8cc7991244e559e8cfcf",
  "name-candidate:0d1040e01bb16fd94054297b3c908ccb2166f65faec1ae4a8d23d922939629b1",
  "name-candidate:5a6e06dcb521311e529216266100f95e5ef855addb4b42f7e653fe3a2afcb7b7",
  "name-candidate:69014051d208a42c7bf4ebb986c2450f877c64792690a4a46f0dd5fab22c0b27",
  "name-candidate:db84ce7c9f24350e15ba4d9eaea72aa75e4f0d8760933bc7eee6152d8b22136f",
  "name-candidate:5c5dbd9d29702ee9a8150d7ee169208a282b570579ae9b961ae5750e5fdd7633",
  "name-candidate:1079f2c7b1fbd2ced932b481d7780c0d21f18f537cc7ecd0af89f49cc3c4af86",
  "name-candidate:15dc9319dba0fb1c84b2e18980d8f95f2804b93126d0fc92f78d045ce1b9d93d",
  "name-candidate:e9e9abc265b17c61f55a01f5604e68cdcbb491109d3f975d2c83b7860e17e322"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L41301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
