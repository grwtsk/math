# AnalyticAt.eventually_constant_or_nhds_le_map_nhds_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c274fd5c-9af0-5f4e-4084-8cef793522a0",
  "kind": "theorem",
  "lexical_name": "AnalyticAt.eventually_constant_or_nhds_le_map_nhds_aux",
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
  "slug": "analyticat-eventually-constant-or-nhds-le-map-nhds-aux--d475b0fa29e04da4753948e2",
  "source": {
    "blob": "9c4efc04a267b59907f27d26785712b34b465e43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 85,
    "path": "GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d475b0fa29e04da4753948e22061cf6e5c8a3f60f096b25427c4b300b2199ee9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c274fd5c-9af0-5f4e-4084-8cef793522a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticAt.eventually_constant_or_nhds_le_map_nhds_aux (hf : AnalyticAt ℂ f z₀) :
    (∀ᶠ z in 𝓝 z₀, f z = f z₀) ∨ 𝓝 (f z₀) ≤ map f (𝓝 z₀) := by
  /- The function `f` is analytic in a neighborhood of `z₀`; by the isolated zeros principle, if `f`
    is not constant in a neighborhood of `z₀`, then it is nonzero, and therefore bounded below, on
    every small enough circle around `z₀` and then `DiffContOnCl.ball_subset_image_closedBall`
    provides an explicit ball centered at `f z₀` contained in the range of `f`. -/
  refine or_iff_not_imp_left.mpr fun h => ?_
  refine (nhds_basis_ball.le_basis_iff (nhds_basis_closedBall.map f)).mpr fun R hR => ?_
  have h1 := (hf.eventually_eq_or_eventually_ne analyticAt_const).resolve_left h
  have h2 : ∀ᶠ z in 𝓝 z₀, AnalyticAt ℂ f z := (isOpen_analyticAt ℂ f).eventually_mem hf
  obtain ⟨ρ, hρ, h3, h4⟩ :
    ∃ ρ > 0, AnalyticOn ℂ f (closedBall z₀ ρ) ∧ ∀ z ∈ closedBall z₀ ρ, z ≠ z₀ → f z ≠ f z₀ := by
    simpa only [setOf_and, subset_inter_iff] using
      nhds_basis_closedBall.mem_iff.mp (h2.and (eventually_nhdsWithin_iff.mp h1))
  replace h3 : DiffContOnCl ℂ f (ball z₀ ρ)
  exact ⟨h3.differentiableOn.mono ball_subset_closedBall,
    (closure_ball z₀ hρ.lt.ne.symm).symm ▸ h3.continuousOn⟩
  let r := ρ ⊓ R
  have hr : 0 < r := lt_inf_iff.mpr ⟨hρ, hR⟩
  have h5 : closedBall z₀ r ⊆ closedBall z₀ ρ := closedBall_subset_closedBall inf_le_left
  have h6 : DiffContOnCl ℂ f (ball z₀ r) := h3.mono (ball_subset_ball inf_le_left)
  have h7 : ∀ z ∈ sphere z₀ r, f z ≠ f z₀ := fun z hz =>
    h4 z (h5 (sphere_subset_closedBall hz)) (ne_of_mem_sphere hz hr.ne.symm)
  have h8 : (sphere z₀ r).Nonempty := NormedSpace.sphere_nonempty.mpr hr.le
  have h9 : ContinuousOn (fun x => ‖f x - f z₀‖) (sphere z₀ r) := continuous_norm.comp_continuousOn
    ((h6.sub_const (f z₀)).continuousOn_ball.mono sphere_subset_closedBall)
  obtain ⟨x, hx, hfx⟩ := (isCompact_sphere z₀ r).exists_forall_le h8 h9
  refine ⟨‖f x - f z₀‖ / 2, half_pos (norm_sub_pos_iff.mpr (h7 x hx)), ?_⟩
  exact (h6.ball_subset_image_closedBall hr (fun z hz => hfx z hz) (not_eventually.mp h)).trans
    (image_subset f (closedBall_subset_closedBall inf_le_right))
#align analytic_at.eventually_constant_or_nhds_le_map_nhds_aux AnalyticAt.eventually_constant_or_nhds_le_map_nhds_aux

/-- The *open mapping theorem* for holomorphic functions, local version: is a function `g : E → ℂ`
is analytic at a point `z₀`, then either it is constant in a neighborhood of `z₀`, or it maps every
neighborhood of `z₀` to a neighborhood of `z₀`. For the particular case of a holomorphic function on
`ℂ`, see `AnalyticAt.eventually_constant_or_nhds_le_map_nhds_aux`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c4efc04a267b59907f27d26785712b34b465e43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
