# emetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e3c2a0f458be027ae38aca7a04a1a0e9d7863d5dfac9e95609214bf74f27edf",
  "kind": "def",
  "lexical_name": "emetricSpace",
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
  "slug": "emetricspace--eec542d0c91184b712d70eb7",
  "source": {
    "blob": "151c98eb10c7a515249cc0b6602c85e36aa8da4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 188,
    "path": "GRWTSK/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eec542d0c91184b712d70eb7d44900ff80b3b8fe670363392b1ba60e2852c4b2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e3c2a0f458be027ae38aca7a04a1a0e9d7863d5dfac9e95609214bf74f27edf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emetricSpace : EMetricSpace V where
  edist x y := e (x - y)
  edist_self x := by simp
  eq_of_edist_eq_zero {x y} := by simp [sub_eq_zero]
  edist_comm := e.map_sub_rev
  edist_triangle x y z :=
    calc
      e (x - z) = e (x - y + (y - z)) := by rw [sub_add_sub_cancel]
      _ ≤ e (x - y) + e (y - z) := e.map_add_le (x - y) (y - z)
#align enorm.emetric_space ENorm.emetricSpace

/-- The subspace of vectors with finite enorm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `151c98eb10c7a515249cc0b6602c85e36aa8da4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
