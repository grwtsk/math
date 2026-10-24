# isTangentAt_iff_dist_sq_eq_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0ad10d2-062a-3763-ded9-3a8d1a67e091",
  "kind": "theorem",
  "lexical_name": "isTangentAt_iff_dist_sq_eq_power",
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
  "slug": "istangentat-iff-dist-sq-eq-power--37e3c362800362a6511636fa",
  "source": {
    "blob": "7c1075bf15e3e0bfe98d8cd97bd080ba9ca8b7df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 329,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37e3c362800362a6511636fa7ff275d4142057a3a06d14ecea39fc027a4f4f34",
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

Occurrence: `result:f0ad10d2-062a-3763-ded9-3a8d1a67e091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTangentAt_iff_dist_sq_eq_power {t p : P} {s : Sphere P} (ht : t ∈ s) :
    s.IsTangentAt t (line[ℝ, p, t]) ↔ dist p t ^ 2 = s.power p :=
  ⟨fun h ↦ h.power_eq_dist_sq.symm, fun h_dist_eq ↦ by
    have h_orth : ⟪p -ᵥ t, t -ᵥ s.center⟫ = 0 := by
      simp only [Sphere.power, ← mem_sphere.mp ht, dist_eq_norm_vsub V, sq,
                 ← vsub_add_vsub_cancel p t s.center] at h_dist_eq
      exact (norm_add_sq_eq_norm_sq_add_norm_sq_iff_real_inner_eq_zero _ _).mp (by linarith)
    refine ⟨ht, right_mem_affineSpan_pair ℝ p t, fun x hx ↦ ?_⟩
    rw [mem_orthRadius_iff_inner_left]
    obtain ⟨r, hr⟩ := (vadd_right_mem_affineSpan_pair (k := ℝ)).mp (vsub_vadd x t ▸ hx)
    rw [← hr, inner_smul_left, h_orth, mul_zero]⟩

alias ⟨_, isTangentAt_of_dist_sq_eq_power⟩ := isTangentAt_iff_dist_sq_eq_power

end Sphere

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c1075bf15e3e0bfe98d8cd97bd080ba9ca8b7df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
