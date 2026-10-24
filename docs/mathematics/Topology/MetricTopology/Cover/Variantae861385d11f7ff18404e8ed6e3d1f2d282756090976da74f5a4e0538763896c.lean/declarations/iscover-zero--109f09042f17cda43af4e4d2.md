# isCover_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3fa823c-bff7-1030-3686-6845ad3728fd",
  "kind": "lemma",
  "lexical_name": "isCover_zero",
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
  "slug": "iscover-zero--109f09042f17cda43af4e4d2",
  "source": {
    "blob": "d58a3e02907c76b9b983ee95f9031a4a410cd704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 168,
    "path": "GRWTSK/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:109f09042f17cda43af4e4d2901800150fc7e325498e264d14c4b145ce98a412",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3fa823c-bff7-1030-3686-6845ad3728fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma isCover_zero : IsCover 0 s N ↔ s ⊆ N := by
  simp [isCover_iff_subset_iUnion_closedEBall]

end EMetricSpace

section MetricSpace
variable [MetricSpace X] [ProperSpace X] {ε : ℝ≥0} {s N : Set X} {x : X}

/-- A closed set in a proper metric space which admits a compact cover is compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d58a3e02907c76b9b983ee95f9031a4a410cd704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
