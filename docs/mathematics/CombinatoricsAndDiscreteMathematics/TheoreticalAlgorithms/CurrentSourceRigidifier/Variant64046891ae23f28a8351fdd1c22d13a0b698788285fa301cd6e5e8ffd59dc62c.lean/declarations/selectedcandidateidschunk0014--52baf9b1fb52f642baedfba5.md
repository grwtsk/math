# selectedCandidateIdsChunk0014

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c5bf35964b700b4e73fb7b448c6fe7136a39f1ef6e7e97f3cc544c714de678d",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0014",
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
  "slug": "selectedcandidateidschunk0014--52baf9b1fb52f642baedfba5",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40824,
    "line": 40757,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52baf9b1fb52f642baedfba56833375de112a5949dc6cd852985ea125011016e",
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

Occurrence: `declaration:3c5bf35964b700b4e73fb7b448c6fe7136a39f1ef6e7e97f3cc544c714de678d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40757–40824.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0014 : List String :=
[
  "name-candidate:da5c6ab7a9b1ee588c6f2606d99e4b3a549ce0354d9864a6f8f6277d1d3b7bf5",
  "name-candidate:4e1a16ea85fe854803d44cc5900cd6a05c681619900ade52f51c69611fbaf71e",
  "name-candidate:7d8acb44fdf84decec17e29224eb5baaf7586ca78d55d644487697e7c30b8eaf",
  "name-candidate:fd36f941e0572a4a3bfbe813f4470dfb9c2973c31703cff9040f589b308b41a2",
  "name-candidate:039da94d140f0870be3fa39b0ac80ef4a628f1cd02f37cfd9fa1890bfce62116",
  "name-candidate:23dcfd505ad1f724c2e13db280dba65b9589dfb4523547596328ff79f25d5003",
  "name-candidate:059491f3bc65265eb59a961a79132bdfda54f361660e50d96d5251d80c5c6f27",
  "name-candidate:fd87b64346cb31964332671fc7ee26632489484cf11f5ebcae2cc43e92bda571",
  "name-candidate:d7574160d7fb3aed647c4fffb88a2d383b97d7001f26c84d3916345a2abfb9a1",
  "name-candidate:8a5f877bf1c40ed6cbdad3b8963a2d21644e799fbbea87067bd09ed26f729c27",
  "name-candidate:22427cabea8e88793060660e78f0b6fa2dafc891aae95efaabcf46514f8bc99a",
  "name-candidate:37b5d5fae19f5791d3c171401700d5c57d807df82a9cf470f8d9a0b4eab08472",
  "name-candidate:da47ad632e7be91f513dfd6be6adec6c5608203b5eec4f177e26869fe6fec81f",
  "name-candidate:5373d7f136898c4374641d817eff2fc067d2dcf18dfac7086af7416a6a056dd4",
  "name-candidate:db6b0a18f3142cd72b00cdcf5236a151f6211190bf003089ec45a9f43e933fb0",
  "name-candidate:fbf9b6778fc878e30e08cb65cddc53244061baf5969885b9a7ad48d3c790dfb1",
  "name-candidate:46b6d1a0e668d44dc97f1f5ccfd7cacfd7f712f02932a7e090e0d51c3c4256d5",
  "name-candidate:c00c4356a18bcf82e3293dc4427459388776f62fcad15282f3e9f9477d25d771",
  "name-candidate:da088935ea6a2a5d49ad5491c5149d603c4dc0675c4f622876036f9f674ed81e",
  "name-candidate:eb6187e68890c8cc67d300693e768a0072d549ab7b3fe8bed9a3e459488fd7a0",
  "name-candidate:26d11408f0468a8842982fa17ff586cfd9d5089e22f7ea283b4aba960b864da7",
  "name-candidate:d05062456aa050656d57e3d1099191028aafb70b97bd938f3614a84d94c7d9e6",
  "name-candidate:be8730488b249b456d73f7866daa413988378c03020acbf8e67f4ea12ce293e0",
  "name-candidate:bdecfac3fd31e1b2f7bc76d8395f4a90da18259712695f2cc0bd9baf8c0500d7",
  "name-candidate:cd9bc9131ec3bddd4fd5b7aaa85dbbca3ab06bef9d3a4cd9db78a5e0360bc1d8",
  "name-candidate:28a1f81fa7a6bc889db3bbc6c96405eea5ed6c90c3865752c3acffc7fe104bc9",
  "name-candidate:509f43a6a15b7b6dda3671c2906e2c6d335bab5c2f46c2b6bbb27d6d677861b8",
  "name-candidate:9c4d63ff33cc335f165c8a9f7e3eb3d7eeb8676f850760942d165792bdaacea1",
  "name-candidate:6599f4d8d419f4bf23306c2ecc54b8b6ef7f80162f4d19df454800c26622c4bc",
  "name-candidate:394f0d2a5165612ebdb41bc600b88fdbb1c958e242a96e472d4c8ac1a98ad985",
  "name-candidate:c32540e7a429780c3e113d5592fafd91b65746356ca14cabc22163256aa4e770",
  "name-candidate:772d12037dbbd95645383dc7e414e9f4c4ce2754f7b4e14c32f1187955dd9b63",
  "name-candidate:1382b22d77dccda9dedf22aaddff09c003670b2cbc49fa9b840f8f327af2ba94",
  "name-candidate:9f8c89c97f00356716767410e586849ad39fb1c9656821f1b264d95b24b3538e",
  "name-candidate:d15a94a29c392b496db3828c1bad5f9d7084445434dda25d33bfcea118300398",
  "name-candidate:26eb9a17697529d07b5f1c98c84fa3effedfa86ce9ecb0e61ab92236cf067d21",
  "name-candidate:d8ec1b05ed15c00769f38f5fa9d4816ec45b9ae879f2bfb211c1ee6052aa0c58",
  "name-candidate:7da91e8ab791174c1175779a53c53afb45415fc5fac0be6c93951d43e1cdf72f",
  "name-candidate:630cd32cf31c376126973c19429ec74c7ef63d79fdf739746f99b2fb0142a02e",
  "name-candidate:c79cc64dce11a77279a182053acab734bfb57fc28083027c8ea3f8311b9cb63f",
  "name-candidate:7514f1c1bac9df77c84668016018bd53affbd09b4ee07a5cd71ed65f3632d4b3",
  "name-candidate:9e7b0edc8b11d23892a972d206e9d9a67ef10d78808d1cce22a393c8e162ac12",
  "name-candidate:7f5fe6ff75136551cdd2a5d8717554bb3c0967b2c5da7241b2cd0237004965e4",
  "name-candidate:d19cffa9ace608edd2010f669b025713fd0662b623f9d86b0a5ef6a67e15614b",
  "name-candidate:7644b477536de6ae7b6cf3317c441ac6ebf15974380bd7ebf09a8d3875e45b32",
  "name-candidate:0b44017de446dac15bb02e027c57f2b331367ca3339a7a89cb32509fa49a342f",
  "name-candidate:67fbc81fef69294eace1f29e3023e610acdf81799fe4ba978c4c301b4247f705",
  "name-candidate:1588c56a9f90912c8147d8fc68bca687aece34f3917f2ffc71d09b3a6e2176d3",
  "name-candidate:98c1976d6bb2a50640b61f61656da1c4849ced3cde9cd1eb3d650dc5d171e33e",
  "name-candidate:96389a7d55b1136bcb22525fefdbda30101354f3503a4841df052af0a6fe8b4e",
  "name-candidate:6a85139fb4d2f7afad4d2aa76621560bf7b5483fe9aa280b81d5ebf5602b319e",
  "name-candidate:bc69b43a0750d52a11ab3e91239d9bacd81f0030336f4497f51e1c970683765c",
  "name-candidate:4b7e3b979f2cf885a065a141a6503e5d5136204de795287deb3bc7e5fcd28f33",
  "name-candidate:b7b3f7b24e428354cd5c219656e0b25339e1de7e1d4823510984b7bcf826d9e8",
  "name-candidate:29a4448177d27d86017614309535de39521ebe236b3b4539ee8866a0d9027ead",
  "name-candidate:5ca8bef3c65b7ae551f4558897499614823f7f0b0f475bf172daf83226f5386b",
  "name-candidate:6e0e44ea1cd8509e78b09c408a26fea6e6099488c7a1fbebee6c82f429161e7a",
  "name-candidate:f6156d3d64791fdd737b2b1fcd4883e914aa8e9c477e0d07df51ddc6eb193250",
  "name-candidate:67d585360bb2c58f8502901269504f18aa8b2cca053db2632e7f3e19122b1460",
  "name-candidate:275c123e247367cecd44f1a5390cd26c9cf070c6bb7ce7147680f3e4e6eb99ec",
  "name-candidate:3a2ee3453966e188552322275ad391b741d11db64e000221f5dfd506f970fdfe",
  "name-candidate:08c04a9228f22cc4f50f2815112020ab39219fc4f785ab06bb4459c4b3c77323",
  "name-candidate:371dcd3e82511e5f4061dd3bcca311eac8af59852350894ddde1bf4036df137c",
  "name-candidate:e99018fb5d922059969211c7a62f9bb316aba954d1453d8361427b519c09bd69"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L40757).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
