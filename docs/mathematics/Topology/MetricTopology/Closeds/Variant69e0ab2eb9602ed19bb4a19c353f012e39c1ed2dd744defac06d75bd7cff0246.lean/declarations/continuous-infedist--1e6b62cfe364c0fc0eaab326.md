# continuous_infEDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e41aa992-58aa-df8d-8226-cf1d919efbe6",
  "kind": "theorem",
  "lexical_name": "continuous_infEDist",
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
  "slug": "continuous-infedist--1e6b62cfe364c0fc0eaab326",
  "source": {
    "blob": "b00a1bbc19eaf2d0ed47b9ccc882b07ce6277d98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 104,
    "path": "GRWTSK/Topology/MetricTopology/Closeds/Variant69e0ab2eb9602ed19bb4a19c353f012e39c1ed2dd744defac06d75bd7cff0246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e6b62cfe364c0fc0eaab32618f11c512447dead5604b463784c462cd8df7824",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Closeds/Variant69e0ab2eb9602ed19bb4a19c353f012e39c1ed2dd744defac06d75bd7cff0246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e41aa992-58aa-df8d-8226-cf1d919efbe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_infEDist :
    Continuous fun p : α × Closeds α => infEDist p.1 p.2 := by
  refine continuous_of_le_add_edist 2 (by simp) ?_
  rintro ⟨x, s⟩ ⟨y, t⟩
  calc
    infEDist x s ≤ infEDist x t + hausdorffEDist (t : Set α) s :=
      infEDist_le_infEDist_add_hausdorffEDist
    _ ≤ infEDist y t + edist x y + hausdorffEDist (t : Set α) s := by
      gcongr; apply infEDist_le_infEDist_add_edist
    _ = infEDist y t + (edist x y + hausdorffEDist (s : Set α) t) := by
      rw [add_assoc, hausdorffEDist_comm]
    _ ≤ infEDist y t + (edist (x, s) (y, t) + edist (x, s) (y, t)) := by
      gcongr <;> apply_rules [le_max_left, le_max_right]
    _ = infEDist y t + 2 * edist (x, s) (y, t) := by rw [← mul_two, mul_comm]

/-- By definition, the edistance on `Closeds α` is given by the Hausdorff edistance -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Closeds/Variant69e0ab2eb9602ed19bb4a19c353f012e39c1ed2dd744defac06d75bd7cff0246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Closeds/Variant69e0ab2eb9602ed19bb4a19c353f012e39c1ed2dd744defac06d75bd7cff0246.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00a1bbc19eaf2d0ed47b9ccc882b07ce6277d98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
