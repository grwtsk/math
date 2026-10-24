# selectedCandidateIdsChunk0001

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:347d05b535ef8f92d10c869bd9b3a1bdb4bf218344a1fbadc4f17bde3260cdbd",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0001",
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
  "slug": "selectedcandidateidschunk0001--4e76162aca5f949cab5ebb01",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39940,
    "line": 39873,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e76162aca5f949cab5ebb01e6db6335622b2d05d82006c4f4e5475bd31d559b",
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

Occurrence: `declaration:347d05b535ef8f92d10c869bd9b3a1bdb4bf218344a1fbadc4f17bde3260cdbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39873–39940.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0001 : List String :=
[
  "name-candidate:878d52497b14aadc968ce0f3a8a3fabe994ff5148eb33e3a6155492d676dca23",
  "name-candidate:2e47ccc40c0046c6a275dca7816eb4ae570125cd468d15fce9437ed3809a1e2d",
  "name-candidate:36324becfd007a76c6b913dddba33e3fd62221d7b965dd8b2adf327df2a0d384",
  "name-candidate:197c9344a0c86a2fbe77d0d4e2d00a6c20957e02533e961fe181b7ae72cf6551",
  "name-candidate:ea8a308db523e18ea78e51d25135c895cb7304b0691e29eb72ca9e881a6a055c",
  "name-candidate:def2627a17325c1a39a5b68e71521a6556977de08478b77eb4625c3fba12b4e3",
  "name-candidate:8d71ec6cd2c5c9f3663ac70f27874d19e09f718e1382309ee5c95d8b05616bd9",
  "name-candidate:b0ea48bc6d67d8f0af9fead3615e4a461ffe192b6035a2abc47292dcf1c604a7",
  "name-candidate:7ca05effd056da8a4eaae1d234ae083b54ae5d6ecfda86aa5be281a8d155bfbb",
  "name-candidate:19a3754ed454e24cb532eaab7d3e8def6c4b379c54a89246ba2a278f24ec2a1d",
  "name-candidate:60960e7487e38b5610d953ddfb283d100f9d101a4cd9bc4afd4d9f4cb9345b86",
  "name-candidate:0ca1a7ab9d06607e1be976009a308b17e2952e3d21b9ef6ec2f2daefbc3464c8",
  "name-candidate:0a258a22b6bc4ca14325dc929a6048e6456b56f00a3f5ae7dbfc3e8caa4278f0",
  "name-candidate:9f680350923d5dd4c04fa6998ae3f7d3784a22bd96c66bb60bb9fca8dfc22174",
  "name-candidate:5e593e608c8aa9d4c22c2e6bf84ae02bc4178c47b8d3778d49f4b69c66272281",
  "name-candidate:876c68250489a624c963a00b971024c76608706adf9433eaefd6ce9459eba073",
  "name-candidate:9e28d2fcd67f3bcd5f0635d8083b37928d9ef36b35b3709aa1d719c15b5f2be2",
  "name-candidate:7c8c742be142e5c766394a423e607e026a1f61af9bcd4b3e07b6610c2d76e043",
  "name-candidate:8a36d27a3019b168e850d09ee108911aa308ab6f27b39db1fa4bd478479a0f6a",
  "name-candidate:f0ab045bf62183f6ab8e0728ce882c9507155f465d316436a324f55ae37135d9",
  "name-candidate:500e669c016fd2420818a35de6331071b1f01f558aa77185d3cd98a94b19f1d5",
  "name-candidate:07c6c751be2a72311e2ef661f56713529076447fb0d72b6d0b944c4533bff45a",
  "name-candidate:e7c66117b76f8c3237fb2d9135bfbe85932dc0b1b9f908cbfb9fe3b2b7e19c1b",
  "name-candidate:7fea81934265ad45b73fef404c179941a76275ca7effe9343cfae8544e27d422",
  "name-candidate:389b948c30ec8ef98c6ab4c8c7665880278384b9745c43575fdbba189a247868",
  "name-candidate:562fb72890fc1475c90de82a89301f8a92ea2b72a8c0f321317e4035fac6ae93",
  "name-candidate:122bd705cd9347f0dc9477c32e7fbe74535980ed6bf979af0fafe435cdc1132d",
  "name-candidate:9e65a7638782148c57f932584a40108e01240b0df241084bd94291501d2e532d",
  "name-candidate:20ffac405c1196bc83dca7101f20db4d9feaaa92edb8e0d30bf30b4f1b6e3e56",
  "name-candidate:8195b2a1cf76019f6c39e82e7cf2429c38bab545d6fe77619f2c5f1109280981",
  "name-candidate:9f361b1c2e0644a7932ba3d8242a028ccd1a69667fac4f49edc5cf84e5b97c11",
  "name-candidate:f77e5907ce40d530de1cdc90c2572005038bd524f98c8cb17fe3db5dc1f8309b",
  "name-candidate:d62d32d8cdc010ceba1525cf786d20868da20017f8114aa3390a122d73381248",
  "name-candidate:86b791aea4558f1a9c30afcf48e61271368755e56e97dd7affec4cfb0f8c6da9",
  "name-candidate:dc6689fc1585eca9968154d0eba2467b0f903591d954b0f4a5e58a0ffe74365b",
  "name-candidate:bf04d6e81aa907ce17db2624ee1756f14abd82ae75171938cf55ad969b9509e3",
  "name-candidate:2bc120b97d415b48e67f3c6418f544a5c95ed5ea0a89e21094c377fb1b7082fb",
  "name-candidate:b2cfa6319c598d5e0973ce63e2fa3b0ceee28a856c641f8d4825c06f20f19dd5",
  "name-candidate:363d533d6253c0da6afb46ec7d8470dd5dde409023ffe573b0f9304d81d17fa7",
  "name-candidate:ff606b84bf9a7229bf43f2f3692ebc4e26e00c34bb0f2db824c2bc132ed84e56",
  "name-candidate:1add09d74ee0471330cf3a1874961a8b948c70188d4abaf8d058426c3934cfd9",
  "name-candidate:6dedbefdaef92f9ef20d48a7b9c3f0a96f6fd038255013f4b34edca39ed2bfae",
  "name-candidate:9a0c57aab66455d4d36daee4a3c269a1af618a2b3b02c3a56bf9fe584fb742e6",
  "name-candidate:80e748a705b3f07d62b59fd1e1a9264ee9c00fa3cd7ac2956194c755c24ccc01",
  "name-candidate:a74a3385ce6b688f7a78c496fb7087ec3fa15db2b3dbefca8a7d90dd8f01edc1",
  "name-candidate:8d0d53d4c7e2a746ad87617a28eaeb9e595a2314cd4cdedf43d642e712bdd519",
  "name-candidate:f5aeb6e926d06110cb777a924e61582b1570114586eec7ffae38aa4c091e5d13",
  "name-candidate:0e06566761d5b40170f6d4ce42857967d31a5001444e9f9d2bc9f09a417f172a",
  "name-candidate:77f08e123a4a0ff6f27fdc9ce554a8795bc4b4d918d6426bf923de821f1526ee",
  "name-candidate:f8b8b52168e2678982bbfc16ec57d4928ea3afad4e44604f2e26a980c694080f",
  "name-candidate:3f7785ce5c9dbc7c4d68ae7f3114f1ef4193200add2f0e0044b9b72957097d0a",
  "name-candidate:c5cf36321d55e6597b60811e97d8ab46374f1ac6f34fa1ccd282166f314dee5b",
  "name-candidate:834f8e612dc7c682808f0483ac81a78ffaf5db0aba29e6274ca106b7163f4764",
  "name-candidate:77c626a3c127ddba0a826fa9636eb4016dbd8e321220b8a101c3165a0fadc450",
  "name-candidate:0895130f7c65d0168f19b38b97372c0d33ff6141b89838c714ea5155c0325a2b",
  "name-candidate:0b01699bf673f8b13b04053b91e4fafe3a2ff3a513c43c8c900c024f8a73d8dd",
  "name-candidate:c2f6a8be99bb8accb276245d5bca8a028c72245e555d9a4c15d8cf374e96837f",
  "name-candidate:508d0381085e19862174d6b7bcec8240a01ab78110372d576809830a7e32215e",
  "name-candidate:d58d27fa3ab905d9f1b4304eadac07cdabf25b1d7f91c9859f060fe04d3df32a",
  "name-candidate:9adfb71c782c55ea2dba3c77d5a741f3c1ac5ea69b758a82a286cda18beac417",
  "name-candidate:cbb55a6ab7708834f7db87a13c7bdf7e1068682fc1f930b5da587005e474e221",
  "name-candidate:f632c8d468117ab02816f792613fd6234fa060eaa780490a11eaba4908323fe5",
  "name-candidate:481cb78f2e29ff7c907fccebe4e30b560bad6b0d419649ed55948c7cc5542ad8",
  "name-candidate:559addedfaaa16e652defd20f06c46b512050e2634c151d43ca9f0ed4e28e34d"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L39873).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
