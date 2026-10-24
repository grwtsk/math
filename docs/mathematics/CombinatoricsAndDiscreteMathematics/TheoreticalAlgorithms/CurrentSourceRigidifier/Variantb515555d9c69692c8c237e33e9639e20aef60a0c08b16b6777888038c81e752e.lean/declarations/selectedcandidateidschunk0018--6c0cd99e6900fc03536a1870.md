# selectedCandidateIdsChunk0018

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d9f6d0aa684f60994315891ab8efdbb94ec0524b0c5fb1d34b9beb9026e43c0",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0018",
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
  "slug": "selectedcandidateidschunk0018--6c0cd99e6900fc03536a1870",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40646,
    "line": 40579,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c0cd99e6900fc03536a18700594ec33711e3b3173c5b80053a9f0574a5639a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d9f6d0aa684f60994315891ab8efdbb94ec0524b0c5fb1d34b9beb9026e43c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40579–40646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0018 : List String :=
[
  "name-candidate:37b8c587ce3979f95d2d344095d29f6fa52680a93a77d020a6ba50ed3d6dd110",
  "name-candidate:93fd7c3f5807c2d46779e9a35142e566f58fd19c9df9385ead2f7ad6534c8221",
  "name-candidate:5b287dfa4f686a6edb042a2de3b52ea15189307616df0aaba6f7d7d9405246b9",
  "name-candidate:8604039473ffdc87ede267c26e092003ea234f0f96f140ace49476be9e471c13",
  "name-candidate:59aec4a953f4cc0991a2db4ddceafebdb7a5c28d430cd33fa9823cb789054003",
  "name-candidate:c089b140b39c5bc89eb815c936ebb174b1ed673089b7209a7cbee199d2212493",
  "name-candidate:9b4828197a306ab0073804a139c21a6f4d18a1a475b518440c1aec3b78cf970a",
  "name-candidate:a6863f8ecd2ef673971fb3383f4181697eca19c6a7c2c7463771fc92c5154495",
  "name-candidate:79038785ac3c84c5868041d978ef98fc8355fa8ddb1e4e40da618d9bfe80cfa4",
  "name-candidate:fd9c399d7c690daf20d4611386f043f8383592435b2453e838cb3928eacad49f",
  "name-candidate:a029c76e6351ef0c2ac6c128f636fdc60f81df2ffd4dbaf698b9021e711abc9e",
  "name-candidate:81db386b4fdeb9d46c519e057cd028c5462b30769d97a425707b6bc9fdd6331c",
  "name-candidate:1c62af4b6e9901d7b258d830acc59e0749a9aa647d981a72201283acefb30e08",
  "name-candidate:30141ec08fdcba7b7b8d5cf2abf5fb6ba23e0f61adf17527d74f63bbaaf5265b",
  "name-candidate:507b2205a298e52d835e9b2dbcd0c6345ed7416760e7799e5d615dc4d8565e9e",
  "name-candidate:64ce0ecff207f047f3d18794787f78dca85e12baa705454cfb1786df0602c1bc",
  "name-candidate:80ac1832e14ec089c26dcdd5fbebdbfc3b3216d3fbf7515683239024c4891844",
  "name-candidate:f7e17e497774862c19eac84fa3c4fc5b34c45e46b7dbdb2235cd86c80880a9aa",
  "name-candidate:340da6e7fd33ffe9283909a4c447786657d143a8ac8fe69bbbb1c32729f7409f",
  "name-candidate:0cc274a8c93c095c5a77699b5840a972d2f0fd80735b783351e9560c239874ec",
  "name-candidate:6dee5351cd18cf18403089a67142027cf9df49f1359b0e0fe6bf9bc05cd10090",
  "name-candidate:e20766541fa36dc9a12ba4994b78b65a9060c86d63e083cb780c24d6d9b2bf28",
  "name-candidate:b6bd4238562dd69ad83219893d488c9b06db5528fd41af408df2e51b7fdc7f34",
  "name-candidate:b64c174c61bd042c3b790fb445a30f21606ac7a4c0c41ba823396f9c53812666",
  "name-candidate:d8b9251b9afd1a3080363fcfe1942ec7e4c4d2482ee205afb98b2398e546f78b",
  "name-candidate:4b972af524b58f14c6c46df1b02691b43c34f08889c83d1adb286c18483dba78",
  "name-candidate:9b95d299b9fb7ed12c72448435ffccb62ac858d0ad6a9cab9e148939cfbbf52e",
  "name-candidate:224981f4c3da1b75fe7cfaf8efdd63a65a57e87f94494be23d5a29b4dce5aeed",
  "name-candidate:d8f0c55f5a2e223759168e65c1bfe10f99f23a4ee8fd24c6e2d4070994ac82a7",
  "name-candidate:9cbc5f53ddd0bd0308eacfb0fdfd62c2364d71e3144512a884e3b0263ae2e05c",
  "name-candidate:746eb2626b0ae1f143904a6e32aa951a4ab9c471c00377d423dbc2ffc324e238",
  "name-candidate:5378fda38c9eb07eff6fd26ca69978598a5ea1c1b0d7468059eda299d381bd3b",
  "name-candidate:19d5c833cf1fbc6a9f1fcbfa27f0714e3d60aa85c1b7c179ce468f1089e2f013",
  "name-candidate:9e03bb06d98c17e2eb509f3e756b0597b96e18e719c77cc971429538f80b5dfb",
  "name-candidate:036538f893603e116e1da09da8101281ad0ea7aa2a5964944b5dabd62955d7fb",
  "name-candidate:299f28123d471e2a0c6dcbeb0ce673e52f8dbc5657f75826c2ac2e0f2e143b57",
  "name-candidate:110bc429e3533bcd49bedf02aed93fd6ea21126589f931e5e287b79b204cb0cd",
  "name-candidate:9fb1884f66acf8415038305f4b9d6d1bb552d0bbfd2d5a035f54debb04390607",
  "name-candidate:fadb2a1678267d12c1f47bcaba9ab93b4065799378e5fbbf17f704927e600423",
  "name-candidate:e43f6fdfeede603074bbb6aec175814f75ceae9e2061504f4862a183ae99007d",
  "name-candidate:843d76f22aae057f30bd105dddf5e232de6b34f4dbd4bdb51f7493080f3cc81b",
  "name-candidate:f0c958b86ee461f0c25bdcec912aeb4c1eb0dc5aab32f6ee2e5613b65c35059a",
  "name-candidate:7d5dd16f294cc2402bbbce87df8a3a05ee09728569fc57517b55429288c7cb6d",
  "name-candidate:75c30c3f2ffe81d943df8ebd4e0fca0d27a781d84355323f918a75904764ac90",
  "name-candidate:d93fd7829c19d5797719ede5efa9c2fb592c1b2d3f13bbd8e039ca6cb5ae20c1",
  "name-candidate:f23616b72f27c751a3c97aa6a511c3c4e4ab228171ff2151f23316f8c252f70a",
  "name-candidate:c645e1544452668fc36ac5d0b7d0665b29414962bf75d70f5a4a7678192afe13",
  "name-candidate:cf0bfdc491f47bacc5c6b3d4872a7b1a360c4744e22da7aabe8a2bfc8dc2425e",
  "name-candidate:4712ab9a5d9204d1dd7775387da364cb937fb3f9fc01d9dcb0342622004970ed",
  "name-candidate:18fd668c55dda959c2ca88a8c044b368273ba1533e2ce3a7aee1d01070d6dbfe",
  "name-candidate:258cf3956f9bf7be9dc2aa2306003ecdfa9d8c413149fab26541e447167251fe",
  "name-candidate:a5403a598e371665f7cff4e2bfcefc1f9d23b102d8955ca34ea677947b3d0287",
  "name-candidate:7bbbe319ecc547d45a8beea9b834800ad858f2531faf7de1a1061c1674808552",
  "name-candidate:21f0881d48e3da1ff4e9d184f4eae564dc740400a16ce513dbc349b96d2f5a80",
  "name-candidate:793558c748e5337cd9b3757848060c734f4de356f1afeb4bbd8465a7e95b560c",
  "name-candidate:09a9c4b008839b081d92e3a6a5dfc2185766c4af0fa0d8e495ca42f4bc8dd356",
  "name-candidate:0036c3b00609b48c6a4174f96a9195dca4154295afe4ba62e849e68601502cbd",
  "name-candidate:da2fdc888c48945dfa0633a8baba8a6eec4dc56b73531342d773995dfe158ca0",
  "name-candidate:091f29cf314e732c68255236aca7ced57a77d0bd1d050bf0184664fac41b3953",
  "name-candidate:fc07d61e470ce0e2f50788975f08d57b1ea4a806a8d447bd154b4bdd0143a511",
  "name-candidate:c581e52ec053ea58b200ab497db665b0d1bfc4ccc2a7c51ea9eea3ec28457b6a",
  "name-candidate:079df394c1cd5e42409fca2810959870859df8abfea7c1fcaf6cac4ef5fc4426",
  "name-candidate:ee8959ba037aff6f56b919a360d60c736b2b622d75eca1e8f2119c560fcaf79a",
  "name-candidate:bf1cc99187b98e7141558bfa246adb73353409b8438dcf67a46bb574196e91ba"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L40579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
