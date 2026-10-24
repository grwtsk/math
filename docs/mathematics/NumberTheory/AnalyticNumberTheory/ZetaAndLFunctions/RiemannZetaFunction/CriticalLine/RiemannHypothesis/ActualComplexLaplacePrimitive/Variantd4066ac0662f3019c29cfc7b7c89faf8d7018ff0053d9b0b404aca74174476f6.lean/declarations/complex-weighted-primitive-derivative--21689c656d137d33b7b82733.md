# complex_weighted_primitive_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d9e4f6d-6e5a-91a9-cd6a-c9707f56e761",
  "kind": "theorem",
  "lexical_name": "complex_weighted_primitive_derivative",
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
  "slug": "complex-weighted-primitive-derivative--21689c656d137d33b7b82733",
  "source": {
    "blob": "7be58b36f8c061f1491e2493e95b60f8afcbd9a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variantd4066ac0662f3019c29cfc7b7c89faf8d7018ff0053d9b0b404aca74174476f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21689c656d137d33b7b82733ade0326c0e48fe51f50cc23ec136974b58523d0d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variantd4066ac0662f3019c29cfc7b7c89faf8d7018ff0053d9b0b404aca74174476f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d9e4f6d-6e5a-91a9-cd6a-c9707f56e761`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_weighted_primitive_derivative {A : ℝ} (hA : 0 < A) {z : ℂ} (hz : z ≠ 0) (x : ℝ) :
    HasDerivAt (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) *
      complexPrimitivePolynomial A z x / (Real.sqrt A : ℂ))
      (Complex.exp (z * (x : ℂ)) * (bumpInterior A x : ℂ)) x := by
  have hd := ((((hasDerivAt_id x).ofReal_comp.const_mul z).cexp).mul
    (complex_primitive_polynomial_derivative A z x)).div_const (Real.sqrt A : ℂ)
  apply hd.congr_deriv
  dsimp only [id_eq, Complex.ofReal_one]
  have hb := complex_primitive_exact_balance hA hz x
  unfold bumpInterior
  push_cast
  calc
    _ = Complex.exp (z * (x : ℂ)) * (z * complexPrimitivePolynomial A z x +
        complexPrimitiveDerivative A z x) / (Real.sqrt A : ℂ) := by ring
    _ = Complex.exp (z * (x : ℂ)) * (((1 - (x / A) ^ 2) ^ 4 : ℝ) : ℂ) /
        (Real.sqrt A : ℂ) := by rw [hb]
    _ = _ := by push_cast; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variantd4066ac0662f3019c29cfc7b7c89faf8d7018ff0053d9b0b404aca74174476f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variantd4066ac0662f3019c29cfc7b7c89faf8d7018ff0053d9b0b404aca74174476f6.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7be58b36f8c061f1491e2493e95b60f8afcbd9a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
