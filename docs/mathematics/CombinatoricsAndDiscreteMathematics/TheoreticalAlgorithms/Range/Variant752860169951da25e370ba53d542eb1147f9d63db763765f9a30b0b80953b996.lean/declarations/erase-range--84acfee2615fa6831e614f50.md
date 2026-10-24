# erase_range'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45e73268-e27a-137f-1742-1e4e4a805621",
  "kind": "theorem",
  "lexical_name": "erase_range'",
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
  "slug": "erase-range--84acfee2615fa6831e614f50",
  "source": {
    "blob": "5d7912fc8dab4abffd0d9bf645a60e8f89af64b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84acfee2615fa6831e614f509d94d5c8645bce4a819f13b966aaae47602f3c7c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45e73268-e27a-137f-1742-1e4e4a805621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erase_range' :
    (range' s n).erase i =
      range' s (min n (i - s)) ++ range' (max s (i + 1)) (min s (i + 1) + n - (i + 1)) := by
  by_cases h : i ∈ range' s n
  · obtain ⟨as, bs, h₁, h₂⟩ := eq_append_cons_of_mem h
    rw [h₁, erase_append_right _ h₂, erase_cons_head]
    rw [range'_eq_append_iff] at h₁
    obtain ⟨k, -, rfl, hbs⟩ := h₁
    rw [eq_comm, range'_eq_cons_iff] at hbs
    obtain ⟨rfl, -, rfl⟩ := hbs
    simp at h
    congr 2 <;> omega
  · rw [erase_of_not_mem h]
    simp only [mem_range'_1, not_and, Nat.not_lt] at h
    by_cases h' : s ≤ i
    · have p : min s (i + 1) + n - (i + 1) = 0 := by omega
      simp [p]
      omega
    · have p : i - s = 0 := by omega
      simp [p]
      omega

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7912fc8dab4abffd0d9bf645a60e8f89af64b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
