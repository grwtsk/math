# rnDeriv_posterior_ae_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b5cfd35-339b-264d-9715-4b930d3402d0",
  "kind": "lemma",
  "lexical_name": "rnDeriv_posterior_ae_prod",
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
  "slug": "rnderiv-posterior-ae-prod--f0d6e0af75476196b6c4153f",
  "source": {
    "blob": "9de3dc7f7fcc1d7562763981b97023360ea53889",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 241,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0d6e0af75476196b6c4153fdd3724eeb9567f6ba777927564ba3ba1a3c27c78",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b5cfd35-339b-264d-9715-4b930d3402d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rnDeriv_posterior_ae_prod (h_ac : ∀ᵐ ω ∂μ, κ ω ≪ κ ∘ₘ μ) :
    ∀ᵐ p ∂(μ.prod (κ ∘ₘ μ)),
      (κ†μ).rnDeriv (Kernel.const _ μ) p.2 p.1 = κ.rnDeriv (Kernel.const _ (κ ∘ₘ μ)) p.1 p.2 := by
  -- We prove the a.e. equality by showing that integrals on the π-system of rectangles are equal.
  -- First, the integral of the left-hand side on `s ×ˢ t` is `(μ ⊗ₘ κ) (s ×ˢ t)`, which we prove
  -- by showing that it's equal to `((κ ∘ₘ μ) ⊗ κ†μ) (t ×ˢ s)` and using the main property of the
  -- posterior.
  have h1 {s : Set Ω} {t : Set 𝓧} (hs : MeasurableSet s) (ht : MeasurableSet t) :
      ∫⁻ x in s ×ˢ t, (κ†μ).rnDeriv (Kernel.const _ μ) x.2 x.1 ∂μ.prod (⇑κ ∘ₘ μ)
        = (μ ⊗ₘ κ) (s ×ˢ t) := by
    rw [setLIntegral_prod_symm _ (by fun_prop), ← swap_compProd_posterior, Measure.swap_comp,
      Measure.map_apply measurable_swap (hs.prod ht), Set.preimage_swap_prod,
      Measure.compProd_apply_prod ht hs]
    refine lintegral_congr_ae <| ae_restrict_of_ae ?_
    filter_upwards [absolutelyContinuous_posterior h_ac] with x h_ac'
    change ∫⁻ ω in s, (κ†μ).rnDeriv (Kernel.const 𝓧 μ) x ω ∂(Kernel.const 𝓧 μ x) = _
    rw [Kernel.setLIntegral_rnDeriv h_ac' hs]
  have h2 {s : Set Ω} {t : Set 𝓧} (hs : MeasurableSet s) (ht : MeasurableSet t) :
  -- Second, the integral of the right-hand side on `s ×ˢ t` is `(μ ⊗ₘ κ) (s ×ˢ t)`.
      ∫⁻ x in s ×ˢ t, κ.rnDeriv (Kernel.const _ (κ ∘ₘ μ)) x.1 x.2 ∂μ.prod (⇑κ ∘ₘ μ)
        = (μ ⊗ₘ κ) (s ×ˢ t) := by
    rw [setLIntegral_prod _ (by fun_prop), Measure.compProd_apply_prod hs ht]
    refine lintegral_congr_ae <| ae_restrict_of_ae ?_
    filter_upwards [h_ac] with ω h_ac
    change ∫⁻ x in t, κ.rnDeriv (Kernel.const Ω (κ ∘ₘ μ)) ω x ∂(Kernel.const Ω (κ ∘ₘ μ) ω) = _
    rw [Kernel.setLIntegral_rnDeriv h_ac ht]
  -- We extend from the π-system to the σ-algebra.
  refine ae_eq_of_setLIntegral_prod_eq (by fun_prop) (by fun_prop) ?_ ?_
  · refine ne_of_lt ?_
    calc ∫⁻ x, (κ†μ).rnDeriv (Kernel.const _ μ) x.2 x.1 ∂μ.prod (κ ∘ₘ μ)
    _ = (μ ⊗ₘ κ) Set.univ := by rw [← setLIntegral_univ, ← Set.univ_prod_univ, h1 .univ .univ]
    _ < ⊤ := measure_lt_top _ _
  · intro s hs t ht
    rw [h1 hs ht, h2 hs ht]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9de3dc7f7fcc1d7562763981b97023360ea53889` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
