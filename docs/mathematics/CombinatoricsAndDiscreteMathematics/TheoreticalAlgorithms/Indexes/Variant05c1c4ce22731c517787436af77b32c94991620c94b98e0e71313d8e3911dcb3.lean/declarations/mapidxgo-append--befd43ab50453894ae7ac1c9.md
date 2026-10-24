# mapIdxGo_append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47793bac6e7783f6e52bab38552e644a2a1b898e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b6429b1-f3a8-7513-74b3-874a5318ada1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b97244fc-e9f2-f638-901f-db57f029f9ce",
  "kind": "theorem",
  "lexical_name": "mapIdxGo_append",
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
  "slug": "mapidxgo-append--befd43ab50453894ae7ac1c9",
  "source": {
    "blob": "47793bac6e7783f6e52bab38552e644a2a1b898e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 102,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:befd43ab50453894ae7ac1c94870937f596bdf23db43a65f419a7038a1bd6b57",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b97244fc-e9f2-f638-901f-db57f029f9ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapIdxGo_append : ∀ (f : ℕ → α → β) (l₁ l₂ : List α) (arr : Array β),
    mapIdx.go f (l₁ ++ l₂) arr = mapIdx.go f l₂ (List.toArray (mapIdx.go f l₁ arr)) := by
  intros f l₁ l₂ arr
  generalize e : (l₁ ++ l₂).length = len
  revert l₁ l₂ arr
  induction' len with len ih <;> intros l₁ l₂ arr h
  · have l₁_nil : l₁ = [] := by cases l₁; rfl; contradiction
    have l₂_nil : l₂ = [] := by cases l₂; rfl; rw [List.length_append] at h; contradiction
    rw [l₁_nil, l₂_nil]; simp only [mapIdx.go, Array.toList_eq, Array.toArray_data]
  · cases' l₁ with head tail <;> simp only [mapIdx.go]
    · simp only [nil_append, Array.toList_eq, Array.toArray_data]
    · simp only [List.append_eq]
      rw [ih]
      · simp only [cons_append, length_cons, length_append, Nat.succ.injEq] at h
        simp only [length_append, h]

-- Porting note: new theorem.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47793bac6e7783f6e52bab38552e644a2a1b898e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
