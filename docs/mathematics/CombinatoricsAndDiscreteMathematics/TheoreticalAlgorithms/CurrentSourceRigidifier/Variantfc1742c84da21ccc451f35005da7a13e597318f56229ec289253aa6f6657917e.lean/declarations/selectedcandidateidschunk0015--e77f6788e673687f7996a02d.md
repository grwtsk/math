# selectedCandidateIdsChunk0015

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d164ab5a0b9534513bd2d67789fd4843c1d6ebb58ca69d4e7ef558ad198bfe7",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0015",
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
  "slug": "selectedcandidateidschunk0015--e77f6788e673687f7996a02d",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40434,
    "line": 40367,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e77f6788e673687f7996a02d57692da11fb80245757072823c56844b43aa5fd4",
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

Occurrence: `declaration:6d164ab5a0b9534513bd2d67789fd4843c1d6ebb58ca69d4e7ef558ad198bfe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40367–40434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0015 : List String :=
[
  "name-candidate:2bfd61ba2e1ec5fc3ece7d9c957c62025c9215d22e3f5197bc32892b6f686caa",
  "name-candidate:0ee54053d2861d79e48ff66692bcbd9bb2bd3b81a5fa7f1b32788831f63c5e18",
  "name-candidate:766a5cdf66bb0a12d930602ab82b6070a9a90202f9e447e1bc4abaa5269f8561",
  "name-candidate:a03aa3fce1e9ac822567707bb9f7866fdc8fe1cdd218234014d7febb2ddf0584",
  "name-candidate:fb4d719ae01457188ca33fc885a272c7e733198fad5099cad2421cb3cd0d1b9f",
  "name-candidate:8e4ac63dbf22b8ffbcc37f11805838d67904c25d9281f024a06d593a78417dcd",
  "name-candidate:d00b0b4d1730b93e4f9de31a89c7c520cadbd66bbaa5c41573ad1903bf06822b",
  "name-candidate:de71c61939ee0434c8405df12aefc8a205afdb055672388ab06762f8dc1cceea",
  "name-candidate:30d7242924336113f235a9d7e04bebba8895b81ce6d8c44455c72593de727357",
  "name-candidate:8d603f7d0e71c9b62ad57c89123e617082a0a67f53e2e7b8cbcb4d0c37da809c",
  "name-candidate:535b5d9f9117cff4166126f8cd005abf2a7bbc518cc47c4503d07a5dbf58b33f",
  "name-candidate:5560755e4a4b6a1caf769834d37e6ebf99f920ef2430d5c3179c0474e1a144ea",
  "name-candidate:b7f9430ea5a2b3109d86d8c382e37aa2ad98068db8c811b4522c7fba82499e0a",
  "name-candidate:057cc0a0121e7f45e008290529c30c00334e0e97cfa67af266b4c962a0084fc6",
  "name-candidate:bf8fb3432f65b5e5da57442782f1571908e56ae3a51a96de101906205768733c",
  "name-candidate:aee47ec046c3501cdab215bfb6e91f377187e8a6d06d9b6c7a6caf83b012d7af",
  "name-candidate:c0e463001dbc037f31d23a506bdd59693fefd7c35343cb1d207bd76be9732ed6",
  "name-candidate:df6620a2963fadfbc24b078d92fb196d888b208ba8f68ab9d2e0f52e342b8a32",
  "name-candidate:3254d580ee87b5ccf2024c1aa90fe016b8344394a0500dee94d2d6e39b306562",
  "name-candidate:90e4edd52586bede7b830989c64c6840ad92b8a520b2cdf3d552da235a07a123",
  "name-candidate:556613cf8f0bba435d4ba8e8f79bf441005bf782c582223262b046f94f46e8de",
  "name-candidate:60e3e12806282f3e56d6bc14ab63f89a1e16fd5ba23dd417b245c30bc205ccd9",
  "name-candidate:146f5635bf4df10a14a009fd36714ce498e248779d4af6e64286ff077bec7975",
  "name-candidate:d5274319cec0298acb12088366cd5bfb37c74e9492851dcf84b1614affe0731c",
  "name-candidate:4ca9dd85545ccfd52cc9078db139f7b1a7a85b261b2cd6723a7c36508fc409e0",
  "name-candidate:37db3e86abad59c3f8cdbc62847c54203803257573084f443d3c06d045752e83",
  "name-candidate:fd565fd012d45015e38fcf568f44aa37325e341c11e3fc2b17befee347f0ee7b",
  "name-candidate:75ab679c758e337161c1a0aeb9f22086eb2d086ee850953d5f94ede9c3fa75a4",
  "name-candidate:8ee11768e1b7e2c74c301207eb0f81b739a85eb3378d94a04c18d2241c3bb42d",
  "name-candidate:72d1eda2310aa4a63cbaf5ff1671955d38cea60923c99c83fadc17e2838411de",
  "name-candidate:f35681214707cd9b38b8330dbeec40273340f37cd401114ab27a99add18a7e9b",
  "name-candidate:aa3c2fb45197cc5204d78b8d4eee77fadc5db114f95260557101bd9b55edae29",
  "name-candidate:a0fb2eb5ace614ea215b4e0220cb6374767e729b4d18511f61a1eb081f26c883",
  "name-candidate:0ee28629cbfa8d2af50a3f2dae17083b6f531e8e521b41b9299b4ee0afb64511",
  "name-candidate:bcfc0eb2601144897b683d75e32c7987c1c3613ff16b3c056637ebf8e18937ee",
  "name-candidate:536183a9c92c2d61a918a0a5d709316b16220e574840b7c992009000af1052d2",
  "name-candidate:a41ac823f17cfc531215e6e86bcd144a1dc428818a24a9cbff83a3f6d13cffdc",
  "name-candidate:213986e09a45115248a21f2ca88448e31081085b5c63123b5b892730c239a27f",
  "name-candidate:951d71492f2449ab317d69095608f023d8ed3f36fcfbabc46516984562a4ce11",
  "name-candidate:9e3b04fb602ca9920b9be301e871aa250379e333f00915060a21d531d5196bb8",
  "name-candidate:21bfa830131dc9e0f14b2bfee8eba3def33d9fb18fe4cebfcbe556c9b56672d1",
  "name-candidate:cf1a62f037acf1677d5ddbe04677d4a7562364ac0e483a18ad5f6bfed4fb0d49",
  "name-candidate:ccbf6d1b87247e2be457d88095e01211f5ad7488ffc5bd09479e65e45b529baf",
  "name-candidate:11a622a5c148b446c39423c472ae00091de25644fbc265142c6fb220ddb0fc3e",
  "name-candidate:40419fdb8867ed4eaac07d1d1d1118d9e65a146094ea1e068dbb61eed4affd2e",
  "name-candidate:98c8d502bb8d4496d8579243d7d5bdc348f9e963f92a8ef0b26032585af424fe",
  "name-candidate:b8c1eaa50a2d2bdc486b4d76c1d2769dcaae45c69b99e3cefc1d149ff262e851",
  "name-candidate:922281fd2c245cb2281a8b0e02bcb0c59d97213db3f8f48bb6756c664a8e0428",
  "name-candidate:863ea2ef52d00f04060c5a40ab243e2eef2fdefbc4377ea08861955b69edea89",
  "name-candidate:ba0da55a51137043a3b169496b1a04032e322d2e5f6bd34ed00e0d543fa020f8",
  "name-candidate:4b36a49f42e2898012e65a1f298a7747fbea4ee48d27412ff4e059ff24bb6c56",
  "name-candidate:bfab5586c536219eace5a667bfbce570ffdafdcff2692fc8b62b6e62f0ff2c90",
  "name-candidate:15dce5b6fd466ebf85ba187cee380bcee0b9590077fd5251e6affa99f909e192",
  "name-candidate:41339ffe0cdc51d75c61ceae9b46dfa53ac8df6c58ebe896d07f1b4169daf1d8",
  "name-candidate:50d7e171e1dc215778833071d6abc0c7daa3ba8b4d915676adf74cc1e14d9b36",
  "name-candidate:f41de4e669e6c60ea17c21a4ff13dd8c20821a9906c2896d976441639b50f2c3",
  "name-candidate:30d0363467d8f243e5cab213c4100935174f02a942467db94a445c2c4f061cf4",
  "name-candidate:b22d7502343815006fb375518b85193f2a0e247544a25419fde90d205ab168fa",
  "name-candidate:45f0bebe0225b38ebe92c92f0d515fdc27ebfc6dbd61395e5b6646eb499fbecb",
  "name-candidate:a3e8592dffc597e90e712be0a8f9c6ea9e20a1a4c6b3e460e44f3f92a34a93d5",
  "name-candidate:e448599ec7e2d2a8178b2b1b850c1c19eb85fb23d45506754bf7be25ea609929",
  "name-candidate:e950dd521929690e4574c9fe214c55cd3a1a7d2a118123bc922360e5ce6dabee",
  "name-candidate:297af707b61842328081f8cc47f8b4ca54d787330f43e93db01c52c7cf94a6af",
  "name-candidate:ddfcec077088438ccd8052d825a54fc989a12a8cc239649f0543071195da6d8a"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L40367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
