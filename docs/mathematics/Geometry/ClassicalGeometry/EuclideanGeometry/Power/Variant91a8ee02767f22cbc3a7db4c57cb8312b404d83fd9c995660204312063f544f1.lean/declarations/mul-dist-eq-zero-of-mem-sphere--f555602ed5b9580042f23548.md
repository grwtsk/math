# mul_dist_eq_zero_of_mem_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbbc5176-8a83-4634-51f5-36a1ad054f1a",
  "kind": "theorem",
  "lexical_name": "mul_dist_eq_zero_of_mem_sphere",
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
  "slug": "mul-dist-eq-zero-of-mem-sphere--f555602ed5b9580042f23548",
  "source": {
    "blob": "7c1075bf15e3e0bfe98d8cd97bd080ba9ca8b7df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 275,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f555602ed5b9580042f235482fd5cd3cc3e524665d109310a881fc17566793a7",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbbc5176-8a83-4634-51f5-36a1ad054f1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_dist_eq_zero_of_mem_sphere {s : Sphere P} {p a b : P}
    (hp : p ∈ line[ℝ, a, b])
    (ha : a ∈ s) (hb : b ∈ s)
    (hp_on : p ∈ s) :
    dist p a * dist p b = 0 := by
  have hq : dist a s.center = dist b s.center := by
    rw [mem_sphere.mp ha, mem_sphere.mp hb]
  rw [dist_comm p a, dist_comm p b, mul_dist_eq_abs_sub_sq_dist hp hq,
      mem_sphere.mp hb, mem_sphere.mp hp_on, sub_self, abs_zero]

/-- For a point outside or on the sphere, the product of distances to two intersection
points on a line through the point equals the power of the point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c1075bf15e3e0bfe98d8cd97bd080ba9ca8b7df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
