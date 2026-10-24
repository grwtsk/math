# pickup_laplace_hasDerivAt_of_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6aeae2e-5c9c-8682-7852-168f8773101c",
  "kind": "theorem",
  "lexical_name": "pickup_laplace_hasDerivAt_of_bound",
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
  "slug": "pickup-laplace-hasderivat-of-bound--bc02dddba23f0036a254e5c0",
  "source": {
    "blob": "91474c5dd6b67a14490077cc41027d60eecc8ab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 158,
    "path": "GRWTSK/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc02dddba23f0036a254e5c02ffc69d8f902841cb692310aa52c659589064910",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6aeae2e-5c9c-8682-7852-168f8773101c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_laplace_hasDerivAt_of_bound {C p : ℝ} (hC : 0 ≤ C) (hp : 0 ≤ p)
    (bound : ∀ t : ℝ, 0 ≤ t → |pickup t| ≤ C * (1 + t) ^ p)
    {z : ℂ} (hz : 0 < z.re) :
    HasDerivAt pickupLaplace (∫ t : ℝ in Ioi 0, pickupLaplaceDerivativeIntegrand z t) z := by
  let σ : ℝ := z.re / 2
  have hσ : 0 < σ := by dsimp [σ]; linarith
  have sectorOpen : IsOpen {w : ℂ | σ < w.re} :=
    Complex.continuous_re.isOpen_preimage _ isOpen_Ioi
  have neighborhood : {w : ℂ | σ < w.re} ∈ 𝓝 z :=
    sectorOpen.mem_nhds (by dsimp [σ]; linarith)
  have measurable : ∀ᶠ w in 𝓝 z,
      AEStronglyMeasurable (pickupLaplaceIntegrand w) (volume.restrict (Ioi 0)) :=
    Filter.Eventually.of_forall (fun w ↦
      (pickup_laplace_integrand_continuous w).aestronglyMeasurable)
  have derivativeMeasurable : AEStronglyMeasurable (pickupLaplaceDerivativeIntegrand z)
      (volume.restrict (Ioi 0)) :=
    (pickup_laplace_derivative_integrand_continuous z).aestronglyMeasurable
  have derivativeBound : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ w ∈ {w : ℂ | σ < w.re},
        ‖pickupLaplaceDerivativeIntegrand w t‖ ≤ C * polynomialExponential σ (p + 1) t := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    intro w hw
    exact pickup_laplace_derivative_integrand_bound hC bound (show σ < w.re from hw).le ht.le
  have differentiable : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ w ∈ {w : ℂ | σ < w.re},
        HasDerivAt (fun a : ℂ ↦ pickupLaplaceIntegrand a t)
          (pickupLaplaceDerivativeIntegrand w t) w :=
    Filter.Eventually.of_forall (fun t w _ ↦ pickup_laplace_integrand_hasDerivAt w t)
  exact (hasDerivAt_integral_of_dominated_loc_of_deriv_le neighborhood measurable
    (pickup_laplace_integrable_of_bound hC hp bound hz) derivativeMeasurable derivativeBound
    ((polynomial_exponential_integrable hσ (by linarith : 0 ≤ p + 1)).const_mul C)
    differentiable).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91474c5dd6b67a14490077cc41027d60eecc8ab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
