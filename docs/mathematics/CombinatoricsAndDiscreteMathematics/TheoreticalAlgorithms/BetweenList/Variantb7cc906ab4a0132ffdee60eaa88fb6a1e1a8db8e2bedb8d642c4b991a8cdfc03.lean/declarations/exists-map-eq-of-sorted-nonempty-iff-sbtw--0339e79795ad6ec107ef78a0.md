# exists_map_eq_of_sorted_nonempty_iff_sbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:742e4c76-9ed1-20d6-cb8b-44ce197e1a3e",
  "kind": "lemma",
  "lexical_name": "exists_map_eq_of_sorted_nonempty_iff_sbtw",
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
  "slug": "exists-map-eq-of-sorted-nonempty-iff-sbtw--0339e79795ad6ec107ef78a0",
  "source": {
    "blob": "6df737761c9dd3f993e7382e6cadd0d1f95cfbac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 257,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0339e79795ad6ec107ef78a0c69a0f2768f8278bce26f21459474c50af9230af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:742e4c76-9ed1-20d6-cb8b-44ce197e1a3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_map_eq_of_sorted_nonempty_iff_sbtw {l : List P} (hl : l ≠ []) :
    (∃ l' : List R, l'.SortedLT ∧ l'.map (lineMap (l.head hl) (l.getLast hl)) = l ∧
      (l.length = 1 ∨ l.head hl ≠ l.getLast hl)) ↔ l.Sbtw R := by
  refine ⟨fun ⟨l', hl's, hl'l, hla⟩ ↦
            ⟨(exists_map_eq_of_sorted_nonempty_iff_wbtw hl).1
            ⟨l', (hl's.pairwise.imp LT.lt.le).sortedLE, hl'l⟩, ?_⟩,
          fun h ↦ ?_⟩
  · rw [← hl'l]
    rcases hla with hla | hla
    · grind [List.pairwise_iff_forall_sublist]
    · exact (hl's.pairwise.imp LT.lt.ne).map _ fun _ _ ↦ (lineMap_injective _ hla).ne
  · rw [List.Sbtw, ← exists_map_eq_of_sorted_nonempty_iff_wbtw hl] at h
    rcases h with ⟨⟨l', hl's, hl'l⟩, hp⟩
    refine ⟨l', ?_, hl'l, ?_⟩
    · rw [← hl'l] at hp
      have hp' : l'.Pairwise (· ≠ ·) := hp.of_map _ (by simp)
      exact ((pairwise_and_iff.2 ⟨hl's.pairwise, hp'⟩).imp lt_iff_le_and_ne.2).sortedLT
    · cases l with
      | nil => simp at hl
      | cons head tail =>
        simp only [length_cons, add_eq_right, length_eq_zero_iff, head_cons]
        cases tail with
        | nil => simp
        | cons head2 tail =>
          simp only [reduceCtorEq, false_or]
          rw [pairwise_cons] at hp
          refine hp.1 ((head :: head2 :: tail).getLast hl) ?_
          simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df737761c9dd3f993e7382e6cadd0d1f95cfbac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
