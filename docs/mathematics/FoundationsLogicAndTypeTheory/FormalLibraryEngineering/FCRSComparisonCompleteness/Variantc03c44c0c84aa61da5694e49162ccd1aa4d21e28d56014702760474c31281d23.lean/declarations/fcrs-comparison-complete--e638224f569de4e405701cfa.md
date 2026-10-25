# fcrs_comparison_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:957ec19b-2305-ec0f-f248-5c8039b4a339",
  "kind": "theorem",
  "lexical_name": "fcrs_comparison_complete",
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
  "slug": "fcrs-comparison-complete--e638224f569de4e405701cfa",
  "source": {
    "blob": "8567600660bf29e0d65edaaaf7848be7c7857d1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FCRSComparisonCompleteness/Variantc03c44c0c84aa61da5694e49162ccd1aa4d21e28d56014702760474c31281d23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e638224f569de4e405701cfa8c753cee0b8c7822b4bb2808552ae442c6cef942",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FCRSComparisonCompleteness/Variantc03c44c0c84aa61da5694e49162ccd1aa4d21e28d56014702760474c31281d23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:957ec19b-2305-ec0f-f248-5c8039b4a339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fcrs_comparison_complete
    (S : RealizationSystem)
    (registry : TheoremRegistry S)
    (h : FullHypotheses S) :
    EquivalenceWitness S.carrier.functors.RB ∧
    EquivalenceWitness S.carrier.functors.BA ∧
    EquivalenceWitness S.carrier.functors.RigEta := by
  have complete :=
    fcrs_full_conditional_completeness S registry h
  exact ⟨
    complete.rigidBerkovichEquivalence,
    ⟨complete.berkovichAdicEquivalence, complete.raynaudEquivalence⟩
  ⟩

end FCRS
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FCRSComparisonCompleteness/Variantc03c44c0c84aa61da5694e49162ccd1aa4d21e28d56014702760474c31281d23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FCRSComparisonCompleteness/Variantc03c44c0c84aa61da5694e49162ccd1aa4d21e28d56014702760474c31281d23.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8567600660bf29e0d65edaaaf7848be7c7857d1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
