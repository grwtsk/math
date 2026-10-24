# primitiveElementKeysChunk0090

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:299f9713cb06cf36aa4f317ffc30ee14634a3fd345946b85f8d9cfc4eab62504",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0090",
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
  "slug": "primitiveelementkeyschunk0090--c236bba1b055711dd535bdbf",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6220,
    "line": 6153,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c236bba1b055711dd535bdbf1963826dae2fde63b39c6fe2615a4291c323c1b1",
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

Occurrence: `declaration:299f9713cb06cf36aa4f317ffc30ee14634a3fd345946b85f8d9cfc4eab62504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6153–6220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0090 : List String :=
[
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
  "source-element:f7c0751c4b11e02e3dc493ba72ac91d1275394082e1ef442167b4fe01f0af472",
  "source-element:f7c41d6ebd92acd86910539f79c751fa76c549081db4de74b00305f2512269c8",
  "source-element:f87d2330a21d6142e60e3cb61abf182b9d40e36d9a7439c66dd0cb715da037fa",
  "source-element:f8b7843a420d9c496afb2e4b371930d93a0177604df465d4cc627ac4eb92e10b",
  "source-element:f8f0b51c3bd2d6a28a13eb4e5a02bb695938f74719137e1ef4cc7dd915fff2db",
  "source-element:f94405fb34e8ee71430ee006e61b3b6ce03fe89539721ea88d6a8842eeccb22a",
  "source-element:f97469b92accdac5c70137a6783c01efe1f7b8f4d7ed6c27367ad4d1c2cbcbbb",
  "source-element:f9934fd151bd8fab58475215b697878d03f05a9d6423a0674dc38bcaf348a474",
  "source-element:f9a1d4659bf8b5a917c0be3fc6565fa8122f9d7c4925bcec09f9caa35629c2f4",
  "source-element:f9cd855745070f9bfe67406a70d4b3d31675c2ab1764c62166913f9d93a3ed86",
  "source-element:f9d2c45e95af0e182ae9612a57b4cfe49321808167b064d012a57333ea93af64",
  "source-element:fa1bcc568d618a7cefb1d51315e8abeb99bb5030efcac160132bf903111f57d7",
  "source-element:fa369a10dee66328357f997f39e8038ee9d58f082ad321fcff8301c27825076e",
  "source-element:fa3bff61614aec6f62deb0edf8ac24368dd7977bfab3efaad3501b6bb813b44b",
  "source-element:fb11d47af9cec8f3c1dfc623227c13589280037a1456cb812329a07b9a97dec0",
  "source-element:fb2f650710dfdad86f3630ec93c1e0e2b58929beb904301835f456e36b4e2624",
  "source-element:fb933b1b0252ea0b0c5ceb0ca8886fc9b3a12906076820531c71db84cb02db1b",
  "source-element:fc1a111417c9b6cfc9bcc26d3629b3792ce8cb1bf9bf6aa82b657daacf1c280d",
  "source-element:fc37cc4690287da4989abe94df84fe4abd6f5e682c145aa11a0182b624c34b53",
  "source-element:fc6a60962dda6301839237edb65e67f6172e13e940305e52dd94cee69229ab65",
  "source-element:fc82bd2897f49e841d119234ab88408d24b437ce56a4eba69ed3e5702c851de5",
  "source-element:fcb206132e9717ad21e0c2687e667c3fc5e4bb5b79832a15b3cea91e051ca6da",
  "source-element:fd50734757fb9b82a6b9a9aaf6024b6cc33f3328a862e648850819edb1b62ab7",
  "source-element:fd5179674594bf1cfa81890b6aafadf1fee1bc5fc657120e613b21823754b2d9",
  "source-element:fd75190d4c3ddf6dd24282a7d319bc3f5f7c044c5a7dbd5ff0922b6777a0efe9"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L6153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
