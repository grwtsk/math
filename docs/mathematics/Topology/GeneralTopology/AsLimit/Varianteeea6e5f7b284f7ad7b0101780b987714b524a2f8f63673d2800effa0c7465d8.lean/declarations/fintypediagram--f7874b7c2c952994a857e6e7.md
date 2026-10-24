# fintypeDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cf24f376b17fb4680022000224a1dadc24278dba174e171296028da933018de",
  "kind": "def",
  "lexical_name": "fintypeDiagram",
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
  "slug": "fintypediagram--f7874b7c2c952994a857e6e7",
  "source": {
    "blob": "02f4f22b183528b7fdbba21b8fa207ac8b7c2586",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/AsLimit/Varianteeea6e5f7b284f7ad7b0101780b987714b524a2f8f63673d2800effa0c7465d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7874b7c2c952994a857e6e7f511fb872862d1da43bf2004e89a689f363d6d28",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AsLimit/Varianteeea6e5f7b284f7ad7b0101780b987714b524a2f8f63673d2800effa0c7465d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cf24f376b17fb4680022000224a1dadc24278dba174e171296028da933018de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fintypeDiagram : DiscreteQuotient X ⥤ FintypeCat where
  obj S := ↧S
  map f := FintypeCat.homMk (DiscreteQuotient.ofLE f.le)

/-- An abbreviation for `X.fintypeDiagram ⋙ FintypeCat.toProfinite`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AsLimit/Varianteeea6e5f7b284f7ad7b0101780b987714b524a2f8f63673d2800effa0c7465d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AsLimit/Varianteeea6e5f7b284f7ad7b0101780b987714b524a2f8f63673d2800effa0c7465d8.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02f4f22b183528b7fdbba21b8fa207ac8b7c2586` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
