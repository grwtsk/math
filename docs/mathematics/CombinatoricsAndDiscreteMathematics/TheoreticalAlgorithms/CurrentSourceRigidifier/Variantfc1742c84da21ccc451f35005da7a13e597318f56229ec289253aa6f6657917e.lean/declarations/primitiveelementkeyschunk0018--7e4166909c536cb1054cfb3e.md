# primitiveElementKeysChunk0018

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1198432893377f5dd19b5765f7c594c30164d589e981b6fdccbc6822949f6eb9",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0018",
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
  "slug": "primitiveelementkeyschunk0018--7e4166909c536cb1054cfb3e",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1316,
    "line": 1249,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e4166909c536cb1054cfb3eda6e4b95f89884cdf41865ef10ed3b09079628a9",
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

Occurrence: `declaration:1198432893377f5dd19b5765f7c594c30164d589e981b6fdccbc6822949f6eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1249–1316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0018 : List String :=
[
  "python-point:6b944dc804655a7a3a1558dc6b34e08770122ab918693559321fcbf7b3c95e62",
  "python-point:6bb10b7eea36019d0621808f77e9c69317eb39468eff90d0b87cd5636961d85c",
  "python-point:6bc153ec6917f8042e8d529c0bbe5f1d43f0c39b0af8f1a41623691527dff4a1",
  "python-point:6bc392b42b55be92c0a5259458407e23b716ca34c68c21fac2da53f6510dfdc5",
  "python-point:6bc726209b4b04dc6201981332a70d8009c2e598ccdbcfbdebf88e417e682572",
  "python-point:6bd2c3ea243d27dd0074e686b1cb6e35bac233a6f84b2f75fe232dce5385e6a0",
  "python-point:6c1209403b1015e40de50066ce7a4227d86fac2dd8a1c0825d45b14c0660becc",
  "python-point:6c3cffa655a113f964aa282e154d8273de14a6f8829dcd31217f26eaa3abff68",
  "python-point:6c4400f73c250beca57a430d5e0a2ca49d57e5a9b0514395d8ce1c5626ff3337",
  "python-point:6c479242220f92b62e96d40a501efe510f441a3d9f66dc7b4ec433ae7692127b",
  "python-point:6c70d406e7ee29240ab30394308a15a4ac70d97e9de84b5c4202413cea4cd078",
  "python-point:6c7e528c5de81f10ea4cb41f684d28da0acdce7c82fd8c97ed0dbf633dc5d588",
  "python-point:6c95a55f034997862fb98f28f7a096cff7b9f1472d0c9abab0da115f7da030d0",
  "python-point:6c9c97a19f9e42ff70448b0e938db7b305cfc065b79eec9f2d156ac2a4ef889a",
  "python-point:6ca8d790a2587e2991db5e70a0487bdc165d2b7c397084c8c79bbb93a3557f3a",
  "python-point:6cb9b3cfca545e1abbdc82685b9e885aac0230f74d260eb959d4a87b9de02702",
  "python-point:6ce0b80efe463ec3f2ea65b64673792279616ab93a5f69ffc8f0abe8e79c7558",
  "python-point:6cef7d36bab9412572a33baa1ce1837860485d80dee1dba040463bd88c3e0bae",
  "python-point:6d2b3fe9a773b662f63ccb9f312044e2a925ab032943e8a045b053c8daadace5",
  "python-point:6d52a55d246b52c181383e1e833865214c21ba6b0521efb855b853c47aaa08d2",
  "python-point:6d5cba80ac9541889b2adf31dc63cd355d15b46ee931cc74c64d396dd73c7d25",
  "python-point:6db7119a86fdfdd62b7c6743b35c4003a18b75b9cc7ecc601da5ad5b333b6a45",
  "python-point:6df76210dd28a10b0454fab49af7d0625db4aa0e1918907ed873076e65efa195",
  "python-point:6e03fbe10679fd423103c03d21753b49c46e6c042f0ba30725c1a47080b8df49",
  "python-point:6e1e8efa0cfa2fc2e2310d748b230272fedceb6328f6999de0d4ec36fd470377",
  "python-point:6e556011e6bcdbdddb97c61f163760a23267b2a5ce9394b88ce6d7bb8e43e925",
  "python-point:6e5f76afb6b4e725241362a04a0ba3f648e0f816100f87d128b358165f41a54c",
  "python-point:6e8c9c9fe001f16ecd598d9dc48bda2445faa13c30fcb15a63d14df1f955f9d5",
  "python-point:6e9816b3229f0dd4c7f78c01604996e13eb1402e6f658644aa253450c4a8db22",
  "python-point:6ea22bb8d1838b5560b58457ca828179b5081437fcabe77700d324962336590f",
  "python-point:6ea255a81273773e6f0f9eb1b5e4e2742f6af94158d6cbdc1cb2db98755e91b2",
  "python-point:6ea8b13c58eae76082337b7788347e722706c2ff1218a5426062514786c11392",
  "python-point:6ec299232badbeaf7a0863eb714f233cb22bf21df4a34bf21dd0c3cd3aebbc27",
  "python-point:6ee8e47012556913231ccfe11aa11cb547bb4469af7f6452ec292a45a8d42550",
  "python-point:6f0a29a7a5e1593ef3597b8df45a84d0f37c2378934a0a8b57d439ddd582918b",
  "python-point:6f447c696fe61e013d1fdea023e84c75306747945f53b1ed7010dd31460b360b",
  "python-point:6f4f2a290fba56e74e26c67cbb6afd177df99e1b6d4a80823c71df699a4a42c5",
  "python-point:6f8e20d104ece08d72af1432e3c1892c20270283db1ad89e55d8c98ad1a60050",
  "python-point:6fb5360809e7d301b275207d89265f3e36d9de812dc9a731b76c041d44113a11",
  "python-point:6fcd886cabdfd260a8841da9e9f77eed36dd7a885dfe05d07c4d3e40dcd84609",
  "python-point:6fd1d5812d6576a183963ddd1406cdbff2c1868e8fb9d45423a68e71875ea4dc",
  "python-point:6fdca04ba04445f5ae613c53fc6c3416c1458685df4a5a0f680cf62a9070ab5b",
  "python-point:6fddb308653b82e9d3c6582c7b3c83f86997766a50f6bf9be26b400cd03c3487",
  "python-point:6fea9bc8490d7b0863badb4708afc836a79f20f56e2ee480098af8d5a4f7d937",
  "python-point:6ff1bd0b43993d506be65534936d7a782d523a2436ec4572ba246b6eaea6d5a2",
  "python-point:6ff292262cce95f011c1b81a04231bdc1766922d14f6a440c1a953740b5828a4",
  "python-point:6ff653c3f36596c9f87573be083f194049ccb1e33727da1d9c96148386cf8759",
  "python-point:6ff6f69c01ee64a68d3f7989e683ea6283a2dcf0515adcdba62c8b4ef0aa8a49",
  "python-point:7009f3e5649b6ea14d876e31676040c9e9fd4f190b52d5f2ab77c1822b1d4a56",
  "python-point:70154f166bcfd954026bc8c271ddfdb1fd8738c2d95ad9034f95e04fa21a19d2",
  "python-point:7023396045dd8e37b4a556aeb98ef4cb7ac0d87c44228f46f641c9c7d39fd5da",
  "python-point:703e64246d8c3015dd137b30357e00d21d31861d70125e5233f7c7d07f6551cd",
  "python-point:70415aeefe844d10c0a8a48a7ad6090fc919fb0426ade183cde509f7c2959531",
  "python-point:709d25db7fea5dca1c7eaf5e63cd7387e3b9e45500824349bf133975365faf61",
  "python-point:70feb7568010553b41b996ead4df4e1a12058650525dca643e61dbd2dff0cb75",
  "python-point:710fd88f730be07f31b1f280c2d309fcabf3e552cdeeb13384ef431d670978c1",
  "python-point:7114c07c127e705b2272931bc0104f190f9b117ac9f3478b6bbf3343ca77190c",
  "python-point:7126978813e0271f87678449bd00ef50184a63ae195410d2f39acc431a9f9089",
  "python-point:712adaa3b848f87097af7104e6f4bae5857e8bf55616973f5f6c7dbd2937d022",
  "python-point:7130f5be11d242d9f693a0707f8ebd50fc846d4f7d72be1d3411ce852cd597e8",
  "python-point:713ca7b06a762e6ad97d4e3a25ea779744ec2545c695826404ae10e6bc9ec891",
  "python-point:718be948ffeb222c6b4bba414d834c38765e932b49c851f1eff08c5b48928f02",
  "python-point:71dc1b76891f80cb50d621f108137c6db62fa4323117023cf9108d467a581467",
  "python-point:722f8c4a1edf6f2c4546dfa62aa5f52b0152f7bb2edb5ca1dc08abd57e7b40b6"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L1249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
