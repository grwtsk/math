# foldl_meet_le_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b6a2f9c36d59368102d8116323da963e19c30e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9985a078193e553c47a02413b7c173c44201a1a240b3572234e75e576fd40ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b25bdf8-f1ff-a027-2ab6-88a0ed5fb2be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04a020a5-4512-a6e7-8e10-8ac6899b57b8",
  "kind": "theorem",
  "lexical_name": "foldl_meet_le_of_mem",
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
  "slug": "foldl-meet-le-of-mem--7967005f6947c7b21b6793d2",
  "source": {
    "blob": "6b6a2f9c36d59368102d8116323da963e19c30e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 159,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvolutionSurgeryRestart/Variantc9985a078193e553c47a02413b7c173c44201a1a240b3572234e75e576fd40ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7967005f6947c7b21b6793d26b1bb73f3d46bd1bc413f041c9f418b2b8e9202c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvolutionSurgeryRestart/Variantc9985a078193e553c47a02413b7c173c44201a1a240b3572234e75e576fd40ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04a020a5-4512-a6e7-8e10-8ac6899b57b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem foldl_meet_le_of_mem {α : Type}
    (entries : List α) (status : α → EvolutionStatus)
    (initial : EvolutionStatus) {entry : α} (member : entry ∈ entries) :
    EvolutionStatus.LE
      (entries.foldl (fun accumulated item =>
        EvolutionStatus.meet accumulated (status item)) initial)
      (status entry) := by
  induction entries generalizing initial with
  | nil => simp at member
  | cons head tail inductionHypothesis =>
      simp only [List.foldl_cons]
      rcases List.mem_cons.mp member with rfl | tailMember
      · exact EvolutionStatus.le_trans
          (foldl_meet_le_initial tail status
            (EvolutionStatus.meet initial (status entry)))
          (EvolutionStatus.meet_le_right initial (status entry))
      · exact inductionHypothesis _ tailMember

/-- One versioned declaration in an evolution dependency graph. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvolutionSurgeryRestart/Variantc9985a078193e553c47a02413b7c173c44201a1a240b3572234e75e576fd40ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvolutionSurgeryRestart/Variantc9985a078193e553c47a02413b7c173c44201a1a240b3572234e75e576fd40ad.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b6a2f9c36d59368102d8116323da963e19c30e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
