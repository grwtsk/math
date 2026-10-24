# LipschitzOnWith.extend_lp_infty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3c5861b-34c7-2c0b-84d1-7f3ae4e020d5",
  "kind": "theorem",
  "lexical_name": "LipschitzOnWith.extend_lp_infty",
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
  "slug": "lipschitzonwith-extend-lp-infty--a4d1f1f6bda8b8fefcc0bf24",
  "source": {
    "blob": "77f8e84459267b2ca0c9c8653a5f49cf3993022f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 134,
    "path": "GRWTSK/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4d1f1f6bda8b8fefcc0bf246015b5b2f50afc3ead76675d1f2c2123b312490d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3c5861b-34c7-2c0b-84d1-7f3ae4e020d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LipschitzOnWith.extend_lp_infty [PseudoMetricSpace α] {s : Set α} {ι : Type*}
    {f : α → ℓ^∞(ι)} {K : ℝ≥0} (hfl : LipschitzOnWith K f s) :
    ∃ g : α → ℓ^∞(ι), LipschitzWith K g ∧ EqOn f g s := by
  -- Construct the coordinate-wise extensions
  rw [LipschitzOnWith.coordinate] at hfl
  have (i : ι) : ∃ g : α → ℝ, LipschitzWith K g ∧ EqOn (fun x => f x i) g s :=
    LipschitzOnWith.extend_real (hfl i) -- use the nonlinear Hahn-Banach theorem here!
  choose g hgl hgeq using this
  rcases s.eq_empty_or_nonempty with rfl | ⟨a₀, ha₀_in_s⟩
  · exact ⟨0, LipschitzWith.const' 0, by simp⟩
  · -- Show that the extensions are uniformly bounded
    have hf_extb : ∀ a : α, Memℓp (swap g a) ∞ := by
      apply LipschitzWith.uniformly_bounded (swap g) hgl a₀
      use ‖f a₀‖
      rintro - ⟨i, rfl⟩
      simp_rw [← hgeq i ha₀_in_s]
      exact lp.norm_apply_le_norm top_ne_zero (f a₀) i
    -- Construct witness by bundling the function with its certificate of membership in ℓ^∞
    let f_ext' : α → ℓ^∞(ι) := fun i ↦ ⟨swap g i, hf_extb i⟩
    refine ⟨f_ext', ?_, ?_⟩
    · rw [LipschitzWith.coordinate]
      exact hgl
    · intro a hyp
      ext i
      exact (hgeq i) hyp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f8e84459267b2ca0c9c8653a5f49cf3993022f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
