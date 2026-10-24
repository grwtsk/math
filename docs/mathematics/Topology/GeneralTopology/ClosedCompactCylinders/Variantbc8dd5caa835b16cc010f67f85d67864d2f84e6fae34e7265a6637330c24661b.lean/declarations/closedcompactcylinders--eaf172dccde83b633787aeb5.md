# closedCompactCylinders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0dd33e44b2227fc17a09ef2a1011fa55d2a14970915412ce16e974706d7a7215",
  "kind": "def",
  "lexical_name": "closedCompactCylinders",
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
  "slug": "closedcompactcylinders--eaf172dccde83b633787aeb5",
  "source": {
    "blob": "f55bfbbec68001dae306c0b45bb7e9022f3a2736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaf172dccde83b633787aeb527cf1d565b1217949607d0e0615154184c1b9fd4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0dd33e44b2227fc17a09ef2a1011fa55d2a14970915412ce16e974706d7a7215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def closedCompactCylinders : Set (Set (Π i, X i)) :=
  ⋃ (s) (S) (_ : IsClosed S) (_ : IsCompact S), {cylinder s S}

variable (X) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55bfbbec68001dae306c0b45bb7e9022f3a2736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
