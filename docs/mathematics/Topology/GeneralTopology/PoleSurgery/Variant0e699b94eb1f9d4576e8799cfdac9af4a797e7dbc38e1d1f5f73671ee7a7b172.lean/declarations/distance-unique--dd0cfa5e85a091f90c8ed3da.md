# distance_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e80731e6-189f-af5b-0e07-d6664f64b45c",
  "kind": "theorem",
  "lexical_name": "distance_unique",
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
  "slug": "distance-unique--dd0cfa5e85a091f90c8ed3da",
  "source": {
    "blob": "339284319d4660fae50aa7d3099ae61fd49b809c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 484,
    "path": "GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd0cfa5e85a091f90c8ed3da868309d5a8ae513637e5771921f586c565e2daa0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e80731e6-189f-af5b-0e07-d6664f64b45c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distance_unique
    (left right : InducedQuotientLengthMetric data) :
    left.distance = right.distance := by
  funext first second
  apply le_antisymm
  · exact right.greatest left.distance left.admissible first second
  · exact left.greatest right.distance right.admissible first second

/-- Carrier with one explicit induced-metric realization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `339284319d4660fae50aa7d3099ae61fd49b809c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
