# modelSelectedCandidateIdsChunk0018

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f4b8bdd1aca6f6b172c897dae0d0cd108806582ad6ac0d2725a54ae3029ddc1",
  "kind": "def",
  "lexical_name": "modelSelectedCandidateIdsChunk0018",
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
  "slug": "modelselectedcandidateidschunk0018--709270e76c4fb3f972fb95b2",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43226,
    "line": 43159,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:709270e76c4fb3f972fb95b2dc5c7b2a271c6c752f933795fdc8e4fb48181848",
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

Occurrence: `declaration:4f4b8bdd1aca6f6b172c897dae0d0cd108806582ad6ac0d2725a54ae3029ddc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43159–43226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelSelectedCandidateIdsChunk0018 : List String :=
[
  "name-candidate:9fcf61b611c99647abf8afc25dfaf350b49763780828e14f940c5f5769f2bd59",
  "name-candidate:54c9d389fa20f713b388dd631304ce7ef06289290f88a5b3710bb7579e5e9169",
  "name-candidate:c87a597dfc8855c1545bfba600fd56ce219a57051eb173d4f7bbbd8ac9145669",
  "name-candidate:4b7786605fb3dc0717d513cc5387adf421c1be9f978e6047a4bc3b2d951a3195",
  "name-candidate:e540739a635b690e9ff0fc5579420720526013c4b9723bc667ac45b0e2940ea1",
  "name-candidate:5adaaf05fcf7511f25128895ba94a914a96e163d79880153f4ffbd65ef07a684",
  "name-candidate:93083b8fd8790e6edd527b93aae3464b3668dfce1813b7056c117ab43a3f1196",
  "name-candidate:75bcf2fdde95ea052b710384d8e127aba713e51c8ecdda008ac85f810830bb42",
  "name-candidate:1a9089d4b7031151617819e6363b2a8244dcec3b4acd61b4db4a2e04a60db9d2",
  "name-candidate:7184833a67e9821ba1b569bef754506dd260cc5d320708abd2af1145b5f0fa00",
  "name-candidate:44f6d59b43e64f884a909c4688af6ef4d4a6db895167d51b1ff39c6ad16ae8de",
  "name-candidate:8602a7476437c8f04c3d644fa6f2859bb9c81f78cd85fa9cc68517cebdd8c47e",
  "name-candidate:6ee36e32cb3e7f2c2e57f79f1953f861156643fb11183b05a793b471049dd857",
  "name-candidate:392351fa98a67dab3e06ea4e33416e6cd72ada922547e6a301bbafff727a9e3f",
  "name-candidate:ec5bfd0a81ed7d2a37e6dec6dd5329dc533fb387d85a324bc176459c21d25238",
  "name-candidate:3a01b9e62a4db46567ea64f4f2979d03f9ea464ae59994e62ae90a195c56eb91",
  "name-candidate:2ab1e3a4cc91345bf0244f04b5a669e91d9c357fbdf49a841f0f34bd0e8cfc58",
  "name-candidate:e2f7e8f982d456685a741a0e086e9f949c807d6c0cde74af688d23e54671423c",
  "name-candidate:bdfecdb59e1e83d20ecf6f40ea1b091512da7ad09a7a5db5d152bd3b519684c3",
  "name-candidate:dd246ca565eec6c849dccc57b509ce0376109b29e2cbc87dcf8d6acdb5f96111",
  "name-candidate:c720dfde951eba499eafff8d842d8a114290c9139ca9883f450bfb7e9af1ec82",
  "name-candidate:d6c8a8ed3371cc799eb6b16d20d08d2f170994c34a55d9021f93307d6971e198",
  "name-candidate:71a83e4ea97cb4129041b7dc5cf8a5a48b54e22dc523c9322b3c5d449357556c",
  "name-candidate:aeba3e905ef1529fe957269ce4574fe38bf9efb6881d1b5ccb5d3784e3339dbd",
  "name-candidate:b7b9222005cfb71aaede0086aa070971e37f292afce47f7f6dda2fb8cb1c0d07",
  "name-candidate:2887826bee101064f6f3cb0f9eda6264c6c0a7df3d22423313cf91f7d52a06b3",
  "name-candidate:d939e161605a929964ad6457c2dc56c98db9a5c8e3e94d6c427323edb62f023a",
  "name-candidate:58a45b740eb60a25595b4c093213ddb367a3c32a48dacd2f1f8065c810a9a99f",
  "name-candidate:94ec16e38840e770f745b92fc046e38aa4036733e0b522a17be742c165250ddf",
  "name-candidate:04203fb346acf08543520ffc87458e9000a69fb10bfad01c9449f97e63615951",
  "name-candidate:5c12a75b86405277ce33d146eb98fa3e7435b56b5f29a70595165dd3200f1cd7",
  "name-candidate:639cf248d69940fc1e977103bdd5be813cdc3e87da53847b34c7e1f34abf3bd2",
  "name-candidate:42049f86d522a6b3b94b87f14851d326ba45fc4f7e9755f601090b7868b66f8c",
  "name-candidate:de10244d0362279cbb12799ad9b153c05b46a043a98799a40103804c38257a19",
  "name-candidate:8b17357f8c0fdc9ecd477d2ac29c4e924cc0140eb6f557abeb6c36143843e93b",
  "name-candidate:bb2dd2d62edb6168c02329b7aff69f892528a3d8fff3739cc831bbfcc8453998",
  "name-candidate:ec9afcd87ea4ee38bbfa8ae29f7813da0ebb00dd241201d7d952f44b36d85326",
  "name-candidate:53ef82467aa0995a57f65abedc8f54975d6ea5ef34a05049c6bcd45242d1d15c",
  "name-candidate:972c8aeb878aa43d2043c0ae050994c906061f1b61a7a529e7f1e02cb0fb32e9",
  "name-candidate:1a88ac9aca7f40c26f00ddfba24ebb0e70a5bd0be037cfb424c8f2d4cfd3a88a",
  "name-candidate:343922738e9c0eac138b84a6ad30d685c5ff898f85b05be5d1bd1560671ce81a",
  "name-candidate:c9c6e58375019f479f2a4d6552ac527dbe6d320c70343eb7e23383b7d4916972",
  "name-candidate:bdd78c830c116e608d87dc23bfd9c0b402ad44b58f0b7d3ff2e6a23eedea6d41",
  "name-candidate:75c1cc6b8e3d381ba29c290b740a6c4680b3c8431dd2ee2fac0e7bc3ec6be0e8",
  "name-candidate:ed09a85a03ed5a830951c836b24c1a6120d28077115bbe8c3ecc4d1e7f40f3df",
  "name-candidate:8d9d74b33b8c5605007286679e6706f793a6f8efdf71ff77db7b700c26682aad",
  "name-candidate:cd012a5e90da295ff41586937bb22ef09c71396a2a95dbd4c5c19bd124f0dd50",
  "name-candidate:96a42fc779f99f290b462239c022b7efe139eb8c292e32a8ae3cbf3538fe4319",
  "name-candidate:9b4828197a306ab0073804a139c21a6f4d18a1a475b518440c1aec3b78cf970a",
  "name-candidate:5f37b4ef36308af86f484173991b2dae7c6a0973dfd211bbe4376ffb91a2a7e8",
  "name-candidate:79038785ac3c84c5868041d978ef98fc8355fa8ddb1e4e40da618d9bfe80cfa4",
  "name-candidate:fd9c399d7c690daf20d4611386f043f8383592435b2453e838cb3928eacad49f",
  "name-candidate:a029c76e6351ef0c2ac6c128f636fdc60f81df2ffd4dbaf698b9021e711abc9e",
  "name-candidate:37fdc2399aaa5468c31eb47d4c5760b30faf5040622d9b649a41a547189a72e2",
  "name-candidate:1bd684007e2fc5f2aa035f23ef404471461a40295e5973fd610bb347ddeea354",
  "name-candidate:30141ec08fdcba7b7b8d5cf2abf5fb6ba23e0f61adf17527d74f63bbaaf5265b",
  "name-candidate:71927100f32d2279159bf764cc0796ded57ee1caa4bca409073450f3a6db149e",
  "name-candidate:3bf10902cfa8ecbbc2cadbf6b894ec6cbd9d3df76d2fcc476e1c4d3f8ba13107",
  "name-candidate:7979b60e5279d43ebee7a91bb0d190dca1c6c8fc65718ed0fed8eaad002523bf",
  "name-candidate:f7e17e497774862c19eac84fa3c4fc5b34c45e46b7dbdb2235cd86c80880a9aa",
  "name-candidate:58d6df536d00cd2655c5fd71b6977868172aad1095cddee320ebf85a227b7057",
  "name-candidate:525d701b2783cce274ecb82f52478a9dd5070a012a94e4e76e636356dc99c3bc",
  "name-candidate:dcb308093ce48022c39a717dbc9550b0803977f28c5f4f321a4199b8d0f2b7be",
  "name-candidate:998269e38acbc1fc725cbad757422a4234e33fd255a5e9bb7d8378a3d8cfa85a"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L43159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
