# checked_plan_decoded_output_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df2333d15ace5ba03c89238cf9f30c88457cf05e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 441,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralPayloadLengthRefinement.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c8047ec-0a6a-2f98-66fa-1e571fadd956",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4aa1054-01eb-4064-1ed2-5e90a9167d73",
  "kind": "theorem",
  "lexical_name": "checked_plan_decoded_output_bounds",
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
  "slug": "checked-plan-decoded-output-bounds--2b0dca69925c57b35b9b5c24",
  "source": {
    "blob": "df2333d15ace5ba03c89238cf9f30c88457cf05e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 441,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralPayloadLengthRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b0dca69925c57b35b9b5c24b7c43c54574891369f0faa7ce183c0c2efd6dcf3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralPayloadLengthRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4aa1054-01eb-4064-1ed2-5e90a9167d73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checked_plan_decoded_output_bounds (objects : Objects) (inputs : Inputs) (plan : Plan)
    (outputs : List OutputRef) (area : Area) (archiveUnique : unique plan.archive)
    (accepted : checkedLiteralPlan objects inputs plan outputs = true) :
    ∃ slots files, outputSlots area outputs = some slots ∧ decodeSlots objects slots = some files ∧
      files.length ≤ PlanResources.maxFiles ∧
      (files.map fun row => row.2.length).sum ≤ PlanResources.maxTotalBytes := by
  obtain ⟨slots, files, selected, decoded, exactBytes⟩ :=
    checked_plan_output_exact_bytes objects inputs plan outputs area archiveUnique accepted
  obtain ⟨_, count, bytes⟩ := (checkedLiteralPlan_exact _ _ _ _).mp accepted
  have bounds := checked_plan_actual_output_bounds objects inputs plan outputs area archiveUnique accepted
  obtain ⟨boundedSlots, boundedSelection, boundedCount, _⟩ := bounds
  have sameSlots : boundedSlots = slots := Option.some.inj (boundedSelection.symm.trans selected)
  subst boundedSlots
  refine ⟨slots, files, selected, decoded, ?_, ?_⟩
  · simpa [decodeSlots_success_exact _ _ _ decoded, literalFiles_length] using boundedCount
  · rw [exactBytes]
    exact (checked_final_map_bounds plan area ((checkedLiteralPlan_exact _ _ _ _).mp accepted).1).2

/-- This is the local construction law for the bytes field, independent of labels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralPayloadLengthRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralPayloadLengthRefinement.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df2333d15ace5ba03c89238cf9f30c88457cf05e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
