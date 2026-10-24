# actual_log_pole_derivative_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60691d06-6e5c-1e35-2423-4569de1f3d69",
  "kind": "theorem",
  "lexical_name": "actual_log_pole_derivative_integral_zero",
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
  "slug": "actual-log-pole-derivative-integral-zero--ea265a5fe4ecb049f6e988ae",
  "source": {
    "blob": "6e09319400a710a867d2adb814b9e83a238ee018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variantc42458c7559621ef3a9e6daffe4c128080ddf5b0240a763430e973cf8ccfb281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea265a5fe4ecb049f6e988ae933b6570a37e3db26e7e94a3a7e12e53038cc0ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variantc42458c7559621ef3a9e6daffe4c128080ddf5b0240a763430e973cf8ccfb281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60691d06-6e5c-1e35-2423-4569de1f3d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_log_pole_derivative_integral_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in Ioi (0 : ℝ), x * Real.log x * deriv (plainProfile A 1) x) = 0 := by
  have hp : 0 < A := by linarith
  have hz := HasCompactSupport.integral_Ioi_deriv_eq
    (logMoment_contDiff hp) (logMoment_compact hp) (0 : ℝ)
  simp only [logMomentPrimitive, zero_mul, neg_zero] at hz
  rw [integral_congr_ae (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    exact logMoment_deriv_eq hp hx),
    integral_add (f := fun x => logProfile A 1 x + plainProfile A 1 x)
      ((logProfile_integrable hp 1).integrableOn.add
        (plainProfile_integrable hp 1).integrableOn)
          (actual_log_pole_derivative_integrable A hp),
    integral_add (logProfile_integrable hp 1).integrableOn
      (plainProfile_integrable hp 1).integrableOn,
    logProfile_positive_integral_zero hA 1, plainProfile_positive_integral_zero hA 1] at hz
  simpa only [zero_add] using hz

/-- The complete continuous Mellin polynomial has its own genuine derivative L1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variantc42458c7559621ef3a9e6daffe4c128080ddf5b0240a763430e973cf8ccfb281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variantc42458c7559621ef3a9e6daffe4c128080ddf5b0240a763430e973cf8ccfb281.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e09319400a710a867d2adb814b9e83a238ee018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
