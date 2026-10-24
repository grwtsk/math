# step_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c6ba06fa211b14107630531cf84f9deff978e22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac36048f-fe96-0873-0e53-d617a61b450a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf859d3b-dfef-02cc-70b6-c9d6f04a728a",
  "kind": "theorem",
  "lexical_name": "step_valid",
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
  "slug": "step-valid--cd34c814125c888edb02a7db",
  "source": {
    "blob": "7c6ba06fa211b14107630531cf84f9deff978e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd34c814125c888edb02a7db5ac2a9c91ee28992b1fd56a707e86d48cf4f4e0e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf859d3b-dfef-02cc-70b6-c9d6f04a728a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem step_valid (files budget : Nat) (weight : α → Nat) (s : State α) (x : α)
    (positive : 0 < files) (fits : weight x ≤ budget)
    (valid : Valid files budget weight s) :
    Valid files budget weight (step files budget weight s x) := by
  rcases valid with ⟨hlen, hbytes, hbudget, hdone⟩
  unfold step
  split
  · rename_i hs
    rcases hs with ⟨hne, _⟩
    refine ⟨by simpa using (show 1 ≤ files by omega), ?_, fits, ?_⟩
    · simp [cost_singleton]
    · intro part hp
      simp only [List.mem_append, List.mem_singleton] at hp
      rcases hp with hp | rfl
      · exact hdone part hp
      · refine ⟨?_, hlen, ?_⟩
        · exact List.ne_nil_of_length_pos hne
        · omega
  · rename_i hs
    have hcount : s.pending.length + 1 ≤ files := by
      unfold splitBefore at hs
      omega
    have hsum : s.bytes + weight x ≤ budget := by
      by_cases hp : s.pending.length = 0
      · have hempty : s.pending = [] := List.length_eq_zero_iff.mp hp
        have hz : s.bytes = 0 := by simpa [hempty, cost] using hbytes
        omega
      · unfold splitBefore at hs
        omega
    refine ⟨?_, ?_, hsum, hdone⟩
    · simpa using hcount
    · simp only [cost_append, cost_singleton]
      exact congrArg (fun n => n + weight x) hbytes

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6ba06fa211b14107630531cf84f9deff978e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
