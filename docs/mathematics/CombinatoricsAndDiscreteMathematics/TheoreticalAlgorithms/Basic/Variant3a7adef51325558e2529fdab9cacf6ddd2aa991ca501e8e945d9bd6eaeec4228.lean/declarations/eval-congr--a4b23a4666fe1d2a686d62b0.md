# eval_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ec666c4346637c52df9687c505f1d60be6812f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1542efa-9b9d-18fd-265c-f8cb5d579720",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb472938-417c-e745-d6a4-53c9f362d63f",
  "kind": "theorem",
  "lexical_name": "eval_congr",
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
  "slug": "eval-congr--a4b23a4666fe1d2a686d62b0",
  "source": {
    "blob": "3ec666c4346637c52df9687c505f1d60be6812f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 226,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4b23a4666fe1d2a686d62b09d3d60f9470b20f0737a737b35e563570994aada",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb472938-417c-e745-d6a4-53c9f362d63f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_congr (a1 a2 : α → Bool) (f : CNF α) (hw : ∀ v, VarMem v f → a1 v = a2 v) :
    eval a1 f = eval a2 f := by
  rcases f with ⟨clauses⟩
  simp only [eval]
  rw [Bool.eq_iff_iff, Array.all_eq_true, Array.all_eq_true]
  constructor
  · intro h x hx
    rw [Clause.eval_congr a2 a1 clauses[x]]
    · exact h x hx
    · intro i hi
      symm
      exact hw _ (VarMem_of (by simp [Internal.mem_iff]) hi)
  · intro h x hx
    rw [Clause.eval_congr a1 a2 clauses[x]]
    · exact h x hx
    · intro i hi
      exact hw _ (VarMem_of (by simp [Internal.mem_iff]) hi)

end CNF

end Sat
end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ec666c4346637c52df9687c505f1d60be6812f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
