# selectedCandidateIdsChunk0025

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4fd937b8c23b9eb7abcf5db5ff89c1587122b4e28c4201cf511df72ecfe8859",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0025",
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
  "slug": "selectedcandidateidschunk0025--1aa260105b20a55554d6274b",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41572,
    "line": 41505,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1aa260105b20a55554d6274ba65bf458b4b035c5685d4c5d4e54029199899008",
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

Occurrence: `declaration:f4fd937b8c23b9eb7abcf5db5ff89c1587122b4e28c4201cf511df72ecfe8859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41505–41572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0025 : List String :=
[
  "name-candidate:c4c30fd955e891b0e35898defa10aad48331781875af27e320abeb79c1b51130",
  "name-candidate:c0594c23406366946bb6523b7c9d27f8bc827042d106ea7b92cda419e4262194",
  "name-candidate:a8bafd9a8abd7e1b977193f88c933534bb03197c5a76ea910a77cacaef1f80ae",
  "name-candidate:d335a1a133469120ade344d7e7d4b5e2db2b7cc1fe3e3be75aff4e12da9cce05",
  "name-candidate:9b6c3e3f42698a1424177633a6b7386c447d6d511e98b7ebc8261d5f6dfb357e",
  "name-candidate:309d5d019adf192ce2dfcfabb9c115728434793e05cb1af6126e9b5f160bc996",
  "name-candidate:05ad8e8d8309d79ee8ab5f18b13707f9ab66791f7ad6f8c2ba3349acb46035da",
  "name-candidate:6d9588580b950fee702029fcf27ab9bad2fc0df4d588ffaa6fb4d83ba4595ce7",
  "name-candidate:5eafb0079837a7247195f9555de736c5d94f8fa4711b6201e3749a87672efc24",
  "name-candidate:3290d1a6bc9224996165739d59cfd95e246e5c043383417e10aa5f2331b06f3e",
  "name-candidate:ee30a193d6361c74fc2d15908ce05b1dfacfdd874c6bcf2f59576d61b33362b0",
  "name-candidate:54f888df86e5929f4ed3f958c473b1dedc3aec38e7faa5fd571a51ba687efcf8",
  "name-candidate:6f9222c2d03d2083813ea96d9743e948214df982462830f0b7ad1c7c47e04af1",
  "name-candidate:0d95a09a2b9b46b542cf02e74be99b7fa70a407fb4664bb44b06ee53200985d8",
  "name-candidate:dcab31e68801324331ef7f2265451c8a64f3574f6a876f8b8caaca310d865094",
  "name-candidate:34dcc450cf65c3a8490237012c84803ac318b6478258e7f1923b8ef6ee09e132",
  "name-candidate:6d3aa1bf51fd4a7e957bb160cdd9baf9ca47301d60f6ea64b38cb6cf1ac5650a",
  "name-candidate:8df5feb4f02501f2e115bef6353c9927b6d298de22876e87c3bc275b33139a68",
  "name-candidate:451804c0e01ab2838490de39c1c61590e0788690475d41a4fcb5178cf89827db",
  "name-candidate:f26e5ce9c4eea6449d6751bad45662b1512b15524cd06506859f7ff8566eb2e5",
  "name-candidate:559affd2ae8cac453be5286c544066ef9775b4bdae5dfd8ea833cf0b7f32109d",
  "name-candidate:f101d73067f54d12f205d1d7d13500dde9d0392cd8a10e53351490952448834d",
  "name-candidate:f88314e0720fc72e168b9ae7c39ffe7c6d3c1011fe0f01281af4ac5fd34cf075",
  "name-candidate:560f2f795ff1e09aa4d92e71d15799369281c56265c642cb5ca00151fab0e22d",
  "name-candidate:03b00461eabb33161ac73c916fa298895cc70044341ecaf004999f3a3f85d123",
  "name-candidate:bb17a57213a214662fb0111fa3c4102ab14e87f7d315a69206badce0d101cc2b",
  "name-candidate:d3052e9b5f838b4b79dac1e98dd698ee9f96d1dd68f17007d74f885fde3b31f9",
  "name-candidate:74f515a97134b8ba622e4b2971f39c63539d0e60701672a2d5ec1733b08b2781",
  "name-candidate:dbca5d07414ea107d41360aeca658a96e3f7942902d218304518b28f1e8ff3fe",
  "name-candidate:a8c471a066b6852b145b9f417ee4b7034c218ffe1a53d2ada5d8a9b29e5b9109",
  "name-candidate:2dde881d932efe0fd17caabe48da211f2e968217c1d0440aff1ece3a75d1ceba",
  "name-candidate:936c0eb0ffd93c0aa98ccf244e9553abcd835eca58e986fad1d20dfd00c23561",
  "name-candidate:771854924b918bfed9315bd6dbdac8124332b01a12488adb0b1de490a26ef6d4",
  "name-candidate:22cd8ead57aa967117ed8555b25f49227c52dcc811b79784179e7be8ea4d9f91",
  "name-candidate:88d5c0e0d8070ee93710d11403f44282f34f81a7b7bb91bd1cd5b3a2232802c8",
  "name-candidate:304f408d8d546ad6411eaa1571acf5e8aad8adc7fbe409209cba8900f0521b29",
  "name-candidate:1cf3297174459009e8ef18f37b12e6a8ceee4b3cfba8b4f5c64418003482bb2d",
  "name-candidate:91bedcb5a79d806da3ee983790b587684b8d79e49e1363093cbdf8d4172f286b",
  "name-candidate:7894dfc18c59fa86837031ed5a73d8aff0a1d4f222288afad7ece9173e87777d",
  "name-candidate:a657bb8517647f6c3bd52ca2e9502836000ac05a13555eb8e51bc9df2f3a0587",
  "name-candidate:430804ce049d219b0775f785e7398f02a2ef19295d51eb264557d13c8862cdb1",
  "name-candidate:6cfb5150a6550b00f56e44f110fe156c3e6f6c1699c9439d2a7d795424dffbb6",
  "name-candidate:cbf0d77e1ce7b84b8d428b17a74d6d0ba35198066627afa4416b68653cbf5954",
  "name-candidate:bf61ed33f631eb33a86f14c9259814593d7b21491c8a6f9df3be058822648f95",
  "name-candidate:aeb5fce726de419026222702eefacc9f84a6d50c943d52722711a1063561c0d9",
  "name-candidate:c34ac29312b988670dcca49551190e262a827d50305a298e937d3e1f8e17d7a7",
  "name-candidate:5311d05ca3e2f8965a1016843768548092081d21ff35d78f21ff7ea1c74dadf0",
  "name-candidate:d6210b8628bde190dfc31a34bc03c1c791b9dd76b9a81736b7a77b0c220fe981",
  "name-candidate:8e15f9bff50c9d9857b92c91907506d2977096bd54ea386eff51846aa3243c08",
  "name-candidate:c9ff6c0fa545835474fb9090646855fea1afd589870ab1cc672f78a2ead6fdeb",
  "name-candidate:592b7ddb2cffc29b3639a69522d78be0d3dbeb31e28b5e5dcc81d56bcc6f64c3",
  "name-candidate:a0aa73ce24d43df9099027d82ad580c292f56756d3901d35ea67eedebd07d662",
  "name-candidate:4a89ef8816ab2a1b0e25ffba3e77371614197a33301bdbdf23fbf43fd2c258c6",
  "name-candidate:3d8c4b4e181fe038b7f6dc11d604e0cb5a54143d6126f6dc0f64c22945778678",
  "name-candidate:dc77dc42d3ac39a22409dd959568404000cc682d1ecbed8ec4235fed70e50d5b",
  "name-candidate:4e89332d8e5eef84d8e5a3502093d90fb0cde4b2b6a2e702fba8e978da9b603a",
  "name-candidate:cccbd4127fe7740c71328872a70e645b606e11b3a4874ec512b14eed41633d2e",
  "name-candidate:b4ecd99d822ac0caf15afe4332862f1f779ea1e8a7ec10a233ce8de726690816",
  "name-candidate:39cd81217db481095ba17b4abc6dbfdb4a488c36fa8085dea7176887aab627a3",
  "name-candidate:4c051dbbbd064698827c4e47f886556114b4bb2ee7aa83c850d9c8048817e4ce",
  "name-candidate:89140ce4560cccd80bce29a730f22e1e8b92b44aec0b1ddf9ba0d0c288860283",
  "name-candidate:b3a96d6ef26170b33ad6c632aaab1bd128847e6e8dbdc90c3e1803a390c084a6",
  "name-candidate:09ece5247cb508f55aec36554fe8ccb82d310881019cbad12a20f4b4c83f4fd6",
  "name-candidate:2e2fe024927218ab0dd87a9672a3b9278a693e492a8e612cf007a360361a27d1"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L41505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
