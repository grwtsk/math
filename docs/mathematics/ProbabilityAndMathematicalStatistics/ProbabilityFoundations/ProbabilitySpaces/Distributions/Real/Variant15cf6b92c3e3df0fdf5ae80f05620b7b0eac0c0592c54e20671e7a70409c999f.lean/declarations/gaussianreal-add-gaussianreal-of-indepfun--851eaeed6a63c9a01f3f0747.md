# gaussianReal_add_gaussianReal_of_indepFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ba986db-3f15-c93b-a6cb-f59a1384e640",
  "kind": "lemma",
  "lexical_name": "gaussianReal_add_gaussianReal_of_indepFun",
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
  "slug": "gaussianreal-add-gaussianreal-of-indepfun--851eaeed6a63c9a01f3f0747",
  "source": {
    "blob": "3aa9f1f04d6844c6765be50edbf1a536c3da4a27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 661,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant15cf6b92c3e3df0fdf5ae80f05620b7b0eac0c0592c54e20671e7a70409c999f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:851eaeed6a63c9a01f3f07473fcd46a22d71685df4faed3a89cf2e8a4a3e17b6",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant15cf6b92c3e3df0fdf5ae80f05620b7b0eac0c0592c54e20671e7a70409c999f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ba986db-3f15-c93b-a6cb-f59a1384e640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussianReal_add_gaussianReal_of_indepFun {Ω} {mΩ : MeasurableSpace Ω} {P : Measure Ω}
    {m₁ m₂ : ℝ} {v₁ v₂ : ℝ≥0} {X Y : Ω → ℝ} (hXY : IndepFun X Y P)
    (hX : HasLaw X (gaussianReal m₁ v₁) P) (hY : HasLaw Y (gaussianReal m₂ v₂) P) :
    P.map (X + Y) = gaussianReal (m₁ + m₂) (v₁ + v₂) := by
  rw [hXY.map_add_eq_map_conv_map₀' hX.aemeasurable hY.aemeasurable, hX.map_eq, hY.map_eq,
    gaussianReal_conv_gaussianReal]
  · rw [hX.map_eq]; apply IsFiniteMeasure.toSigmaFinite
  · rw [hY.map_eq]; apply IsFiniteMeasure.toSigmaFinite

end GaussianReal

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant15cf6b92c3e3df0fdf5ae80f05620b7b0eac0c0592c54e20671e7a70409c999f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant15cf6b92c3e3df0fdf5ae80f05620b7b0eac0c0592c54e20671e7a70409c999f.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3aa9f1f04d6844c6765be50edbf1a536c3da4a27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
