# SurgeryPiece

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:865d03cf1752830ee066478936c250003f4b74d35a98bbcd424f5e4b9f9bb92e",
  "kind": "abbrev",
  "lexical_name": "SurgeryPiece",
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
  "slug": "surgerypiece--b4eeadce515e6aa5b283416d",
  "source": {
    "blob": "339284319d4660fae50aa7d3099ae61fd49b809c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 223,
    "path": "GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4eeadce515e6aa5b283416d0b114f9a62e2276e8499c698ff9a4ad9b14a6710",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:865d03cf1752830ee066478936c250003f4b74d35a98bbcd424f5e4b9f9bb92e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev SurgeryPiece
    (Exterior : Type u)
    (CapIndex : Type v)
    (Cap : CapIndex → Type w) :=
  Sum Exterior (Sigma Cap)

/--
The elementary boundary identifications that generate the surgery quotient.
No unrelated pair of points can be inserted into this relation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `339284319d4660fae50aa7d3099ae61fd49b809c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
