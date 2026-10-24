# neighborhoodKeysChunk0018

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eea4b5b13bb284b156bf4d901b10f3bcd04dd4fe18fa020ebb19b77f752a5c9b",
  "kind": "def",
  "lexical_name": "neighborhoodKeysChunk0018",
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
  "slug": "neighborhoodkeyschunk0018--761ee2f264639981318aa7cf",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124002,
    "line": 123935,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:761ee2f264639981318aa7cf29c9c5b7d9adc7285513fbe3efdb1a3285004dca",
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

Occurrence: `declaration:eea4b5b13bb284b156bf4d901b10f3bcd04dd4fe18fa020ebb19b77f752a5c9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123935–124002.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodKeysChunk0018 : List String :=
[
  "formal-neighborhood:8c9f7c0635aa45573a793d3456e8a57138dff42a9d7ab753470bd1f86941d998",
  "formal-neighborhood:8ca02c5d3256212d2f00d9224433585b98dc651e228f4f436d7d73b6beacc413",
  "formal-neighborhood:8ce8d90a69db86c9f807191d3631d57049de8eb65e67e28c0dc23cbe1898a88a",
  "formal-neighborhood:8d02cf9666d0c292e2acba7dd95f13147fb0b55aa8352708d225fdbdc4390c52",
  "formal-neighborhood:8d453e0ad679cdd2da7dda17ddfb7c2accf23b0b20b5540fbb5cb5bdd991de56",
  "formal-neighborhood:8d8d2def14ae052a1d528920fdb2b444934b95e858f7550e9edc91e76f9a187b",
  "formal-neighborhood:8d97acd45f6b3d20fdf1672f041db2999f11e453afc131670f5c3a29f00ef674",
  "formal-neighborhood:8d9a28595d9350541e16b91a57abd2b17345445e87f06b26b9c65761e37fb26d",
  "formal-neighborhood:8d9bfa2714c1c8abef20e1de09c061d952e25e45c0e1c3e24f0d8c4b4dd8a1ad",
  "formal-neighborhood:8d9db89d19a6f278d780872a9d5c4712b05113305a06de8d5415287d413100a4",
  "formal-neighborhood:8dc7ecb6c164ca4cc6b880eff6d17211e75f8c52ab38defc1fe69be78600cac7",
  "formal-neighborhood:8dcd8b06596a34feed369eb2feb0cc079f129b5ae25bb51f9df28559a0db03f5",
  "formal-neighborhood:8dd32aea45ee08f650e9444ed87a3f73b8c4bd271da9de56022f9d76d38c89fa",
  "formal-neighborhood:8deda7981c557d9f75fdf12b8ee5a9fe3d8227d53ec05d975e91b4f3bc908645",
  "formal-neighborhood:8e2017793a98ce24ef7f16b68d6486973916753617f0de89375f5627d9fc2238",
  "formal-neighborhood:8e606e3ad13f5b4ccd7c66adc7e3bbb94dbcdaef7eebc13ba2f337d5df6b08b0",
  "formal-neighborhood:8e7483891901102a3fb37800def1d0d2f82edc26c47e906eb776e402b8d815f1",
  "formal-neighborhood:8ea9ca9a8ff2970d7d53bb519601c512286a60fcaeb60f6f20e544452f601002",
  "formal-neighborhood:8eff8555a2d36e3512e63025c5624ff838d4255a08558bfcc523c80f4fcd90a7",
  "formal-neighborhood:8f11b56fb37107586a18d30935f5c78252ab00480a2456a7637f07ee953b1734",
  "formal-neighborhood:8f46f598ffcfbbb2ee936c9e4dce40f9f6826267924876a6305e9766d2fcfa1e",
  "formal-neighborhood:8f4d93493cf4109a119f663521e9ecda921b7c4a93fdd9c49c3761fecda5fc83",
  "formal-neighborhood:8f82abb5ab4832f1d8f296b9f592c267bf08fa6f2b455253a04b2b1dbd61fcc4",
  "formal-neighborhood:8f9e93aeba7adbe3cfc085c6c54a50f594a6299bce1dce7a30988dad37b984ec",
  "formal-neighborhood:8fa1eadafbe0b2064c8fcf0cc1585322427a86ad0676759079d4d1fc5cdb3334",
  "formal-neighborhood:8fee33746bbf183ac08c0efc98fd6e283205fb0f49f8ced3ee0de54bcfc7a52b",
  "formal-neighborhood:901f0d52e7cf4bb1d011d0dc699f535a894fff8eb4ec09ef5c4599aeb84c1ba6",
  "formal-neighborhood:9029198ae40a426b6f16086efbe67bdf6e17b9ac8532e5e27e7e564ca29e1bb6",
  "formal-neighborhood:90294d0b9f5af627124846f3bc5575c6e5a4f168e54c8d4d733bdeb8432f806d",
  "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596",
  "formal-neighborhood:9045a7524c19a3bcf93116447010b0792999727a06913539877f73b992530ae3",
  "formal-neighborhood:907f4eccf98f8c2a706f048cc826469533599f6e5b9f8ca7a7c2eb8aad00e3f3",
  "formal-neighborhood:90862e1b8cda405ab9bb6ad1eac6f5434fcd53769f44f4bf47a58ee9ca83ca78",
  "formal-neighborhood:9093864f3121715c5de560251e8bd449e61a74a2b59c4e0e109480a25b1a6e26",
  "formal-neighborhood:90a1f2ba4d9c7399281d247a434a2e23e49c9187cf27ac446b2f4e15f2f19103",
  "formal-neighborhood:90b398b9a2d4e7b42918af85c8394793dae413195daf4835b3dfa8b590f13e67",
  "formal-neighborhood:90ff6ff0bd5fda64b4027b704ad709b9634dc484571501815946456de3cec0c7",
  "formal-neighborhood:91026ad33d41a2fc46bafaf13fa063cced3d6407f52d99169d9593c035443c00",
  "formal-neighborhood:91289f268c1f7199c154b3ab9281e07ed04bf07ee83916025c20108330cca1e3",
  "formal-neighborhood:9183dac6766c9a1a73bf5a881743ec6c7c89ba24928f34827744a2d8db9758e0",
  "formal-neighborhood:91852f7e1db9233ff40b9534a15bc70d68aeebb2fa57e4acd011234024a8ca92",
  "formal-neighborhood:91c9931391a95ec6ccd6f6176e4650e7c2ed60e572cf40b9cce6844ec2a34669",
  "formal-neighborhood:92277ca3a05868c1cb231080c8b181b83c54a1f097f5400d1e52540393797333",
  "formal-neighborhood:92412c934336b6d5e2d61e799781f38659939149b59b6892ec5ec560b48cf5c2",
  "formal-neighborhood:924fed28dfea33a1802d5cc3e0b9ab6272bb7dd7165bc58106e9aafde02f2db8",
  "formal-neighborhood:925b03e8c91f1fe6a950dba722cf90f8852cf921e708adeaa2d789ca6a37fee5",
  "formal-neighborhood:926049c0f80c74cc8ba682236717e881666352f7c7c05a86d4f3560f50a128af",
  "formal-neighborhood:926fd13883d01f1605ba98ce0eb87ae582cbde5e1abb101d4161d74112add3f2",
  "formal-neighborhood:9277163e9151075225019caa391e91e708b2376a85fc602a3647b8d03f67d625",
  "formal-neighborhood:9298dd8d40d1058dd2adda64b43e8d2e25dd4b7b0a4d11f323e81c9798bb0dca",
  "formal-neighborhood:92bb2edbfe817b130f1d2f6684a253149c3dbdd0334aa4acb042b8e265e4e07f",
  "formal-neighborhood:92d59c7a1ec3d913e650da89b4ccd18d77e857fdcdf376b38a26f1d3b608d7fb",
  "formal-neighborhood:92df790709f46aa037a92175f112269c396f29fdd4cb6b89b462ca30cab414fe",
  "formal-neighborhood:92fe119474172aed653c92407e2f098e5de9dfc52c3779c0660afcc2e549f39d",
  "formal-neighborhood:9319c22171a2b05c30974a3a9b63474ac7415f335ba6679cd9a237b536c3fecb",
  "formal-neighborhood:9350b8f0af25e60b3ed62cae0f11ca29f4d173a4cd08c2024bdef47e4fe43946",
  "formal-neighborhood:9353158ad90c3e36e75b7b4d5c146eb7e961ce1ad494dcfec11dc087f60b457c",
  "formal-neighborhood:936c798e1614cc524ba1c05b4da5779b498913600a40c00153348d9cbbcb650d",
  "formal-neighborhood:9373da9c3a4a8c983110c8f7553d55f2966acf87f12cafe957f7f24d8d46634d",
  "formal-neighborhood:93a245076b14c153b1f63e5f0375aaee397dc8e7a87a83aa7ea165312c5a1be9",
  "formal-neighborhood:93caad1861c906c09bae1d2f0488c0a4558e185c62b23e8d9a22578842cae705",
  "formal-neighborhood:9414ae2e44f91a05c6ccb05f5a407bb37f244426f9b76a3ee4711d143d303688",
  "formal-neighborhood:942c8e2842ef124fd8d51b0e7ccc5db15c3c1a3c8f3e4a2ebad9db129534aedc",
  "formal-neighborhood:943259fde6bdfabfd9bdee840b031c014b3399cfa74270812550ab632baf4ac5"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L123935).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
