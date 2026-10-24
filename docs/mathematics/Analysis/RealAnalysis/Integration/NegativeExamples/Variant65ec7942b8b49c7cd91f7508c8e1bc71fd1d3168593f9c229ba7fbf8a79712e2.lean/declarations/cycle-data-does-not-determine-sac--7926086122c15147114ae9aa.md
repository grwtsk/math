# cycle_data_does_not_determine_sac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b6d70883f2e306bb04be68c91e9163ec93fdd2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de92334c-d0d2-9bb4-2a6e-3cf2a7ca3490",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9e38bf8-be98-aca3-d062-d6c62b6aa3c5",
  "kind": "theorem",
  "lexical_name": "cycle_data_does_not_determine_sac",
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
  "slug": "cycle-data-does-not-determine-sac--7926086122c15147114ae9aa",
  "source": {
    "blob": "3b6d70883f2e306bb04be68c91e9163ec93fdd2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7926086122c15147114ae9aa7c6462dbe39180c795c6a76ca2b401c703f87fa2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9e38bf8-be98-aca3-d062-d6c62b6aa3c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycle_data_does_not_determine_sac :
    ∃ left right : BitPerm 3,
      cycleEulerFactorData left = cycleEulerFactorData right ∧
      sacScore left ≠ sacScore right :=
  ⟨stateSwap67, stateSwap56,
    stateSwaps_same_cycle_data,
    stateSwaps_different_sac⟩

/-- The identity permutation on two coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6d70883f2e306bb04be68c91e9163ec93fdd2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
