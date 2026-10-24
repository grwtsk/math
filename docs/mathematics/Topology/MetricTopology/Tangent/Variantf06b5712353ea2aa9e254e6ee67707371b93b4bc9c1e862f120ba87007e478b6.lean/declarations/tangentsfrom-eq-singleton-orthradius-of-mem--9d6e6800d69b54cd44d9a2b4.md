# tangentsFrom_eq_singleton_orthRadius_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28513c8b-d4d9-fea3-6dbe-e2f4ba080d64",
  "kind": "lemma",
  "lexical_name": "tangentsFrom_eq_singleton_orthRadius_of_mem",
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
  "slug": "tangentsfrom-eq-singleton-orthradius-of-mem--9d6e6800d69b54cd44d9a2b4",
  "source": {
    "blob": "52c59c192899f975c56964179e20590005db3e2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 331,
    "path": "GRWTSK/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d6e6800d69b54cd44d9a2b4477e645d4f892eec52653f561667055a07aad590",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28513c8b-d4d9-fea3-6dbe-e2f4ba080d64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tangentsFrom_eq_singleton_orthRadius_of_mem {s : Sphere P} {p : P} (hp : p ∈ s) :
    s.tangentsFrom p = {s.orthRadius p} := by
  by_cases hr : s.radius = 0
  · ext as
    rw [mem_sphere, hr, dist_eq_zero] at hp
    simp +contextual [tangentsFrom, tangentSet, hp, hr]
  have hpc : p ≠ s.center := by
    rintro rfl
    simp_all
  rw [tangentsFrom_eq_image_orthRadius_inter_polar hpc,
    (polar_eq_orthRadius_self_iff (radius_nonneg_of_mem hp)).2 (.inl hp), ← Set.image_singleton]
  congr
  ext p'
  simp only [Set.mem_inter_iff, Metric.mem_sphere, mem_coe', SetLike.mem_coe, Set.mem_singleton_iff]
  constructor
  · exact fun ⟨hp', hp'p⟩ ↦ (isTangentAt_orthRadius_iff_mem.2 hp).eq_of_mem_of_mem hp' hp'p
  · rintro rfl
    simp [hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52c59c192899f975c56964179e20590005db3e2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
