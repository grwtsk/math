# riemann_hypothesis_of_polynomial_pickup_and_initial_transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc57d8aa-62e8-0bb2-f80b-aaca0b322002",
  "kind": "theorem",
  "lexical_name": "riemann_hypothesis_of_polynomial_pickup_and_initial_transform",
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
  "slug": "riemann-hypothesis-of-polynomial-pickup-and-initial-transform--be5beb61941b453300d8bb41",
  "source": {
    "blob": "1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 272,
    "path": "GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be5beb61941b453300d8bb41a1a59e69f643034e4ff6a75bc1c5dbd32dce1757",
  "verification": {
    "reference": "docs/verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc57d8aa-62e8-0bb2-f80b-aaca0b322002`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemann_hypothesis_of_polynomial_pickup_and_initial_transform
    (W : ℝ → ℝ) (C : ℝ) (m : ℕ) (H : ℂ → ℂ)
    (hW : Continuous W)
    (hupper : ∀ t : ℝ, 0 ≤ t → W t ≤ C * (1 + t) ^ m)
    (hH : ∀ z : ℂ, 0 < z.re → AnalyticAt ℂ H z)
    (hweighted : ∀ z : ℂ, 1 < z.re →
      Integrable (fun t : ℝ ↦ Complex.exp (-z * t) *
        (polynomialPickupDensity W C m t : ℂ)) pickupTimeMeasure)
    (hformula : ∀ z : ℂ, 1 < z.re →
      (∫ t : ℝ, Complex.exp (-z * t) *
        (polynomialPickupDensity W C m t : ℂ) ∂pickupTimeMeasure) =
        H z - pickupTransform z) :
    _root_.RiemannHypothesis := by
  have hdcont : Continuous (polynomialPickupDensity W C m) := by
    unfold polynomialPickupDensity
    fun_prop
  have hdm : AEMeasurable
      (fun t ↦ ENNReal.ofReal (polynomialPickupDensity W C m t)) pickupTimeMeasure :=
    hdcont.aemeasurable.ennreal_ofReal
  have hdtop : ∀ᵐ t ∂pickupTimeMeasure,
      ENNReal.ofReal (polynomialPickupDensity W C m t) < ⊤ :=
    Eventually.of_forall (fun _ ↦ ENNReal.ofReal_lt_top)
  have hdreal : ∀ᵐ t ∂pickupTimeMeasure,
      (ENNReal.ofReal (polynomialPickupDensity W C m t)).toReal =
        polynomialPickupDensity W C m t := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact ENNReal.toReal_ofReal (sub_nonneg.mpr (hupper t ht.le))
  have hpos : ∀ᵐ t ∂polynomialPickupMeasure W C m, 0 ≤ (id t : ℝ) := by
    have hs : ∀ᵐ t ∂pickupTimeMeasure, 0 < t := ae_restrict_mem measurableSet_Ioi
    have hp : ∀ᵐ t ∂polynomialPickupMeasure W C m, 0 < t :=
      (withDensity_absolutelyContinuous pickupTimeMeasure
      (fun t ↦ ENNReal.ofReal (polynomialPickupDensity W C m t))).ae_le hs
    exact hp.mono (fun t ht ↦ ht.le)
  have heint (z : ℂ) (hz : 1 < z.re) :
      Integrable (fun t : ℝ ↦ Complex.exp (-z * t))
        (polynomialPickupMeasure W C m) := by
    apply (integrable_withDensity_iff_integrable_smul₀' hdm hdtop).mpr
    apply (hweighted z hz).congr
    filter_upwards [hdreal] with t ht
    rw [ht, Complex.real_smul]
    exact mul_comm _ _
  apply riemann_hypothesis_of_positive_laplace_return
    (polynomialPickupMeasure W C m) id H (by fun_prop) hpos ?_ hH ?_
  · intro t ht
    have hi := (heint (t : ℂ) (by simpa using ht)).norm
    simpa only [Complex.norm_exp, Complex.mul_re, Complex.neg_re,
      Complex.ofReal_re, Complex.ofReal_im, zero_mul, mul_zero, sub_zero,
      id_eq] using hi
  · intro z hz
    have heq :
        transform id (polynomialPickupMeasure W C m) z =
          H z - pickupTransform z := by
      rw [transform, complexMGF, polynomialPickupMeasure,
        integral_withDensity_eq_integral_toReal_smul₀ hdm hdtop]
      calc
        _ = ∫ t : ℝ, Complex.exp (-z * t) *
              (polynomialPickupDensity W C m t : ℂ) ∂pickupTimeMeasure := by
          apply integral_congr_ae
          filter_upwards [hdreal] with t ht
          rw [ht, Complex.real_smul]
          exact mul_comm _ _
        _ = _ := hformula z hz
    rw [correctedPickupTransform, normalizedPickupTransform_eq_initial hz]
    exact heq.symm

/-- Every integer polynomial correction has genuine real exponential moments
at every positive parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
