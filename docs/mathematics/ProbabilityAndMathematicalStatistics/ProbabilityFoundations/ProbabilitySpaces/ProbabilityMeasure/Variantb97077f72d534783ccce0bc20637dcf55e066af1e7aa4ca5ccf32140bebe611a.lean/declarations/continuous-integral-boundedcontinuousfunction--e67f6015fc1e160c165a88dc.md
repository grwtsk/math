# continuous_integral_boundedContinuousFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a94d5462b9191cd9522bc1e55a7e775998acb532",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b97077f72d534783ccce0bc20637dcf55e066af1e7aa4ca5ccf32140bebe611a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff71e636-059b-d448-7440-558a174ced42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d3e13a5-08ac-5101-5142-b9588b61451d",
  "kind": "lemma",
  "lexical_name": "continuous_integral_boundedContinuousFunction",
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
  "slug": "continuous-integral-boundedcontinuousfunction--e67f6015fc1e160c165a88dc",
  "source": {
    "blob": "a94d5462b9191cd9522bc1e55a7e775998acb532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 332,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb97077f72d534783ccce0bc20637dcf55e066af1e7aa4ca5ccf32140bebe611a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67f6015fc1e160c165a88dcecf4a691dd2b21eae61ebd53be5f6590a7920d9a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb97077f72d534783ccce0bc20637dcf55e066af1e7aa4ca5ccf32140bebe611a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d3e13a5-08ac-5101-5142-b9588b61451d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_integral_boundedContinuousFunction
    {α : Type*} [TopologicalSpace α] [MeasurableSpace α] [OpensMeasurableSpace α] (f : α →ᵇ ℝ) :
    Continuous fun μ : ProbabilityMeasure α ↦ ∫ x, f x ∂μ := by
  rw [continuous_iff_continuousAt]
  intro μ
  exact continuousAt_of_tendsto_nhds
    (ProbabilityMeasure.tendsto_iff_forall_integral_tendsto.mp tendsto_id f)

end convergence_in_distribution -- section

section Hausdorff

variable [TopologicalSpace Ω] [HasOuterApproxClosed Ω] [BorelSpace Ω]
variable (Ω)

/-- On topological spaces where indicators of closed sets have decreasing approximating sequences of
continuous functions (`HasOuterApproxClosed`), the topology of convergence in distribution of Borel
probability measures is Hausdorff (`T2Space`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb97077f72d534783ccce0bc20637dcf55e066af1e7aa4ca5ccf32140bebe611a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb97077f72d534783ccce0bc20637dcf55e066af1e7aa4ca5ccf32140bebe611a.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a94d5462b9191cd9522bc1e55a7e775998acb532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
