# neighborhoodCandidateIdsChunk0001

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b47d757229578e69db758374c422a647e2fee6a0a42002818bb63c0a6bbdf4c",
  "kind": "def",
  "lexical_name": "neighborhoodCandidateIdsChunk0001",
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
  "slug": "neighborhoodcandidateidschunk0001--8a3488293ed29a8ff00ce470",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113745,
    "line": 113678,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a3488293ed29a8ff00ce470063df7c9cae221052ced5d42d7ce8543694e3b3f",
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

Occurrence: `declaration:6b47d757229578e69db758374c422a647e2fee6a0a42002818bb63c0a6bbdf4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113678–113745.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodCandidateIdsChunk0001 : List String :=
[
  "neighborhood-name-candidate:c8374cbba75a2e8ad4859ac79f40b12f1c8b9584bb36dd1ea3707230cf90435a",
  "neighborhood-name-candidate:c406f80fa90224197d4534db886fc5026e41a9e03851fbdda1c2210adf115c0f",
  "neighborhood-name-candidate:1490932aa9c08dffd2353b4fa2fca85dce6782afb5a45cae9ea347358a35c357",
  "neighborhood-name-candidate:cc1bf1493d0d9cdbadddd67a8c9b9dc586b6fca6aa2541ac69d722309d61444a",
  "neighborhood-name-candidate:e8900db11adb59d0a75fa8109f35032b1a2bd9295aa18322faa3f946a4490649",
  "neighborhood-name-candidate:c071b57bf5d4e536212e9ac8c4b6de19751ef780842cc603174fda474a9336d8",
  "neighborhood-name-candidate:be93013315cd2914adaab82f3d1a9c81e0c32dc55d7d6199aa9cd717c7f1169e",
  "neighborhood-name-candidate:12bc6dc33ac5aebf11dfc9ee18343a57dbb24b91e39c3dc265442a0c19565636",
  "neighborhood-name-candidate:d443bad48c4e09cd562094acc26a51d62897008d70ef9fcab4b203b12afc8798",
  "neighborhood-name-candidate:e753b7585fedc24cb67f1ec31e86316dbe6d714151fd0355bcb92c3d4ac7b1b1",
  "neighborhood-name-candidate:3baf031ab057bf7139128a1d0978b6b7dfbb5f8cec984abad2917ac4ac8c2b78",
  "neighborhood-name-candidate:b025c66b264935d09581bb9a4936e01c0e782785084d58f2ad4a2186da444245",
  "neighborhood-name-candidate:4a7b2bb3556c755d06a0135bc7fc3202a75249edd0c2891f9de06feb668b2fa4",
  "neighborhood-name-candidate:f8a6a2427bb29b87e6df7b6ac1f7af25ad26d40d4a1f81a8fdedfe04ab161f7a",
  "neighborhood-name-candidate:2a593ddb74ebd39efa3a47464c756b6494e424c1736b2a8b5675c5876d49e9e5",
  "neighborhood-name-candidate:bf58af1b0d013c0591a9349221f8ab03e9dbae91232cc94d6b0d7190487afe5e",
  "neighborhood-name-candidate:771eaede89834d8c22dde9ff62bc0a91efe32702e9fc549044f7a1ec3e8e91b4",
  "neighborhood-name-candidate:c9af94864445890f6c345b610d26480d1b8003db7b0d15f50c4dc2d579d19e4f",
  "neighborhood-name-candidate:43cc39dccae2e58c68a14f4945f858662bce83739ee7bcea1d0e682940b1109d",
  "neighborhood-name-candidate:c409ed4c0d8d4b97eb7ef658050ee409292030d507988839eec2e18b3be7b5a3",
  "neighborhood-name-candidate:6cfe65067c71e31a661b0113423085af797bcb1a15785e58191663a316052e43",
  "neighborhood-name-candidate:f4fc0abc9fbf8861d6864bb309f7358dc2b551df7f5e7ab9720b827b7c87a1bd",
  "neighborhood-name-candidate:93d50784c79799cb4b722b70cb08df7b4a230238a04b8d5862a9803e0053065b",
  "neighborhood-name-candidate:b149bd43c56640f752ef27d195c8b1bc21a6e90316a67dbf42f35048e53d8aa9",
  "neighborhood-name-candidate:c189ae20b5c137c15f008d471f4a119b77363079ec4acc354849bbbe3da47f1c",
  "neighborhood-name-candidate:92e28b6f556abe76cb8bd1f04bcb96dc2c97de150bf94e3807af76e03279694b",
  "neighborhood-name-candidate:65db5e8c4297326a31c10d0e12e3cc1dff4f7d0977a33a2741b92919fe7d8c07",
  "neighborhood-name-candidate:41b1066b155a433a176e2be29ab4f7909f93b2d7a47aaa9acd23d5b052bfa91d",
  "neighborhood-name-candidate:189a13ea1ee13e965c86f9251f20eca5418a5eaeb33f04adec41e7f00b17a2e8",
  "neighborhood-name-candidate:18269366055ec48d7d53c428ce4235b99236d0eb558c0e14f2319293b1b36471",
  "neighborhood-name-candidate:bca8af5315f87d606fdaf3dc488d1f097dddff4977ee265838c21038a9ac1a3c",
  "neighborhood-name-candidate:c4a84bc0ed77a11c50ba0fb97f8e5c371574dec448d91b20a249d54c1cf71742",
  "neighborhood-name-candidate:5f47620a3c812304b419bc869400988b01e58b670369d83bab018d430a2efec1",
  "neighborhood-name-candidate:e93d173f3607decaa8c3fb0a2d102d3dbc8563c87865dc493aef355e6bf6da62",
  "neighborhood-name-candidate:6db9d118035adabaaa9bbdd1d723d5709fd33df0d9180b4879b6a1af34d097e5",
  "neighborhood-name-candidate:8072e501281a2956d6832a63ae8a4167e8b1127d3e6f26c72f692ab3584ec3fa",
  "neighborhood-name-candidate:b6a65fdb9e4af7546db0a3ae66423179d7f53d083e7567a1904c5d059c58227d",
  "neighborhood-name-candidate:659dea20f29e9c8b6fcdb53442d70c8d79283ce1d1d47134a0dacdb953cfe72f",
  "neighborhood-name-candidate:0242a212202c62d390c7de53ad51f5afe4cd69dba266bbffb5f3dffe5cf9d68a",
  "neighborhood-name-candidate:ce198ae1d2ad396ec3ecafaab26de0ed5210e1e271ac0114c3c6e7a8a20b685f",
  "neighborhood-name-candidate:d0fffd3c1b07c5adceefdab26b93fe0ec83b4c3ec2164a29cedb9412d146c02e",
  "neighborhood-name-candidate:26de4f5d131b9426d24e3eb6682ce85d372b28ce3853579e4b4564a94d7aa63c",
  "neighborhood-name-candidate:7a86bd791ce185d400384fc50ee65d86ba80fad5d7d6f634632865a5fcbcbb83",
  "neighborhood-name-candidate:7867e2c13cbd17d81f6121fc77359265f7e2b9604f3a0b2a346fa094fbd3f0ac",
  "neighborhood-name-candidate:5b71cd6d432a34679d0f6d4d393cfb974b067fa86464f873b6c9bb4585435129",
  "neighborhood-name-candidate:c4536e2dfb23f6cc13b29a552c8ecca8d0afb2dedf44e7671cb2ff4a53101792",
  "neighborhood-name-candidate:0e3631a78c9a24f3d4c15865ffa8fae010a3c0fe75d6558fe7760406cb3c62fd",
  "neighborhood-name-candidate:728696202154c47eb764c57fcba768b07f77d6fb18b8960dcd4001d048775b89",
  "neighborhood-name-candidate:3100f6ec7a2e98e505bb6808228a8b9f1810aea63d25b19c81c6e09bed60960b",
  "neighborhood-name-candidate:ed8c9d2cf4b155eba913e414ffa64bf655d9246243f96cdbbdd67b0eb9fbe29b",
  "neighborhood-name-candidate:5e1ff8290a927d000b49d9c53da2dc59a55d3d24f5578634027ba43ec263f951",
  "neighborhood-name-candidate:a088241c40c4861727faac468e73c52e2a5cd7c95abdbe89491c3aeef4068bd0",
  "neighborhood-name-candidate:be93ac4519945a354cdd4e1d5b3602ae73cb9d59f1e3613a602a1a34d7b254fd",
  "neighborhood-name-candidate:635ef65f095389a1fb10e48519b4870913c31e96a3079c8a609ab941608f87f7",
  "neighborhood-name-candidate:7e73542f1464ce767b4dfb8dc9db3b53fd0681afc8d43d539539f26ba9595942",
  "neighborhood-name-candidate:0fc04b05a3d025290607b19d0b779cf59ae504b26d3dfa087e17e8251c56e10e",
  "neighborhood-name-candidate:eec01d62806a59557ae15c3c6e672eff05bfae4cdea1ce0816c8af464df5aced",
  "neighborhood-name-candidate:1e4ddfdda0d302ebf6c692564915c159337dae9144af88fff2e8708fd521d750",
  "neighborhood-name-candidate:e246165517a80d6192f0d19342368609a1935d33e11f2f72fff0055cb55ecf4a",
  "neighborhood-name-candidate:3b710aa9a1a054810736c21dcbc1959841711a66088b02f1f2fd45e46e08cdc1",
  "neighborhood-name-candidate:b198d40a0508f460b3a1319f3bc489c1ab2822b3fee7faf9d508bcb3156db21d",
  "neighborhood-name-candidate:b1bbb034b13d6b41e5651e86f1c42f7a6887385f59bfeb0d35979d161fc94abe",
  "neighborhood-name-candidate:c070ce95d66a84fd3ab28d950ab170ad89304060cacfc962be91a006171eefef",
  "neighborhood-name-candidate:ea52985bd2ac9293b6859d4263f515c091929519f99d1542a4d46ef0f82936d3"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L113678).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
