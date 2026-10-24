# eqOn_zero_of_preconnected_of_eventuallyEq_zero_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b61511d2-1ee3-99c2-b7af-d61c724278e0",
  "kind": "theorem",
  "lexical_name": "eqOn_zero_of_preconnected_of_eventuallyEq_zero_aux",
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
  "slug": "eqon-zero-of-preconnected-of-eventuallyeq-zero-aux--c579d1e5e8ffd9c6ca6edda6",
  "source": {
    "blob": "c18d6a453947926096f7f08f585699b45e11878c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 165,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c579d1e5e8ffd9c6ca6edda65f30964cc3c13cfa4e9b5f28748e290056b6c736",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b61511d2-1ee3-99c2-b7af-d61c724278e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_zero_of_preconnected_of_eventuallyEq_zero_aux [CompleteSpace F] {f : E → F} {U : Set E}
    (hf : AnalyticOnNhd 𝕜 f U) (hU : IsPreconnected U)
    {z₀ : E} (h₀ : z₀ ∈ U) (hfz₀ : f =ᶠ[𝓝 z₀] 0) :
    EqOn f 0 U := by
  /- Let `u` be the set of points around which `f` vanishes. It is clearly open. We have to show
    that its limit points in `U` still belong to it, from which the inclusion `U ⊆ u` will follow
    by connectedness. -/
  let u := {x | f =ᶠ[𝓝 x] 0}
  suffices main : closure u ∩ U ⊆ u by
    have Uu : U ⊆ u :=
      hU.subset_of_closure_inter_subset isOpen_setOf_eventually_nhds ⟨z₀, h₀, hfz₀⟩ main
    intro z hz
    simpa using mem_of_mem_nhds (Uu hz)
  /- Take a limit point `x`, then a ball `B (x, r)` on which it has a power series expansion, and
    then `y ∈ B (x, r/2) ∩ u`. Then `f` has a power series expansion on `B (y, r/2)` as it is
    contained in `B (x, r)`. All the coefficients in this series expansion vanish, as `f` is zero
    on a neighborhood of `y`. Therefore, `f` is zero on `B (y, r/2)`. As this ball contains `x`,
    it follows that `f` vanishes on a neighborhood of `x`, proving the claim. -/
  rintro x ⟨xu, xU⟩
  rcases hf x xU with ⟨p, r, hp⟩
  obtain ⟨y, yu, hxy⟩ : ∃ y ∈ u, edist x y < r / 2 :=
    EMetric.mem_closure_iff.1 xu (r / 2) (ENNReal.half_pos hp.r_pos.ne')
  let q := p.changeOrigin (y - x)
  have has_series : HasFPowerSeriesOnBall f q y (r / 2) := by
    have A : (‖y - x‖₊ : ℝ≥0∞) < r / 2 := by rwa [edist_comm, edist_eq_enorm_sub] at hxy
    have := hp.changeOrigin (A.trans_le ENNReal.half_le_self)
    simp only [add_sub_cancel] at this
    apply this.mono (ENNReal.half_pos hp.r_pos.ne')
    apply ENNReal.le_sub_of_add_le_left ENNReal.coe_ne_top
    apply (add_le_add A.le (le_refl (r / 2))).trans (le_of_eq _)
    exact ENNReal.add_halves _
  have M : EMetric.ball y (r / 2) ∈ 𝓝 x := EMetric.isOpen_ball.mem_nhds hxy
  filter_upwards [M] with z hz
  have A : HasSum (fun n : ℕ => q n fun _ : Fin n => z - y) (f z) := has_series.hasSum_sub hz
  have B : HasSum (fun n : ℕ => q n fun _ : Fin n => z - y) 0 := by
    have : HasFPowerSeriesAt 0 q y := has_series.hasFPowerSeriesAt.congr yu
    convert hasSum_zero (α := F) using 2
    ext n
    exact this.apply_eq_zero n _
  exact HasSum.unique A B

/-- The *identity principle* for analytic functions: If an analytic function vanishes in a whole
neighborhood of a point `z₀`, then it is uniformly zero along a connected set. For a one-dimensional
version assuming only that the function vanishes at some points arbitrarily close to `z₀`, see
`eqOn_zero_of_preconnected_of_frequently_eq_zero`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c18d6a453947926096f7f08f585699b45e11878c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
