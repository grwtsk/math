# atomicMeasure_event

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77db2fa39adbef21a759055becf5b580ec971827",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2057c73d-eff7-308e-5bf4-f98cee87c4f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d438c4d1-1501-2a92-d7a9-0c142b13e5d6",
  "kind": "theorem",
  "lexical_name": "atomicMeasure_event",
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
  "slug": "atomicmeasure-event--3fe7796838691c7f51ed1cbe",
  "source": {
    "blob": "77db2fa39adbef21a759055becf5b580ec971827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 42,
    "path": "GRWTSK/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fe7796838691c7f51ed1cbefcf6e3bc13833a48b81a92f4ea473b3173aba302",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d438c4d1-1501-2a92-d7a9-0c142b13e5d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atomicMeasure_event (packet : FinitePacket Outcome) (event : Set ℝ) :
    packet.atomicMeasure event =
      ENNReal.ofReal (packet.spectralEventProbability event) := by
  classical
  rw [atomicMeasure_apply]
  unfold spectralEventProbability spectralExpectation expectation
  rw [ENNReal.ofReal_sum_of_nonneg]
  · apply Finset.sum_congr rfl
    intro outcome _
    by_cases member : packet.spectralValue outcome ∈ event
    · simp [Set.indicator, member]
    · simp [Set.indicator, member]
  · intro outcome _
    exact mul_nonneg (packet.probability.nonnegative outcome) (by
      by_cases member : packet.spectralValue outcome ∈ event <;>
        simp [Set.indicator, member])

/-- The real atomic spectral measure has total mass one. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77db2fa39adbef21a759055becf5b580ec971827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
