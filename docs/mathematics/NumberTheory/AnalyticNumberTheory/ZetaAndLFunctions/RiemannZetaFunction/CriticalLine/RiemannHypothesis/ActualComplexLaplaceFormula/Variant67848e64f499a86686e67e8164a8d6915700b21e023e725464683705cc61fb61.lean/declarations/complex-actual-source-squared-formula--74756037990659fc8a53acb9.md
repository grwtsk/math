# complex_actual_source_squared_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2946888-58d5-363a-9a2e-d5fafbcd2d80",
  "kind": "theorem",
  "lexical_name": "complex_actual_source_squared_formula",
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
  "slug": "complex-actual-source-squared-formula--74756037990659fc8a53acb9",
  "source": {
    "blob": "5209531ab68c32f21907eba668852d9edb8ec1af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplaceFormula/Variant67848e64f499a86686e67e8164a8d6915700b21e023e725464683705cc61fb61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74756037990659fc8a53acb927eae918e30fcfd370631e76e515066ebde40d45",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplaceFormula/Variant67848e64f499a86686e67e8164a8d6915700b21e023e725464683705cc61fb61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2946888-58d5-363a-9a2e-d5fafbcd2d80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_actual_source_squared_formula {A : ℝ} (hA : 1 ≤ A) {z : ℂ} (hz : z ≠ 0) :
    complexTestMoment A z ^ 2 =
      147456 * (z ^ 2 - 1 / 4) ^ 2 / ((A : ℂ) ^ 9 * (sourceNormalization A : ℂ) * z ^ 10) *
        Complex.exp (2 * (A : ℂ) * z) * complexEndpointCorrection A z ^ 2 := by
  have hpos : 0 < A := by linarith
  have hZ := source_normalization_pos A (by linarith)
  have hrootA : (Real.sqrt A : ℂ) ^ 2 = (A : ℂ) := by exact_mod_cast Real.sq_sqrt hpos.le
  have hrootZ : (Real.sqrt (sourceNormalization A) : ℂ) ^ 2 = (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hZ.le
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hpos.ne'
  have hZc : (sourceNormalization A : ℂ) ≠ 0 := by exact_mod_cast hZ.ne'
  have he : Complex.exp ((A : ℂ) * z) ^ 2 = Complex.exp (2 * (A : ℂ) * z) := by
    rw [pow_two, ← Complex.exp_add]
    congr 1
    ring
  rw [complex_actual_source_laplace_formula hA hz]
  simp only [mul_pow, div_pow, he, hrootA, hrootZ]
  field_simp [hAc, hZc, hz]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplaceFormula/Variant67848e64f499a86686e67e8164a8d6915700b21e023e725464683705cc61fb61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplaceFormula/Variant67848e64f499a86686e67e8164a8d6915700b21e023e725464683705cc61fb61.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5209531ab68c32f21907eba668852d9edb8ec1af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
