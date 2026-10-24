# hasDerivAt_resolventTransform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e8e11f851cf4bed80676deb947d653a9f109814",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68f3ea4a-a01d-ec89-06aa-1f05e50fc578",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:180af529-1608-636f-2faf-c230eb320662",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_resolventTransform",
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
  "slug": "hasderivat-resolventtransform--3e118fae21adbf42a182da62",
  "source": {
    "blob": "9e8e11f851cf4bed80676deb947d653a9f109814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 134,
    "path": "GRWTSK/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e118fae21adbf42a182da62148d739bd90a47eb502961a0a8d76a2e1229bbd0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:180af529-1608-636f-2faf-c230eb320662`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_resolventTransform [RCLike A] [NormedAlgebra 𝕜 A] {μ : Measure 𝕜}
    [IsFiniteMeasure μ] (a : A) (ha : a ∉ algebraMap 𝕜 A '' μ.support) :
    HasDerivAt (resolventTransform μ) (∫ x, resolvent a x ^ 2 ∂μ) a := by
  by_cases! h : μ.support.Nonempty; swap
  · simp [support_eq_empty_iff.mp h]
  rw [resolventTransform_def]
  have : 0 < infDist a (algebraMap 𝕜 A '' μ.support) := by
    refine (IsClosed.notMem_iff_infDist_pos ?_ (h.image _)).mp ha
    refine (Topology.IsClosedEmbedding.isClosed_iff_image_isClosed ?_).mp isClosed_support
    exact (algebraMap_isometry 𝕜 A).isClosedEmbedding
  let s : Set A := ball a ((infDist a (algebraMap 𝕜 A '' μ.support)) / 2)
  have hs_z : s ∈ 𝓝 a := ball_mem_nhds _ (by positivity)
  have hs_μ : s ⊆ (algebraMap 𝕜 A '' μ.support)ᶜ := by
    unfold s
    grw [ball_subset_ball, ball_infDist_subset_compl]
    grind
  have resolvent_meas : ∀ᶠ w in nhds a, AEStronglyMeasurable (resolvent w) μ := by
    filter_upwards with _ using by fun_prop
  have resolvent'_bound : ∀ᵐ x ∂μ, ∀ w ∈ s,
      ‖(resolvent w x) ^ 2‖ ≤ ((infDist a (algebraMap 𝕜 A '' μ.support)) / 2)⁻¹ ^ 2 := by
    filter_upwards [support_mem_ae] with x hx w hw
    grw [resolvent, Ring.inverse_eq_inv, norm_pow, norm_inv]
    gcongr
    calc infDist a (algebraMap 𝕜 A '' μ.support) / 2
      _ ≤ infDist a (algebraMap 𝕜 A '' μ.support)
        - infDist a (algebraMap 𝕜 A '' μ.support) / 2 := by grind
      _ ≤ ‖(algebraMap 𝕜 A) x - a‖ - ‖a - w‖ := by
        gcongr
        · grw [infDist_le_dist_of_mem (y := (algebraMap 𝕜 A) x) (by simp [hx]), dist_comm,
            dist_eq_norm]
        · apply le_of_lt
          simpa [s, ← dist_eq_norm, dist_comm w a] using hw
      _ ≤ ‖(algebraMap 𝕜 A) x - w‖ := by grw [norm_sub_le_norm_add]; grind
  have h_deriv : ∀ᵐ x ∂μ, ∀ w ∈ s, HasDerivAt (fun w ↦ resolvent w x) (resolvent w x ^ 2) w := by
    filter_upwards [support_mem_ae] with x hx w hw
    apply hasDerivAt_resolvent_const_right
    replace hw := hs_μ hw
    contrapose! hw
    rw [Set.notMem_compl_iff]
    use x, hx
    simpa [resolventSet, sub_eq_zero] using hw
  exact hasDerivAt_integral_of_dominated_loc_of_deriv_le hs_z resolvent_meas
    (integrable_resolvent (by simp [ha])) (by fun_prop) resolvent'_bound (by fun_prop) h_deriv |>.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e8e11f851cf4bed80676deb947d653a9f109814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
