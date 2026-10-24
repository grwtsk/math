# primitiveElementKeysChunk0092

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79873d0413d1ff0ddc9c7ff1c037148b82519b8d049b6e5daf3df55a47d88c03",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0092",
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
  "slug": "primitiveelementkeyschunk0092--0359a0108b18e1b7c79c0f52",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6358,
    "line": 6291,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0359a0108b18e1b7c79c0f52ee691f961d62ab37276ebbbe3187ee88fd3fdbe2",
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

Occurrence: `declaration:79873d0413d1ff0ddc9c7ff1c037148b82519b8d049b6e5daf3df55a47d88c03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6291–6358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0092 : List String :=
[
  "source-element:f7c41d6ebd92acd86910539f79c751fa76c549081db4de74b00305f2512269c8",
  "source-element:f87d2330a21d6142e60e3cb61abf182b9d40e36d9a7439c66dd0cb715da037fa",
  "source-element:f8b7843a420d9c496afb2e4b371930d93a0177604df465d4cc627ac4eb92e10b",
  "source-element:f8f0b51c3bd2d6a28a13eb4e5a02bb695938f74719137e1ef4cc7dd915fff2db",
  "source-element:f94405fb34e8ee71430ee006e61b3b6ce03fe89539721ea88d6a8842eeccb22a",
  "source-element:f97469b92accdac5c70137a6783c01efe1f7b8f4d7ed6c27367ad4d1c2cbcbbb",
  "source-element:f9934fd151bd8fab58475215b697878d03f05a9d6423a0674dc38bcaf348a474",
  "source-element:f9a1d4659bf8b5a917c0be3fc6565fa8122f9d7c4925bcec09f9caa35629c2f4",
  "source-element:f9cd855745070f9bfe67406a70d4b3d31675c2ab1764c62166913f9d93a3ed86",
  "source-element:f9d2c45e95af0e182ae9612a57b4cfe49321808167b064d012a57333ea93af64",
  "source-element:fa1bcc568d618a7cefb1d51315e8abeb99bb5030efcac160132bf903111f57d7",
  "source-element:fa369a10dee66328357f997f39e8038ee9d58f082ad321fcff8301c27825076e",
  "source-element:fa3bff61614aec6f62deb0edf8ac24368dd7977bfab3efaad3501b6bb813b44b",
  "source-element:fb11d47af9cec8f3c1dfc623227c13589280037a1456cb812329a07b9a97dec0",
  "source-element:fb2f650710dfdad86f3630ec93c1e0e2b58929beb904301835f456e36b4e2624",
  "source-element:fb933b1b0252ea0b0c5ceb0ca8886fc9b3a12906076820531c71db84cb02db1b",
  "source-element:fc1a111417c9b6cfc9bcc26d3629b3792ce8cb1bf9bf6aa82b657daacf1c280d",
  "source-element:fc37cc4690287da4989abe94df84fe4abd6f5e682c145aa11a0182b624c34b53",
  "source-element:fc6a60962dda6301839237edb65e67f6172e13e940305e52dd94cee69229ab65",
  "source-element:fc82bd2897f49e841d119234ab88408d24b437ce56a4eba69ed3e5702c851de5",
  "source-element:fcb206132e9717ad21e0c2687e667c3fc5e4bb5b79832a15b3cea91e051ca6da",
  "source-element:fd50734757fb9b82a6b9a9aaf6024b6cc33f3328a862e648850819edb1b62ab7",
  "source-element:fd5179674594bf1cfa81890b6aafadf1fee1bc5fc657120e613b21823754b2d9",
  "source-element:fd75190d4c3ddf6dd24282a7d319bc3f5f7c044c5a7dbd5ff0922b6777a0efe9",
  "source-element:fd7c376fe547256bf6da19f5af735b94dac8b985885a507780f667f3af2d346a",
  "source-element:fd81c6557c6cdcfb53758033bd746f653ed44101070aaa543d5e0c0eca9c1751",
  "source-element:fdbcf3b33aff9a3bb0123675d6cbac7b80c2fef90f5a6850f796fd2859f5caba",
  "source-element:fdbe9d0fe51b561f4f5bff2d86525ce62607526187e3043b1852f1b0c0711a73",
  "source-element:fded8f6dd83b07230703a1a9560820bff7eb9a7b63f8ae4feee3dfa1978c4889",
  "source-element:fe09064a7543c450d76dffc750d2256c21d02b40692be49c37ca94d6d57602f1",
  "source-element:fe6f72d177e533aeaae8d9398f37e29714624f723aa634fb52e70dd9a89c4ec4",
  "source-element:fe705c9932706eef7dd24c580b18c14741909e3c083b64bdf733ac104dee9170",
  "source-element:fe96bde2f639e41973c36fd49b72a2a5102656fa0e505a30abc260ef4fca0e55",
  "source-element:feaabefae739fe61bb0c17c2ab2d13057962b9bb3c89ed71f36d02a990296268",
  "source-element:fed97b9254c7a1a69d0d43569b3f7ab46a164111b5936df4b20094e54eef8369",
  "source-element:fef521485e653f78354a6679de8f22d73810beca43a7b16ddce7fd0f7917f711",
  "source-element:ff38134c4b2ae15e720dfa76725018ba7e2dea2de703bcf937c4f9a2b446e38d",
  "source-element:ff4191c935de75220003f1f1c9d8072e7b043f161aa66cdfe894969e47d4a60d",
  "source-element:ff46839fe4707923d3c0419ca01fc449a82aef2746bb446a933a3b8690c7f925",
  "source-element:ff61cd1383c8405b4d47675cf4ea5b957800f8d764e39a8ba9060b66552ec20d",
  "source-element:ff74924768c0a9b7ffe30275e5fc0716071e1158da297d5f56491937ee747e33",
  "source-element:ff8a4f789aa40185f5989eee0eba02c3675b526fea530bdfc080255f3334ed8a",
  "source-element:ff9268bf8339578379f9e92dde5dbc01ea9a8fb9b2735140786c3b230c6dcf16",
  "source-element:ffab2b6dba3bb8042552eca652f34194a4e6da9cb4cf6e4c450a5e2a4187b5cb",
  "source-element:ffb1f45cba63c5766c3549d71e2e149c5e98e2b813bfcbca46537b54c4b50446",
  "source-element:ffb2844de5b67b593393f4c8773189bad54d88e9e9e1578a73fa0fa3ff8de781",
  "source-element:ffc05a1935f7d80c530a22a46996df19cf9b7778490ae2bce47525a47be32df4",
  "source-element:ffdd6f28ddfdd41376034b49f40a71a60f61001389f524d4e42a1df4e4a3727c",
  "source-element:ffecf40006058423184b02232a688c067c7e9c43f4205238fb787f43bc298314",
  "source-relation-witness:0",
  "source-relation-witness:1",
  "source-relation-witness:10",
  "source-relation-witness:100",
  "source-relation-witness:1000",
  "source-relation-witness:1001",
  "source-relation-witness:1002",
  "source-relation-witness:1003",
  "source-relation-witness:1004",
  "source-relation-witness:1005",
  "source-relation-witness:1006",
  "source-relation-witness:1007",
  "source-relation-witness:1008",
  "source-relation-witness:1009",
  "source-relation-witness:101"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L6291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
