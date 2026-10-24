# IsTangent.eq_orthRadius_or_eq_orthRadius_pointReflection_of_parallel_orthRadius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5c8d323-47bd-8487-fefa-bde7bd0b3202",
  "kind": "lemma",
  "lexical_name": "IsTangent.eq_orthRadius_or_eq_orthRadius_pointReflection_of_parallel_orthRadius",
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
  "slug": "istangent-eq-orthradius-or-eq-orthradius-pointreflection-of-parallel-ort--038c70d205dc35dac40b3f9c",
  "source": {
    "blob": "52c59c192899f975c56964179e20590005db3e2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 232,
    "path": "GRWTSK/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:038c70d205dc35dac40b3f9c8dd691256467d104ca709c0f9b44248f977922b2",
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

Occurrence: `result:b5c8d323-47bd-8487-fefa-bde7bd0b3202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTangent.eq_orthRadius_or_eq_orthRadius_pointReflection_of_parallel_orthRadius {s : Sphere P}
    {as : AffineSubspace ℝ P} {p : P} (h : s.IsTangent as) (hpar : as ∥ s.orthRadius p)
    (hp : p ∈ s) :
    as = s.orthRadius p ∨ as = s.orthRadius (Equiv.pointReflection s.center p) := by
  rcases h with ⟨q, hqs, hqas, hqo⟩
  have hd := direction_le hqo
  rw [hpar.direction_eq, direction_orthRadius_le_iff] at hd
  obtain ⟨r, hr⟩ := hd
  rcases eq_or_ne s.radius 0 with hrad | hrad
  · rw [mem_sphere, hrad, dist_eq_zero] at hp hqs
    rw [hp, orthRadius_center] at hpar ⊢
    rw [hqs, orthRadius_center] at hqo
    exact .inl (eq_of_direction_eq_of_nonempty_of_le hpar.direction_eq ⟨q, hqas⟩ hqo)
  obtain rfl : as = s.orthRadius q := by
    refine eq_of_direction_eq_of_nonempty_of_le ?_ ⟨q, hqas⟩ hqo
    rw [hpar.direction_eq, direction_orthRadius, direction_orthRadius]
    congr 1
    rcases eq_or_ne r 0 with rfl | hr0
    · simp_all
    · rw [hr, Submodule.span_singleton_smul_eq hr0.isUnit]
  rcases eq_or_ne r 0 with rfl | hr0
  · simp_all
  · have hr' : ‖q -ᵥ s.center‖ = ‖r • (p -ᵥ s.center)‖ := by
      rw [hr]
    simp_rw [norm_smul, Real.norm_eq_abs, ← dist_eq_norm_vsub, mem_sphere.1 hp,
      mem_sphere.1 hqs, right_eq_mul₀ hrad] at hr'
    rcases eq_or_eq_neg_of_abs_eq hr' with rfl | rfl
    · simp_all
    · right
      convert! rfl
      rw [← eq_vadd_iff_vsub_eq] at hr
      rw [hr]
      simp [Equiv.pointReflection_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52c59c192899f975c56964179e20590005db3e2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
