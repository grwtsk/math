# neighborhoodCandidateIdsChunk0002

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8555aea01d1253622f4130492a961989670785e3598f2468225fe76bde8c5d1",
  "kind": "def",
  "lexical_name": "neighborhoodCandidateIdsChunk0002",
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
  "slug": "neighborhoodcandidateidschunk0002--5562b8133c8e704f03e3e3a7",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127773,
    "line": 127718,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5562b8133c8e704f03e3e3a7392b401690d4c2c4e665410b2da6f0836d81f2cb",
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

Occurrence: `declaration:b8555aea01d1253622f4130492a961989670785e3598f2468225fe76bde8c5d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127718–127773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodCandidateIdsChunk0002 : List String :=
[
  "neighborhood-name-candidate:3376bb8ff74818618cf6f8fd9fd66172752d621d2ce1e6af14654a0640485d83",
  "neighborhood-name-candidate:e046c89aef309ea3267ba745431f5456589cf2f8a42982eb3049d143d9826f92",
  "neighborhood-name-candidate:8c0c45f6bcf54210c8edf4d81421ab1c58e1ccb5a69237c7e85b432376966c66",
  "neighborhood-name-candidate:5fed09d272ea0cddd4954e34f170051a5d9777f718793e34e1fb3c1d790263c9",
  "neighborhood-name-candidate:4466e21c67ddbbb837e2d3bf9a085b77e1a76460bfd6406af4addb09e37c05ed",
  "neighborhood-name-candidate:6e5685b97727cd8de13ca1e214e9131165636d9521074e2cb8e18975de23befc",
  "neighborhood-name-candidate:aff5caab3796cdcf375dedec6025154969008bdebe40f8f02a8bf22baa1c2c40",
  "neighborhood-name-candidate:e9a01f95896b1f052ca8702cb81d42f417c5812f3c9fff27fdbb842046bbc833",
  "neighborhood-name-candidate:f3fcbe6be3c747c2eacae10371d85f63f1dc4bd62eef779a589558085e1aad74",
  "neighborhood-name-candidate:26fca11d99fb7ded0e5143dd6bc25e9d2d8421a1ffcfb0d7d5a77a36aa094e26",
  "neighborhood-name-candidate:42a15c93359f7e24220b9c6560312a8e6d458184dcd7513e4a6d25d66af07620",
  "neighborhood-name-candidate:894191cca9ea902666986539ef972933a6b4702f41906da3d974e4d475513818",
  "neighborhood-name-candidate:23812c713b8e8e9a5382460490bf9c22cf4c35d0225e0fb95a1de16813676c9b",
  "neighborhood-name-candidate:9bbf905d30f0a00ec011b68dadb5f31189f2ba021cac1a60ef71ea2eac73b3b3",
  "neighborhood-name-candidate:80e60eaa073367bfca4baf968cd9209a9f9d3bc35f93e00d1579ccc38337c0bc",
  "neighborhood-name-candidate:98268afe8f4336c9f6e7b4d129dab7e2f4ccc5c87365438be1c3bca1b88279ee",
  "neighborhood-name-candidate:5f5df1f64e903eb218925212b2010d075383a3289da870400b857f3333baa02e",
  "neighborhood-name-candidate:f58b7d9e2379118ebb59ec571eee39ba25111445c4aa94e1a047fad0479d4288",
  "neighborhood-name-candidate:d25bb818c00ef606598a575e7edc0d1138aa154fd714f8985d7828be53a43182",
  "neighborhood-name-candidate:59dbd7e851ac78806e1429e11f05f8b6e0fff69a5f9c24f3e4dcdb8f893f9898",
  "neighborhood-name-candidate:84f373b314011599d34d66f8fcba79329409a4321e52e772f84ecf2ef70e82a7",
  "neighborhood-name-candidate:a0a2a72a87c195b847bc97ec05e5dc7f91c1c86d187b20dd13aff4cc90663edc",
  "neighborhood-name-candidate:1b3aefc6d55b5c6bec30b86c6ae22e35256fa947eb393888b4576baac4e8aff8",
  "neighborhood-name-candidate:d02874591db29cd9af02a4faa73eadf7273d8c3e72037089bc38658555f94969",
  "neighborhood-name-candidate:535a46643868ce82152ccdd4aa1d9e45f6a62ff7f7594e5309494869480a8eac",
  "neighborhood-name-candidate:ac9fd2ac8ad26cd7b72748c3bf1831fbe9fdcc96e15aa766f1f07ac6da671681",
  "neighborhood-name-candidate:41d87ff117e59a2f15b0793bb2376693fd959cf255e8890430981686eea29122",
  "neighborhood-name-candidate:d1458377e88c22e0a474f688734cda6bc51b90b55fd71403b13e012d0d080455",
  "neighborhood-name-candidate:dd3bb9d2f8e94b65653ffec7b3ecc85193108f71a0d4edcf7796c09567184a4e",
  "neighborhood-name-candidate:80daa70ac97524477b58f80f17d29b6ae6064050abde7e1bcbac8deac3c7a9a1",
  "neighborhood-name-candidate:9b24abc9c8abfd7bc2db20d6aab24a5bbc44224b05f02e4c02f06485671b1614",
  "neighborhood-name-candidate:fb5e03f3eb0a104d76dad3e164bb994b5115290230a82ac1badeb8747486e3aa",
  "neighborhood-name-candidate:448c0b8ebd758fbcbf211a7c2fb6906c215e98d581dba16799fbe959e6d329c9",
  "neighborhood-name-candidate:b5020859580919c6099f52c19ddafa583c449e6c20f73406f25fce7fb4031bde",
  "neighborhood-name-candidate:a4d788264ae669acdc7a9ac15797931e9b0b36e54597e5b7d2860fb7c65eed67",
  "neighborhood-name-candidate:11739540b882e747e8202f24ad2ce9874a40e061cba7baba9547c951cae9eb8a",
  "neighborhood-name-candidate:dcf304f0ce975dbe95052551ffe36c76edbb4599a753bb06b24fccedcf03fd28",
  "neighborhood-name-candidate:940db152b7a084b597be1180bedc2a1ed9aa836f2b2bedecf761855dadb4e42b",
  "neighborhood-name-candidate:eded8c2107b1308c30f8eb6bf4753977b9814738cf6bd358ff3d7a15a1c9e683",
  "neighborhood-name-candidate:f4458120d5cb62aa42afd239b9ba953a2ed68c70cd5b09c4670a30605ad9f206",
  "neighborhood-name-candidate:fa135280eee15f02e2793400f2ff43d2b3291b6bb6f6a2de034a2892913cacb4",
  "neighborhood-name-candidate:89fc957174079a3e8018bd226dd85fca3a934ff2ea5ddaa7ba667270fbddcdf4",
  "neighborhood-name-candidate:a45e3727f4232dd943137b59a4f42bfed57c6d362dbffc7e103543949ca7e4cd",
  "neighborhood-name-candidate:35ed2416dd219a190bfd8e179d518ae56599a354f2ff8e1a50ccfa97cdb738ba",
  "neighborhood-name-candidate:3034a08f745cbf400fea383750ebc3a9a2bb8e98244a0767ba9862cd5a87c30a",
  "neighborhood-name-candidate:8a313b6333c78eb9caad7f3d091e6b406251a31fd7213082e8de03a276c366f3",
  "neighborhood-name-candidate:56339c3001513f53dcb368931a3540296dc4fb02e777c62879782246a7ee1b03",
  "neighborhood-name-candidate:db4ec5b981670399354f2bac7b747ec7cf3c5cec11a7b610e7b85ed74a2e9433",
  "neighborhood-name-candidate:2e824e6229baf1e4fd6082b84fbab6360871becc6558c75ddfe07808531187d5",
  "neighborhood-name-candidate:d2df3efb4050fc8c6e121bd9f185f626f419b51cf935ec3c18e2f3b74b231be2",
  "neighborhood-name-candidate:c7329eb465cefcdaaab31bf35c6eaa830d0c8f0a6ba6328c715d76cad30fdf6e",
  "neighborhood-name-candidate:28b2ee8bc7e1b349baa63a46e21bfc193a79d6147a454c89767ac1821dbf3c68"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L127718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
