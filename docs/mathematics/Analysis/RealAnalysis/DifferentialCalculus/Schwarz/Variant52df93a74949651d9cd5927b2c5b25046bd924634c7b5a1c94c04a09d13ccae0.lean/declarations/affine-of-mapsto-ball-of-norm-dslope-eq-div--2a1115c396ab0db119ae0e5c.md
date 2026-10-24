# affine_of_mapsTo_ball_of_norm_dslope_eq_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c86baf7-8f33-1012-0d0e-11656c2ed00b",
  "kind": "theorem",
  "lexical_name": "affine_of_mapsTo_ball_of_norm_dslope_eq_div",
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
  "slug": "affine-of-mapsto-ball-of-norm-dslope-eq-div--2a1115c396ab0db119ae0e5c",
  "source": {
    "blob": "d360aba92b87571369086ec38c2d46f7f35b7bb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 299,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a1115c396ab0db119ae0e5c922b5b3053deb0e16d7f5b240d8e8269dbe6e971",
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

Occurrence: `result:5c86baf7-8f33-1012-0d0e-11656c2ed00b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affine_of_mapsTo_ball_of_norm_dslope_eq_div [StrictConvexSpace ℝ E]
    (hd : DifferentiableOn ℂ f (ball c R₁))
    (h_maps : Set.MapsTo f (ball c R₁) (closedBall (f c) R₂))
    (h_z₀ : z₀ ∈ ball c R₁) (h_eq : ‖dslope f c z₀‖ = R₂ / R₁) :
    Set.EqOn f (fun z => f c + (z - c) • dslope f c z₀) (ball c R₁) := by
  set e : E →L[ℂ] UniformSpace.Completion E := UniformSpace.Completion.toComplL
  set g := dslope (e ∘ f) c
  rintro z hz
  have h_R₁ : 0 < R₁ := nonempty_ball.mp ⟨_, h_z₀⟩
  have hg' : g = e ∘ dslope f c := by
    ext w
    simp only [g]
    rw [e.dslope_comp, Function.comp_apply]
    rintro rfl
    exact hd.differentiableAt <| ball_mem_nhds _ h_R₁
  have g_le_div : ∀ z ∈ ball c R₁, ‖g z‖ ≤ R₂ / R₁ := fun z hz =>
    norm_dslope_le_div_of_mapsTo_ball (e.differentiable.comp_differentiableOn hd)
      (fun w hw ↦ by simpa [e] using h_maps hw) hz
  have g_max : IsMaxOn (norm ∘ g) (ball c R₁) z₀ :=
    isMaxOn_iff.mpr fun z hz => by simpa [h_eq, hg', e] using g_le_div z hz
  have g_diff : DifferentiableOn ℂ g (ball c R₁) :=
    (differentiableOn_dslope (isOpen_ball.mem_nhds (mem_ball_self h_R₁))).mpr
      (e.differentiable.comp_differentiableOn hd)
  have heq : ‖dslope f c z‖ = ‖dslope f c z₀‖ := by
    simpa [hg', e] using norm_eqOn_of_isPreconnected_of_isMaxOn (convex_ball c R₁).isPreconnected
      isOpen_ball g_diff h_z₀ g_max hz
  have heq_add : ‖dslope f c z + dslope f c z₀‖ = ‖dslope f c z₀ + dslope f c z₀‖ := by
    simpa [hg', e, ← UniformSpace.Completion.coe_add]
      using norm_eqOn_of_isPreconnected_of_isMaxOn (convex_ball c R₁).isPreconnected
        isOpen_ball (g_diff.add_const (g z₀)) h_z₀ g_max.norm_add_self hz
  have : dslope f c z = dslope f c z₀ := eq_of_norm_eq_of_norm_add_eq heq <| by
    simp only [heq, SameRay.rfl.norm_add, heq_add]
  simp [← this]

/-- Equality case in the **Schwarz Lemma**: in the setup of `norm_dslope_le_div_of_mapsTo_ball`,
if there exists a point `z₀` in the ball such that `‖dslope f c z₀‖ = R₂ / R₁`,
then the map `f` is affine with the absolute value of the slope equal to `R₂ / R₁`.

This is an existence version of `affine_of_mapsTo_ball_of_norm_dslope_eq_div` above.

TODO: once the deprecated alias `affine_of_mapsTo_ball_of_exists_norm_dslope_eq_div` is gone,
rename this theorem to `affine_of_mapsTo_ball_of_exists_norm_dslope_eq_div`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d360aba92b87571369086ec38c2d46f7f35b7bb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
