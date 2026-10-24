# modelSelectedCandidateIdsChunk0025

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa1e15edffd3243979d0fd93f7d5e81d49a826fcd3ca9d42f9f4625d99f52d88",
  "kind": "def",
  "lexical_name": "modelSelectedCandidateIdsChunk0025",
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
  "slug": "modelselectedcandidateidschunk0025--e8ca2aaa055dc7605e776e04",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43710,
    "line": 43643,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8ca2aaa055dc7605e776e0489927ca6af67c403d4092637be6c4242665f7ff2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa1e15edffd3243979d0fd93f7d5e81d49a826fcd3ca9d42f9f4625d99f52d88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43643–43710.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelSelectedCandidateIdsChunk0025 : List String :=
[
  "name-candidate:a95b3bd8f6595b6c38abd50d8437e76cc12a0c05b1400217182a1ab97c4de8bd",
  "name-candidate:6d661394199c0cebed1a6a94078d6b51d23e2b95a0a2dc468674819e91427229",
  "name-candidate:a8bafd9a8abd7e1b977193f88c933534bb03197c5a76ea910a77cacaef1f80ae",
  "name-candidate:9b699a71c61babbf1f100ed4fda635408375be6b195f0db2b1ed831d20607fdb",
  "name-candidate:3314c21a6ae4c09a49cbf69f2111fcedca421fa7a4bf91effbe469f072fc9b5f",
  "name-candidate:309d5d019adf192ce2dfcfabb9c115728434793e05cb1af6126e9b5f160bc996",
  "name-candidate:9be0f53bbff395f7e96685fb293620d2f3d98bb9f7102492704d5cd6f57298d0",
  "name-candidate:6d9588580b950fee702029fcf27ab9bad2fc0df4d588ffaa6fb4d83ba4595ce7",
  "name-candidate:5eafb0079837a7247195f9555de736c5d94f8fa4711b6201e3749a87672efc24",
  "name-candidate:7fb6b79202ace108fecc5adffece1e7af5c799221363c4f4b6fc47a6354f1fad",
  "name-candidate:479f97b1795a6646b579bd98b21164d02206ab871bb94ab38fca60cd40c72456",
  "name-candidate:6565c41abab0d05df487b1c8298d8c03916ba01021edb5b9fe2f21740badbfbc",
  "name-candidate:23ec025cc508f44e077566bd8647481f4e1d6084127627293d46ed2969433678",
  "name-candidate:6b8a4092a0d16d98736e215aeb38d39bca44c6adee7e13bd7429ac97e05dcb8a",
  "name-candidate:87f409f30e75014fb0b3d43a337ddd081ab8d03b52b53a59e3eb8dce6319c1b4",
  "name-candidate:e124d87e661dedcbedbaff95a9235abf6f666cf77b9d3f1b6b6c10eeabe362e3",
  "name-candidate:da161f1a0f226dcf8c7888a0f62f7f7f2b0e42aba9765e099080155c2c203408",
  "name-candidate:8df5feb4f02501f2e115bef6353c9927b6d298de22876e87c3bc275b33139a68",
  "name-candidate:9c7888c849d8486d8c65aa0ab062a89ce268b207938982e327ec3fceebbd3ad7",
  "name-candidate:f26e5ce9c4eea6449d6751bad45662b1512b15524cd06506859f7ff8566eb2e5",
  "name-candidate:559affd2ae8cac453be5286c544066ef9775b4bdae5dfd8ea833cf0b7f32109d",
  "name-candidate:f101d73067f54d12f205d1d7d13500dde9d0392cd8a10e53351490952448834d",
  "name-candidate:f88314e0720fc72e168b9ae7c39ffe7c6d3c1011fe0f01281af4ac5fd34cf075",
  "name-candidate:7ff46c6e55b2bb71e2eaed814f719a4c2f40b69a8744e630d581287b98b8b7a3",
  "name-candidate:e2b1ab85dd3246dd09cab3495a5f5d29326dfcb4222e1ea1c7a9928ab49a5d9d",
  "name-candidate:771fc6721142d39ef0fbd35cbd488b35a86cf1999278b34680a53bf3fcec5f5c",
  "name-candidate:d3052e9b5f838b4b79dac1e98dd698ee9f96d1dd68f17007d74f885fde3b31f9",
  "name-candidate:fdc8231e965872a43d260d41c49700358dade8b6bb047dddf91c1e0e01af170c",
  "name-candidate:dbca5d07414ea107d41360aeca658a96e3f7942902d218304518b28f1e8ff3fe",
  "name-candidate:5e3a098188d6f64b4d1c7f74afe02de133fa34cc4a16eeed7a60e4e5a1b05b3d",
  "name-candidate:2dde881d932efe0fd17caabe48da211f2e968217c1d0440aff1ece3a75d1ceba",
  "name-candidate:f90bb9de86cb6257f2976c30722bb32102e1475d993b93a0d8d39f1ac44a1cff",
  "name-candidate:c274f8b521a16376f86a9c2e4443c4734802a1a771e0df906d86e98d4fd0568b",
  "name-candidate:22cd8ead57aa967117ed8555b25f49227c52dcc811b79784179e7be8ea4d9f91",
  "name-candidate:64d84c1d3631e63145c42349666a142ba9849590eac5a22c4710a4410b50948d",
  "name-candidate:304f408d8d546ad6411eaa1571acf5e8aad8adc7fbe409209cba8900f0521b29",
  "name-candidate:8cd5cabc6e9419dcadee7c56641bd7a27e3d123f979a49dd9c9641a8acaa1be3",
  "name-candidate:8ecda995f2dbe44b126cba50162f65a7454c02cc0ed86d4bade2dc38d06a43ea",
  "name-candidate:7894dfc18c59fa86837031ed5a73d8aff0a1d4f222288afad7ece9173e87777d",
  "name-candidate:a657bb8517647f6c3bd52ca2e9502836000ac05a13555eb8e51bc9df2f3a0587",
  "name-candidate:ac15841ba34180acc1a0305fdb5b150a7afb7b1fdd4d43f92fb4eacd15b2e983",
  "name-candidate:a6e4b7c1679df2bc9b0cb14d4e34428a35bccfa79a809ebe02b7a454154192c7",
  "name-candidate:cbf0d77e1ce7b84b8d428b17a74d6d0ba35198066627afa4416b68653cbf5954",
  "name-candidate:bf61ed33f631eb33a86f14c9259814593d7b21491c8a6f9df3be058822648f95",
  "name-candidate:1e6856464bed14789b09aa56ccc2cb23c4494271f99f7e125fb0f258787fedcf",
  "name-candidate:0ffadd50204a5306c2b70efe526105482b6219dc0b89c1bd0109ae84a33855f7",
  "name-candidate:5311d05ca3e2f8965a1016843768548092081d21ff35d78f21ff7ea1c74dadf0",
  "name-candidate:d63ba5ace5ba802efaa3a9013da1594366ace493357a12ced1f09bbdcaa66be7",
  "name-candidate:2bf012e1c9150d53470ddce5022380f64e3a170b71e3a6b70bc1a8687811d50a",
  "name-candidate:c9ff6c0fa545835474fb9090646855fea1afd589870ab1cc672f78a2ead6fdeb",
  "name-candidate:592b7ddb2cffc29b3639a69522d78be0d3dbeb31e28b5e5dcc81d56bcc6f64c3",
  "name-candidate:873549191cf23d8c0df49fa45ee888d72eb3a2eeb52cb327ed287299c878e33f",
  "name-candidate:4a89ef8816ab2a1b0e25ffba3e77371614197a33301bdbdf23fbf43fd2c258c6",
  "name-candidate:bbab3956f3181fbed471ecec7f00940c49d78695f3bbfcf463b5cc87016cbd2f",
  "name-candidate:6e764949efb3f9bdb6bd22b8b5b900ba88ec6186d288fd54de906c200ed272f3",
  "name-candidate:0de45266054007358bfb2205b64af44cbad2fea68e590512b4c9fa2ab43de5f5",
  "name-candidate:3021f250ad050928c50f0924f3689d038c1a4283d137def886ae7bc5beabebc3",
  "name-candidate:7db728fe776e6a737f7f6098f593b9ee31d8749a480ffd9710f1dbefdb8ba8e7",
  "name-candidate:68fcf12b43ae84cdf6b836eb46cf0a39183f61e0458cab8d3bf8f00d09e6b003",
  "name-candidate:4c051dbbbd064698827c4e47f886556114b4bb2ee7aa83c850d9c8048817e4ce",
  "name-candidate:42fb8a92843a5c55b40752a48d1e73168ad803a2d756716e469ca2638509e397",
  "name-candidate:94af1293fc8c0e92d389839164a85a99d65238dbf556ff5741158a6a382b7060",
  "name-candidate:80e1c47266e0d3cf530f39183330ffdd9e49ca2d6e8ccf95efaeb31a2bab3d35",
  "name-candidate:2e2fe024927218ab0dd87a9672a3b9278a693e492a8e612cf007a360361a27d1"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L43643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
