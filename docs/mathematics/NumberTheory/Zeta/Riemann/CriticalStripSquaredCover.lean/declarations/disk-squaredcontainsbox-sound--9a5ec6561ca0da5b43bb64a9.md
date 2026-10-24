# Disk.squaredContainsBox_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5f3a97c-748d-cd1f-d85b-6e3a709f69db",
  "kind": "theorem",
  "lexical_name": "Disk.squaredContainsBox_sound",
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
  "slug": "disk-squaredcontainsbox-sound--9a5ec6561ca0da5b43bb64a9",
  "source": {
    "blob": "629d134563d63cdbbcd90ac679c388691f45444f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 74,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a5ec6561ca0da5b43bb64a9dd58a4f6f4ea634f00c9f74e990f14c551b44e44",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5f3a97c-748d-cd1f-d85b-6e3a709f69db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Disk.squaredContainsBox_sound (d : Disk) (b : Rectangle)
    (h : d.SquaredContainsBox b) : b.carrier ⊆ d.carrier := by
  intro z hz
  obtain ⟨hx, hy⟩ := d.coordinate_reach_bounds b hz
  have hx0 : 0 ≤ (d.realReach b : ℝ) := by exact_mod_cast d.realReach_nonneg b
  have hy0 : 0 ≤ (d.imagReach b : ℝ) := by exact_mod_cast d.imagReach_nonneg b
  have hr0 : 0 ≤ (d.radius : ℝ) := by exact_mod_cast h.1
  have hsq : (d.realReach b : ℝ) ^ 2 + (d.imagReach b : ℝ) ^ 2 ≤
      (d.radius : ℝ) ^ 2 := by exact_mod_cast h.2
  have hx2 : (z.re - (d.re : ℝ)) ^ 2 ≤ (d.realReach b : ℝ) ^ 2 := by
    have hmul := mul_le_mul hx hx (abs_nonneg _) hx0
    nlinarith [sq_abs (z.re - (d.re : ℝ))]
  have hy2 : (z.im - (d.im : ℝ)) ^ 2 ≤ (d.imagReach b : ℝ) ^ 2 := by
    have hmul := mul_le_mul hy hy (abs_nonneg _) hy0
    nlinarith [sq_abs (z.im - (d.im : ℝ))]
  have hn : ‖z - d.center‖ ^ 2 =
      (z.re - (d.re : ℝ)) ^ 2 + (z.im - (d.im : ℝ)) ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re,
      Complex.sub_im, Disk.center, pow_two]
  change dist z d.center ≤ (d.radius : ℝ)
  rw [dist_eq_norm]
  apply (sq_le_sq₀ (norm_nonneg _) hr0).mp
  rw [hn]
  exact (add_le_add hx2 hy2).trans hsq

/-- The maximum distance in one coordinate is attained by an actual endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `629d134563d63cdbbcd90ac679c388691f45444f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
