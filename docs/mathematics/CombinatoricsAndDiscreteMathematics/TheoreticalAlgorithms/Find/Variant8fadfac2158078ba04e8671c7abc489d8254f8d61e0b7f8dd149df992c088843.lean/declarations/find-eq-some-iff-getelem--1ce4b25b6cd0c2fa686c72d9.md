# find?_eq_some_iff_getElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3115955ba4f197df41c68f1e220ba011df6bbc6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fadfac2158078ba04e8671c7abc489d8254f8d61e0b7f8dd149df992c088843.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87613f79-136a-cc67-9958-b413463d317f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47e38566-b6d4-7ac9-38ba-c89fa938d579",
  "kind": "theorem",
  "lexical_name": "find?_eq_some_iff_getElem",
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
  "slug": "find-eq-some-iff-getelem--1ce4b25b6cd0c2fa686c72d9",
  "source": {
    "blob": "b3115955ba4f197df41c68f1e220ba011df6bbc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant8fadfac2158078ba04e8671c7abc489d8254f8d61e0b7f8dd149df992c088843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ce4b25b6cd0c2fa686c72d96a33a42528357c0a4a7ab81842feb5858322696b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant8fadfac2158078ba04e8671c7abc489d8254f8d61e0b7f8dd149df992c088843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47e38566-b6d4-7ac9-38ba-c89fa938d579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find?_eq_some_iff_getElem {xs : List α} {p : α → Bool} {b : α} :
    xs.find? p = some b ↔ p b ∧ ∃ (i : Nat) (h : i < xs.length), xs[i] = b ∧ ∀ j : Nat, (hj : j < i) → !p xs[j] := by
  rw [find?_eq_some_iff_append]
  simp only [Bool.not_eq_eq_eq_not, Bool.not_true, exists_and_right, and_congr_right_iff]
  intro w
  constructor
  · rintro ⟨as, ⟨bs, rfl⟩, h⟩
    refine ⟨as.length, ⟨?_, ?_, ?_⟩⟩
    · simp only [length_append, length_cons]
      refine Nat.lt_add_of_pos_right (zero_lt_succ bs.length)
    · rw [getElem_append_right (Nat.le_refl as.length)]
      simp
    · intro j h'
      rw [getElem_append_left h']
      exact h _ (getElem_mem h')
  · rintro ⟨i, h, rfl, h'⟩
    refine ⟨xs.take i, ⟨xs.drop (i+1), ?_⟩, ?_⟩
    · rw [getElem_cons_drop, take_append_drop]
    · intro a m
      rw [mem_take_iff_getElem] at m
      obtain ⟨j, h, rfl⟩ := m
      apply h'
      omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant8fadfac2158078ba04e8671c7abc489d8254f8d61e0b7f8dd149df992c088843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant8fadfac2158078ba04e8671c7abc489d8254f8d61e0b7f8dd149df992c088843.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3115955ba4f197df41c68f1e220ba011df6bbc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
