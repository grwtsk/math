# surjective_stableUnderComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60119110-abac-734e-6c64-c8d1c565726f",
  "kind": "theorem",
  "lexical_name": "surjective_stableUnderComposition",
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
  "slug": "surjective-stableundercomposition--008682ffb34c03959a8d1209",
  "source": {
    "blob": "ea4a4a05e684ec0fe9b6fb10bb2e41f71c224c68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 48,
    "path": "GRWTSK/Algebra/Surjective/Variant6906436175e54aa483e8a91cc0e90ac6fd17dc6ccb9a5c3ef0bf4e36c6ed374c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:008682ffb34c03959a8d1209ddbfe822ae371a5807b3bce12b3f4645935d4bd3",
  "verification": {
    "reference": "docs/verification/Algebra/Surjective/Variant6906436175e54aa483e8a91cc0e90ac6fd17dc6ccb9a5c3ef0bf4e36c6ed374c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60119110-abac-734e-6c64-c8d1c565726f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_stableUnderComposition : StableUnderComposition surjective := by
  introv R hf hg; exact hg.comp hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Surjective/Variant6906436175e54aa483e8a91cc0e90ac6fd17dc6ccb9a5c3ef0bf4e36c6ed374c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Surjective/Variant6906436175e54aa483e8a91cc0e90ac6fd17dc6ccb9a5c3ef0bf4e36c6ed374c.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea4a4a05e684ec0fe9b6fb10bb2e41f71c224c68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
