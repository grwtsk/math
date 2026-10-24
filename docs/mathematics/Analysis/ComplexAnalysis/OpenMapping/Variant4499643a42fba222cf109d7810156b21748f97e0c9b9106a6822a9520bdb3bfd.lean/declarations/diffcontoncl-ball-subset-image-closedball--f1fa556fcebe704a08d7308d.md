# DiffContOnCl.ball_subset_image_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:469e1361-b43d-ae9a-66aa-267db08724d4",
  "kind": "theorem",
  "lexical_name": "DiffContOnCl.ball_subset_image_closedBall",
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
  "slug": "diffcontoncl-ball-subset-image-closedball--f1fa556fcebe704a08d7308d",
  "source": {
    "blob": "9d27803ce84980490e39e516acee6b3070575a15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 60,
    "path": "GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant4499643a42fba222cf109d7810156b21748f97e0c9b9106a6822a9520bdb3bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1fa556fcebe704a08d7308d5b5ce81a4328b3b6d612541904fe58453ba57bed",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/OpenMapping/Variant4499643a42fba222cf109d7810156b21748f97e0c9b9106a6822a9520bdb3bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:469e1361-b43d-ae9a-66aa-267db08724d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DiffContOnCl.ball_subset_image_closedBall (h : DiffContOnCl ℂ f (ball z₀ r)) (hr : 0 < r)
    (hf : ∀ z ∈ sphere z₀ r, ε ≤ ‖f z - f z₀‖) (hz₀ : ∃ᶠ z in 𝓝 z₀, f z ≠ f z₀) :
    ball (f z₀) (ε / 2) ⊆ f '' closedBall z₀ r := by
  /- This is a direct application of the maximum principle. Pick `v` close to `f z₀`, and look at
    the function `fun z ↦ ‖f z - v‖`: it is bounded below on the circle, and takes a small value
    at `z₀` so it is not constant on the disk, which implies that its infimum is equal to `0` and
    hence that `v` is in the range of `f`. -/
  rintro v hv
  have h1 : DiffContOnCl ℂ (fun z => f z - v) (ball z₀ r) := h.sub_const v
  have h2 : ContinuousOn (fun z => ‖f z - v‖) (closedBall z₀ r) :=
    continuous_norm.comp_continuousOn (closure_ball z₀ hr.ne.symm ▸ h1.continuousOn)
  have h3 : AnalyticOnNhd ℂ f (ball z₀ r) := h.differentiableOn.analyticOnNhd isOpen_ball
  have h4 : ∀ z ∈ sphere z₀ r, ε / 2 ≤ ‖f z - v‖ := fun z hz => by
    linarith [hf z hz, show ‖v - f z₀‖ < ε / 2 from mem_ball_iff_norm.1 hv,
      norm_sub_sub_norm_sub_le_norm_sub (f z) v (f z₀)]
  have h5 : ‖f z₀ - v‖ < ε / 2 := by simpa [← dist_eq_norm, dist_comm] using mem_ball.mp hv
  obtain ⟨z, hz1, hz2⟩ : ∃ z ∈ ball z₀ r, IsLocalMin (fun z => ‖f z - v‖) z :=
    exists_isLocalMin_mem_ball h2 (mem_closedBall_self hr.le) fun z hz => h5.trans_le (h4 z hz)
  refine ⟨z, ball_subset_closedBall hz1, sub_eq_zero.mp ?_⟩
  have h6 := h1.differentiableOn.eventually_differentiableAt (isOpen_ball.mem_nhds hz1)
  refine (eventually_eq_or_eq_zero_of_isLocalMin_norm h6 hz2).resolve_left fun key => ?_
  have h7 : ∀ᶠ w in 𝓝 z, f w = f z := by filter_upwards [key] with h; simp
  replace h7 : ∃ᶠ w in 𝓝[≠] z, f w = f z := (h7.filter_mono nhdsWithin_le_nhds).frequently
  have h8 : IsPreconnected (ball z₀ r) := (convex_ball z₀ r).isPreconnected
  have h9 := h3.eqOn_of_preconnected_of_frequently_eq analyticOnNhd_const h8 hz1 h7
  have h10 : f z = f z₀ := (h9 (mem_ball_self hr)).symm
  exact not_eventually.mpr hz₀ (mem_of_superset (ball_mem_nhds z₀ hr) (h10 ▸ h9))

/-- A function `f : ℂ → ℂ` which is analytic at a point `z₀` is either constant in a neighborhood
of `z₀`, or behaves locally like an open function (in the sense that the image of every neighborhood
of `z₀` is a neighborhood of `f z₀`, as in `isOpenMap_iff_nhds_le`). For a function `f : E → ℂ`
the same result holds, see `AnalyticAt.eventually_constant_or_nhds_le_map_nhds`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/OpenMapping/Variant4499643a42fba222cf109d7810156b21748f97e0c9b9106a6822a9520bdb3bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant4499643a42fba222cf109d7810156b21748f97e0c9b9106a6822a9520bdb3bfd.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d27803ce84980490e39e516acee6b3070575a15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
