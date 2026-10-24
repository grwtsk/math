# sourceCorrelation_fourth_deriv_abs_le_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:deddb0a1-4a2d-d4e5-c0c8-6a63d1cf1fa7",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_fourth_deriv_abs_le_energy",
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
  "slug": "sourcecorrelation-fourth-deriv-abs-le-energy--454ae283b79b1f080141fe55",
  "source": {
    "blob": "fcca4fcb8056a094690ebd5632fc2f2ac635db8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 412,
    "path": "GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:454ae283b79b1f080141fe55e2a30ffe1ddfcf1fb79dfd1d8d1f952bd14c3ca5",
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

Occurrence: `result:deddb0a1-4a2d-d4e5-c0c8-6a63d1cf1fa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_fourth_deriv_abs_le_energy {A : ℝ} (hA : 0 < A) (t : ℝ) :
    |deriv (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) t| ≤
      ∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2 := by
  rw [sourceCorrelation_fourth_deriv_eq_integral hA]
  let f := secondRepresentative A
  have hf := secondRepresentative_square_integrable A
  have hg := hf.comp_sub_right t
  have hm := (sourceCorrelation_third_deriv_hasDerivAt_integral hA t).1
  have he : (∫ x : ℝ, f x ^ 2) =
      ∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2 := by
    apply integral_congr_ae
    filter_upwards [actual_second_derivative_ae_eq hA] with x hx
    rw [hx]
  calc
    |∫ x : ℝ, f x * f (x - t)| ≤ ∫ x : ℝ, |f x * f (x - t)| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ x : ℝ, (f x ^ 2 + f (x - t) ^ 2) / 2 := by
      apply integral_mono hm.abs ((hf.add hg).div_const 2)
      intro x
      change |f x * f (x - t)| ≤ (f x ^ 2 + f (x - t) ^ 2) / 2
      rw [abs_mul]
      nlinarith [sq_nonneg (|f x| - |f (x - t)|), sq_abs (f x), sq_abs (f (x - t))]
    _ = ∫ x : ℝ, f x ^ 2 := by
      rw [integral_div, integral_add hf hg,
        integral_sub_right_eq_self (fun x : ℝ ↦ f x ^ 2) t]
      ring
    _ = _ := he

/-- The actual fourth correlation derivative satisfies the stated coefficient 815. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcca4fcb8056a094690ebd5632fc2f2ac635db8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
