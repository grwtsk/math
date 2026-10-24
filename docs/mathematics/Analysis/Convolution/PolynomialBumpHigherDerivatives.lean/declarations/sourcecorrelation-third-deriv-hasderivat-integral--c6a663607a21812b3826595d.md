# sourceCorrelation_third_deriv_hasDerivAt_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:448208ad-8575-d283-a790-c89255d86519",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_third_deriv_hasDerivAt_integral",
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
  "slug": "sourcecorrelation-third-deriv-hasderivat-integral--c6a663607a21812b3826595d",
  "source": {
    "blob": "fcca4fcb8056a094690ebd5632fc2f2ac635db8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 298,
    "path": "GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6a663607a21812b3826595d337c14f4be324dd1ec79fda8a1c715c526e6d2f1",
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

Occurrence: `result:448208ad-8575-d283-a790-c89255d86519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_third_deriv_hasDerivAt_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    Integrable (fun x : ℝ ↦ secondRepresentative A x * secondRepresentative A (x - t)) ∧
      HasDerivAt (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))))
        (∫ x : ℝ, secondRepresentative A x * secondRepresentative A (x - t)) t := by
  have hi : Integrable (fun x : ℝ ↦
      deriv (normalizedTest explicitSecondDerivative A) (x + -t) * secondRepresentative A x) := by
    simpa only [← sub_eq_add_neg, mul_comm] using
      sourceCorrelation_third_deriv_integrand_integrable hA t
  obtain ⟨hint, hd⟩ := translated_first_derivative_integral_hasDerivAt hA
    (secondRepresentative_integrable A) (-t) hi
  have he : deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) =
      fun s ↦ -(∫ x : ℝ,
        deriv (normalizedTest explicitSecondDerivative A) (x + -s) * secondRepresentative A x) := by
    funext s
    rw [sourceCorrelation_third_deriv_eq_integral hA]
    simp only [← sub_eq_add_neg, mul_comm]
  refine ⟨by simpa only [← sub_eq_add_neg, mul_comm] using hint, ?_⟩
  rw [he]
  have hc := (hd.comp t (hasDerivAt_neg t)).neg
  convert! hc using 1
  simp only [← sub_eq_add_neg, neg_mul, one_mul, neg_neg, mul_comm]

/-- The fourth ordinary derivative is the actual second-derivative autocorrelation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcca4fcb8056a094690ebd5632fc2f2ac635db8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
