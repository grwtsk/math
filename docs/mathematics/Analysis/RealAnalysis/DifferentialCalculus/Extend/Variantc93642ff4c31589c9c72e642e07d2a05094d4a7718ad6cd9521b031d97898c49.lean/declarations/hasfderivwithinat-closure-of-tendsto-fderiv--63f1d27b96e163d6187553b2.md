# hasFDerivWithinAt_closure_of_tendsto_fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d07c278-c61e-12d6-39b0-62ecac45063c",
  "kind": "theorem",
  "lexical_name": "hasFDerivWithinAt_closure_of_tendsto_fderiv",
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
  "slug": "hasfderivwithinat-closure-of-tendsto-fderiv--63f1d27b96e163d6187553b2",
  "source": {
    "blob": "1e14f74ffb834f8c4a36f10ae9b762e15361e2b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63f1d27b96e163d6187553b25d7af68b31153711d15c3a367a8fc36115a563b7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d07c278-c61e-12d6-39b0-62ecac45063c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivWithinAt_closure_of_tendsto_fderiv {f : E → F} {s : Set E} {x : E} {f' : E →L[ℝ] F}
    (f_diff : DifferentiableOn ℝ f s) (s_conv : Convex ℝ s) (s_open : IsOpen s)
    (f_cont : ∀ y ∈ closure s, ContinuousWithinAt f s y)
    (h : Tendsto (fun y => fderiv ℝ f y) (𝓝[s] x) (𝓝 f')) :
    HasFDerivWithinAt f f' (closure s) x := by
  classical
    -- one can assume without loss of generality that `x` belongs to the closure of `s`, as the
    -- statement is empty otherwise
    by_cases hx : x ∉ closure s
    · rw [← closure_closure] at hx; exact HasFDerivWithinAt.of_notMem_closure hx
    push_neg at hx
    rw [HasFDerivWithinAt, hasFDerivAtFilter_iff_isLittleO, Asymptotics.isLittleO_iff]
    /- One needs to show that `‖f y - f x - f' (y - x)‖ ≤ ε ‖y - x‖` for `y` close to `x` in
      `closure s`, where `ε` is an arbitrary positive constant. By continuity of the functions, it
      suffices to prove this for nearby points inside `s`. In a neighborhood of `x`, the derivative
      of `f` is arbitrarily close to `f'` by assumption. The mean value inequality completes the
      proof. -/
    intro ε ε_pos
    obtain ⟨δ, δ_pos, hδ⟩ : ∃ δ > 0, ∀ y ∈ s, dist y x < δ → ‖fderiv ℝ f y - f'‖ < ε := by
      simpa [dist_zero_right] using tendsto_nhdsWithin_nhds.1 h ε ε_pos
    set B := ball x δ
    suffices ∀ y ∈ B ∩ closure s, ‖f y - f x - (f' y - f' x)‖ ≤ ε * ‖y - x‖ from
      mem_nhdsWithin_iff.2 ⟨δ, δ_pos, fun y hy => by simpa using this y hy⟩
    suffices
      ∀ p : E × E,
        p ∈ closure ((B ∩ s) ×ˢ (B ∩ s)) → ‖f p.2 - f p.1 - (f' p.2 - f' p.1)‖ ≤ ε * ‖p.2 - p.1‖ by
      rw [closure_prod_eq] at this
      intro y y_in
      apply this ⟨x, y⟩
      have : B ∩ closure s ⊆ closure (B ∩ s) := isOpen_ball.inter_closure
      exact ⟨this ⟨mem_ball_self δ_pos, hx⟩, this y_in⟩
    have key : ∀ p : E × E, p ∈ (B ∩ s) ×ˢ (B ∩ s) →
          ‖f p.2 - f p.1 - (f' p.2 - f' p.1)‖ ≤ ε * ‖p.2 - p.1‖ := by
      rintro ⟨u, v⟩ ⟨u_in, v_in⟩
      have conv : Convex ℝ (B ∩ s) := (convex_ball _ _).inter s_conv
      have diff : DifferentiableOn ℝ f (B ∩ s) := f_diff.mono inter_subset_right
      have bound : ∀ z ∈ B ∩ s, ‖fderivWithin ℝ f (B ∩ s) z - f'‖ ≤ ε := by
        intro z z_in
        have h := hδ z
        have : fderivWithin ℝ f (B ∩ s) z = fderiv ℝ f z := by
          have op : IsOpen (B ∩ s) := isOpen_ball.inter s_open
          rw [DifferentiableAt.fderivWithin _ (op.uniqueDiffOn z z_in)]
          exact (diff z z_in).differentiableAt (IsOpen.mem_nhds op z_in)
        rw [← this] at h
        exact le_of_lt (h z_in.2 z_in.1)
      simpa using conv.norm_image_sub_le_of_norm_fderivWithin_le' diff bound u_in v_in
    rintro ⟨u, v⟩ uv_in
    have f_cont' : ∀ y ∈ closure s, ContinuousWithinAt (f -  ⇑f') s y := by
      intro y y_in
      exact Tendsto.sub (f_cont y y_in) f'.cont.continuousWithinAt
    refine ContinuousWithinAt.closure_le uv_in ?_ ?_ key
    all_goals
      -- common start for both continuity proofs
      have : (B ∩ s) ×ˢ (B ∩ s) ⊆ s ×ˢ s := by gcongr <;> exact inter_subset_right
      obtain ⟨u_in, v_in⟩ : u ∈ closure s ∧ v ∈ closure s := by
        simpa [closure_prod_eq] using closure_mono this uv_in
      apply ContinuousWithinAt.mono _ this
      simp only [ContinuousWithinAt]
    · rw [nhdsWithin_prod_eq]
      have : ∀ u v, f v - f u - (f' v - f' u) = f v - f' v - (f u - f' u) := by intros; abel
      simp only [this]
      exact
        Tendsto.comp continuous_norm.continuousAt
          ((Tendsto.comp (f_cont' v v_in) tendsto_snd).sub <|
            Tendsto.comp (f_cont' u u_in) tendsto_fst)
    · apply tendsto_nhdsWithin_of_tendsto_nhds
      rw [nhds_prod_eq]
      exact
        tendsto_const_nhds.mul
          (Tendsto.comp continuous_norm.continuousAt <| tendsto_snd.sub tendsto_fst)

/-- If a function is differentiable on the right of a point `a : ℝ`, continuous at `a`, and
its derivative also converges at `a`, then `f` is differentiable on the right at `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e14f74ffb834f8c4a36f10ae9b762e15361e2b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
