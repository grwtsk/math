# primitiveElementKeysChunk0091

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1dd9554b12a96f391222e1f4ed84ced5fc4381b658bd5c1147c8929e4f8d754d",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0091",
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
  "slug": "primitiveelementkeyschunk0091--f70ed6a568c24835e3db85df",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6290,
    "line": 6223,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f70ed6a568c24835e3db85df99237f171bb769897daa8971b7bac11049aad749",
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

Occurrence: `declaration:1dd9554b12a96f391222e1f4ed84ced5fc4381b658bd5c1147c8929e4f8d754d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6223–6290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0091 : List String :=
[
  "source-element:ecc3315f44f482aa20836d9e4678601195d3b4982efaf6e7fee5d72d031de3a5",
  "source-element:ed393e8df8a6f1950a5390a36055949da8da6d352865e1bc7f563898f6f66e65",
  "source-element:ed5b3c3b0c12dd12e0713e8ae7f3bb92ecb61043f4b0db6c3c9a2d563590ffe6",
  "source-element:ed68c2d48ae220a172b06e60927b7c00f651b1c5740f02ffff603d4bfb36c791",
  "source-element:ed7a055a5bf51f56005cb92657ed8daa64b4f2cb1a422dba726d54d20eafea75",
  "source-element:edc8c736dc8e3ea4a9587accbe95f115aa3324543e68f60f86792c2497eb8d78",
  "source-element:edf4fe43b8bd798c7cee50a624f1b1b2174f467a535d49e2e274fb28f439e7fb",
  "source-element:ee3bb80da94a64093eb6cfaa3cb3af241d835cada64720c19935a2c88d5ded20",
  "source-element:ee5ed664308e6637f12e993cd572b7ee695e3fa51072c2f64a5cf141e74a5e0d",
  "source-element:ee72e89e9f069ff0a2bf5f8c9446de30c472a5e1605d78f9a95a0455221f023c",
  "source-element:eec14d7959b2399b643b49997be7e9967b47c9665a53a5d49b7644b72f49305c",
  "source-element:ef379286e7546f08000ad3fcc3331e3f055743d5fcd8c85dd17848d48dfc790a",
  "source-element:ef60b53f0adeee342c78b73786b50b8ddcee1b597b89a59b692c44be4890c734",
  "source-element:ef701ec40f28acb3fd19251af339944f2375fc1d88a730feeea7e7d2a5c447e8",
  "source-element:f008eccc3d17b483cd89ae0db5a3386d94f0f68922648491008444460c2de0fe",
  "source-element:f0621d4517786117a656d0d13fcbdeefeae46ec5b1e7238995f1eacfe4212d8c",
  "source-element:f078da7376a9cb28c612133f33e2ade5f9520e307e50ec648044821af8682175",
  "source-element:f07fb46cf11a3f9be6b675c9dcfa99a5432406d223e59648979f993e6ae47ea9",
  "source-element:f0bb2f52b4e09b830cfcda2a1010b0ce0fd6667c68f7019f10d4e7b57de8161d",
  "source-element:f0f514d17c2f314be651a13ee8d4970909a8df786edc105d26de002f6a07958d",
  "source-element:f0fdfbcae0d442734ce3f138e6a92f810a67af65b74c4cf9633fd8d7358e6823",
  "source-element:f139aba1f6463c0b4f38067526f1505d76cdd3b7766084236fd4f4e186e6f7c3",
  "source-element:f1a2efe33de2cba4e08f8a968e65c53a09b5371c204805193df4f466d5568424",
  "source-element:f1a88a90541f818c72d9e3fbac070a1e0e0bcd9bdc6cc10918648eb41c1a15cd",
  "source-element:f1f86889ce71025c29e2da1d672025048e56699df04bc4bce0e2dc7e5c903e24",
  "source-element:f21a22a053a884831c5151a22299c4e70e231dbe5d4f06561237ac19f8f9a2d7",
  "source-element:f2273e7e55b15c247d22a38c1ae88886234e4084c8e334caa7005812dc1bdf87",
  "source-element:f237fd7bbd3d737a92c056e509464d88d3b637a688b8d533a72fa7838bff24bf",
  "source-element:f26819be2cb94bcfd07f8537bd88cdbb783933ccec6b7f0f2d5d2f7b8aa75dee",
  "source-element:f28e810cca5c96d2cda4530d7d2775a28189a50c8741608bf9f7331742127227",
  "source-element:f291c192d5d41dfb13756ec9e4b44f96db7e7d6b27db08ee193452010721d5b8",
  "source-element:f29f6666560df8787ddadd2d783adeee39fe8675569d0439f9dc619ded01310f",
  "source-element:f2d0102d06792d38a1c3ab2b10734c0382f52878f85c3dc7de527b958f0b4563",
  "source-element:f2ded0e13c0d06a31122b7393738035698c0f27737652e8f11461dca672ea25e",
  "source-element:f3020ca488b8b9c5706d2a8bfeb97c5d971a35a38c253467aea0c6fc60d6a27e",
  "source-element:f32f0acdcdcbbbb2e64de4a0d34386764d1b3f05c3d839da899a5d443dcfe425",
  "source-element:f35e890d13c0f8f51171072cc20b030dedad5c14311e8b7bc1c342d121bd1a86",
  "source-element:f374524b276b5ec829e18bdec1db40befdb8bf1bc130452895a00c26179a16a6",
  "source-element:f393eb4b3cdbeb39c29b420f5e97ad3249257375bd3d7ffa01f0aecb3845df17",
  "source-element:f3a88575e3f9e62daadbe566075ffab6587675293fa6ae54b56ea54ed44cd112",
  "source-element:f4437f067e917cf920b6d1abf5cf52c358cbe376d6cfe271a4381bdc7c34429f",
  "source-element:f4583be666f145521977fcebd616dbbd50f2d0bcdcc747a5faf0bbebc7d195ed",
  "source-element:f492865322dfba7cd823492d80d004acc54236ca8d7789644f24f20d26451804",
  "source-element:f4dad4eef86217111e1af63e40c36f3bea6c6a61433604f07cf3d0f6d9bb4381",
  "source-element:f4dff0da426bed63c209f2b0d0c3b823a8e8fd8dad62fead19ef321040a8e6c6",
  "source-element:f52bffe0bb78bcbec8cb384362992ab19d41222831365dc2be0179649e665754",
  "source-element:f53b1a9afbbde707e5ec46af0e13fa1d4f93e5bd7e2ece29c6c8031031d69ebf",
  "source-element:f5443da64761fe3c67b8c5702237b86ae18e78b37595c15e0f55c9243e3b3fa0",
  "source-element:f5b39f0881b86e89c340c01853b7fc64371f26eb342022af7f4dfdf375a6d2db",
  "source-element:f5d239a675c7485a144b9457d9c8fe3ef27794d09787e2ce4af27aa3f834a7f4",
  "source-element:f5f635f1db77df58ccce43a2758eb076ae96ce2d859b8e2d0384e5407453013c",
  "source-element:f63c7d5d2351c29ba4aa9e9156edfdecd296f20d4312bdf4e5d93e9788084578",
  "source-element:f65a8486ccec9f324335c33e5f4e1a16e5772fe782f5a478f6cee65c801b5866",
  "source-element:f665d6b2111a646238dddd34b916f384ee7d6a2dd1537da02c0f51a466e317f1",
  "source-element:f674892a02668c7dbf506ca3f2d30dc5acc1cf48630dbce0f7b622b36bcd889f",
  "source-element:f696e8ab55d35bc8f415afc6320d6dd12bf26439c656d6651546f1a7e41b0156",
  "source-element:f6e7bc4667b602af2deafa86b482cb96852073efb9adf5c3c420a60ef3869231",
  "source-element:f6ff20b7ded04c072fc326aa76bef8d41690cd6b6976a7a25abf82255832a270",
  "source-element:f750737ec16d200253dea28ac9758b1116ad633857ff9b7a9abc376d82ec8d0b",
  "source-element:f75e0e7c0e2e8acf972f49b5c8c9d9bd5c73143a7a9ec1a2187953a76e760b3f",
  "source-element:f78c40ed02a2920f63e24d2e61a3ffff95b0c40c2ebfb33983ddb0d6c965c3e1",
  "source-element:f7a08ec7996449bdc866e7dfc9ca7f191971df65c089a9d16ccd31a05bd7e569",
  "source-element:f7b1deac9c676660f906f7429224c918b74746a4231f39e966e2498505066dfc",
  "source-element:f7c0751c4b11e02e3dc493ba72ac91d1275394082e1ef442167b4fe01f0af472"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L6223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
