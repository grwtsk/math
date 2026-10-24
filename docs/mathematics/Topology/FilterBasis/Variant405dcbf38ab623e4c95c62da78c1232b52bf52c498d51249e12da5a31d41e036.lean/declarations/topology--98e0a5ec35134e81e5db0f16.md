# topology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4bdf973bfe0925b36bce4cc4ee2945ae0d77aaefcac309e960986311d5171d92",
  "kind": "def",
  "lexical_name": "topology",
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
  "slug": "topology--98e0a5ec35134e81e5db0f16",
  "source": {
    "blob": "1c6ee90865126cced448657ca0a082a133677a74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 320,
    "path": "GRWTSK/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98e0a5ec35134e81e5db0f16bd3c4f22b8e91673a97aa503229d5f71fec3a1d9",
  "verification": {
    "reference": "docs/verification/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4bdf973bfe0925b36bce4cc4ee2945ae0d77aaefcac309e960986311d5171d92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topology : TopologicalSpace M :=
  B.toAddGroupFilterBasis.topology

/-- The topology associated to a module filter basis on a module over a topological ring.
It has the given basis as a basis of neighborhoods of zero. This version gets the ring
topology by unification instead of type class inference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c6ee90865126cced448657ca0a082a133677a74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
