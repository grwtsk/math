# wienerSigma_normTerm_le_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6af771a3-c34a-24ff-4f1a-6693f3e5ea86",
  "kind": "theorem",
  "lexical_name": "wienerSigma_normTerm_le_kernel",
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
  "slug": "wienersigma-normterm-le-kernel--9c54fc5a17a7b88b29edd835",
  "source": {
    "blob": "2bbb6efef7e9364f21b79e43b2aef3f171de7946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 168,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c54fc5a17a7b88b29edd835d6336c50fc4e0dac892aa160b2e5c25143b0418a",
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

Occurrence: `result:6af771a3-c34a-24ff-4f1a-6693f3e5ea86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerSigma_normTerm_le_kernel
    (T sigma : ℝ) (hsigma : 1 ≤ sigma) (n : ℕ) :
    ‖LSeries.term wienerFubiniLambda (sigma : ℂ) n‖ *
      (1 + (wienerFubiniFrequency n T) ^ 2)⁻¹ ≤
        wienerLambdaLogKernel T n := by
  have hterm :
      ‖LSeries.term wienerFubiniLambda (sigma : ℂ) n‖ ≤
        ‖LSeries.term wienerFubiniLambda (1 : ℂ) n‖ :=
    LSeries.norm_term_le_of_re_le_re
      wienerFubiniLambda (by simpa using hsigma) n
  have hw :
      0 ≤ (1 + (wienerFubiniFrequency n T) ^ 2)⁻¹ := by
    positivity
  calc
    _ ≤ ‖LSeries.term wienerFubiniLambda (1 : ℂ) n‖ *
          (1 + (wienerFubiniFrequency n T) ^ 2)⁻¹ :=
      mul_le_mul_of_nonneg_right hterm hw
    _ = wienerLambdaLogKernel T n :=
      wienerSigma_normTerm_one_eq_kernel T n

/-- A FULL quantitative norm domination for the actual arithmetic
Schwartz Fourier integrand. The scale-independent C depends only on
the Schwartz test; the arithmetic source is the previously authored
and summable von Mangoldt logarithmic kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bbb6efef7e9364f21b79e43b2aef3f171de7946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
