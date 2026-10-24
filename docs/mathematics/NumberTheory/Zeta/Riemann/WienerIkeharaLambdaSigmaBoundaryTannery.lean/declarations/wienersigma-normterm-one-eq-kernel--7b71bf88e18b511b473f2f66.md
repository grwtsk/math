# wienerSigma_normTerm_one_eq_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fadf0d0-803d-e767-beb4-b30fe4bbed21",
  "kind": "theorem",
  "lexical_name": "wienerSigma_normTerm_one_eq_kernel",
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
  "slug": "wienersigma-normterm-one-eq-kernel--7b71bf88e18b511b473f2f66",
  "source": {
    "blob": "2bbb6efef7e9364f21b79e43b2aef3f171de7946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b71bf88e18b511b473f2f66da5b78a9d7d52e0847af00ddd5aae3289369f31c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fadf0d0-803d-e767-beb4-b30fe4bbed21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerSigma_normTerm_one_eq_kernel
    (T : ℝ) (n : ℕ) :
    ‖LSeries.term wienerFubiniLambda (1 : ℂ) n‖ *
      (1 + (wienerFubiniFrequency n T) ^ 2)⁻¹ =
        wienerLambdaLogKernel T n := by
  by_cases hn : n = 0
  · subst n
    simp [wienerLambdaLogKernel]
  · have hnonnegative :
        0 ≤ (ArithmeticFunction.vonMangoldt n : ℝ) :=
      ArithmeticFunction.vonMangoldt_nonneg
    have hnorm :
        ‖wienerFubiniLambda n‖ =
          (ArithmeticFunction.vonMangoldt n : ℝ) := by
      simp [wienerFubiniLambda, Real.norm_eq_abs,
        abs_of_nonneg hnonnegative]
    rw [LSeries.norm_term_eq]
    simp only [if_neg hn, Complex.one_re, pow_one]
    rw [hnorm]
    simp [wienerLambdaLogKernel, hn, wienerFubiniFrequency,
      div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc]

/-- The actual PINNED norm-term monotonicity is the source of
uniform domination for sigma>=1. This is NOT a bound on Lambda(n)
individually and does not use PNT. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bbb6efef7e9364f21b79e43b2aef3f171de7946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
