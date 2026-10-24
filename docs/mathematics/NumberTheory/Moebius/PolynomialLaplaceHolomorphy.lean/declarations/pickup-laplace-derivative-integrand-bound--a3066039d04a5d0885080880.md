# pickup_laplace_derivative_integrand_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14d38446-d573-f62e-7108-42b5304015ec",
  "kind": "theorem",
  "lexical_name": "pickup_laplace_derivative_integrand_bound",
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
  "slug": "pickup-laplace-derivative-integrand-bound--a3066039d04a5d0885080880",
  "source": {
    "blob": "91474c5dd6b67a14490077cc41027d60eecc8ab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 137,
    "path": "GRWTSK/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3066039d04a5d088508088013f9d7c48a35939cf85f5be43e4c6caad9fc747d",
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

Occurrence: `result:14d38446-d573-f62e-7108-42b5304015ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_laplace_derivative_integrand_bound {C p σ : ℝ} (hC : 0 ≤ C)
    (bound : ∀ t : ℝ, 0 ≤ t → |pickup t| ≤ C * (1 + t) ^ p)
    {z : ℂ} (hz : σ ≤ z.re) {t : ℝ} (ht : 0 ≤ t) :
    ‖pickupLaplaceDerivativeIntegrand z t‖ ≤ C * polynomialExponential σ (p + 1) t := by
  have allowance : 0 ≤ C * polynomialExponential σ p t :=
    mul_nonneg hC (mul_nonneg (Real.exp_pos _).le (Real.rpow_nonneg (by linarith) p))
  calc
    ‖pickupLaplaceDerivativeIntegrand z t‖ = t * ‖pickupLaplaceIntegrand z t‖ := by
      rw [pickupLaplaceDerivativeIntegrand, norm_mul, norm_neg, Complex.norm_real,
        Real.norm_eq_abs, abs_of_nonneg ht]
    _ ≤ t * (C * polynomialExponential σ p t) :=
      mul_le_mul_of_nonneg_left (pickup_laplace_integrand_bound hC bound hz ht) ht
    _ ≤ (1 + t) * (C * polynomialExponential σ p t) :=
      mul_le_mul_of_nonneg_right (by linarith : t ≤ 1 + t) allowance
    _ = C * polynomialExponential σ (p + 1) t := by
      unfold polynomialExponential
      rw [Real.rpow_add (by linarith : 0 < 1 + t), Real.rpow_one]
      ring

/-- Differentiation under the original integral uses a uniform positive-decay
neighborhood and the integrable allowance with exponent `p + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91474c5dd6b67a14490077cc41027d60eecc8ab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
