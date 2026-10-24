# existsUnique_dist_eq_of_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89ae03ab-9500-ce9a-c908-dc1afbf466e2",
  "kind": "theorem",
  "lexical_name": "existsUnique_dist_eq_of_insert",
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
  "slug": "existsunique-dist-eq-of-insert--df8c5b553a4be482b809573d",
  "source": {
    "blob": "9dcc3bda2862df36e284732fd248cbc9a318d657",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 57,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantdc2ee781d30e77280da41a25113868e4241771d1c5a7a0381670b43691b04cd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df8c5b553a4be482b809573dbfc78f6bfccb253a62beb7dad0f8f8f693a1be37",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantdc2ee781d30e77280da41a25113868e4241771d1c5a7a0381670b43691b04cd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89ae03ab-9500-ce9a-c908-dc1afbf466e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_dist_eq_of_insert {s : AffineSubspace ℝ P}
    [s.direction.HasOrthogonalProjection] {ps : Set P} (hnps : ps.Nonempty) {p : P} (hps : ps ⊆ s)
    (hp : p ∉ s) (hu : ∃! cs : Sphere P, cs.center ∈ s ∧ ps ⊆ (cs : Set P)) :
    ∃! cs₂ : Sphere P,
      cs₂.center ∈ affineSpan ℝ (insert p (s : Set P)) ∧ insert p ps ⊆ (cs₂ : Set P) := by
  haveI : Nonempty s := Set.Nonempty.to_subtype (hnps.mono hps)
  rcases hu with ⟨⟨cc, cr⟩, ⟨hcc, hcr⟩, hcccru⟩
  simp only at hcc hcr hcccru
  let x := dist cc (orthogonalProjection s p)
  let y := dist p (orthogonalProjection s p)
  have hy0 : y ≠ 0 := dist_orthogonalProjection_ne_zero_of_notMem hp
  let ycc₂ := (x * x + y * y - cr * cr) / (2 * y)
  let cc₂ := (ycc₂ / y) • (p -ᵥ orthogonalProjection s p : V) +ᵥ cc
  let cr₂ := √(cr * cr + ycc₂ * ycc₂)
  use ⟨cc₂, cr₂⟩
  simp -zeta -proj only
  have hpo : p = (1 : ℝ) • (p -ᵥ orthogonalProjection s p : V) +ᵥ (orthogonalProjection s p : P) :=
    by simp
  constructor
  · constructor
    · refine vadd_mem_of_mem_direction ?_ (mem_affineSpan ℝ (Set.mem_insert_of_mem _ hcc))
      rw [direction_affineSpan]
      exact
        Submodule.smul_mem _ _
          (vsub_mem_vectorSpan ℝ (Set.mem_insert _ _)
            (Set.mem_insert_of_mem _ (orthogonalProjection_mem _)))
    · intro p₁ hp₁
      rw [Sphere.mem_coe, mem_sphere, ← mul_self_inj_of_nonneg dist_nonneg (Real.sqrt_nonneg _),
        Real.mul_self_sqrt (add_nonneg (mul_self_nonneg _) (mul_self_nonneg _))]
      rcases hp₁ with hp₁ | hp₁
      · rw [hp₁]
        rw [hpo,
          dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd (orthogonalProjection_mem p) hcc _ _
            (vsub_orthogonalProjection_mem_direction_orthogonal s p),
          ← dist_eq_norm_vsub V p, dist_comm _ cc]
        -- TODO(https://github.com/leanprover-community/mathlib4/issues/15486): used to be `field_simp`, but was really slow
        -- replaced by `simp only ...` to speed up. Reinstate `field_simp` once it is faster.
        simp (disch := field_simp_discharge) only [div_div, sub_div', one_mul, mul_div_assoc',
          div_mul_eq_mul_div, add_div', eq_div_iff, div_eq_iff, ycc₂]
        ring
      · rw [dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq _ (hps hp₁),
          orthogonalProjection_vadd_smul_vsub_orthogonalProjection _ _ hcc, Subtype.coe_mk,
          dist_of_mem_subset_mk_sphere hp₁ hcr, dist_eq_norm_vsub V cc₂ cc, vadd_vsub, norm_smul, ←
          dist_eq_norm_vsub V, Real.norm_eq_abs, abs_div, abs_of_nonneg dist_nonneg,
          div_mul_cancel₀ _ hy0, abs_mul_abs_self]
  · rintro ⟨cc₃, cr₃⟩ ⟨hcc₃, hcr₃⟩
    simp only at hcc₃ hcr₃
    obtain ⟨t₃, cc₃', hcc₃', hcc₃''⟩ :
      ∃ r : ℝ, ∃ p0 ∈ s, cc₃ = r • (p -ᵥ ↑((orthogonalProjection s) p)) +ᵥ p0 := by
      rwa [mem_affineSpan_insert_iff (orthogonalProjection_mem p)] at hcc₃
    have hcr₃' : ∃ r, ∀ p₁ ∈ ps, dist p₁ cc₃ = r :=
      ⟨cr₃, fun p₁ hp₁ => dist_of_mem_subset_mk_sphere (Set.mem_insert_of_mem _ hp₁) hcr₃⟩
    rw [exists_dist_eq_iff_exists_dist_orthogonalProjection_eq hps cc₃, hcc₃'',
      orthogonalProjection_vadd_smul_vsub_orthogonalProjection _ _ hcc₃'] at hcr₃'
    obtain ⟨cr₃', hcr₃'⟩ := hcr₃'
    have hu := hcccru ⟨cc₃', cr₃'⟩
    simp only at hu
    replace hu := hu ⟨hcc₃', hcr₃'⟩
    -- Porting note: was
    -- cases' hu with hucc hucr
    -- substs hucc hucr
    cases hu
    have hcr₃val : cr₃ = √(cr * cr + t₃ * y * (t₃ * y)) := by
      obtain ⟨p0, hp0⟩ := hnps
      have h' : ↑(⟨cc, hcc₃'⟩ : s) = cc := rfl
      rw [← dist_of_mem_subset_mk_sphere (Set.mem_insert_of_mem _ hp0) hcr₃, hcc₃'', ←
        mul_self_inj_of_nonneg dist_nonneg (Real.sqrt_nonneg _),
        Real.mul_self_sqrt (add_nonneg (mul_self_nonneg _) (mul_self_nonneg _)),
        dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq _ (hps hp0),
        orthogonalProjection_vadd_smul_vsub_orthogonalProjection _ _ hcc₃', h',
        dist_of_mem_subset_mk_sphere hp0 hcr, dist_eq_norm_vsub V _ cc, vadd_vsub, norm_smul, ←
        dist_eq_norm_vsub V p, Real.norm_eq_abs, ← mul_assoc, mul_comm _ |t₃|, ← mul_assoc,
        abs_mul_abs_self]
      ring
    replace hcr₃ := dist_of_mem_subset_mk_sphere (Set.mem_insert _ _) hcr₃
    rw [hpo, hcc₃'', hcr₃val, ← mul_self_inj_of_nonneg dist_nonneg (Real.sqrt_nonneg _),
      dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd (orthogonalProjection_mem p) hcc₃' _ _
        (vsub_orthogonalProjection_mem_direction_orthogonal s p),
      dist_comm, ← dist_eq_norm_vsub V p,
      Real.mul_self_sqrt (add_nonneg (mul_self_nonneg _) (mul_self_nonneg _))] at hcr₃
    change x * x + _ * (y * y) = _ at hcr₃
    rw [show
        x * x + (1 - t₃) * (1 - t₃) * (y * y) = x * x + y * y - 2 * y * (t₃ * y) + t₃ * y * (t₃ * y)
        by ring,
      add_left_inj] at hcr₃
    have ht₃ : t₃ = ycc₂ / y := by field_simp [ycc₂, ← hcr₃, hy0]
    subst ht₃
    change cc₃ = cc₂ at hcc₃''
    congr
    rw [hcr₃val]
    congr 2
    field_simp [hy0]

/-- Given a finite nonempty affinely independent family of points,
there is a unique (circumcenter, circumradius) pair for those points
in the affine subspace they span. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantdc2ee781d30e77280da41a25113868e4241771d1c5a7a0381670b43691b04cd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantdc2ee781d30e77280da41a25113868e4241771d1c5a7a0381670b43691b04cd4.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dcc3bda2862df36e284732fd248cbc9a318d657` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
