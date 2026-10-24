# count_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63f5058d-625e-ec42-2128-253ff506c981",
  "kind": "theorem",
  "lexical_name": "count_insert",
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
  "slug": "count-insert--92a7a7a3dd5b7c6ef79c77b7",
  "source": {
    "blob": "82b97f4460ebe7df803cb23b1d2179a1ffa5e5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92a7a7a3dd5b7c6ef79c77b7192a0fda4758004e66bf2df1969f897c9f47fe24",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63f5058d-625e-ec42-2128-253ff506c981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind =] theorem count_insert [BEq α] [LawfulBEq α] {a b : α} {l : List α} :
    count a (List.insert b l) = max (count a l) (if b == a then 1 else 0) := by
  simp only [List.insert, contains_eq_mem, decide_eq_true_eq, beq_iff_eq]
  split <;> rename_i h
  · split <;> rename_i h'
    · rw [Nat.max_def]
      simp only [beq_iff_eq] at h'
      split
      · have := List.count_pos_iff.mpr (h' ▸ h)
        omega
      · rfl
    · simp
  · rw [count_cons]
    split <;> rename_i h'
    · simp only [beq_iff_eq] at h'
      rw [count_eq_zero.mpr (h' ▸ h)]
      simp
    · simp

/--
The number of elements satisfying a predicate in a sublist is at least the number of elements satisfying the predicate in the list,
minus the difference in the lengths.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b97f4460ebe7df803cb23b1d2179a1ffa5e5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
