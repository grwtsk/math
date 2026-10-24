# dist_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d043ccc6-b72d-7f43-4fdb-42e31f0d84c5",
  "kind": "theorem",
  "lexical_name": "dist_triangle",
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
  "slug": "dist-triangle--52227f84ccab8b60fb0d4aba",
  "source": {
    "blob": "46fd8550d223dc731b01c1b25445ccd71665991a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 79,
    "path": "GRWTSK/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52227f84ccab8b60fb0d4abaeb7cf5974096cbc875167e8106637f4af448bf2f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d043ccc6-b72d-7f43-4fdb-42e31f0d84c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem dist_triangle (x y z : Completion α) : dist x z ≤ dist x y + dist y z := by
  refine induction_on₃ x y z ?_ ?_
  · refine isClosed_le ?_ (Continuous.add ?_ ?_) <;>
      apply_rules [Completion.continuous_dist, Continuous.fst, Continuous.snd, continuous_id]
  · intro a b c
    rw [Completion.dist_eq, Completion.dist_eq, Completion.dist_eq]
    exact dist_triangle a b c

/-- Elements of the uniformity (defined generally for completions) can be characterized in terms
of the distance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46fd8550d223dc731b01c1b25445ccd71665991a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
