# residual_tail_of_one_sided_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8616bdcd-019e-d171-7d95-5976c49cba6f",
  "kind": "theorem",
  "lexical_name": "residual_tail_of_one_sided_diagonal",
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
  "slug": "residual-tail-of-one-sided-diagonal--2a9eb0f26cb72b5a434dc085",
  "source": {
    "blob": "ec5ebbec54e0839f35218615c55954e1d98db296",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Varianta9970390b2fc353b0b9d87386225d3416a7c375bc92298a7e0a869fa887ba054.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a9eb0f26cb72b5a434dc0852a94d3c79cdf52985834a2dbd71af094e876918c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt04/Varianta9970390b2fc353b0b9d87386225d3416a7c375bc92298a7e0a869fa887ba054.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8616bdcd-019e-d171-7d95-5976c49cba6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_tail_of_one_sided_diagonal (D rho Elog Eplain Q : ℝ) (hQ : 1 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D)
    (hproper : ∀ A : ℝ, Q ≤ A → typeTwoDiagonal A - retainedPrimeDiagonal A ≤ rho)
    (hlog : ∀ A : ℝ, Q ≤ A → shortLogSource A - shortLogMainTerm A
      (logLinearMain A samplingAlpha1 samplingAlpha2) ≤ Elog)
    (hplain : ∀ A : ℝ, Q ≤ A → -Eplain ≤ shortPlainSource A - shortPlainMainTerm A
      (plainLinearMain A samplingAlpha0 samplingAlpha1)) :
    ∃ Cp : ℝ, 0 ≤ Cp ∧ ∀ A : ℝ, Q ≤ A →
      mertensResidual A ≤ D + Cp + rho + Elog + Eplain := by
  obtain ⟨Cp, hCp, hprime⟩ := retainedPrimeDiagonal_main_term_error
  refine ⟨Cp, hCp, ?_⟩
  intro A hQA
  have hA := hQ.trans hQA
  apply residual_one_sided A D Cp rho Elog Eplain hA (hreadout A hQA)
    (hproper A hQA) _ (hlog A hQA) (hplain A hQA)
  have hp := (abs_le.mp (hprime A hA)).2
  simpa only [vaughanCutoff] using hp

/-- The literal original EstimateObligation consumes the one-sided source certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt04/Varianta9970390b2fc353b0b9d87386225d3416a7c375bc92298a7e0a869fa887ba054.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Varianta9970390b2fc353b0b9d87386225d3416a7c375bc92298a7e0a869fa887ba054.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec5ebbec54e0839f35218615c55954e1d98db296` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
