# IsClosedMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cc05c06f821e80e5c1c883182e5ef83abf28ad4ca6bf7e9507049dd78d520b4",
  "kind": "def",
  "lexical_name": "IsClosedMap",
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
  "slug": "isclosedmap--aa5a31f976bbccecdb4cdc84",
  "source": {
    "blob": "c00a367953a4bb0a7708dcc7af6a8592191706a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9dcf2e64719d73ea1ec859188760ab6db44585b4f86267af411af75119f34dbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa5a31f976bbccecdb4cdc847e5f4f9842751c40af4d07e930c5a8c46aebc8a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9dcf2e64719d73ea1ec859188760ab6db44585b4f86267af411af75119f34dbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cc05c06f821e80e5c1c883182e5ef83abf28ad4ca6bf7e9507049dd78d520b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsClosedMap (f : X → Y) : Prop := ∀ U : Set X, IsClosed U → IsClosed (f '' U)

/-- An open quotient map is an open map `f : X → Y` which is both an open map and a quotient map.
Equivalently, it is a surjective continuous open map.
We use the latter characterization as a definition.

Many important quotient maps are open quotient maps, including

- the quotient map from a topological space to its quotient by the action of a group;
- the quotient map from a topological group to its quotient by a normal subgroup;
- the quotient map from a topological spaace to its separation quotient.

Contrary to general quotient maps,
the category of open quotient maps is closed under `Prod.map`.
-/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9dcf2e64719d73ea1ec859188760ab6db44585b4f86267af411af75119f34dbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9dcf2e64719d73ea1ec859188760ab6db44585b4f86267af411af75119f34dbd.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c00a367953a4bb0a7708dcc7af6a8592191706a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
