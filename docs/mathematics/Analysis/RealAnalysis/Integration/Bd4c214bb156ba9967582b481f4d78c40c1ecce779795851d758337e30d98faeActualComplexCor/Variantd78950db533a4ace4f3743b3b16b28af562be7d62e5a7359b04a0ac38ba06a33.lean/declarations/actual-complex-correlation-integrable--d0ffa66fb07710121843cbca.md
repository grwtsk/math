# actual_complex_correlation_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:290917f9-b60d-558c-3bc5-6dcf96c8e461",
  "kind": "theorem",
  "lexical_name": "actual_complex_correlation_integrable",
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
  "slug": "actual-complex-correlation-integrable--d0ffa66fb07710121843cbca",
  "source": {
    "blob": "25374ca9ab3090fa3111ae927c19d09093ef4831",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variantd78950db533a4ace4f3743b3b16b28af562be7d62e5a7359b04a0ac38ba06a33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0ffa66fb07710121843cbcad91a6167b604f5f5a45a8d6326eac661af647e6e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variantd78950db533a4ace4f3743b3b16b28af562be7d62e5a7359b04a0ac38ba06a33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:290917f9-b60d-558c-3bc5-6dcf96c8e461`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_complex_correlation_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun t : ℝ => (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp (z * (t : ℂ))) volume := by
  have hi := (actual_complex_test_integrable hA z).integrable_convolution
    (ContinuousLinearMap.mul ℂ ℂ) (actual_complex_test_integrable hA z)
  have he : (fun t : ℝ => (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp (z * (t : ℂ))) =
        ((fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
          Complex.exp (z * (x : ℂ))) ⋆[ContinuousLinearMap.mul ℂ ℂ, volume]
          (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
            Complex.exp (z * (x : ℂ)))) := by
    funext t
    exact actual_complex_correlation_eq_convolution hA z t
  rw [he]
  exact hi

/-- The actual closed source interval equals its genuine whole-line transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variantd78950db533a4ace4f3743b3b16b28af562be7d62e5a7359b04a0ac38ba06a33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variantd78950db533a4ace4f3743b3b16b28af562be7d62e5a7359b04a0ac38ba06a33.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25374ca9ab3090fa3111ae927c19d09093ef4831` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
