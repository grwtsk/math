# primitiveElementKeysChunk0053

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28801637cd51cd56d6c8f58fa3da73c186a174842a03e9ee42fd9b80c2e331c8",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0053",
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
  "slug": "primitiveelementkeyschunk0053--7b0abf527324c28493fb3dd8",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3706,
    "line": 3639,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b0abf527324c28493fb3dd8cdb27ec90190113b788538c3dfc4e6e7649a35a9",
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

Occurrence: `declaration:28801637cd51cd56d6c8f58fa3da73c186a174842a03e9ee42fd9b80c2e331c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3639–3706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0053 : List String :=
[
  "source-command:4ba7876e763caa8f5c2fb4194d570d164a19a0a38c71cc305906d0f5e5f49337",
  "source-command:4bb19808166a2ce118919244e506e39917796ea2090d8ee3015fca133c946b2d",
  "source-command:4bbda979ae46bd4caf5120ca278aad2275cad204075ffa56a10854604b37bfb6",
  "source-command:4c2857c0ad9c8ba53d62ba4fca9f6f8c7043f4fea9afee4710ff5f7b4f55d8b4",
  "source-command:4c2c583e1b1fbb6662e50ade387b5e310b4ea236d1085418a4e1898acaf389ff",
  "source-command:4c3677a741fa68c787b53506d29cb14319fe77881cb888a0db5c8d2ffa87307a",
  "source-command:4ce63b9c2d1406e7892276dc2fffa854c5bcc0e8cdc8590e337aa6b0bb79e841",
  "source-command:4d09cdd533848a652b738b82222b93677f6936993bdab9772a8438e2d99d01bd",
  "source-command:4d1130dfec26e8bdecbad4345328a5718ba3c24ba526ba73efdf704e477746cf",
  "source-command:4d35aa6f63b6497598954fb5d790da581b34c5d24f85731cb04a77f87978dca9",
  "source-command:4d37e170a93249f045f99077346976d763965b7ff317f7c63389e4a1338a245c",
  "source-command:4d852b900c759c36141ec23e92bb60984ee1cbd8a5911a5ff3f5e7b8ff78f57c",
  "source-command:4d9d2180986967a4e8d9ec7de4136f757e507d15762790f999145735deda91a3",
  "source-command:4defb549dc13d8327caa5c1f5de6d2f6eb2809a8218a4153fda48eaed7e315bc",
  "source-command:4e0e8adfe0deb0410fdd454ba26d2249b30c28b17aa1b98e79aac7acb2045045",
  "source-command:4e3ea9e22d266c164f9c040d6a5d7e439ec27eacbe6b7da242d7236dc8e51aa7",
  "source-command:4e58e2ffe50746bf7af68ba99fdc52c9fa4a918f71f4aead8b81a30cc5b859e8",
  "source-command:4ea9c3ae22056c25eaf93c9dfaa4e55cf396687d70b55d2538108cc1fc3501e2",
  "source-command:4efb385bb54c7474449f5a32ef224985fc0b8558fb2302ae5ba00db93aa9ae63",
  "source-command:4f40664564f7d73e326005025e6ba7b56f07abca0ace2cf20d43471735843912",
  "source-command:4f40804c3a844b9e9d2e045447d67627928f4b3cff5eb292c25f95bd7b59b830",
  "source-command:4f55786f5cc20774c90af63548461c86af1944d355c3eda7cc3624e3bbdb6d9c",
  "source-command:4f8754ff95dc194244b744843afc60a5280333211864e33b5ee4ecd6dcbb7c36",
  "source-command:4faea1a8e0b78bf2f8ac007a6513dcb0f7f6f3f8099c3f13d0c63337654b4295",
  "source-command:4fc202c3b6dc2577204fa5d601eae6404781ee4001033e4fae268495cdfcd6ea",
  "source-command:4ff64994cb586c76e876aff0a7fa1063b7a462222a8cbc464d373bbde2957dfd",
  "source-command:50748c00f0c4abbd93e8b3b2102fe1f207c39253f847e2a6425188501870019c",
  "source-command:508daa08b486556badd49f09f00754252125b54b9967b6dd9c1dbaa7dcd68e97",
  "source-command:50abe00d8a962c700c7922f61a4351432c1e0f46bc796bcb4610569d5f6ea354",
  "source-command:50aedc4423b410ca19ca8c28264dee98d4d613b1601eb57b744c8f96c51f0a12",
  "source-command:50bdded7dec6a0dc23cd4c28afd0d1cf7f881c308dd8b0a6e80831f0ab8fedb0",
  "source-command:50de99405bb667362dfe6ac53794fb3bbcf567fa417779b89c5a4abb917c5331",
  "source-command:50e18b42df85dab7e920cedc9a404b8b84d0800d2a2f34a4c34a197612710a15",
  "source-command:5104ec101c17d33c19432c272bc9b19b8e4d409dd3f67a09d350ca9031aee49e",
  "source-command:511ef31ba9a85bc231cd8dc973c76e7b62ca841050d34f90c257e3463f5de930",
  "source-command:5144cd6749852d3ab04f6ac0c154042c3545a2f1e9b8be422529bf17f4697252",
  "source-command:515faa3dbceb0d83941d6371d0999d79f6c08c712d3d2cbc1e01a2b2cf954871",
  "source-command:5192bb6417bafef7a78ffc4a7bfec0815714509bd4dbca0bf76022977f853429",
  "source-command:51b0cdbcacdd938cd6c554c146d02d5d307edce2306803a3d573ae557db1e1b2",
  "source-command:51bc97a7e8fe94fcd6cd8d046c2ad2de5fe7617f8b3cf6c7582cfde918b85404",
  "source-command:52375f2bac2e9432c50b6678ce21302ecf0821245f7f60cb8c4bbfd823c1eea0",
  "source-command:523cbb4722b535e5c252005becf0a14f80688975f8151c7c82ea44c47ddc996a",
  "source-command:5241fe2e760747c6a7dd09f901f16dcda6eb59e3ed8d52cf6d170264320d8848",
  "source-command:526dc20045d1a1d29648e22c61b7f96c3bff699ec1f43654f06eb60a20bbdb69",
  "source-command:52834b143d94a89c9609bac79dbd6de68b5fb225a8df1f012892bf908c0b9757",
  "source-command:52851df575836a917ac250959529cfdea49e3a22766650a94124ddfaddb48966",
  "source-command:52a201ea8c6ffc8285a96cad144d79b2d882b0eb15a6a46633b5d98cf6f33bbd",
  "source-command:52ed414121da708edda9a6033b55c6f8a38e5759b8bd436a2442e88d3579bb14",
  "source-command:52fefe06ac1c3d0705686b6052ea6368414e227eb6f6cd6a906031a44266bc35",
  "source-command:5361613d37e1c9f4c666eb4fe01084b87cbcf08b817298086583dc4d583982b7",
  "source-command:5363d3ccd33e52030d08a8655e44af00d3a1b850f5855014d0663c4a0c580764",
  "source-command:53acf28b71fa130d5b86202329805b38543fe4534cdda03c3b729ca72440780f",
  "source-command:53c6e918b754557b64c109402b5ed361695a98fed287d9c51000a161cb0a49b6",
  "source-command:5464fbcfc51508d60c20be2d6f1ca58a097be994125947ccbc2a94bd49ee7f72",
  "source-command:5467ad018b68c0359ee2c390c48b5fcc68272437332dc7791d4266dc0747517f",
  "source-command:54c43e3d2f50ca8339dec44d5c9956f81dfbca029f885e02a43e7bb5712b2c47",
  "source-command:54d8062e20e43eb99f2ca6332419b84f5b170921cd66d257540432ebff515426",
  "source-command:54f1911f08845357d7e18ced281881c923a716bd8cb8bda940c90cc6c0444071",
  "source-command:54fe3e9c67c832c72899678a99d091c2e4ad269ee1dd43c0745a1497ec64aec9",
  "source-command:550a029a0fef850e5f8c79de8e02f3666e605ea280a52c8dc2a23404e01d4629",
  "source-command:553678ddf778280dfe3e9332d3dc2d26130d9547d13b45c3be8fa31bacf783b9",
  "source-command:5559baf6e0c6e5a145940968bb6e53e0a6eed7631b1ac3e52860361416ec4a37",
  "source-command:555cf7be55a7552101ed17bf4668b96ceb83e306e7ea962cc5316d701ca5129e",
  "source-command:557ef29c9e4a7a36fc873d12f098c9d47780df6c7d28c0415245413edf172ba9"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L3639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
