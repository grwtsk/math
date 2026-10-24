# primitiveElementKeysChunk0060

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1e786696ba5d8397490e4c6b2058f0ef76671faf45d1b51908e8180c254daf7",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0060",
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
  "slug": "primitiveelementkeyschunk0060--e5c699383ecb19f7d53695e3",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4172,
    "line": 4105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5c699383ecb19f7d53695e360cba5daccefefef3faa20631118cfd10bd666b2",
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

Occurrence: `declaration:e1e786696ba5d8397490e4c6b2058f0ef76671faf45d1b51908e8180c254daf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4105–4172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0060 : List String :=
[
  "source-command:9f5e8140f53417d669f6eed96b8bb601516cfae254578b579deaeb6eb899b297",
  "source-command:9fa89d3ea5f9b322042a9ddb6567eab137e0b5a2edd785eeb6f3d66057514340",
  "source-command:9fd8332005099937cd300153ab0d93f16eef009feca682c3ca8144dec5218782",
  "source-command:a0439dedbb30a52e4312fd714735080af95ea51ba80f9104b50d789cfbf5f014",
  "source-command:a047015fa5351c7d596f2067e24981e2ea874c0d452c71e2b6f1abb08cd9b03c",
  "source-command:a0882c1950796ac183de210437f4f5c0c8a11065d67edde9d2453da5d7d77184",
  "source-command:a0a34af1a61f95c0b5d1ac7b95523efba62e5146703c953263ffedfae8cc2b3a",
  "source-command:a0a6b9f231398d76ffc5b5a08740912621c85833cc82e4374dd1b1e85c62131b",
  "source-command:a0aebd5aeb488a791fd16c704c074a0743f803a4a540454051bb16abb4d3c8fb",
  "source-command:a0c2b60218d7b36318580a5023888eb0ff06e3836bc2a97b55963c4a9279a195",
  "source-command:a0d2c073bd74a12f64dda51b2ce6de16cc6b162878cc991343da0c78facf2dc6",
  "source-command:a0e912218a0f5213753e9f58318e7fedea2fbd5ffe303183d273977e291b8adf",
  "source-command:a124e386cd29427b020152dc72970d494c190ec50ea59d862f810b9080360982",
  "source-command:a12707e02048b39582b28bac8030bdaf63b04bed3f4dbe281b724efbb6b1a2b9",
  "source-command:a12e644b66898197b29c56380dbf7a3eeafc7ed2c1e9a02effa07a87b2d002a0",
  "source-command:a1530c5113b0aeba3f7e4c0812eac95a24355cc5a0594f4693a235a713eeed34",
  "source-command:a163125a0b863fee0ebc4622b31c9b385e729c52f2f3558e801ab1f29d380963",
  "source-command:a18284ab6e038227b8fd7f6c19e5abd9d4195b9195968cb52e29554d74cd2cea",
  "source-command:a189b0f2424d85bd30675edf6321ada42543e2171afc4fea108a971fcabef622",
  "source-command:a1a7675cd80b3060d6aac788eb58efcee8726f9a6c0d2f60732472b64034d76c",
  "source-command:a1ecf45daaaf006650b8c2d20fe493faa6b65aaf1633c8694a193e5ad0bb4298",
  "source-command:a29272193abc73567545f96485c6fc9eb58c64264af23985e7f75cc364030915",
  "source-command:a2d6d8c65ad3f3e96b208812b22b0c9b1b2ae326129a08daa0021a62624bdf75",
  "source-command:a3614f68e37d72db031967abe14665654cc1fbb2c0bcf6fc6736feb1fb88e7d9",
  "source-command:a37bf5d59c0c23d37c2cf76af1379d3da7f81124b9571405a6d1939d658604bc",
  "source-command:a3fa9289a964f8a5dabe6ff9a8cceeec6577703e5ff56306bbce71170eb91f90",
  "source-command:a43bf3ff05a8e772839ab7f971bc51c304c6eeff76f60a207f08e7c4217d90c5",
  "source-command:a44449e83302526e4613e307e6ab76dd418da859c8519dcf34428905678f1ed2",
  "source-command:a457b4a33e70e088ce541f39a17009dc349d78219b41420f0fc040f409f35e97",
  "source-command:a457f6ca595916340b30bc1e52f715e30d767ae2050249c12e0c1cbd5f77fdaf",
  "source-command:a45ec8ca1d4d84a26b4077fdbeca0f4e38c10964fc0bd1eef93f5526d770ddc7",
  "source-command:a467d9ecc421f2e116909c431f76b11868bcd1ac85ba047a779f9a98dc0f27de",
  "source-command:a4a5d5f0e4de45746cea1a3fa24c536ee0abc1a5968fe1076d49564f0c8184b7",
  "source-command:a4c0ed6449da69cd21391f9000a7a69f114b7da4f1937f3f702aaf3bd33d4213",
  "source-command:a4f06bda76dc030da4661cee3045e9510d2d246fc2dd4f05b1e1032ac4b73587",
  "source-command:a4ff9eb245affef9a82c0a9065521048d8b2475523360398f8ba1161a04c5dab",
  "source-command:a514422bc8f50c2e1475686d02c9835c1458bb37d0b95feb19371c8096850e8a",
  "source-command:a53c85d54bac54e71c1ae37506aa88654c94862d257eec1109cfad9d0a561270",
  "source-command:a57def0c343123d0b4ac3e69b2d9263c1a0f79220a13bc317172d85a0feb6c55",
  "source-command:a614dbeacff83e9d707bc2deba6fa9d8d61e654d4e95a58210a51c716dbc1860",
  "source-command:a61549a3b25608105f457d14b91e5bc054217659afda1fc80879250c0f936ece",
  "source-command:a6b3c98877a24d8507c6131988a3ebeacdfbf178dd7987a2589b4f1aabc68a3e",
  "source-command:a6de66f3ddaab2bfa54a4cd131a8ba1002f2c21d9e1e08afe62ef0200610bc95",
  "source-command:a704de2009dfb8af62101d99bfffa840567cb0e741d2fde7479f0dcaac9568dc",
  "source-command:a75792d0650a886ba538e874acc0aa772a6bd9f6cd5759150dcd5d26b90b31d7",
  "source-command:a7fb9723801efd01d86014e4ca1355c5fb0cb755e83e2c32d081e47aa06ac012",
  "source-command:a8493507490511ff80c0a147790391d87d220dbe54b5e545935f1bc8f5939612",
  "source-command:a84c4e6cb08560482fbe49a60f5a29e11962f216c9339f2e54230685de24dc2f",
  "source-command:a8592049f0f9cec915cd717040fb5003c81b87c258d8251f7a9f10cd762032cf",
  "source-command:a8cecdcfd42fb348855581e73c93ae83a049494fb282af3b0f31c6801a27975e",
  "source-command:a8d616c1bcec68c12d531a91f5e1409915951fc82fa8671b61bdbce385626e0a",
  "source-command:a8da59312cb8e144312243fc39c04a8f1e018f752cea35071ab4a7f7cb096ebd",
  "source-command:a90cccf9db6bad03f3d877edc0f25f3c0ab4cd73fab29124d2832b365e3ad527",
  "source-command:a9225f257aa84eece05d56cfefc34b7fb5324de4dec22c79eda6274beefc9c32",
  "source-command:a92f422a7e201d1fe0c2ec31fa72d7eb975cf865b5b9b8be2309d5cc3fb04947",
  "source-command:a9328b4c0bf03a7dfbe853152e16f397d105f0599db36a499973dd41b027b6c1",
  "source-command:a93703e031df1a5a3e8c63e9633f968515598afa170f24a5bf2d719fe5dccde5",
  "source-command:a9715f7d5752cc6b2922ffcdcec2bea1a23db43ae107aac2d15f2ea4a58b2305",
  "source-command:a97b30553cc54e92091ea5a7f5bc4caa70eff9e103cb15d3055331da898cbbd2",
  "source-command:a97efb26d6a04929f29db5cf3d70047fb258f636c5619837ac9359acd8c13c27",
  "source-command:a9d7d97b2a2ed8a4a73731198d676b77303cba9be93479443477b2788dbd5d36",
  "source-command:aa033811fd17054e5edfd08746ac9ca53d59c84ea818ec40299222c626bcd798",
  "source-command:aa70d85a69365de98cd73b086f2959e531e57cf40c6cc99780c45299bf693492",
  "source-command:aaa8ecb3c60ed7dd5e6a9eb2d403c382a53d37565a3c1ea5b1f9fbd95ae414b8"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L4105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
