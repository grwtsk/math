# coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7daa4ad7931442a168a165bd1de99c809b0d59018d66839e872679b100e5fdd",
  "kind": "def",
  "lexical_name": "coefficients",
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
  "slug": "coefficients--9741f9cdf26f90ee8a64f649",
  "source": {
    "blob": "272826d83468df6ccbf39c6a239ef587b332aea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9741f9cdf26f90ee8a64f6494e5084223300fb1c18e5ed11fa363983905caa7c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7daa4ad7931442a168a165bd1de99c809b0d59018d66839e872679b100e5fdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficients : Fin 16 → Fin 7 → ℤ :=
  ![
    ![16777216, 100663296, 250281984, 330039296, 243427584, 95210016, 15425866],
    ![15425866, 89900376, 216879384, 277119296, 197714784, 74640768, 11640448],
    ![11640448, 65044608, 149733984, 181439936, 121764504, 42763272, 6108922],
    ![6108922, 30543792, 60667104, 59572736, 28521984, 4927488, -253952],
    ![-253952, -7974912, -35990016, -69128704, -67389216, -33002544, -6472934],
    ![-6472934, -44672664, -125739816, -185552704, -151859616, -65495424, -11648384],
    ![-11648384, -74285184, -195808416, -273248704, -213032616, -88017672, -15062102],
    ![-15062102, -92727552, -236582016, -320241664, -242589696, -97517568, -16252928],
    ![-16252928, -97517568, -242589696, -320241664, -236582016, -92727552, -15062102],
    ![-15062102, -88017672, -213032616, -273248704, -195808416, -74285184, -11648384],
    ![-11648384, -65495424, -151859616, -185552704, -125739816, -44672664, -6472934],
    ![-6472934, -33002544, -67389216, -69128704, -35990016, -7974912, -253952],
    ![-253952, 4927488, 28521984, 59572736, 60667104, 30543792, 6108922],
    ![6108922, 42763272, 121764504, 181439936, 149733984, 65044608, 11640448],
    ![11640448, 74640768, 197714784, 277119296, 216879384, 89900376, 15425866],
    ![15425866, 95210016, 243427584, 330039296, 250281984, 100663296, 16777216]
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `272826d83468df6ccbf39c6a239ef587b332aea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
