# stirlingSeq_has_pos_limit_a

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9f23b701269fb0b377e0695f952e7e55f7aac81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a829ce5d-cce3-0bb0-710e-993c5daa09f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01ada56c-ac23-25d4-c021-5b6d13be9202",
  "kind": "theorem",
  "lexical_name": "stirlingSeq_has_pos_limit_a",
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
  "slug": "stirlingseq-has-pos-limit-a--67f8047622d7e80e31d0d4aa",
  "source": {
    "blob": "f9f23b701269fb0b377e0695f952e7e55f7aac81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67f8047622d7e80e31d0d4aa2ce11b7150f37c22ad303ef922fa7b8b8449a1ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01ada56c-ac23-25d4-c021-5b6d13be9202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stirlingSeq_has_pos_limit_a : ∃ a : ℝ, 0 < a ∧ Tendsto stirlingSeq atTop (𝓝 a) := by
  obtain ⟨x, x_pos, hx⟩ := stirlingSeq'_bounded_by_pos_constant
  have hx' : x ∈ lowerBounds (Set.range (stirlingSeq ∘ succ)) := by simpa [lowerBounds] using hx
  refine ⟨_, lt_of_lt_of_le x_pos (le_csInf (Set.range_nonempty _) hx'), ?_⟩
  rw [← Filter.tendsto_add_atTop_iff_nat 1]
  exact tendsto_atTop_ciInf stirlingSeq'_antitone ⟨x, hx'⟩

/-!
### Part 2
https://proofwiki.org/wiki/Stirling%27s_Formula#Part_2
-/


/-- The sequence `n / (2 * n + 1)` tends to `1/2` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9f23b701269fb0b377e0695f952e7e55f7aac81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
