# actual_archimedean_quadratic_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0c51ef0-89e1-6b4d-47ad-79f10e06b4f4",
  "kind": "theorem",
  "lexical_name": "actual_archimedean_quadratic_upper",
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
  "slug": "actual-archimedean-quadratic-upper--a1aa9c19814bcb4422b47a71",
  "source": {
    "blob": "d075a6594eba40b8bbb51516f1588f2a2827b82a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variantbb00b5bef041b71bee645c5c785234be39b7e8821dbfddd3aea39e40113961a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1aa9c19814bcb4422b47a71e02b5f4772956e1e9b79d7ea8c03085298635aeb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variantbb00b5bef041b71bee645c5c785234be39b7e8821dbfddd3aea39e40113961a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0c51ef0-89e1-6b4d-47ad-79f10e06b4f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_archimedean_quadratic_upper {A : ℝ} (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤ archimedeanMultiplier 0 +
      (18 * (162826 / 7623 : ℝ)) / A^2 := by
  apply (actual_archimedean_upper_by_derivative_energy hA).trans
  have hpos : 0 < A^2 := by nlinarith
  have henergy := actual_derivative_energy_upper hA
  have he : (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) ≤
      (162826 / 7623 : ℝ) / A^2 := (le_div_iff₀ hpos).mpr (by nlinarith)
  rw [mul_div_assoc]
  exact add_le_add_left (mul_le_mul_of_nonneg_left he (by norm_num : (0 : ℝ) ≤ 18)) _

/-- Both sides constrain the actual analytic value; the signed target remains separate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variantbb00b5bef041b71bee645c5c785234be39b7e8821dbfddd3aea39e40113961a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variantbb00b5bef041b71bee645c5c785234be39b7e8821dbfddd3aea39e40113961a0.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d075a6594eba40b8bbb51516f1588f2a2827b82a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
