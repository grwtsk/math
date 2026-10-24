# sevenEighthsBoundaryMinimalExactCorrelationReadout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c09281a-e728-af16-3182-4fe3a931628a",
  "kind": "theorem",
  "lexical_name": "sevenEighthsBoundaryMinimalExactCorrelationReadout",
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
  "slug": "seveneighthsboundaryminimalexactcorrelationreadout--82b5a2aa2ff18b79e91098f3",
  "source": {
    "blob": "440e1957e04c7480d04be040ce5d07afc312d50a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 348,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82b5a2aa2ff18b79e91098f381c7b555e6b6b890d025fe6fdde2f083dffe3141",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c09281a-e728-af16-3182-4fe3a931628a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sevenEighthsBoundaryMinimalExactCorrelationReadout :
    SevenEighthsBoundaryMinimalExactCorrelationReadout := by
  intro hbound
  rcases hbound with ⟨C, hC, j₀, hcorr⟩
  refine ⟨Real.sqrt C + 80, by positivity, j₀, ?_⟩
  intro j hj m hm0 hm1
  have hcorr' :
      nonAliasingFejerQuadraticCorrelation
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m
        ≤
      C *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^4 := by
    simpa using hcorr j hj m hm0 hm1
  have hvalue :
      |nonAliasingPrimePrefixFejerOperator.value
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m| ≤
        Real.sqrt C *
          Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
          (Real.log (dyadicScale j : ℝ))^2 :=
    nonAliasingPrimePrefixFejerOperator_value_abs_le_of_exactCorrelation
      (dyadicScale_pos_for_boundaryMinimalFejerSchedule j)
      hC hcorr'
  have herror :
      |nonAliasingPrimePrefixFejerOperator.error
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m| ≤
        80 *
          Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
          (Real.log (dyadicScale j : ℝ))^2 :=
    sevenEighthsBoundaryMinimalFejer_error_abs_le
      j m hm0 hm1
  have hdecomp :
      sharpPrimePrefixDiscrepancy (dyadicScale j) m =
        nonAliasingPrimePrefixFejerOperator.value
            (dyadicScale j)
            (sevenEighthsBoundaryMinimalFejerCutoff j)
            m +
          nonAliasingPrimePrefixFejerOperator.error
            (dyadicScale j)
            (sevenEighthsBoundaryMinimalFejerCutoff j)
            m := by
    unfold PrimePrefixSmoothingOperator.error
    ring
  have hsharp :
      |sharpPrimePrefixDiscrepancy (dyadicScale j) m| ≤
        (Real.sqrt C + 80) *
          Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
          (Real.log (dyadicScale j : ℝ))^2 := by
    rw [hdecomp]
    calc
      |nonAliasingPrimePrefixFejerOperator.value
            (dyadicScale j)
            (sevenEighthsBoundaryMinimalFejerCutoff j)
            m +
          nonAliasingPrimePrefixFejerOperator.error
            (dyadicScale j)
            (sevenEighthsBoundaryMinimalFejerCutoff j)
            m|
        ≤
      |nonAliasingPrimePrefixFejerOperator.value
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m| +
        |nonAliasingPrimePrefixFejerOperator.error
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m| := abs_add _ _
      _ ≤
        Real.sqrt C *
            Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
            (Real.log (dyadicScale j : ℝ))^2 +
          80 *
            Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
            (Real.log (dyadicScale j : ℝ))^2 :=
              add_le_add hvalue herror
      _ =
        (Real.sqrt C + 80) *
          Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
          (Real.log (dyadicScale j : ℝ))^2 := by
            ring
  have hthreshold :
      quadraticThreshold ((7 : ℝ) / 8) =
        (3 : ℝ) / 4 := by
    norm_num [quadraticThreshold]
  simpa [sharpPrimePrefixDiscrepancy, hthreshold] using hsharp

/-- The boundary-minimal data packet now has only the exact arithmetic
correlation theorem as a genuine field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440e1957e04c7480d04be040ce5d07afc312d50a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
