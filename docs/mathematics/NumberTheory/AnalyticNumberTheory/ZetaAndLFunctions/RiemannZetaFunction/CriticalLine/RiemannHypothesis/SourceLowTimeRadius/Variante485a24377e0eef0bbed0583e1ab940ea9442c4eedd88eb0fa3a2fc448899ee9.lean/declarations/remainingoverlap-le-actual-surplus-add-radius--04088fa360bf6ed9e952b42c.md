# remainingOverlap_le_actual_surplus_add_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a92a9d6b-1441-5b97-a260-c13cbb1dcc1f",
  "kind": "theorem",
  "lexical_name": "remainingOverlap_le_actual_surplus_add_radius",
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
  "slug": "remainingoverlap-le-actual-surplus-add-radius--04088fa360bf6ed9e952b42c",
  "source": {
    "blob": "646f62d27745f298ff40a5a1b1324d58abcafefd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 128,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variante485a24377e0eef0bbed0583e1ab940ea9442c4eedd88eb0fa3a2fc448899ee9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04088fa360bf6ed9e952b42c12cb4bbd51d119b0c38399f0c6f21030014c5c66",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variante485a24377e0eef0bbed0583e1ab940ea9442c4eedd88eb0fa3a2fc448899ee9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a92a9d6b-1441-5b97-a260-c13cbb1dcc1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainingOverlap_le_actual_surplus_add_radius {R A : ℝ}
    (hR : 1 ≤ R) (hA : R ≤ A) :
    remainingOverlapBalance A ≤ VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A + lowTimeStripBudget R := by
  rw [actual_surplus_eq_remainingOverlap_sub_strip (hR.trans hA)]
  have h := actual_retained_spatial_strip_abs_le_radius hR hA
  have hn := le_abs_self (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceLowTimeRadius
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variante485a24377e0eef0bbed0583e1ab940ea9442c4eedd88eb0fa3a2fc448899ee9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variante485a24377e0eef0bbed0583e1ab940ea9442c4eedd88eb0fa3a2fc448899ee9.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `646f62d27745f298ff40a5a1b1324d58abcafefd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
