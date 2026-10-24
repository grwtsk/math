# actualSourceComplexTransform_eq_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ee7f93d-bacb-d269-9d2a-d11b8b1c633c",
  "kind": "theorem",
  "lexical_name": "actualSourceComplexTransform_eq_full",
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
  "slug": "actualsourcecomplextransform-eq-full--6160f849da366429a6d07ee0",
  "source": {
    "blob": "5dedd993b099e4e798d9a67703064a2941841719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variant5624754165a7e57633ad0ffb3f94a44ea3b665566c547fdb435a6a09088deba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6160f849da366429a6d07ee0911747144a7e2aa0431191fd0f5f785773a6fedc",
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

Occurrence: `result:8ee7f93d-bacb-d269-9d2a-d11b8b1c633c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSourceComplexTransform_eq_full {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    actualSourceComplexTransform A z =
      ∫ x : ℝ, (normalizedTest explicitSecondDerivative A x : ℂ) *
        Complex.exp (z * (x : ℂ)) := by
  unfold actualSourceComplexTransform
  apply intervalIntegral.integral_eq_integral_of_support_subset
  intro x hx
  change ((normalizedTest explicitSecondDerivative A x : ℂ) *
    Complex.exp (z * (x : ℂ))) ≠ 0 at hx
  have hlt : |x| < A := by
    by_contra hn
    have hz := normalizedTest_zero_of_le_abs A x (by linarith) (le_of_not_gt hn)
    simp only [hz, Complex.ofReal_zero, zero_mul, ne_eq, not_true_eq_false] at hx
  exact ⟨(abs_lt.mp hlt).1, (abs_lt.mp hlt).2.le⟩

/-- The literal bilateral correlation interval includes both genuine zero support seams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variant5624754165a7e57633ad0ffb3f94a44ea3b665566c547fdb435a6a09088deba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor/Variant5624754165a7e57633ad0ffb3f94a44ea3b665566c547fdb435a6a09088deba4.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dedd993b099e4e798d9a67703064a2941841719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
