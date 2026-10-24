# Iter.toList_zip_of_finite_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c83eeaf95c2c5e2139b4d5d288e7be2588c51241",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0b5d2ec-5204-506c-757f-0b506aff5069",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d0fe836-3490-c90f-6b5d-96b0f8c54eb4",
  "kind": "theorem",
  "lexical_name": "Iter.toList_zip_of_finite_left",
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
  "slug": "iter-tolist-zip-of-finite-left--1f86c4d4edac28220be9c1db",
  "source": {
    "blob": "c83eeaf95c2c5e2139b4d5d288e7be2588c51241",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 272,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f86c4d4edac28220be9c1db8a70a19636ce07140d6c67d7c5f4428e44ae6e6d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d0fe836-3490-c90f-6b5d-96b0f8c54eb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.toList_zip_of_finite_left {α₁ α₂ β₁ β₂} [Iterator α₁ Id β₁] [Iterator α₂ Id β₂]
    {it₁ : Iter (α := α₁) β₁} {it₂ : Iter (α := α₂) β₂}
    [Finite α₁ Id] [Productive α₂ Id] :
    (it₁.zip it₂).toList = it₁.toList.zip (it₂.take it₁.toList.length).toList := by
  ext
  simp only [List.getElem?_zip_eq_some, getElem?_toList_eq_atIdxSlow?, atIdxSlow?_zip, Option.pure_def, Option.bind_eq_bind,
    atIdxSlow?_take, Option.ite_none_right_eq_some]
  constructor
  · intro h
    simp only [Option.bind_eq_some_iff, Option.some.injEq] at h
    obtain ⟨b₁, hb₁, b₂, hb₂, rfl⟩ := h
    refine ⟨hb₁, ?_, hb₂⟩
    false_or_by_contra
    rw [← getElem?_toList_eq_atIdxSlow?] at hb₁
    rename_i h
    simp only [Nat.not_lt, ← List.getElem?_eq_none_iff, hb₁] at h
    cases h
  · rintro ⟨h₁, h₂, h₃⟩
    simp [h₁, h₃]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c83eeaf95c2c5e2139b4d5d288e7be2588c51241` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
