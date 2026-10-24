# all_real_lower_of_readout_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cb714a3-d7b4-e8e7-58fe-8c64632f57dd",
  "kind": "theorem",
  "lexical_name": "all_real_lower_of_readout_squarefree",
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
  "slug": "all-real-lower-of-readout-squarefree--4f3ce37caeedc395e0202a6d",
  "source": {
    "blob": "2623e2a29a39dccb2a5a2806151f0a9a3d25264d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 21,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/050SourceSquarefreeDirectEstimate/Variantf87d3c17df750e7e3804c507ee0a3aa4f3d9b892f92cf7b7fe93017e2c62639b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f3ce37caeedc395e0202a6da4c03d9733af450e9c87b33aa3a7f64ba602c74e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/050SourceSquarefreeDirectEstimate/Variantf87d3c17df750e7e3804c507ee0a3aa4f3d9b892f92cf7b7fe93017e2c62639b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cb714a3-d7b4-e8e7-58fe-8c64632f57dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_lower_of_readout_squarefree (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, 1 <= A ->
      min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
        (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
        (archimedeanMultiplier 0 - 2 * squarefreeResidualBudget D rho Q) <=
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hQA : Q <= A
  · exact (min_le_right _ _).trans (quadratic_lower_of_residual_upper _ A hA
      (residual_tail_of_readout_squarefree D rho Q hQ hreadout A hQA))
  · have hprefix := prime_contribution_le_finite_budget A Q hA
      (le_of_lt (lt_of_not_ge hQA))
    have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_left _ _).trans
    unfold sourceQuadraticValue
    linarith

/-- One fixed negative-defect cap on the SAME actual source family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/050SourceSquarefreeDirectEstimate/Variantf87d3c17df750e7e3804c507ee0a3aa4f3d9b892f92cf7b7fe93017e2c62639b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/050SourceSquarefreeDirectEstimate/Variantf87d3c17df750e7e3804c507ee0a3aa4f3d9b892f92cf7b7fe93017e2c62639b.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2623e2a29a39dccb2a5a2806151f0a9a3d25264d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
