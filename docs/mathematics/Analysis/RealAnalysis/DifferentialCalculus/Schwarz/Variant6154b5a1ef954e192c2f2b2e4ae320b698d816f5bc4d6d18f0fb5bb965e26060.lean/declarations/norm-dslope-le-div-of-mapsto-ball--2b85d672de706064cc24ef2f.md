# norm_dslope_le_div_of_mapsTo_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5a3fb6c-3c96-7b2e-c205-8129be4f5d3c",
  "kind": "theorem",
  "lexical_name": "norm_dslope_le_div_of_mapsTo_ball",
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
  "slug": "norm-dslope-le-div-of-mapsto-ball--2b85d672de706064cc24ef2f",
  "source": {
    "blob": "b8f8b2ef54822f2928d8978c6eef4444df342b57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant6154b5a1ef954e192c2f2b2e4ae320b698d816f5bc4d6d18f0fb5bb965e26060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b85d672de706064cc24ef2fb23dd0a7a51c5f96cf2ee6ca3554847c15972a46",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant6154b5a1ef954e192c2f2b2e4ae320b698d816f5bc4d6d18f0fb5bb965e26060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5a3fb6c-3c96-7b2e-c205-8129be4f5d3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_dslope_le_div_of_mapsTo_ball (hd : DifferentiableOn ℂ f (ball c R₁))
    (h_maps : MapsTo f (ball c R₁) (ball (f c) R₂)) (hz : z ∈ ball c R₁) :
    ‖dslope f c z‖ ≤ R₂ / R₁ := by
  have hR₁ : 0 < R₁ := nonempty_ball.1 ⟨z, hz⟩
  have hR₂ : 0 < R₂ := nonempty_ball.1 ⟨f z, h_maps hz⟩
  cases' eq_or_ne (dslope f c z) 0 with hc hc
  · rw [hc, norm_zero]; exact div_nonneg hR₂.le hR₁.le
  rcases exists_dual_vector ℂ _ hc with ⟨g, hg, hgf⟩
  have hg' : ‖g‖₊ = 1 := NNReal.eq hg
  have hg₀ : ‖g‖₊ ≠ 0 := by simpa only [hg'] using one_ne_zero
  calc
    ‖dslope f c z‖ = ‖dslope (g ∘ f) c z‖ := by
      rw [g.dslope_comp, hgf, IsROrC.norm_ofReal, abs_norm]
      exact fun _ => hd.differentiableAt (ball_mem_nhds _ hR₁)
    _ ≤ R₂ / R₁ := by
      refine' schwarz_aux (g.differentiable.comp_differentiableOn hd) (MapsTo.comp _ h_maps) hz
      simpa only [hg', NNReal.coe_one, one_mul] using g.lipschitz.mapsTo_ball hg₀ (f c) R₂
#align complex.norm_dslope_le_div_of_maps_to_ball Complex.norm_dslope_le_div_of_mapsTo_ball

/-- Equality case in the **Schwarz Lemma**: in the setup of `norm_dslope_le_div_of_mapsTo_ball`, if
`‖dslope f c z₀‖ = R₂ / R₁` holds at a point in the ball then the map `f` is affine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant6154b5a1ef954e192c2f2b2e4ae320b698d816f5bc4d6d18f0fb5bb965e26060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant6154b5a1ef954e192c2f2b2e4ae320b698d816f5bc4d6d18f0fb5bb965e26060.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8f8b2ef54822f2928d8978c6eef4444df342b57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
