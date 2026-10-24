# inductivePremetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c3cb9b7a730b2ef69ff442de2efe689098e5db7b76c269e0d1065830e0500d5",
  "kind": "def",
  "lexical_name": "inductivePremetric",
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
  "slug": "inductivepremetric--1eb860ac6d5bf9820f10d085",
  "source": {
    "blob": "cdd1497f199806dccef8b9d3c17022aa1b1a9d72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 598,
    "path": "GRWTSK/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1eb860ac6d5bf9820f10d0850ce86895f3fb880ea94d79fd87c8e7159fde70ff",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c3cb9b7a730b2ef69ff442de2efe689098e5db7b76c269e0d1065830e0500d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inductivePremetric (I : ∀ n, Isometry (f n)) : PseudoMetricSpace (Σn, X n) where
  dist := inductiveLimitDist f
  dist_self x := by simp [dist, inductiveLimitDist]
  dist_comm x y := by
    let m := max x.1 y.1
    have hx : x.1 ≤ m := le_max_left _ _
    have hy : y.1 ≤ m := le_max_right _ _
    unfold dist; simp only
    rw [inductiveLimitDist_eq_dist I x y m hx hy, inductiveLimitDist_eq_dist I y x m hy hx,
      dist_comm]
  dist_triangle x y z := by
    let m := max (max x.1 y.1) z.1
    have hx : x.1 ≤ m := le_trans (le_max_left _ _) (le_max_left _ _)
    have hy : y.1 ≤ m := le_trans (le_max_right _ _) (le_max_left _ _)
    have hz : z.1 ≤ m := le_max_right _ _
    calc
      inductiveLimitDist f x z = dist (leRecOn hx (f _) x.2 : X m) (leRecOn hz (f _) z.2 : X m) :=
        inductiveLimitDist_eq_dist I x z m hx hz
      _ ≤ dist (leRecOn hx (f _) x.2 : X m) (leRecOn hy (f _) y.2 : X m) +
            dist (leRecOn hy (f _) y.2 : X m) (leRecOn hz (f _) z.2 : X m) :=
        (dist_triangle _ _ _)
      _ = inductiveLimitDist f x y + inductiveLimitDist f y z := by
        rw [inductiveLimitDist_eq_dist I x y m hx hy, inductiveLimitDist_eq_dist I y z m hy hz]
  edist_dist _ _ := by exact ENNReal.coe_nnreal_eq _
#align metric.inductive_premetric Metric.inductivePremetric

attribute [local instance] inductivePremetric

/-- The type giving the inductive limit in a metric space context. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdd1497f199806dccef8b9d3c17022aa1b1a9d72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
