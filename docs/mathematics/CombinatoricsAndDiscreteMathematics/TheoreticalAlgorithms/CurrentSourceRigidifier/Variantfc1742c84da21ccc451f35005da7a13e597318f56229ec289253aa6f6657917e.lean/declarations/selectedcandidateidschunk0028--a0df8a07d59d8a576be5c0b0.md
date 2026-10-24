# selectedCandidateIdsChunk0028

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:281c0ecc9d0fa243202eadb31147d08fc2d16b6c0ee02ee38f4b11835901a9af",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0028",
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
  "slug": "selectedcandidateidschunk0028--a0df8a07d59d8a576be5c0b0",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41318,
    "line": 41251,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0df8a07d59d8a576be5c0b078df6b8b9ea99067ccfb44ee8c41f41d1b202420",
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

Occurrence: `declaration:281c0ecc9d0fa243202eadb31147d08fc2d16b6c0ee02ee38f4b11835901a9af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41251–41318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0028 : List String :=
[
  "name-candidate:a27ecc9f7f02fbe8f4d34f9fee02e7344a8d9bb446c544bfe3d91b259a73de4e",
  "name-candidate:1995a5c967db0092c6754ae261d88ed5601d6f3703c43c95438dc78b6e9b3189",
  "name-candidate:4c3a1d505f72f39bcdfc92fb44893b885ec1ebc6ea48591d5c9f69b707256669",
  "name-candidate:4f4cc57d809e383163dc4fa524b9faa78affc5f9378329f6791217ef4d5aa1cc",
  "name-candidate:c22b273518c88e2573e4bcd6579d77ec491b89b1a71f924192d10e90501a1037",
  "name-candidate:103f0eb7a5dbdc845d9495b3f3b23bc1c1795edb929cf01d41aa50332f6e2fca",
  "name-candidate:0bdfedf1d911ced1a6b7f43a042c1a72203d3672f8b4876d357d7cba4b7e8e94",
  "name-candidate:5d9e2e59562b7768214feeea21b0ffd87912e6ab95a50de7cdae9465308a1de3",
  "name-candidate:ca991892d8f510a9e2ab0f204c431e4d29dad9c384513d22eb5f9517cec0a8c5",
  "name-candidate:604443d640e8310dcde7bbfbb162508b37a664d7b24606722feef0c9681d87b5",
  "name-candidate:414eedbe37dde6bd819b21f822416d385c4a35601a6259986a7d7832d945ef9e",
  "name-candidate:6292f33a2cef95ebd21dbdd3e4b21411adcf999583a0ae92f2d25b449714abfc",
  "name-candidate:62c27b97ccf73d8b3161457bda504aad3df2c4e61d7ca193dd44ff3810023325",
  "name-candidate:963a46bc8592410d43868a805ca16a5c22d9f62077670d2c0b368e46c1b876b4",
  "name-candidate:28740a225d40d6b961b95939313833f09578f91a19a50d69eb89b953daf920a3",
  "name-candidate:41508b15a1cb5c8619ce3cfce15321d4b59e38999c5d3f2c734c12b533f2a513",
  "name-candidate:0c6ee80ce06c5a71ccb39bbed6c78abd81427ff61b540adee2e92e6e78dd009c",
  "name-candidate:e5183fe45c794d295e0dde77f1ed4a33992fab4f49c2d79c1f2a5318df4e9ee3",
  "name-candidate:cdcdd4444336e0758dfef6a35967f650e6ccf0e384c8c275a38d9e7743d5376e",
  "name-candidate:9a4ae8b6612e2ba1dda1c063ff2613c23a5d4dd2263aff42cf0090365b06ad8a",
  "name-candidate:94cecb0fd57be87a368c7fcfb9e1ad3019805355229ce1dc0d3dc28ffe1a132a",
  "name-candidate:ab40ebb5f1b2a8a8c9c2f42f41695b260aa6b93629fccae514e2ae4309fb13cf",
  "name-candidate:a6b1980d3c22dfd5f2d7b228a285ca3a13e1a934c4fe7fdc3cdf6ddd772ca100",
  "name-candidate:46dcd707419e8216019790f698cdc3b57d3df7efb02c0dc8219e0f7fd8d2c2e5",
  "name-candidate:ff688eb786e70f371738d1eb5c7714ceb9eec8b1c651659df0a7babfb5abbe19",
  "name-candidate:117259cdf61ad15cb6fa6333f57bc8fbaf887994eff1c36d91c9894454fcee75",
  "name-candidate:cc70a5f4de698471f4a58af42a2f2035b3ac2d7fb2168c8efe17eb05099d98fc",
  "name-candidate:61765b294ddcf221ca28588fa56fe0326132f8566b1441d0e25cf7416c8b0b97",
  "name-candidate:313d17ff6ed3077911e38da7060d6be2282fdb5fd88239aa904b374053317236",
  "name-candidate:8e22400a69e0eb7bce526bdac9c6c963b539359c995f44b7152e03f5b22d7427",
  "name-candidate:28b3bdd038bfb9d7d67ad0ed1dc7a10670b76adae5c48b5616bb64900a05acc1",
  "name-candidate:01eb73dcbc37422fbc217502b6712774e7f4fcaf3ffb2ab269a9ad268c48fb4d",
  "name-candidate:91d2cf3f9e9b4299c0de459befd81f3f74606413a21767a2342ef6141f67530e",
  "name-candidate:31a8483290b9f130eb47097b3fa6495a978a677fa256d6ef068eaeba8d2350f7",
  "name-candidate:ace75c0a07f33e112fd115bb5e1e37808c8145fc7003aaaf66da8df9108bf60b",
  "name-candidate:360e81ed1c6886331d3a01d1440115a358ce9fc32b80236c707ec74f7a058492",
  "name-candidate:13937262aaf4d84db633680ff565e4574ca4142018f7ca870b8377ee73104166",
  "name-candidate:3948f13594ca9b8040ee135200117c5e0c84ace67e4a910453a19c325ff725ea",
  "name-candidate:1623118073c103f0e824708aa461820a2ada9cad3aacd853a7a3a113ff68a2ef",
  "name-candidate:99996955aaa70fcd3d79f3ca41ea3758c2961c61d23297e94e328874bbcfc75a",
  "name-candidate:7eb63d6858889867f4d68cba606699a79436ba2b12c656d5b660aa10536f6e73",
  "name-candidate:6860601779357c9712a17530b27d63a309d4715917ce6ef67326a3773b207c5e",
  "name-candidate:37a93760a2a6703335b993ea1e599d18819c470eebd57c2c25a03ca0d45ab372",
  "name-candidate:d2578922854effc60b11c5e6a7318dda1e86088f68e0121e8a4c9361188fed2f",
  "name-candidate:222a9bc02d8d1f9567183320a0da24e2d2d5ffab0dd7d010d4e5c494a528566b",
  "name-candidate:10a0552b446d2868072ab77071b692f84946a7d7976e199c39eabc2f1ce53598",
  "name-candidate:cd9a6f7e5a5913f8d7f9c8e2ed83a818561a383beaf475a4aaeff4d99ca4f18f",
  "name-candidate:509b7e2554752eb19b5f95aa4e5b0fa4d11c9c6629970a75f20c7dabf7b1dc51",
  "name-candidate:35f88aef2dbf588eed0c4ab639ae22a16ffac51fff8f976faca97a7c92cfa3b6",
  "name-candidate:ced6f9cf1a69ac77619e6584c81e98db90ba703bc6f03179c04d926c38293a01",
  "name-candidate:f6b8022ba226e60d82057ff3f19b2373acf2207efd19064a2331418f2fa31bc4",
  "name-candidate:041a43e8fc4e4783ccd164baa1c86340eb4684d93309dd2f0e2d774f254dcbc4",
  "name-candidate:800b82ea94c9de2f7332b2b36c0c17dd424d4c331bb9e15549128bfd4cbb2f78",
  "name-candidate:ca131770e96ffe8991d6eff7cb258840c7b495b5a97d9da2c44ffe4937fbfc67",
  "name-candidate:2247eb86443be736a923aec4a1419917a3333ad3ef63bf0d6f36843a16e8ac71",
  "name-candidate:3506ae5622dd1df96d9158c9fc66a216a59687e5dbc3954a281ba0bfac5c908b",
  "name-candidate:fcd4b8a2a621e781244446e0ee85f456393bff04c4abd9d01b5a06fb9408544f",
  "name-candidate:c818862982ab652af6b7b161c610470656063c7563a8647eff0bad83ad683dbf",
  "name-candidate:69132f1b0f8d941a90ceef0e4175fb0afc5278dd4c7ba25ff3c11faa118ba00a",
  "name-candidate:1847cd2cfcc1d7b7c372e8eccc51ecb2c345bf64f68bf1fb7c5913d55cad0937",
  "name-candidate:ad0829b42b01c6c17ef4eeb585f0872fc44335414454c40971eaec4b934d8015",
  "name-candidate:b0b589fec09aa580b9b4b381eca384148da5445fc173f3caf0434ae1a06a90ff",
  "name-candidate:744e2cdb230713a771ffce5720db6bf54aa4a603cc1a657371bc3acb3780b3f0",
  "name-candidate:ffb4d3be30634450340d9306ee51725a6bd41bf81077a4ed64fe032370c6aa6a"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L41251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
