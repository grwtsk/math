# scalarCompensatedPrimeOperator_norm_not_eventually_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7045a9c-10f9-8a87-5208-8f76ba24f625",
  "kind": "theorem",
  "lexical_name": "scalarCompensatedPrimeOperator_norm_not_eventually_bounded",
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
  "slug": "scalarcompensatedprimeoperator-norm-not-eventually-bounded--e76c054d2133e01017b5a5d7",
  "source": {
    "blob": "67a195c5e7c2470c4f8a4ae794b35c8fede39ede",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarNormProbe/Variant222eae9c9c76788b1f90b02d9305c1a4e3d7d7891a76910e0bb6a033deda0add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e76c054d2133e01017b5a5d76321f3dc0d3742826ceb3bee39eb08c975b381c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarNormProbe/Variant222eae9c9c76788b1f90b02d9305c1a4e3d7d7891a76910e0bb6a033deda0add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7045a9c-10f9-8a87-5208-8f76ba24f625`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalarCompensatedPrimeOperator_norm_not_eventually_bounded :
    ¬ ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → ‖scalarCompensatedPrimeOperator A‖ ≤ D := by
  rintro ⟨D, _, R, hR, h⟩
  let A : ℝ := max R (D + Real.log 2 + 4)
  have hAR : R ≤ A := le_max_left _ _
  have hAD : D + Real.log 2 + 4 ≤ A := le_max_right _ _
  have hl := scalarCompensatedPrimeOperator_norm_lower (hR.trans hAR)
  have hu := h A hAR
  linarith

end FormalResearch.RiemannHypothesis.SourceProjectionScalarNorm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarNormProbe/Variant222eae9c9c76788b1f90b02d9305c1a4e3d7d7891a76910e0bb6a033deda0add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarNormProbe/Variant222eae9c9c76788b1f90b02d9305c1a4e3d7d7891a76910e0bb6a033deda0add.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67a195c5e7c2470c4f8a4ae794b35c8fede39ede` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
