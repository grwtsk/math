# replace_toArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fccc361a-e0e9-57b4-28b2-9fefb17747bc",
  "kind": "theorem",
  "lexical_name": "replace_toArray",
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
  "slug": "replace-toarray--5c9751ff4e6289f06d4bdfa4",
  "source": {
    "blob": "3318a8461302d173aa58aa433fca509db3f924aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 729,
    "line": 697,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c9751ff4e6289f06d4bdfa4dbe7557affd00b6577c02a94422c53db42ae8256",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fccc361a-e0e9-57b4-28b2-9fefb17747bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 697–729.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replace_toArray [BEq α] [LawfulBEq α] (l : List α) (a b : α) :
    l.toArray.replace a b = (l.replace a b).toArray := by
  rw [Array.replace]
  split <;> rename_i i h
  · simp only [finIdxOf?_toArray] at h
    rw [replace_of_not_mem]
    exact finIdxOf?_eq_none_iff.mp h
  · simp_all only [finIdxOf?_toArray, finIdxOf?_eq_some_iff, Fin.getElem_fin, set_toArray,
      mk.injEq, Array.size]
    apply List.ext_getElem
    · simp
    · intro j h₁ h₂
      rw [List.getElem_replace, List.getElem_set]
      by_cases h₃ : j < i
      · rw [if_neg (by omega), if_neg]
        simp only [length_set] at h₁ h₃
        simpa using h.2 ⟨j, by omega⟩ h₃
      · by_cases h₃ : j = i
        · rw [if_pos (by omega), if_pos, if_neg]
          · simp only [mem_take_iff_getElem, not_exists]
            intro k hk
            simpa using h.2 ⟨k, by omega⟩ (by change k < i.1; omega)
          · subst h₃
            simpa using h.1
        · rw [if_neg (by omega)]
          split
          · rw [if_pos]
            · simp_all
            · simp only [mem_take_iff_getElem]
              simp only [length_set] at h₁
              exact ⟨i, by omega, h.1⟩
          · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean#L697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3318a8461302d173aa58aa433fca509db3f924aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
