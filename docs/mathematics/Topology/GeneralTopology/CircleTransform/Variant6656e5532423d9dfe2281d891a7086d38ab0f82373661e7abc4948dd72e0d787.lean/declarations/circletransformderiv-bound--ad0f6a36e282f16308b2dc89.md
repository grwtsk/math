# circleTransformDeriv_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e143c50a68d03b6298543db7c4534f820054ddc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03050a21-ffd0-c075-407a-47a56a36ed71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87663612-62e1-e546-8b9e-5ab567ef3910",
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
  "slug": "circletransformderiv-bound--ad0f6a36e282f16308b2dc89",
  "source": {
    "blob": "8e143c50a68d03b6298543db7c4534f820054ddc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad0f6a36e282f16308b2dc89b069cd52f59fafa86782ae14d83260b675f7768c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87663612-62e1-e546-8b9e-5ab567ef3910`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleTransformDeriv_bound {R : ℝ} (hR : 0 < R) {z x : ℂ} {f : ℂ → ℂ} (hx : x ∈ ball z R)
    (hf : ContinuousOn f (sphere z R)) : ∃ B ε : ℝ, 0 < ε ∧
      ball x ε ⊆ ball z R ∧ ∀ (t : ℝ), ∀ y ∈ ball x ε, ‖circleTransformDeriv R z y f t‖ ≤ B := by
  obtain ⟨r, hr, hrx⟩ := exists_lt_mem_ball_of_mem_ball hx
  obtain ⟨ε', hε', H⟩ := exists_ball_subset_ball hrx
  obtain ⟨⟨⟨a, b⟩, ⟨ha, hb⟩⟩, hab⟩ :=
    norm_circleTransformBoundingFunction_le hr (pos_of_mem_ball hrx).le z
  let V : ℝ → ℂ → ℂ := fun θ w => circleTransformDeriv R z w (fun _ => 1) θ
  obtain ⟨X, -, HX2⟩ := (isCompact_sphere z R).exists_isMaxOn
    (NormedSpace.sphere_nonempty.2 hR.le) hf.norm
  refine ⟨‖V b a‖ * ‖f X‖, ε', hε', H.trans (ball_subset_ball hr.le), fun y v hv ↦ ?_⟩
  obtain ⟨y1, hy1, hfun⟩ :=
    Periodic.exists_mem_Ico₀ (circleTransformDeriv_periodic R z v f) Real.two_pi_pos y
  have hy2 : y1 ∈ [[0, 2 * π]] := Icc_subset_uIcc <| Ico_subset_Icc_self hy1
  simp only [isMaxOn_iff, mem_sphere_iff_norm] at HX2
  have := mul_le_mul (hab ⟨⟨v, y1⟩, ⟨ball_subset_closedBall (H hv), hy2⟩⟩)
    (HX2 (circleMap z R y1) (mem_sphere_iff_norm.1 (circleMap_mem_sphere z hR.le y1)))
    (norm_nonneg _) (norm_nonneg _)
  rw [hfun]
  simpa [V, circleTransformBoundingFunction, circleTransformDeriv, mul_assoc] using this

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e143c50a68d03b6298543db7c4534f820054ddc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
