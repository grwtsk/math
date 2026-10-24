# absoluteCriticalWeightMass_not_eventually_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e81a305-97ad-19e7-ae65-20ca073dec90",
  "kind": "theorem",
  "lexical_name": "absoluteCriticalWeightMass_not_eventually_bounded",
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
  "slug": "absolutecriticalweightmass-not-eventually-bounded--baf1c8b8d1acc2b596a27db9",
  "source": {
    "blob": "022de785bbd1d7839061f2aeceb91ea1eeb3cde2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalWeightMassObstructionAttempt01/Variantd8ac550f7b5c1aa84e8ef9f736526bb45b49a66929ebdadc829e89d36a8994e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baf1c8b8d1acc2b596a27db9bc989f006ac8c6f18c2763eb477d783c35a294c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalWeightMassObstructionAttempt01/Variantd8ac550f7b5c1aa84e8ef9f736526bb45b49a66929ebdadc829e89d36a8994e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e81a305-97ad-19e7-ae65-20ca073dec90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absoluteCriticalWeightMass_not_eventually_bounded :
    ¬ ∃ M R : ℝ, ∀ A : ℝ, 40 ≤ A → R ≤ A → absoluteCriticalWeightMass A ≤ M := by
  rintro ⟨M, R, h⟩
  let A : ℝ := max 40 (max R (128 * (M + 1)))
  have h40 : 40 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hM : 128 * (M + 1) ≤ A := (le_max_right _ _).trans (le_max_right _ _)
  have hlo := absoluteCriticalWeightMass_linear_lower h40
  have hhi := h A h40 hR
  linarith

end FormalResearch.RiemannHypothesis.SourceCriticalWeightMassObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalWeightMassObstructionAttempt01/Variantd8ac550f7b5c1aa84e8ef9f736526bb45b49a66929ebdadc829e89d36a8994e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalWeightMassObstructionAttempt01/Variantd8ac550f7b5c1aa84e8ef9f736526bb45b49a66929ebdadc829e89d36a8994e8.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `022de785bbd1d7839061f2aeceb91ea1eeb3cde2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
