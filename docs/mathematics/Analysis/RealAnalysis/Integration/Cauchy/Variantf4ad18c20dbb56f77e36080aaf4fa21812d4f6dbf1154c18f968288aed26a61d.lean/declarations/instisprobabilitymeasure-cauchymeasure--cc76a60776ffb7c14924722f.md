# instIsProbabilityMeasure_cauchyMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74e6fc2434b28c33f47070063492ea5ecd0cc48747bfb917e81251c3feb9ae6d",
  "kind": "instance",
  "lexical_name": "instIsProbabilityMeasure_cauchyMeasure",
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
  "slug": "instisprobabilitymeasure-cauchymeasure--cc76a60776ffb7c14924722f",
  "source": {
    "blob": "e797ca93bbb7ef525f6cb76b1ee41ee3c61cac95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 188,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc76a60776ffb7c14924722fdcead7ba27d32c6d56d99dfea16b7a4cbe94fe28",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74e6fc2434b28c33f47070063492ea5ecd0cc48747bfb917e81251c3feb9ae6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsProbabilityMeasure_cauchyMeasure (x₀ : ℝ) (γ : ℝ≥0) :
    IsProbabilityMeasure (cauchyMeasure x₀ γ) where
  measure_univ := by by_cases h : γ = 0 <;> simp [cauchyMeasure_of_scale_ne_zero, h]

@[deprecated (since := "2026-03-06")]
alias _root_Probability.instIsProbabilityMeasure_cauchyMeasure :=
  instIsProbabilityMeasure_cauchyMeasure

end CauchyMeasure

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e797ca93bbb7ef525f6cb76b1ee41ee3c61cac95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
