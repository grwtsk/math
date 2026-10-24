# schwarz_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3e1568b-bb74-abf8-bdcc-040916e511ca",
  "kind": "theorem",
  "lexical_name": "schwarz_aux",
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
  "slug": "schwarz-aux--243155439e5bc47580cc0ada",
  "source": {
    "blob": "d360aba92b87571369086ec38c2d46f7f35b7bb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:243155439e5bc47580cc0ada9957472bf125c8ffad25839a0dcd05ede9f3b263",
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

Occurrence: `result:c3e1568b-bb74-abf8-bdcc-040916e511ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem schwarz_aux {f : ℂ → ℂ} {c z : ℂ} {R₁ R₂ : ℝ} {n : ℕ}
    (hd : DifferentiableOn ℂ f (ball c R₁)) (h_maps : MapsTo f (ball c R₁) (closedBall (f c) R₂))
    (hn : (f · - f c) =o[𝓝 c] (fun w ↦ (w - c) ^ n)) (hz : z ∈ ball c R₁) :
    ‖f z - f c‖ ≤ R₂ * (‖z - c‖ / R₁) ^ (n + 1) := by
  -- By slightly reducing `R₁`, we can assume that `f` is differentiable on `closedBall c R₁`
  -- and it maps this ball to the closed ball in the codomain.
  have hR₁ : 0 < R₁ := nonempty_ball.1 ⟨z, hz⟩
  wlog hd' : DifferentiableOn ℂ f (closedBall c R₁) ∧
    MapsTo f (closedBall c R₁) (closedBall (f c) R₂) generalizing R₁
  · suffices ∀ᶠ r in 𝓝[<] R₁, ‖f z - f c‖ ≤ R₂ * (‖z - c‖ / r) ^ (n + 1) by
      refine ge_of_tendsto ?_ this
      refine ContinuousAt.continuousWithinAt ?_
      fun_prop (disch := positivity)
    rw [mem_ball_iff_norm] at hz
    filter_upwards [Ioo_mem_nhdsLT hz] with r ⟨hzr, hrR₁⟩
    apply this
    · exact hd.mono <| by gcongr
    · exact h_maps.mono_left <| by gcongr
    · rwa [mem_ball_iff_norm]
    · exact (norm_nonneg _).trans_lt hzr
    · exact ⟨hd.mono <| closedBall_subset_ball hrR₁, h_maps.mono_left <|
        closedBall_subset_ball hrR₁⟩
  -- Cleanup, discard the case `z = c`.
  clear hd h_maps
  rcases hd' with ⟨hd, h_maps⟩
  rcases eq_or_ne z c with rfl | hne
  · simp
  -- Consider the function given by `g w := ((w - c) ^ (n + 1))⁻¹ * (f w - f c)`.
  -- It is differentiable away from `c` and satisfies `g w = o((w - c)⁻¹)`,
  -- thus it can be extended to a function g'` differentiable on the whole closed ball
  -- with center c` and radius `R₁`.
  set g : ℂ → ℂ := fun w ↦ ((w - c) ^ (n + 1))⁻¹ * (f w - f c)
  set g' := update g c (limUnder (𝓝[≠] c) g)
  have hdg' : DifferentiableOn ℂ g' (closedBall c R₁) := by
    refine .mono ?_ (subset_insert_sdiff_singleton c _)
    apply differentiableOn_update_limUnder_insert_of_isLittleO
    · exact sdiff_mem_nhdsWithin_compl (closedBall_mem_nhds _ hR₁) _
    · refine .mul ?_ (hd.mono sdiff_subset |>.sub_const _)
      fun_prop (disch := simp +contextual [sub_eq_zero])
    · refine Asymptotics.isBigO_refl (fun w ↦ ((w - c) ^ (n + 1))⁻¹) _ |>.mul_isLittleO hn
        |>.mono (nhdsWithin_le_nhds (s := {c}ᶜ)) |>.congr' ?_ ?_
      · simp [g]
      · refine eventually_mem_nhdsWithin.mono fun w hw ↦ ?_
        rw [mem_compl_singleton_iff, ← sub_ne_zero] at hw
        simp [pow_succ, field]
  -- Finally, we apply the maximum modulus principle to this function.
  -- On the sphere `dist w c = R₁`, its norm is bounded by `R₂ / R₁ ^ (n + 1)`,
  -- thus it's bounded by the same constant on the whole closed ball,
  -- in particular, at `w = z`.
  suffices ‖g' z‖ ≤ R₂ / R₁ ^ (n + 1) by
    have hz' : ‖z - c‖ ≠ 0 := by simpa [sub_eq_zero] using hne
    simpa [g', hne, g, div_pow, mul_comm, field] using this
  refine norm_le_of_forall_mem_frontier_norm_le isBounded_ball (hdg'.diffContOnCl_ball subset_rfl)
    ?_ ?_
  · grw [frontier_ball_subset_sphere]
    intro w hw
    have hwc := ne_of_mem_sphere hw hR₁.ne'
    have hfw : ‖f w - f c‖ ≤ R₂ := by
      simpa [dist_eq_norm] using h_maps (sphere_subset_closedBall hw)
    rw [mem_sphere_iff_norm] at hw
    simpa [g', hwc, g, hw, field]
  · exact subset_closure hz

public section

section NormedSpace

variable {E F : Type*}
  [NormedAddCommGroup E] [NormedSpace ℂ E] [NormedAddCommGroup F] [NormedSpace ℂ F]
  {R R₁ R₂ : ℝ} {f : E → F} {c z : E}

open AffineMap in
/-- Let `f : E → F` be a complex analytic map
sending an open ball of radius `R₁` to a closed ball of radius `R₂`.
If `f w - f c = o(‖w - c‖ ^ n)`, then for any `z` in the ball in the domain,
we have `dist (f z) (f c) ≤ R₂ * (dist z c / R₁) ^ (n + 1)`.

For `n = 0`, this theorem gives a usual Schwarz lemma,
see `dist_le_div_mul_dist_of_mapsTo_ball` below.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d360aba92b87571369086ec38c2d46f7f35b7bb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
