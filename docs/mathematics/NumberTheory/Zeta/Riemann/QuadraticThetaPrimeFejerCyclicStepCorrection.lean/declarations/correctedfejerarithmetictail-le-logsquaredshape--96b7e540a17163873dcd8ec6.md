# correctedFejerArithmeticTail_le_logSquaredShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6d49fab-5e12-0e9e-4e8d-3d0633e5ff38",
  "kind": "theorem",
  "lexical_name": "correctedFejerArithmeticTail_le_logSquaredShape",
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
  "slug": "correctedfejerarithmetictail-le-logsquaredshape--96b7e540a17163873dcd8ec6",
  "source": {
    "blob": "40a4c3d9cf3af0f5ea33d1e8c07a983b3f045ee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 84,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicStepCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96b7e540a17163873dcd8ec6cf558a41c57dbba246eec647cdd79e3f1eb27198",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6d49fab-5e12-0e9e-4e8d-3d0633e5ff38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedFejerArithmeticTail_le_logSquaredShape
    {X N : ℕ}
    (hX : 0 < X)
    (hN : 0 < N) :
    (1 + Real.log ((4 * X : ℕ) : ℝ)) *
        nonAliasingFejerCyclicStepBudget X N
      ≤
    4 *
      (1 + Real.log ((4 * X : ℕ) : ℝ)) *
      (((X : ℝ) / (N : ℝ)) *
        (1 + Real.log ((2 * X : ℕ) : ℝ))) := by
  have hEnvelope :
      0 ≤ 1 + Real.log ((4 * X : ℕ) : ℝ) := by
    have hlog : 0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
      apply Real.log_nonneg
      exact_mod_cast (by omega : 1 ≤ 4 * X)
    linarith
  have hBudget :=
    nonAliasingFejerCyclicStepBudget_le_harmonicShape hX hN
  nlinarith

/-- Exact combinatorial dependency split for the remaining proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicStepCorrection.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a4c3d9cf3af0f5ea33d1e8c07a983b3f045ee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
