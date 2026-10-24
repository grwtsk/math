# neighborhoodKeysChunk0007

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d10f8a70306a674882e85bcf0462ade5c5cd7c4c4399ec7784c1fc5dd763f4d6",
  "kind": "def",
  "lexical_name": "neighborhoodKeysChunk0007",
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
  "slug": "neighborhoodkeyschunk0007--1bc0f7f63907aa7e25f87a9f",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109367,
    "line": 109300,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bc0f7f63907aa7e25f87a9f9d8b10b1802c03adf74dc2981b46e50227e5c120",
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

Occurrence: `declaration:d10f8a70306a674882e85bcf0462ade5c5cd7c4c4399ec7784c1fc5dd763f4d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109300–109367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodKeysChunk0007 : List String :=
[
  "formal-neighborhood:39b454981f22f5dd7f835f64d70e5ea0785534c3ed651c0767d1a3d77f2e0cca",
  "formal-neighborhood:39b7d0165d06e63d2bcc3f07afe7a99421f71a2378f3b4250899db0cb8578094",
  "formal-neighborhood:39c282af98bfcb3f1f0a8f571e70a132bb3aeebfb5a057d8bbba9d93dce84fca",
  "formal-neighborhood:39e832f9e5cab48495984b105a0d46d00837672f5d070d52215a0418bd6d762e",
  "formal-neighborhood:39ff80205d6662801e2aa15dded83eaee3439a9065c09340a74207944cda58ca",
  "formal-neighborhood:3a14e8641eef74185b19965d798d642f6159b9824ccf9b3f45030683e36adfcb",
  "formal-neighborhood:3a1bfe998ce497556d9c8240dcac5270f9864d4f07fb561259096c62ced73305",
  "formal-neighborhood:3a29921f6da3bb03abd78203eaf7ee31d316f4b8e40b5317f290e9dc8e843a77",
  "formal-neighborhood:3a55453cc5aad5da9c04a4e7557225e245b057600a6d349cc39f9f90a34523b2",
  "formal-neighborhood:3a6af848f023f9dd886082e88d386db119355e31fa59154f6571c606ad7f8324",
  "formal-neighborhood:3a6e89789b3902863ab1be07bae2fdc3e9612937360590a6224a9a0adaf1d585",
  "formal-neighborhood:3a726502a1a825c43797df0ebd990f67539386d25046c81b62a5983aa58b3e40",
  "formal-neighborhood:3a799b275c75563f71f3853344df97be858496f7709b777e4144f1a007eba90b",
  "formal-neighborhood:3a845720b16168730fb02d6a8e34ced06565beb9a7813748f114906733cda931",
  "formal-neighborhood:3aa0eb82b7cbdcf62e3a1967eed0a9f8520be98f1f7594698be3571c4d9a1dbf",
  "formal-neighborhood:3ab72ff89153eea5cf02872467ad1df562239fcaf83e193ae7e6ccad4b45d29a",
  "formal-neighborhood:3ae66f33097fa057e03267c6496f97ddbaf572c3a8ffe5c3583c4b4b5d2149a0",
  "formal-neighborhood:3af1614e35707ad950b1f9a028b7711a5e142e4360fb9fe3ffea9c73d8fa9160",
  "formal-neighborhood:3b38628feeddebdeea7201c00c96aba95d16ac3cd1f8f924cde6467de102c70a",
  "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f",
  "formal-neighborhood:3b4a6f4884488db8cb1500a177fa6cdce6f226849d603f69ba33ddeebc3f1640",
  "formal-neighborhood:3b81f4cb89475bcca1226e0dcc890642a2a863c76637d11b6619407a25f44209",
  "formal-neighborhood:3b8858d26edec095da2a3b5a49f19f1b77b4104857811b72cdf07b0792295b80",
  "formal-neighborhood:3b8e08603e24c79e6bd52f01de857903548f8552af224db460850f72a3941b1c",
  "formal-neighborhood:3bb3249f397b098970d48d21f90fbdd8c2ebee06968a44798e44dd8f6e0a7658",
  "formal-neighborhood:3bf958f146e3af73263d34ca9e312f369dd1a0c92591260af565baa761532f7e",
  "formal-neighborhood:3c19f9527ede5c4f39737bfc03765fb66ca41880c2018ed2e83e12daf451b238",
  "formal-neighborhood:3c23f4437e63b80718e0730ce74095816194fdb153a90db191909ca62f42a380",
  "formal-neighborhood:3c5af6b9fc1c59d0dd243de45563ee7908e4d9a8b7b018771474bdf9e530d008",
  "formal-neighborhood:3c728a1ceb56159e9da54bed86b08be0e62a9f94032e471fc71ec0565b9947ba",
  "formal-neighborhood:3c72c2e2279816b09b86d01b5c8b2aba1b29fab4d1a2806afdf2f5aa019f72b6",
  "formal-neighborhood:3c73f7cda2b14940e602de83e3c2dc68f86f5649055271c194e01b3ec2e8801a",
  "formal-neighborhood:3c7d703e341bfd8794e3d584cb926d8a4c4e79256c76032b5720704a06affca8",
  "formal-neighborhood:3cc407331fad87d4acffb9807ded7a84a0a285fd351fadbd135c7fa741192aeb",
  "formal-neighborhood:3cc933d085ea5262408540ef0d13dd4f1f33adba38526051bd58efca033ae785",
  "formal-neighborhood:3d051c738bc1d8804c811ed50650d94b73bb21251dc41155ed790493fbc88bd7",
  "formal-neighborhood:3d1ce64c13be5d6111d545f9ef33f269b904255d88225b52496a45b8d24cb0c3",
  "formal-neighborhood:3d2665ce4fac2f56da07c12b66bb1f852e561e65cc049abfdbdbcfb381e58852",
  "formal-neighborhood:3d2c1d8d2b95b56940cd605627f1b4b4078136dc38ab4890fe584454b9c1bdb3",
  "formal-neighborhood:3d6e3832805c32b757a8404e77409b701f91f6a91778acb1fb0dc4f8231be104",
  "formal-neighborhood:3da2b5c53f637930e3ebc3e386ceea2c2c2e320aaa963de6d2c50a55ad81414c",
  "formal-neighborhood:3da9fbce44be2290b3ef96aa2788e18d58587e9e06d9b3c9be412d1cd2245c2c",
  "formal-neighborhood:3dccd1012b27c5a1992653317688ec22e0210c3993556042f6ad0ec2514f5462",
  "formal-neighborhood:3dcfe8422b4e378a4eb286d37ae10282519ff202de52c814b8a5ee6f3008bb4a",
  "formal-neighborhood:3ddafe68caac30373144adc91005153d44deffc4010a508f1be46d5c22ae76be",
  "formal-neighborhood:3deda6b38620147b55d1758d88ccdb3f38b18c455eb5bf05c2af62a660bfb86a",
  "formal-neighborhood:3e356d6ab79a364abfe2cdab458ea4dd72cd15273552673f8f60163c5e66c418",
  "formal-neighborhood:3e36830a84db36f270babf486c46bebaba1605f70bea88508c3cb8a9c8022dc9",
  "formal-neighborhood:3e755a884daa59453b5a3c160b3b288412e7c4cd60e1b7f9c2113e29b5383c4c",
  "formal-neighborhood:3e98062e43917ff5a716a0bca0f010f70228912fa0a46952c318ed54d3c68ba6",
  "formal-neighborhood:3ec464f7af6ec350eea04c588ef6b36931b437a8956b25665610bc4ad930eb4c",
  "formal-neighborhood:3f1f6ac36307834c1be8fe0c8c3ec7bf6f09e3b96b63db4dafb65a05aee29d88",
  "formal-neighborhood:3f39741487d4368ed53a2847d6df7ab0aa9342f159ef208f419030df630cb2e1",
  "formal-neighborhood:3f4fc8323e03ce1ba58692df15f133b810030b2128c1def92110f92e4fe5dd6b",
  "formal-neighborhood:3f50eab69681800b3d70d3b0b2c58808d7d01c969c1d69722e9056085a4dd500",
  "formal-neighborhood:3f6180bcab94a0c55c4901c5cdece20c666df86acd74f518bc3f8d6737a7c54b",
  "formal-neighborhood:3f6f224a1bc5d518f9fcfaa3ed8b9fb7be2fb5e3d5dc487233bb21a3a49e3992",
  "formal-neighborhood:3f97410b2aaabc75919df83b257a5ecc361df0441b56981ca39a7f155f1305a7",
  "formal-neighborhood:3fcc8885eee5fd12691c2c3afac94fec82ee4ef238d7284637c658f4888a416a",
  "formal-neighborhood:3fde1006b3adf7ca6d2d3665645a76b6221291d3d06bfdf8376d1109a4d3ad1b",
  "formal-neighborhood:3fe51d6b80797460e312540ec460585b17c88bc3a4e7d86a7593f5511b89a1f0",
  "formal-neighborhood:3ff3e134916d1921f75e5705e50f36c26664a770a30150ade96fb82245e9709a",
  "formal-neighborhood:4054b617b04af1cdc6f61ad3b4097be2e37d04322c3130cd145219eee8c0c337",
  "formal-neighborhood:406c65a4ce5faf5cce9580fb02c5c58ffbc0775526a539f9421ba8c41c778b7a"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L109300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
