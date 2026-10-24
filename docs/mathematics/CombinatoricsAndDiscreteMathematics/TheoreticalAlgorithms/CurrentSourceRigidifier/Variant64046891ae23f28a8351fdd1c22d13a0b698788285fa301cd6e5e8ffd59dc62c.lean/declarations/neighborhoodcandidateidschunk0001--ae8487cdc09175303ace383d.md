# neighborhoodCandidateIdsChunk0001

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65b3f15a41ff59a7e5d19876f2456f966b8fe5067624f19b2172e17264b7e678",
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
  "slug": "neighborhoodcandidateidschunk0001--ae8487cdc09175303ace383d",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127717,
    "line": 127650,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae8487cdc09175303ace383df36b88fd02b9b6a6efaaa8de59b2c4d0b853d262",
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

Occurrence: `declaration:65b3f15a41ff59a7e5d19876f2456f966b8fe5067624f19b2172e17264b7e678`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127650–127717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodCandidateIdsChunk0001 : List String :=
[
  "neighborhood-name-candidate:95d1dc1701cad63bad15945fe5a868c3f461f4cf1546f3ca37fba6fcc4225eae",
  "neighborhood-name-candidate:b03808b697e00cc4178d56db875076bf9e2638ea6cbffecd4e0db435a9251b17",
  "neighborhood-name-candidate:689847a20563895c85e4b3a0ddd8ab26973e0692989b999671785b514965f5b8",
  "neighborhood-name-candidate:ba2bb1bf753ccb58ff0ceb6b0612767966752bbbedf94e49a80d6740f15a61ea",
  "neighborhood-name-candidate:61c7100d13d96cb5b07b52ed7b7445e8fef79185c7fd5362af98225a48082b93",
  "neighborhood-name-candidate:c8dc70c76388fb5ad6d5786e7a3e6372e936f2fa073ef82d5ae3df80c7982513",
  "neighborhood-name-candidate:53dbb2d2949b6aae8642b13b963b0b4727fbe83aae239edafe1c0d51ad179cf9",
  "neighborhood-name-candidate:4c002012922c9f3d1c69f156cc792acbc86320b444737e067088026fbd81054e",
  "neighborhood-name-candidate:06a0548f195b3cac967ec1d8fb190dced636052784d559754baf6ab88a104e99",
  "neighborhood-name-candidate:144fc967f6b889ef6847f278f52e5f11b5f17236f2457e6ee878f0de2b69be0a",
  "neighborhood-name-candidate:77ab6cf5e77301458c9f8c3ae6997c9a3b1a244955d3b3d5eb9742b7f84c3869",
  "neighborhood-name-candidate:8e294d4409102ff8a2828075d3ff87b399b158d4b2914b24ffd0e62ccbec24c0",
  "neighborhood-name-candidate:ea8b9ab62bfee2bcde89de3caf603005f7aceb7b5619c7a23166ec9341fff741",
  "neighborhood-name-candidate:6d6d577213281efc1b5254ea3574b4cbef60e9656775b049c3d7eefd2980ff7f",
  "neighborhood-name-candidate:2d4c678800e156e3e1a66695da431c4d121318efc09860d91125d082ab3434db",
  "neighborhood-name-candidate:454a4fd9e49aa9fc9b488bf11381bfc1e34577ae9da8ed43301d47699f26f5cb",
  "neighborhood-name-candidate:cb9a5ba0c7bbfdbea460b0bdea5bcede4c8efcfb8a18372265fa902e3b116b77",
  "neighborhood-name-candidate:60c8bb18e3931dab9c55278b751691b8546804598aa8b3ea189a3da53770a004",
  "neighborhood-name-candidate:3ea088516b734f9056942ec44d3314b541309f22ed0a7d66aa845c7ab890c840",
  "neighborhood-name-candidate:3ddc08cc7ebdd19a080f32dbe06fd150d29342f617745c7ed99e99152ef0c632",
  "neighborhood-name-candidate:9d25ea62a4105c65bc5c2d10c10e8b721f207b4eb32e3cac84b359c19d93247f",
  "neighborhood-name-candidate:c136e5aa21247cc3f0f71d1a4b385f34cd55b616a70a0c6961716a74dd300f7f",
  "neighborhood-name-candidate:80aceed09ef6f8f6ff1f121c7aa53906021cad574d89ec799904185735e46bec",
  "neighborhood-name-candidate:5180ee67850edad60dee7794787d91ca545aa143abe219927b727f33a78dcd7d",
  "neighborhood-name-candidate:5d47ba2afcd68f01a1899e6dea36fa6724dec92c4edeb7ea1b0fcf5c18cdd5b7",
  "neighborhood-name-candidate:0d17931ab319ec2ab7d023accfc2b3da460c3be96c2b2e9d17db65603d28b9ed",
  "neighborhood-name-candidate:d6f9761d13c07ac6d2bdd39b394cc91da6d81eef9959ffc04ff6c779e517d9bc",
  "neighborhood-name-candidate:9f068c16b396b18edcd5e095a3ec9d18e1bd725bf4fef2de817c68d820019fb3",
  "neighborhood-name-candidate:e6b5fb20dbe257e97abbf96bc4a2674a1b599efed4ca0c0b31b83d4c03b84924",
  "neighborhood-name-candidate:f766bf6f7959b78e083bd598bce103e6d967b7f6db04421842daaf65f82ffe1b",
  "neighborhood-name-candidate:8cb2bf954696e89603ee49eeb98fa611aed31eb95897df9864c54b72dd740585",
  "neighborhood-name-candidate:1a2c291de885cb13c0589077080a5d092b3ca56a2b0ef3355747c93056fa9a1e",
  "neighborhood-name-candidate:2df499e31854e9b6744668684704c08e7ab0e9f9d87119a47226378c03dc2c27",
  "neighborhood-name-candidate:82199b1e9e1616a39dc2e91f800f142b6339be2295663fb354aabc5e1b503b73",
  "neighborhood-name-candidate:610913b301034abc0b3df9fa68ed6b29ce037b1e35916e17903ef453e049bbb0",
  "neighborhood-name-candidate:e4c13ff62b808e16d4042b00ce8fae778b9b5f1e303d6deb17e09441b20e7877",
  "neighborhood-name-candidate:558cbb2d2ba138504d088ae517293dab39ebbe8585c783549fe3a94ef3e79a27",
  "neighborhood-name-candidate:ae5ca0b63d74ec65f908f1dea3d9a9d8a4a95b3836f41170e2364bc93d24b818",
  "neighborhood-name-candidate:fbc5970170a70c28913fdc23d4c56ce50bd8633060ac6a15c46faf1e53c98681",
  "neighborhood-name-candidate:39fdac91fb11e75305502c30c007bce7ee7c64147ceac5a41d0812aa9c6cf6ca",
  "neighborhood-name-candidate:5c4bbb88ca61eb3ecb0c32c68d6121fd7fe80a508e6f51f5d4c8b0ead1b9b4c7",
  "neighborhood-name-candidate:a440d183ee8b1d4b2218d8939271c067884e0b98cb2bbb0496f09a5e40751164",
  "neighborhood-name-candidate:2d9c394b5c77b61cb3ce8f1fe7efc97eb64b277b4613b7e219f89a180b309e2c",
  "neighborhood-name-candidate:4f3cc9eadd5cb2312c90d8ffc5470c031ffd93514e895f6a4d627fa160f706d8",
  "neighborhood-name-candidate:e8b6c73ab504ec223ec2122de3b9dd16d021af516bcfec6ea8edf3cac48ed76e",
  "neighborhood-name-candidate:3e3760e97a9a01021b16a9cf81e93acaa282cd5e1f7b5ebec331cadff870a7cb",
  "neighborhood-name-candidate:50817d19a5339b7e012e3d9dc38e87301d00eeffac9acaaa65f13064a62de539",
  "neighborhood-name-candidate:6fffa630085a7324fdcffa344464092715d994c22ecf10ef50e6dedbd8bbaeaa",
  "neighborhood-name-candidate:952d6c9f8f54a20f31c144d04674b29f248e1e439c1e47f5d9403e097ae55ead",
  "neighborhood-name-candidate:ff94d30b38998eb8bab92305aadeae193d47e9aa382dd81f96a5d970da8a3c5d",
  "neighborhood-name-candidate:a25818479550c33894c0bd1a3557b06a12c479b74176f2b8286fece81956b079",
  "neighborhood-name-candidate:99ae2999218c1724272f257b61bf77a39ee8ccd596905d4263bced86d4769e28",
  "neighborhood-name-candidate:77d211e08246a2d29acc5871ebb79200bd040bf3b704f6dcc23673e721eae378",
  "neighborhood-name-candidate:466bf1ff342e99bd4145fcb88da74f34cd4a43d4e6146108241171e5e26319f5",
  "neighborhood-name-candidate:1857df96866af291fd8641703b4d3aaf7c14398eca8ef33342f09c95caab0a4d",
  "neighborhood-name-candidate:3ac7695766ea47f21b8b621ea5b4d7e7723a2b5d2514911cd848c9f28eeac30c",
  "neighborhood-name-candidate:1010ad402b7f5431d96678723884a77fca04a604cf1b4c09b6ebdd113f336204",
  "neighborhood-name-candidate:5f70f48b294f799d1f98434fde2c50227afa2af7ecb1b6f1df13ece983faf4ed",
  "neighborhood-name-candidate:2c826dd2b8d53520d76afc077e4a053aca8df2366bca69197b3aa79cf5582973",
  "neighborhood-name-candidate:f24272e103665ad3cfaddfdc47c4bc364c8b5caa7c9af1c67cd77da6fbfb230a",
  "neighborhood-name-candidate:6a341350fd097996baf02a90ec450a58328ac9bcce7f605fea3b16bb94204f57",
  "neighborhood-name-candidate:efe5318455dc6b7d39f665d0fd5fbf4f0e7cad0215527295eeeb5f8b68f01eda",
  "neighborhood-name-candidate:a35c1af4dc7330033f31a4f16511c5a29d97e1fae05ed2449b49f4a7d7c45593",
  "neighborhood-name-candidate:fefb09c55ff2fbbca1701a74288d327e0d49e37892535b8d57197a79f1138099"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L127650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
