# exists_map_eq_of_sorted_iff_sbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e13da82efe42512401f5d9046c145ac7458d08ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bb283f9-30bc-ffaa-a344-7015b40a070f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59b71e77-2dc5-0e43-a2f4-bb79adc93524",
  "kind": "lemma",
  "lexical_name": "exists_map_eq_of_sorted_iff_sbtw",
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
  "slug": "exists-map-eq-of-sorted-iff-sbtw--defb1dff99b9c7170b57a2ad",
  "source": {
    "blob": "e13da82efe42512401f5d9046c145ac7458d08ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 295,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:defb1dff99b9c7170b57a2ad8380cafee5bd3e66a2f4c2d33f60664e6b34e478",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59b71e77-2dc5-0e43-a2f4-bb79adc93524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_map_eq_of_sorted_iff_sbtw [Nontrivial P] {l : List P} :
    (∃ p₁ p₂ : P, p₁ ≠ p₂ ∧ ∃ l' : List R, l'.Sorted (· < ·) ∧ l'.map (lineMap p₁ p₂) = l) ↔
      l.Sbtw R := by
  refine ⟨fun ⟨p₁, p₂, hp₁p₂, l', hl's, hl'l⟩ ↦ ?_, fun h ↦ ?_⟩
  · subst hl'l
    rw [(lineMap_injective _ hp₁p₂).list_sbtw_map_iff]
    exact hl's.sbtw
  · by_cases hl : l = []
    · rcases exists_pair_ne P with ⟨p₁, p₂, hp₁p₂⟩
      exact ⟨p₁, p₂, hp₁p₂, by simp [hl]⟩
    · by_cases hlen : l.length = 1
      · rw [length_eq_one_iff] at hlen
        rcases hlen with ⟨p₁, rfl⟩
        rcases exists_ne p₁ with ⟨p₂, hp₂p₁⟩
        exact ⟨p₁, p₂, hp₂p₁.symm, [0], by simp⟩
      · refine ⟨l.head hl, l.getLast hl, ?_⟩
        rw [← exists_map_eq_of_sorted_nonempty_iff_sbtw hl] at h
        simp only [hlen, false_or] at h
        rcases h with ⟨l', hl's, hl'l, hl⟩
        exact ⟨hl, l', hl's, hl'l⟩

end LinearOrderedField

end List
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e13da82efe42512401f5d9046c145ac7458d08ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
