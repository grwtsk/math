# thetaError_two_mul_oscillation_le_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc596a6c-28ae-15ed-afed-8cd38e77a410",
  "kind": "theorem",
  "lexical_name": "thetaError_two_mul_oscillation_le_linear",
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
  "slug": "thetaerror-two-mul-oscillation-le-linear--2351ea4f48bb8cb77691c8e5",
  "source": {
    "blob": "2eae15ac3a4bccb8c1734ded1dcb251b0ea4d524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2351ea4f48bb8cb77691c8e559fbbf4582c40ef193416da5fd77537e0de93fad",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc596a6c-28ae-15ed-afed-8cd38e77a410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaError_two_mul_oscillation_le_linear
    {X : ℕ} (hX : 0 < X)
    {u : ℝ}
    (hu : u ∈ Set.Icc (X : ℝ) ((2 * X : ℕ) : ℝ)) :
    |thetaError (2 * u) - thetaError (2 * (X : ℝ))| ≤
      (4 * Real.log 4 + 2) * (X : ℝ) := by
  have hXr : (0 : ℝ) ≤ (X : ℝ) := by positivity
  have hu0 : 0 ≤ u := by
    exact hXr.trans hu.1
  have h2X_le_2u :
      2 * (X : ℝ) ≤ 2 * u := by
    linarith [hu.1]
  have h2u_le_4X :
      2 * u ≤ 4 * (X : ℝ) := by
    have hu' : u ≤ 2 * (X : ℝ) := by
      simpa using hu.2
    linarith
  have hthetaMono :
      θ (2 * (X : ℝ)) ≤ θ (2 * u) :=
    Chebyshev.theta_mono h2X_le_2u
  have hthetaDiff0 :
      0 ≤ θ (2 * u) - θ (2 * (X : ℝ)) := by
    linarith
  have hthetaUpper :
      θ (2 * u) ≤ Real.log 4 * (2 * u) := by
    exact Chebyshev.theta_le_log4_mul_x (by linarith [hu0])
  have hlog4 : 0 ≤ Real.log 4 := by positivity
  have hthetaDiffUpper :
      θ (2 * u) - θ (2 * (X : ℝ)) ≤
        4 * Real.log 4 * (X : ℝ) := by
    have hthetaNonneg :
        0 ≤ θ (2 * (X : ℝ)) := Chebyshev.theta_nonneg _
    have hmul :
        Real.log 4 * (2 * u) ≤
          Real.log 4 * (4 * (X : ℝ)) := by
      exact mul_le_mul_of_nonneg_left h2u_le_4X hlog4
    nlinarith
  have hlinearDiff :
      0 ≤ 2 * u - 2 * (X : ℝ) := by
    linarith
  have hlinearUpper :
      2 * u - 2 * (X : ℝ) ≤ 2 * (X : ℝ) := by
    have hu' : u ≤ 2 * (X : ℝ) := by
      simpa using hu.2
    linarith
  unfold thetaError
  have habs :=
    abs_sub
      (θ (2 * u) - θ (2 * (X : ℝ)))
      (2 * u - 2 * (X : ℝ))
  have hleft :
      |θ (2 * u) - θ (2 * (X : ℝ))| =
        θ (2 * u) - θ (2 * (X : ℝ)) := by
    rw [abs_of_nonneg hthetaDiff0]
  have hright :
      |2 * u - 2 * (X : ℝ)| =
        2 * u - 2 * (X : ℝ) := by
    rw [abs_of_nonneg hlinearDiff]
  rw [hleft, hright] at habs
  have hid :
      (θ (2 * u) - 2 * u) -
          (θ (2 * (X : ℝ)) - 2 * (X : ℝ)) =
        (θ (2 * u) - θ (2 * (X : ℝ))) -
          (2 * u - 2 * (X : ℝ)) := by ring
  rw [hid]
  nlinarith

/-- At rho=7/8 the required oscillation exponent is 3/4+eta/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eae15ac3a4bccb8c1734ded1dcb251b0ea4d524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
