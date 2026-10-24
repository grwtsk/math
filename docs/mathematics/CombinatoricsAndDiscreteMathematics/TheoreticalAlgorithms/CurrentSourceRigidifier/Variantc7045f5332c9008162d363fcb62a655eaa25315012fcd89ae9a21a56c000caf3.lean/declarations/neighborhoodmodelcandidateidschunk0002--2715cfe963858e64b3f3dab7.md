# neighborhoodModelCandidateIdsChunk0002

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3976c2521495cdf2bfc64cafbd49491ec6198f7626be2fc468aeb3a437c229e9",
  "kind": "def",
  "lexical_name": "neighborhoodModelCandidateIdsChunk0002",
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
  "slug": "neighborhoodmodelcandidateidschunk0002--2715cfe963858e64b3f3dab7",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127982,
    "line": 127927,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2715cfe963858e64b3f3dab7d17c1f14d81dad9b49b2a1cf55e2cc8c9b3d022b",
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

Occurrence: `declaration:3976c2521495cdf2bfc64cafbd49491ec6198f7626be2fc468aeb3a437c229e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127927–127982.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodModelCandidateIdsChunk0002 : List String :=
[
  "neighborhood-name-candidate:c8c6065e8a2a709f1fc9f2a446434d63cca5c3287578240e6ced5b8d6fe612c4",
  "neighborhood-name-candidate:e046c89aef309ea3267ba745431f5456589cf2f8a42982eb3049d143d9826f92",
  "neighborhood-name-candidate:8c0c45f6bcf54210c8edf4d81421ab1c58e1ccb5a69237c7e85b432376966c66",
  "neighborhood-name-candidate:5fed09d272ea0cddd4954e34f170051a5d9777f718793e34e1fb3c1d790263c9",
  "neighborhood-name-candidate:4466e21c67ddbbb837e2d3bf9a085b77e1a76460bfd6406af4addb09e37c05ed",
  "neighborhood-name-candidate:89799e14b6ef23bd46bb80d9ecc7cb9c1f34e757109e280ace205c3d5e3064b2",
  "neighborhood-name-candidate:784b7e60c2eafacd5304677d6dabcb4822b0ab155dfe6992753bfa56d5c6062d",
  "neighborhood-name-candidate:e9a01f95896b1f052ca8702cb81d42f417c5812f3c9fff27fdbb842046bbc833",
  "neighborhood-name-candidate:f3fcbe6be3c747c2eacae10371d85f63f1dc4bd62eef779a589558085e1aad74",
  "neighborhood-name-candidate:e12c827a70ce8172cada2fa77cda1da3739bb5a86d55b30a94dfb511a479cf4e",
  "neighborhood-name-candidate:42a15c93359f7e24220b9c6560312a8e6d458184dcd7513e4a6d25d66af07620",
  "neighborhood-name-candidate:733a564153071e673dbbcfd129d5b51d6665ddafda54436581934ad1dfa42a78",
  "neighborhood-name-candidate:b3ce970673c2f2c0b166fc35a146a75edb535bffc61bc207a9ce20e76ba38838",
  "neighborhood-name-candidate:9bbf905d30f0a00ec011b68dadb5f31189f2ba021cac1a60ef71ea2eac73b3b3",
  "neighborhood-name-candidate:dd97aa620877c5798c7f17f2cac23d479a0297cc34d54b22d3758966d4af55b0",
  "neighborhood-name-candidate:ae0ccb5fb0770e2df7b3b19cb6ef5bfc34d67fc7ff8f29b5691a01db45bf2866",
  "neighborhood-name-candidate:5f5df1f64e903eb218925212b2010d075383a3289da870400b857f3333baa02e",
  "neighborhood-name-candidate:f58b7d9e2379118ebb59ec571eee39ba25111445c4aa94e1a047fad0479d4288",
  "neighborhood-name-candidate:d25bb818c00ef606598a575e7edc0d1138aa154fd714f8985d7828be53a43182",
  "neighborhood-name-candidate:59dbd7e851ac78806e1429e11f05f8b6e0fff69a5f9c24f3e4dcdb8f893f9898",
  "neighborhood-name-candidate:859a2167c3427fec7a68742ff2fec155718ca2549a21461d50e0843b6b1db869",
  "neighborhood-name-candidate:a0a2a72a87c195b847bc97ec05e5dc7f91c1c86d187b20dd13aff4cc90663edc",
  "neighborhood-name-candidate:1b3aefc6d55b5c6bec30b86c6ae22e35256fa947eb393888b4576baac4e8aff8",
  "neighborhood-name-candidate:d02874591db29cd9af02a4faa73eadf7273d8c3e72037089bc38658555f94969",
  "neighborhood-name-candidate:535a46643868ce82152ccdd4aa1d9e45f6a62ff7f7594e5309494869480a8eac",
  "neighborhood-name-candidate:0751372c772141894aeb8eb2e92f5985df51fc0789412cc22a38eef63ed27233",
  "neighborhood-name-candidate:7875ac3d1a63ad002159f3e3fae0428c770e727413ab75f468cb0bc91e078b3c",
  "neighborhood-name-candidate:d1458377e88c22e0a474f688734cda6bc51b90b55fd71403b13e012d0d080455",
  "neighborhood-name-candidate:5d5b0d471a296760b39d76e05e5848dddbeec917650416696d0b1a65555e98ca",
  "neighborhood-name-candidate:80daa70ac97524477b58f80f17d29b6ae6064050abde7e1bcbac8deac3c7a9a1",
  "neighborhood-name-candidate:f27ebe35bc1511e0357e97ba8dc9bad5cc0028213c0fc340f3fd6e4b587c537a",
  "neighborhood-name-candidate:9f0dbebf55750540fae7f6e79a4a50ad8f8ef1df8e16d19ce4d7032a764a9e45",
  "neighborhood-name-candidate:7fc2bd2d089f772964059d3dfb3b48f000442852aa8418d035d57f65da5116fd",
  "neighborhood-name-candidate:cc9111f3207d79735675e85b8bbf600dae59be6e83bbb536a5e1b7ea7e147eee",
  "neighborhood-name-candidate:a4d788264ae669acdc7a9ac15797931e9b0b36e54597e5b7d2860fb7c65eed67",
  "neighborhood-name-candidate:9b7075aeab97c13dfc4d9015a536a07a70688693154ed58506744390e12d0be8",
  "neighborhood-name-candidate:546b92d4d60f8e386727c0b937100300a3ccd89fd268a9f3a6392dde15db4ea1",
  "neighborhood-name-candidate:fdc35fce9c150cda1042d6f3eff40213c03263fa9a2e858c26a057c1ecd0b3c3",
  "neighborhood-name-candidate:eded8c2107b1308c30f8eb6bf4753977b9814738cf6bd358ff3d7a15a1c9e683",
  "neighborhood-name-candidate:f04e8bfe75c2c6e9d89c555054960c2f7e38946e37baedf325ff59f08d2b5509",
  "neighborhood-name-candidate:82d6fdf68d39c89fcbabe13efcff4151b3c122e88e822feb9814c1be92df7d2a",
  "neighborhood-name-candidate:d96549d7ffeed27632fae571014b5da0fc7aba8743f84574981cd5f09d29176f",
  "neighborhood-name-candidate:a45e3727f4232dd943137b59a4f42bfed57c6d362dbffc7e103543949ca7e4cd",
  "neighborhood-name-candidate:ea9841f2f618195256e71232b7e099665810b87692b18e8aa6c89c49769aa40b",
  "neighborhood-name-candidate:31adf05b94cbee27ad602cfc6ee07adba86e6ee7af70c4f4cef357d042872052",
  "neighborhood-name-candidate:37c58501995de221ef7f02cb16d65ee9cc574866faaf6b33e3986f86510c0df6",
  "neighborhood-name-candidate:56339c3001513f53dcb368931a3540296dc4fb02e777c62879782246a7ee1b03",
  "neighborhood-name-candidate:28ae541440606927e7d49ed7a45fd80ae1f487f63b2811d9a2a9aa6067e6f7ae",
  "neighborhood-name-candidate:02aabc4b4394ee89d082d5894c4da08be58be71955afc1f4360a44070828a19e",
  "neighborhood-name-candidate:d2df3efb4050fc8c6e121bd9f185f626f419b51cf935ec3c18e2f3b74b231be2",
  "neighborhood-name-candidate:7b3d222959914430e9bdfdbe41336afe5fd06c041456e013492971166e847ab2",
  "neighborhood-name-candidate:101123b0332b5924b207a831dfa0eece8eff91b9fbb18351f335c87cfcff6d59"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L127927).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
