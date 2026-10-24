# _root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.LeMeasureComplLiminfOfLimsupMeasureLe.Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.IsPiSystem.tendsto_probabilityMeasure_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed2baba7-2972-9181-b53d-f738c089bdff",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.LeMeasureComplLiminfOfLimsupMeasureLe.Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.IsPiSystem.tendsto_probabilityMeasure_biUnion",
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
  "slug": "root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--ba0b9345f152792f2c70bb4b",
  "source": {
    "blob": "cd4a6d1837c264488b6cefcf7402bf52a1549d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 801,
    "line": 783,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba0b9345f152792f2c70bb4bd21e1c869d8ee1aa145468a90ac46d05a54e2398",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed2baba7-2972-9181-b53d-f738c089bdff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 783–801.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.LeMeasureComplLiminfOfLimsupMeasureLe.Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.IsPiSystem.tendsto_probabilityMeasure_biUnion
    {S : Set (Set Ω)} (hS : IsPiSystem S) {μ : ι → ProbabilityMeasure Ω} {ν : ProbabilityMeasure Ω}
    {l : Filter ι} {t : Finset (Set Ω)} (ht : ∀ s ∈ t, s ∈ S) (hmeas : ∀ s ∈ S, MeasurableSet s)
    (h : ∀ s ∈ S, Tendsto (fun i ↦ μ i s) l (𝓝 (ν s))) :
    Tendsto (fun i ↦ μ i (⋃ s ∈ t, s)) l (𝓝 (ν (⋃ s ∈ t, s))) := by
  have : Tendsto (fun i ↦ (μ i : Measure Ω).real (⋃ s ∈ t, s)) l
      (𝓝 ((ν : Measure Ω).real (⋃ s ∈ t, s))) := by
    apply hS.tendsto_measureReal_biUnion ht hmeas
    simpa using h
  simpa using this

/-- Consider a set of sets `S` containing arbitrarily small neighborhoods of any point, and a
probability measure. Then any open set can be approximated arbitrarily well in measure from inside
by a finite union of elements of `S`.

This is a technical lemma for `IsPiSystem.tendsto_probabilityMeasure_of_tendsto_of_mem`, which is
why it is formulated for a `ProbabilityMeasure`. If needed, this could be generalized to finite
measures or to general measures.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean#L783).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd4a6d1837c264488b6cefcf7402bf52a1549d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
