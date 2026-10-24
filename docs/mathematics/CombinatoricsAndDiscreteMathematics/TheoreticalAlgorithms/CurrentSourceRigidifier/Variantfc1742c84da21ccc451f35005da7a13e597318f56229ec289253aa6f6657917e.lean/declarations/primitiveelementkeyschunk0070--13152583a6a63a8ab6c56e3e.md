# primitiveElementKeysChunk0070

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4e148158bd61ca544e0f3c12429b3376606bf928bbff00d216f86f4f1472f0a",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0070",
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
  "slug": "primitiveelementkeyschunk0070--13152583a6a63a8ab6c56e3e",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4852,
    "line": 4785,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13152583a6a63a8ab6c56e3edf5be5160bd55b9dcd3ef0532e8c54d05fff029e",
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

Occurrence: `declaration:a4e148158bd61ca544e0f3c12429b3376606bf928bbff00d216f86f4f1472f0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4785–4852.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0070 : List String :=
[
  "source-element:07906e3b30c85347016ccc6a8c46e49fde56036c5a7943f5c9d62a1deb8f2f2e",
  "source-element:07b8454c3182c5cbce04d0e363b38d6011c87e26a8c014351030f6be0a723f92",
  "source-element:07bbb8f3a7ad6f5f543c19f6348b8a5b36987c30172a5a975d4e04e7aa2ee95d",
  "source-element:07cfe3705bd1ad9311a060c3ea8aa9cf2077dcc82fb5fb0efd03184c25a23591",
  "source-element:07d0084eee2d76eaff2e8fc61adf59f9bb3acdef574fee414340926d840586fb",
  "source-element:07ec26f9a07e42352856df281415abc5dedeef484a075842afe62c294d433a7d",
  "source-element:07f276fc98ec38205a42326c30e3c022a2ac5893176a94b153c2a7b60d401ae7",
  "source-element:07fce9794351d123db40695c8c7b949b88049834b1b7b5e9ef3006f3270c29f9",
  "source-element:0873e6376d3896e9de0cedd77a3a84a2bfae5f59b35703430c38f8138b2251cc",
  "source-element:089cf3ff78e8f75c0915f1e44b8fa511ab0a00d02ad10b8d4f884a3d0b3c1a14",
  "source-element:08ba1b2da1166654f63812890b8ed8e30b346a7a3d27b9dde36ff2eed8cf660b",
  "source-element:08edd7f7d379e84f06cbd9875457c5eca15269a318b93376f391ca56698fc722",
  "source-element:091b1167bfdbe0a8df87787db1277e040efbc1c7057aba57467df16b3314ccf0",
  "source-element:0946dab868b41ea6b90deaf71ab7275775d65152ac1412310a8c0476786bdf5a",
  "source-element:095c05b2341e9c0a94c4294a2d3a91bdec3209fa2c70d2d0e6ca9ca139c8f3d7",
  "source-element:095d96c16b2934daab35c23ab5e1fc163de2dd55c9291d62db6e4722554ffba1",
  "source-element:098d5c85bc9e63e04e0104fef54f4833844882adf6cfa707457fc24271f036b3",
  "source-element:09a2098ee6438657f13dbcf015ae269dff3b6d1a36cd6483cd40fa34fb1e4ea5",
  "source-element:0a5558f1619deb5611881c0812c548ea327e9cf302918d13886d3194a06c23cb",
  "source-element:0ad808349e4ebb9363bec9e4eb990c86ba85b758e030bd697fdbdd482df344b4",
  "source-element:0af07797eccc13b8f805623e3c68f266d4739e65139bfedc46fb896d9804d4c2",
  "source-element:0af525a240304deeb32fd50b6905dfc1d80dedf8f630a3b7b8acfa8a05f9f90c",
  "source-element:0af84056e34435d1e9aa6b76812de85247f23d0b9e4f64bef83e565e59205262",
  "source-element:0b1d3f5cf8d9cb9173335b7d2550548421b17f1a1a4f1eb20ce5f6b806260e60",
  "source-element:0bc35e21f498c2058779871a098248effd603faa2a5e4163f8b7d1e62183bf3c",
  "source-element:0c657e6d706d33075b874c09868716f1f215e0302d3be20aaae91127eb5b5072",
  "source-element:0c86efd32cbd848eef1d1cb785c1986adb65c1c8d33d3011844fd3d750ab1bfd",
  "source-element:0cbf9bb5dee77f8424011ced7b4d3d54687b84dfbc2cc243df9188588818ff4e",
  "source-element:0cc5c703bdec1a2898d6b065d46a9a94a2c0c47277f8d77d30648912993cad81",
  "source-element:0cca17ef5ccbddc7b727d49ee2885c42c8233462e3e8e58681e4176d6695a870",
  "source-element:0d16b3f78fdb827c7aecd8160fcc925bdac64e29ed2f7b5f69ebb91cb69687e5",
  "source-element:0de8cfddd188bd2e33aee7f3404be0cf10ee82876c4df3b15f036f83d2cfc2aa",
  "source-element:0decaace47de63b3710a332a7b82b5588b07f52b2d49cb639e3ed8fda9116cff",
  "source-element:0e05a0220b659293d32fb518bfaadbf88b281eb27eb912cceec9a97cdda9e955",
  "source-element:0e183dc21b4924461a1498e1736d2d647e10d5b921ca00d842dc1f11d4860ef4",
  "source-element:0e338355bf7572cbd03b5cfba0aae746d687f04a90b7c515b482d69be85664de",
  "source-element:0e3510daeac367f9ae59973c50dfb274f3bf5f0c5e679c6cfe2df33cc3b0ddce",
  "source-element:0e3c94985f0a01b76c4a6e76ae4a5f1c4d1f09da62dc9af4216bf123b301e1e8",
  "source-element:0e4d55c8750ccf2f1dcb65634f7563846a1c2876dc472ebf07ffacd533980134",
  "source-element:0e688213cd15abbbcf842d1489031c5798cfd2f5dace8078314d198149cd9b94",
  "source-element:0e7d41343ed26653bbd206102af482e36dd7fa6af9249e3e3b1678b7a57f51be",
  "source-element:0f6beade45f9020eb088cc1932580c3f7853d57f1b44afbf18e3e148119308c4",
  "source-element:0f99ce0ae3d2c47da28ac4525b92bfe5da3b6d5ec1312cf8901b70a2f442d6e8",
  "source-element:0fa0081910ecf44f1b98a9b2c241269eb5cc5710d55c682ff2a335a76e1335b7",
  "source-element:0fab012c945b609ed6980db42659e4ca9378ca637644f3bc942f7ef8bab50c1e",
  "source-element:0fea33ab1d0546869fe7a557a87fb063945cc9f0eba4aca64c6d71809eba4bc2",
  "source-element:0ff7bf43064cc9b42e8da563aff3d995312c0aca40c030fb4a9b2a6334fbf42c",
  "source-element:102a9eaf2fbe6f5b5e9953ff8ab1ca11513d5f4f8fc8014899b973b4ff820951",
  "source-element:102b2909a9cd9e424f1358d955b4e114f1d32989fdd1c92226920a3aba93501d",
  "source-element:108623a7ba068def12ed1636be56160797f1dc48e2512b2746d427bee1f0f8f4",
  "source-element:10d31572226ee17bb250be676b29fedd81ee437e9982671b6457b51faa12e8f6",
  "source-element:1157923d9bb7711358508653e8211d1c477fe850488edd6e7f78a45dd89df930",
  "source-element:1161c38325a9baa9bee3f437384c856fbe1bbb30fa890438102e88b800426961",
  "source-element:11760d4e664968a69e2dd24d8ffeb541cd597abbf5cc3e83749c4dc66f99e21b",
  "source-element:11c07f45deecb9b2ac31262d54674dcd338ed468517071ce709ac635abcbfb0c",
  "source-element:11f322d0fadbe23c0a839d9574cd7863c956134ad3781ed777398e4cb5ec24a6",
  "source-element:126699d857250a9863dbd9c086149fe805e0be6aa3e3d3b7b3e9671fa8c4d339",
  "source-element:127caac4f672bc65d27b39bdd9671250891acf713465acb47fdd4b0f5529626e",
  "source-element:12b57e044f4b53a6a495d332a9cacf19b0ccdbb50e54847f169f3cd07dc28e5b",
  "source-element:130ad270cd9243bf69aa36cddd2725ecad5377c95445abfd242ea997ab60d194",
  "source-element:1311b4de7738e9e14748056886442226fa2957b1ac0516bf23a9f66d4a6dd216",
  "source-element:13cf0c1ff961607d440a8d6a3410b0e208562c9b83cdc636a49583b96187836c",
  "source-element:13d45aae391a9b3ba31452d7b4f364ec4511f594d042bf47536f3bf837346253",
  "source-element:1417f12d61151dd90e56776ff5a98b5dc6884e2464409923fdb06b61cc51fd6f"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L4785).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
