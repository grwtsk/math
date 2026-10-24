# diagonal_coefficient_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:612f1154-c6ef-1134-38ab-f4457ed7139c",
  "kind": "theorem",
  "lexical_name": "diagonal_coefficient_error_le",
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
  "slug": "diagonal-coefficient-error-le--3148e7fb41e888dc7f65babf",
  "source": {
    "blob": "fc8bbbe219b39e7ae8b47de4b9264b7a4f85c9db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant007d8ba0a4fdf5e3d4d4050ed45f4ebc1e22d5bdc38681865efe74c6b5b2a138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3148e7fb41e888dc7f65babf3b36c5dd00195fa8ff383a27fc923c06d3fa68fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant007d8ba0a4fdf5e3d4d4050ed45f4ebc1e22d5bdc38681865efe74c6b5b2a138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:612f1154-c6ef-1134-38ab-f4457ed7139c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_coefficient_error_le (A : ℝ) (hA : 1 ≤ A) (U m : ℕ) (hm : U < m) :
    |(if U < m.minFac then vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
      (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0)| ≤
      properPowerCoefficient m / (m : ℝ) := by
  have hm0 : 0 < (m : ℝ) := by exact_mod_cast (lt_of_le_of_lt (Nat.zero_le U) hm)
  by_cases hp : m.Prime
  · simp [hp, hm, properPowerCoefficient, primeCoefficient, vonMangoldt_apply_prime hp]
  · simp only [hp, if_false, sub_zero, properPowerCoefficient, primeCoefficient]
    split_ifs
    · rw [abs_mul, abs_div, abs_of_nonneg (vonMangoldt_nonneg (n := m)), abs_of_pos hm0]
      calc
        vonMangoldt m / (m : ℝ) * |diagonalCorrelation A (Real.log m)| ≤
            vonMangoldt m / (m : ℝ) * 1 :=
          mul_le_mul_of_nonneg_left (diagonalCorrelation_abs_le_one A _ hA)
            (div_nonneg (vonMangoldt_nonneg (n := m)) hm0.le)
        _ = _ := by ring
    · simp only [abs_zero]
      exact div_nonneg (vonMangoldt_nonneg (n := m)) hm0.le

/-- The complete nonprime diagonal remainder has one fixed absolute budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant007d8ba0a4fdf5e3d4d4050ed45f4ebc1e22d5bdc38681865efe74c6b5b2a138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant007d8ba0a4fdf5e3d4d4050ed45f4ebc1e22d5bdc38681865efe74c6b5b2a138.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc8bbbe219b39e7ae8b47de4b9264b7a4f85c9db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
