# complete_tail_lower_at_calibrated_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81042b2d-fcd8-f1e1-ab07-ea1f2d573761",
  "kind": "theorem",
  "lexical_name": "complete_tail_lower_at_calibrated_radius",
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
  "slug": "complete-tail-lower-at-calibrated-radius--2df39a7d170f81037d7f9fed",
  "source": {
    "blob": "30b42b7e868c18fceece5f9dec921337245bbdc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Compile01Source/Variantfc2f964a89c47c5c442f205a868c10a3dea4628d5161db1bb7dbb07a9f5ef0e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2df39a7d170f81037d7f9fed6b059a6595b668038510d46110f6999ced0a9497",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Compile01Source/Variantfc2f964a89c47c5c442f205a868c10a3dea4628d5161db1bb7dbb07a9f5ef0e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81042b2d-fcd8-f1e1-ab07-ea1f2d573761`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_tail_lower_at_calibrated_radius (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hdynamic : ∀ A : ℝ, R ≤ A →
      -((5 + 2 * physicalCurvatureCoefficient / A) * M1) ≤ completeXiTail A) :
    ∀ A : ℝ, calibratedRadius R ≤ A → -meanTailBudget M1 R ≤ completeXiTail A := by
  intro A hA
  exact (neg_le_neg (dynamic_mean_budget_le M1 R A hM1 hA)).trans
    (hdynamic A ((le_max_right _ _).trans hA))

/-- At the user's initial radius 40, the applicable radius is exactly 91. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Compile01Source/Variantfc2f964a89c47c5c442f205a868c10a3dea4628d5161db1bb7dbb07a9f5ef0e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Compile01Source/Variantfc2f964a89c47c5c442f205a868c10a3dea4628d5161db1bb7dbb07a9f5ef0e9.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30b42b7e868c18fceece5f9dec921337245bbdc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
