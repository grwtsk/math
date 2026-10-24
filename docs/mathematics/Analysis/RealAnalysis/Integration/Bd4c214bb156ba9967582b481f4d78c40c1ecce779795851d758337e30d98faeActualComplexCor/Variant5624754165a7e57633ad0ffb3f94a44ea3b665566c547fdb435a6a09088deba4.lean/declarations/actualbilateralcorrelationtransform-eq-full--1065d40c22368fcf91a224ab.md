# actualBilateralCorrelationTransform_eq_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8861091-9ffc-ef91-691b-116f60008041",
  "kind": "theorem",
  "lexical_name": "actualBilateralCorrelationTransform_eq_full",
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
  "slug": "actualbilateralcorrelationtransform-eq-full--1065d40c22368fcf91a224ab",
  "source": {
    "blob": "5dedd993b099e4e798d9a67703064a2941841719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variant5624754165a7e57633ad0ffb3f94a44ea3b665566c547fdb435a6a09088deba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1065d40c22368fcf91a224ab8aedcc7f9e47107987c09d8379dcb57491296047",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variant5624754165a7e57633ad0ffb3f94a44ea3b665566c547fdb435a6a09088deba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8861091-9ffc-ef91-691b-116f60008041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBilateralCorrelationTransform_eq_full {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    actualBilateralCorrelationTransform A z =
      ∫ t : ℝ, Complex.exp (z * (t : ℂ)) *
        (sourceCorrelation explicitSecondDerivative A t : ℂ) := by
  unfold actualBilateralCorrelationTransform
  apply intervalIntegral.integral_eq_integral_of_support_subset
  intro t ht
  change (Complex.exp (z * (t : ℂ)) *
    (sourceCorrelation explicitSecondDerivative A t : ℂ)) ≠ 0 at ht
  have hlt : |t| < 2 * A := by
    by_contra hn
    have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A t
      (by linarith) (le_of_not_gt hn)
    simp only [hz, Complex.ofReal_zero, mul_zero, ne_eq, not_true_eq_false] at ht
  exact ⟨(abs_lt.mp hlt).1, (abs_lt.mp hlt).2.le⟩

/-- Exact Fubini gives the ordinary complex square of the original normalized source test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variant5624754165a7e57633ad0ffb3f94a44ea3b665566c547fdb435a6a09088deba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variant5624754165a7e57633ad0ffb3f94a44ea3b665566c547fdb435a6a09088deba4.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dedd993b099e4e798d9a67703064a2941841719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
