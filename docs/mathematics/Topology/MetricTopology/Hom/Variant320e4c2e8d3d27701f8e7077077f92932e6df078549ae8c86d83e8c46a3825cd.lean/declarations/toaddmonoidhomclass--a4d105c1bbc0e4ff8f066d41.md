# toAddMonoidHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:009d0a205fb2d6d924ad3ff2b731c82b1b0a8df94a1dbb8b18471485b3ec14b0",
  "kind": "instance",
  "lexical_name": "toAddMonoidHomClass",
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
  "slug": "toaddmonoidhomclass--a4d105c1bbc0e4ff8f066d41",
  "source": {
    "blob": "810acdb8ec91e06f7f0ba0f7556ff9a9655e249b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 93,
    "path": "GRWTSK/Topology/MetricTopology/Hom/Variant320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4d105c1bbc0e4ff8f066d412f71b60df1295f1d08a516b9e60c4c40ce931fc7",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hom/Variant320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:009d0a205fb2d6d924ad3ff2b731c82b1b0a8df94a1dbb8b18471485b3ec14b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toAddMonoidHomClass : AddMonoidHomClass (NormedAddGroupHom V₁ V₂) V₁ V₂ where
  map_add f := f.map_add'
  map_zero f := (AddMonoidHom.mk' f.toFun f.map_add').map_zero

initialize_simps_projections NormedAddGroupHom (toFun → apply)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hom/Variant320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hom/Variant320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `810acdb8ec91e06f7f0ba0f7556ff9a9655e249b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
