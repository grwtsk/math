# dist_le_mul_div_pow_of_mapsTo_ball_of_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f54ae94a-f0bd-86aa-0f7e-499ec0e8abe0",
  "kind": "theorem",
  "lexical_name": "dist_le_mul_div_pow_of_mapsTo_ball_of_isLittleO",
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
  "slug": "dist-le-mul-div-pow-of-mapsto-ball-of-islittleo--a9ba229b31f411e7fab12f95",
  "source": {
    "blob": "d360aba92b87571369086ec38c2d46f7f35b7bb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9ba229b31f411e7fab12f952378c3af73a761823be6243feffd781423924823",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f54ae94a-f0bd-86aa-0f7e-499ec0e8abe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_le_mul_div_pow_of_mapsTo_ball_of_isLittleO {f : E → F} {c z : E} {R₁ R₂ : ℝ} {n : ℕ}
    (hd : DifferentiableOn ℂ f (ball c R₁)) (h_maps : MapsTo f (ball c R₁) (closedBall (f c) R₂))
    (hn : (f · - f c) =o[𝓝 c] (fun w ↦ ‖w - c‖ ^ n)) (hz : z ∈ ball c R₁) :
    dist (f z) (f c) ≤ R₂ * (dist z c / R₁) ^ (n + 1) := by
  -- Note that `0 < R₁`, `0 ≤ R₂`, then discard the trivial case `f z = f c`.
  have hR₁ : 0 < R₁ := nonempty_ball.mp ⟨_, hz⟩
  have hR₂ : 0 ≤ R₂ := nonempty_closedBall.mp ⟨_, h_maps hz⟩
  rcases eq_or_ne (f z) (f c) with heq | hfne
  · trans 0 <;> [simp [heq]; positivity]
  have hne : z ≠ c := ne_of_apply_ne _ hfne
  -- Let `g : F → ℂ` be a continuous linear function such that `‖g‖ = 1`
  -- and `‖g (f z - f c)‖ = ‖f z - f c‖`.
  rcases exists_dual_vector ℂ _ (norm_sub_eq_zero_iff.not.mpr hfne) with ⟨g, hg, hgf⟩
  -- Consider `h : ℂ → ℂ` given by `h w = g (f (c + w * (z - c)))`.
  set h : ℂ → ℂ := g ∘ f ∘ lineMap c z
  -- This map is differentiable on the ball with center at the origin and radius `R₁ / dist z c`
  -- and it sends this ball to the closed ball with center `h 0 = f c` and radius R₂`.
  have hmaps_line : MapsTo (lineMap c z) (ball (0 : ℂ) (R₁ / dist z c)) (ball c R₁) := by
    intro w hw
    simpa [lt_div_iff₀, hne, dist_comm c] using hw
  have hmaps : MapsTo h (ball 0 (R₁ / dist z c)) (closedBall (h 0) R₂) := by
    refine MapsTo.comp ?_ (h_maps.comp hmaps_line)
    simpa [hg, h] using g.lipschitzWith.mapsTo_closedBall (f c) R₂
  have hdiff : DifferentiableOn ℂ h (ball 0 (R₁ / dist z c)) :=
    g.differentiable.comp_differentiableOn <| hd.comp (lineMap c z).differentiableOn hmaps_line
  -- This map also satisfies `h(w) - h(0) = o(w ^ n)`, thus we can apply the auxiliary lemma above.
  have hn : (h · - h 0) =o[𝓝 0] (fun w ↦ (w - 0) ^ n) := by
    simp only [h, ← map_sub, Function.comp_apply, sub_zero]
    refine (g.isBigO_comp _ _).trans_isLittleO ?_
    rw [← lineMap_apply_zero (k := ℂ) c z] at hn
    refine hn.comp_tendsto ?_ |>.trans_isBigO ?_
    · exact Continuous.tendsto (by fun_prop) 0
    · simpa [Function.comp_def, ← dist_eq_norm_sub, mul_pow, mul_comm]
        using (Asymptotics.isBigO_refl (· ^ n) (𝓝 (0 : ℂ))).norm_left.const_mul_left _
  have hmem : 1 ∈ ball (0 : ℂ) (R₁ / dist z c) := by
    simpa [lt_div_iff₀, hne]
  rw [map_sub] at hgf
  simpa [hgf, h, dist_eq_norm_sub] using schwarz_aux hdiff hmaps hn hmem

/-- The **Schwarz Lemma**. Let `f : E → F` be a complex analytic function
on an open ball with center `c` and radius `R₁`.
If `f` sends this ball to a closed ball with center `f c` and radius `R₂`,
then for any `z` in the former ball we have `dist (f z) (f c) ≤ (R₂ / R₁) * dist z c`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d360aba92b87571369086ec38c2d46f7f35b7bb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
