# dist_center_eq_dist_center_of_mem_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:450b7b3e-4b62-8105-04b5-2b62eb3e430a",
  "kind": "theorem",
  "lexical_name": "dist_center_eq_dist_center_of_mem_sphere",
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
  "slug": "dist-center-eq-dist-center-of-mem-sphere--2866d020cf8b46b7a3d016de",
  "source": {
    "blob": "ce18d7ccd2f432d9fca9b7b7b8e53460b8b9a8c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 134,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2866d020cf8b46b7a3d016de2abbc2574db20343cdeba753f9134264a2f41507",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:450b7b3e-4b62-8105-04b5-2b62eb3e430a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_center_eq_dist_center_of_mem_sphere {p₁ p₂ : P} {s : Sphere P} (hp₁ : p₁ ∈ s)
    (hp₂ : p₂ ∈ s) : dist p₁ s.center = dist p₂ s.center := by
  rw [mem_sphere.1 hp₁, mem_sphere.1 hp₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce18d7ccd2f432d9fca9b7b7b8e53460b8b9a8c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
