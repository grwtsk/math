# dist_nonneg'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "912bc464320d8ea70f002255c59e9f79d41f6ac2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16b26caf-0e35-9f9f-70fb-e646c4974151",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73c918a0-876d-04b3-e9ff-d3e7ccff6eb0",
  "kind": "theorem",
  "lexical_name": "dist_nonneg'",
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
  "slug": "dist-nonneg--27893dbaf19f4dadacf36f23",
  "source": {
    "blob": "912bc464320d8ea70f002255c59e9f79d41f6ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27893dbaf19f4dadacf36f237bd2df14052989f579ee56ce91d13d863831f61c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73c918a0-876d-04b3-e9ff-d3e7ccff6eb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem dist_nonneg' {α} {x y : α} (dist : α → α → ℝ)
    (dist_self : ∀ x : α, dist x x = 0) (dist_comm : ∀ x y : α, dist x y = dist y x)
    (dist_triangle : ∀ x y z : α, dist x z ≤ dist x y + dist y z) : 0 ≤ dist x y :=
  have : 0 ≤ 2 * dist x y :=
    calc 0 = dist x x := (dist_self _).symm
    _ ≤ dist x y + dist y x := dist_triangle _ _ _
    _ = 2 * dist x y := by rw [two_mul, dist_comm]
  nonneg_of_mul_nonneg_right this two_pos

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- A pseudometric space is a type endowed with a `ℝ`-valued distance `dist` satisfying
reflexivity `dist x x = 0`, commutativity `dist x y = dist y x`, and the triangle inequality
`dist x z ≤ dist x y + dist y z`.

Note that we do not require `dist x y = 0 → x = y`. See metric spaces (`MetricSpace`) for the
similar class with that stronger assumption.

Any pseudometric space is a topological space and a uniform space (see `TopologicalSpace`,
`UniformSpace`), where the topology and uniformity come from the metric.
Note that a T1 pseudometric space is just a metric space.

We make the uniformity/topology part of the data instead of deriving it from the metric. This e.g.
ensures that we do not get a diamond when doing
`[PseudoMetricSpace α] [PseudoMetricSpace β] : TopologicalSpace (α × β)`:
The product metric and product topology agree, but not definitionally so.
See Note [forgetful inheritance]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `912bc464320d8ea70f002255c59e9f79d41f6ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
