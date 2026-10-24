# OpenSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb6a6a3dc8e6e877f737491503f31fa1365c4b1e8a5dfd0ab6ecdf9dfc0ec18f",
  "kind": "structure",
  "lexical_name": "OpenSubgroup",
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
  "slug": "opensubgroup--dbc770f2c81609ec33a706cf",
  "source": {
    "blob": "63abc1298d30b2ebc2029c7315ba4a655367eb83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbc770f2c81609ec33a706cfcda015e960ec32386526d03486b19dd7c5a83c1c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb6a6a3dc8e6e877f737491503f31fa1365c4b1e8a5dfd0ab6ecdf9dfc0ec18f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OpenSubgroup (G : Type*) [Group G] [TopologicalSpace G] extends Subgroup G where
  isOpen' : IsOpen carrier
#align open_subgroup OpenSubgroup

/-- Reinterpret an `OpenSubgroup` as a `Subgroup`. -/
add_decl_doc OpenSubgroup.toSubgroup

/-- Reinterpret an `OpenAddSubgroup` as an `AddSubgroup`. -/
add_decl_doc OpenAddSubgroup.toAddSubgroup

attribute [coe] OpenSubgroup.toSubgroup OpenAddSubgroup.toAddSubgroup

namespace OpenSubgroup

variable {G : Type*} [Group G] [TopologicalSpace G]
variable {U V : OpenSubgroup G} {g : G}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63abc1298d30b2ebc2029c7315ba4a655367eb83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
