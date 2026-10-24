# executeReductiveStages_chain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "424d0f329c544ca93442543d989b78ece746a8be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a15a649-dcfe-2f29-acc5-15a287cfd4dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f0035e2-04ae-c095-715d-bd471d05c550",
  "kind": "theorem",
  "lexical_name": "executeReductiveStages_chain",
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
  "slug": "executereductivestages-chain--cf7f66f79f28c970456e5580",
  "source": {
    "blob": "424d0f329c544ca93442543d989b78ece746a8be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 124,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf7f66f79f28c970456e558052186883ebe75b3bdff2a18921790e5029efbee3",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f0035e2-04ae-c095-715d-bd471d05c550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem executeReductiveStages_chain
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (state : State)
    (candidates : Finset decomposition.Piece)
    (stages :
      List (ReductiveSelectionStage State cone decomposition objective)) :
    StageResultChain state candidates
      (executeReductiveStages decomposition objective siteUniverse
        state candidates stages) := by
  induction stages generalizing state candidates with
  | nil => trivial
  | cons stage later inductionHypothesis =>
      simp only [executeReductiveStages, StageResultChain]
      refine ⟨rfl, rfl, ?_⟩
      exact inductionHypothesis _ _

/-- Dropping a prefix from a coherent chain leaves a coherent suffix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `424d0f329c544ca93442543d989b78ece746a8be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
