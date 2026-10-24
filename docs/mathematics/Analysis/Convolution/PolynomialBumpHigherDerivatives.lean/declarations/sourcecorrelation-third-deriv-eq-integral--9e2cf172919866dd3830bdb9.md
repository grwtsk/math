# sourceCorrelation_third_deriv_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae465b5a-6f42-0987-fd59-67442f63e51f",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_third_deriv_eq_integral",
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
  "slug": "sourcecorrelation-third-deriv-eq-integral--9e2cf172919866dd3830bdb9",
  "source": {
    "blob": "fcca4fcb8056a094690ebd5632fc2f2ac635db8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 155,
    "path": "GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e2cf172919866dd3830bdb980fac97f73de1600f676be97266eaadbe425e7e6",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae465b5a-6f42-0987-fd59-67442f63e51f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_third_deriv_eq_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t =
      -(∫ x : ℝ, secondRepresentative A x *
        deriv (normalizedTest explicitSecondDerivative A) (x - t)) := by
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hc := (normalizedTest_contDiff A hA).continuous_deriv_one
  have hi : Integrable (fun x ↦ f (x + t) * f x) :=
    ((hc.comp (continuous_id.add continuous_const)).mul hc).integrable_of_hasCompactSupport
      (normalizedTest_hasCompactSupport A hA).deriv.mul_left
  have hd := (translated_first_derivative_integral_hasDerivAt hA
    (normalizedTest_deriv_integrable hA) t hi).2.neg
  have he : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) =
      fun s ↦ -(∫ x : ℝ, f (x + s) * f x) := by
    funext s
    rw [sourceCorrelation_second_deriv_eq_integral hA, translated_product_integral]
  rw [he]
  change deriv (-(fun s ↦ ∫ x : ℝ, f (x + s) * f x)) t = _
  rw [hd.deriv, translated_product_integral]

/-- The third derivative integrand is integrable for every shift, with no seam hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcca4fcb8056a094690ebd5632fc2f2ac635db8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
