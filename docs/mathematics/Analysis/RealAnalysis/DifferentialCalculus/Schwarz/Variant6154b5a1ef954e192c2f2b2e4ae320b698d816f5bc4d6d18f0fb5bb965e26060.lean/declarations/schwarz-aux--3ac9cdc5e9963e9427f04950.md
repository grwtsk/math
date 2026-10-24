# schwarz_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7ac5fb7-550b-15af-3284-99d1851705be",
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
  "slug": "schwarz-aux--3ac9cdc5e9963e9427f04950",
  "source": {
    "blob": "b8f8b2ef54822f2928d8978c6eef4444df342b57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant6154b5a1ef954e192c2f2b2e4ae320b698d816f5bc4d6d18f0fb5bb965e26060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ac9cdc5e9963e9427f0495062ab60859c1e8b5224bca1ff8498309945cb463a",
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

Occurrence: `result:a7ac5fb7-550b-15af-3284-99d1851705be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem schwarz_aux {f : ℂ → ℂ} (hd : DifferentiableOn ℂ f (ball c R₁))
    (h_maps : MapsTo f (ball c R₁) (ball (f c) R₂)) (hz : z ∈ ball c R₁) :
    ‖dslope f c z‖ ≤ R₂ / R₁ := by
  have hR₁ : 0 < R₁ := nonempty_ball.1 ⟨z, hz⟩
  suffices ∀ᶠ r in 𝓝[<] R₁, ‖dslope f c z‖ ≤ R₂ / r by
    refine' ge_of_tendsto _ this
    exact (tendsto_const_nhds.div tendsto_id hR₁.ne').mono_left nhdsWithin_le_nhds
  rw [mem_ball] at hz
  filter_upwards [Ioo_mem_nhdsWithin_Iio ⟨hz, le_rfl⟩] with r hr
  have hr₀ : 0 < r := dist_nonneg.trans_lt hr.1
  replace hd : DiffContOnCl ℂ (dslope f c) (ball c r)
  · refine' DifferentiableOn.diffContOnCl _
    rw [closure_ball c hr₀.ne']
    exact ((differentiableOn_dslope <| ball_mem_nhds _ hR₁).mpr hd).mono
      (closedBall_subset_ball hr.2)
  refine' norm_le_of_forall_mem_frontier_norm_le bounded_ball hd _ _
  · rw [frontier_ball c hr₀.ne']
    intro z hz
    have hz' : z ≠ c := ne_of_mem_sphere hz hr₀.ne'
    rw [dslope_of_ne _ hz', slope_def_module, norm_smul, norm_inv, mem_sphere_iff_norm.1 hz, ←
      div_eq_inv_mul, div_le_div_right hr₀, ← dist_eq_norm]
    exact le_of_lt (h_maps (mem_ball.2 (by rw [mem_sphere.1 hz]; exact hr.2)))
  · rw [closure_ball c hr₀.ne', mem_closedBall]
    exact hr.1.le
#align complex.schwarz_aux Complex.schwarz_aux

/-- Two cases of the **Schwarz Lemma** (derivative and distance), merged together. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant6154b5a1ef954e192c2f2b2e4ae320b698d816f5bc4d6d18f0fb5bb965e26060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant6154b5a1ef954e192c2f2b2e4ae320b698d816f5bc4d6d18f0fb5bb965e26060.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8f8b2ef54822f2928d8978c6eef4444df342b57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
