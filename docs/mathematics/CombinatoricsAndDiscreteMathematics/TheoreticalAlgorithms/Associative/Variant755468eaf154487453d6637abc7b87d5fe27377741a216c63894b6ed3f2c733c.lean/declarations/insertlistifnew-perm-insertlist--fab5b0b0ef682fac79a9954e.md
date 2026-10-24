# insertListIfNew_perm_insertList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3511,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:537c63cf-6c09-73cd-4a3e-6808b9c84022",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f884905d-1559-6e98-577c-4d1ac51c4791",
  "kind": "theorem",
  "lexical_name": "insertListIfNew_perm_insertList",
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
  "slug": "insertlistifnew-perm-insertlist--fab5b0b0ef682fac79a9954e",
  "source": {
    "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3536,
    "line": 3511,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab5b0b0ef682fac79a9954ee3f3a05343ea0e64326d77b173f54c7790192a38",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f884905d-1559-6e98-577c-4d1ac51c4791`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3511–3536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertListIfNew_perm_insertList [BEq α] [EquivBEq α] {l₁ l₂ : List ((a : α) × β a)}
    (hd₁ : DistinctKeys l₁) (hd₂ : DistinctKeys l₂) :
    List.Perm (insertListIfNew l₁ l₂) (insertList l₂ l₁) := by
  induction l₂ using assoc_induction generalizing l₁ with
  | nil =>
    simp only [insertListIfNew]
    exact Perm.trans (by simp) (perm_insertList hd₂ (pairwise_fst_eq_false hd₁) (by simp)).symm
  | cons k v l ih =>
    simp only [insertListIfNew]
    refine Perm.trans (ih hd₁.insertEntryIfNew hd₂.tail) ?_
    refine getEntry?_ext hd₂.tail.insertList hd₂.insertList (fun k' => ?_)
    rw [getEntry?_insertList hd₂.tail (pairwise_fst_eq_false hd₁.insertEntryIfNew),
      getEntry?_insertList hd₂ (pairwise_fst_eq_false hd₁), getEntry?_insertEntryIfNew]
    simp only [Bool.and_eq_true, Bool.not_eq_eq_eq_not, Bool.not_true]
    split
    · rename_i h
      rw [Option.some_or, Option.or_eq_right_of_none, getEntry?_cons_of_true h.1]
      rw [← getEntry?_congr h.1, getEntry?_eq_none, h.2]
    · rename_i h
      rw [getEntry?_cons]
      by_cases hk : k == k'
      · simp only [hk, true_and, Bool.not_eq_false] at h
        suffices (getEntry? k' l₁).isSome by simp [Option.or_eq_left_of_isSome this]
        rwa [← containsKey_eq_isSome_getEntry?, ← containsKey_congr hk]
      · simp [hk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean#L3511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbbf8b921dbaa720483377d3c4810f060d70f676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
