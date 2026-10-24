# sourceCorrelation_contDiff_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b152007e-76e8-d84d-77cd-f49e60bcaa56",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_contDiff_three",
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
  "slug": "sourcecorrelation-contdiff-three--56b5d406390b7854fde2bd94",
  "source": {
    "blob": "fcca4fcb8056a094690ebd5632fc2f2ac635db8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 211,
    "path": "GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56b5d406390b7854fde2bd947a1196fc5a368725a3e4cf255614e4d134206633",
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

Occurrence: `result:b152007e-76e8-d84d-77cd-f49e60bcaa56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_contDiff_three {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 3 (sourceCorrelation explicitSecondDerivative A) := by
  have hc2 := sourceCorrelation_contDiff_two hA
  have hd : Differentiable ℝ (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) := by
    intro t
    let f := deriv (normalizedTest explicitSecondDerivative A)
    have hc := (normalizedTest_contDiff A hA).continuous_deriv_one
    have hi : Integrable (fun x ↦ f (x + t) * f x) :=
      ((hc.comp (continuous_id.add continuous_const)).mul hc).integrable_of_hasCompactSupport
        (normalizedTest_hasCompactSupport A hA).deriv.mul_left
    have h := (translated_first_derivative_integral_hasDerivAt hA
      (normalizedTest_deriv_integrable hA) t hi).2.neg
    have he : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) =
        fun s ↦ -(∫ x : ℝ, f (x + s) * f x) := by
      funext s
      rw [sourceCorrelation_second_deriv_eq_integral hA, translated_product_integral]
    rw [he]
    exact h.differentiableAt
  have hc1 : ContDiff ℝ 1 (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) := by
    rw [contDiff_one_iff_deriv]
    exact ⟨hd, sourceCorrelation_third_deriv_continuous hA⟩
  have hc2d : ContDiff ℝ 2 (deriv (sourceCorrelation explicitSecondDerivative A)) := by
    rw [show (2 : WithTop ℕ∞) = 1 + 1 from rfl, contDiff_succ_iff_deriv]
    exact ⟨hc2.deriv'.differentiable_one, by norm_num, hc1⟩
  rw [show (3 : WithTop ℕ∞) = 2 + 1 from rfl, contDiff_succ_iff_deriv]
  exact ⟨hc2.differentiable (by norm_num), by norm_num, hc2d⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcca4fcb8056a094690ebd5632fc2f2ac635db8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
