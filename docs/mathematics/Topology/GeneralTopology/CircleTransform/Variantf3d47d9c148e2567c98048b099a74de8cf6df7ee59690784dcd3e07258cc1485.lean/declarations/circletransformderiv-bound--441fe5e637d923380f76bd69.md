# circleTransformDeriv_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4996f048a5c3204a64f128ea84988d95c9f5f44f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be6a5c99-29a3-0f20-0d2e-0765e61a711e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7188e0e4-3201-af73-a706-fa9830f2d45f",
  "kind": "theorem",
  "lexical_name": "circleTransformDeriv_bound",
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
  "slug": "circletransformderiv-bound--441fe5e637d923380f76bd69",
  "source": {
    "blob": "4996f048a5c3204a64f128ea84988d95c9f5f44f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:441fe5e637d923380f76bd691efc92307c8284d3a40859bf420833bb9ec07648",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7188e0e4-3201-af73-a706-fa9830f2d45f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleTransformDeriv_bound {R : ℝ} (hR : 0 < R) {z x : ℂ} {f : ℂ → ℂ} (hx : x ∈ ball z R)
    (hf : ContinuousOn f (sphere z R)) : ∃ B ε : ℝ, 0 < ε ∧
      ball x ε ⊆ ball z R ∧ ∀ (t : ℝ), ∀ y ∈ ball x ε, ‖circleTransformDeriv R z y f t‖ ≤ B := by
  obtain ⟨r, hr, hrx⟩ := exists_lt_mem_ball_of_mem_ball hx
  obtain ⟨ε', hε', H⟩ := exists_ball_subset_ball hrx
  obtain ⟨⟨⟨a, b⟩, ⟨ha, hb⟩⟩, hab⟩ :=
    abs_circleTransformBoundingFunction_le hr (pos_of_mem_ball hrx).le z
  let V : ℝ → ℂ → ℂ := fun θ w => circleTransformDeriv R z w (fun _ => 1) θ
  have funccomp : ContinuousOn (fun r => abs (f r)) (sphere z R) := by
    have cabs : ContinuousOn abs ⊤ := by apply continuous_abs.continuousOn
    apply cabs.comp hf; rw [MapsTo]; tauto
  have sbou :=
    IsCompact.exists_isMaxOn (isCompact_sphere z R) (NormedSpace.sphere_nonempty.2 hR.le) funccomp
  obtain ⟨X, HX, HX2⟩ := sbou
  refine' ⟨abs (V b a) * abs (f X), ε', hε', Subset.trans H (ball_subset_ball hr.le), _⟩
  intro y v hv
  obtain ⟨y1, hy1, hfun⟩ :=
    Periodic.exists_mem_Ico₀ (circleTransformDeriv_periodic R z v f) Real.two_pi_pos y
  have hy2 : y1 ∈ [[0, 2 * π]] := by
    convert Ico_subset_Icc_self hy1 using 1
    simp [uIcc_of_le Real.two_pi_pos.le]
  simp only [IsMaxOn, IsMaxFilter, eventually_principal, mem_sphere_iff_norm, norm_eq_abs] at HX2
  have := mul_le_mul (hab ⟨⟨v, y1⟩, ⟨ball_subset_closedBall (H hv), hy2⟩⟩)
    (HX2 (circleMap z R y1) (circleMap_mem_sphere z hR.le y1)) (Complex.abs.nonneg _)
    (Complex.abs.nonneg _)
  simp_rw [hfun]
  simp only [circleTransformBoundingFunction, circleTransformDeriv, norm_eq_abs,
    Algebra.id.smul_eq_mul, deriv_circleMap, map_mul, abs_circleMap_zero, abs_I, mul_one, ←
    mul_assoc, mul_inv_rev, inv_I, abs_neg, abs_inv, abs_ofReal, one_mul, abs_two, abs_pow,
    mem_ball, gt_iff_lt, Subtype.coe_mk, SetCoe.forall, mem_prod, mem_closedBall, and_imp,
    Prod.forall, NormedSpace.sphere_nonempty, mem_sphere_iff_norm] at *
  exact this
#align complex.circle_transform_deriv_bound Complex.circleTransformDeriv_bound

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4996f048a5c3204a64f128ea84988d95c9f5f44f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
