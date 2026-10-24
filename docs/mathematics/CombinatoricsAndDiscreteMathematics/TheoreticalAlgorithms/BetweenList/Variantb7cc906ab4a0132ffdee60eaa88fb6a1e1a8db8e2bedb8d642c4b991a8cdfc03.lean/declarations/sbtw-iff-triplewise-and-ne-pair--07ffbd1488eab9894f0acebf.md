# sbtw_iff_triplewise_and_ne_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25895a10-de31-ee0d-56b5-ecee3dec5d0a",
  "kind": "lemma",
  "lexical_name": "sbtw_iff_triplewise_and_ne_pair",
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
  "slug": "sbtw-iff-triplewise-and-ne-pair--07ffbd1488eab9894f0acebf",
  "source": {
    "blob": "6df737761c9dd3f993e7382e6cadd0d1f95cfbac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07ffbd1488eab9894f0acebf29201a9e263c07e96c6a5f6767ac624c5b36dc4c",
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

Occurrence: `result:25895a10-de31-ee0d-56b5-ecee3dec5d0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sbtw_iff_triplewise_and_ne_pair [IsOrderedRing R] {l : List P} :
    l.Sbtw R ↔ l.Triplewise (Sbtw R) ∧ ∀ a, l ≠ [a, a] := by
  rw [List.Sbtw]
  induction l with
  | nil => simp
  | cons head tail ih =>
    rw [wbtw_cons, triplewise_cons]
    refine ⟨fun h ↦ ?_,
            fun ⟨⟨hp, ht⟩, ha⟩ ↦ ⟨⟨hp.imp _root_.Sbtw.wbtw, ht.imp _root_.Sbtw.wbtw⟩, ?_⟩⟩
    · rcases h with ⟨⟨hp, ht⟩, hpne⟩
      refine ⟨⟨?_, ?_⟩, ?_⟩
      · clear ih
        induction tail with
        | nil => simp
        | cons head2 tail ih' =>
          rw [pairwise_cons] at hp hpne hpne ⊢
          refine ⟨fun a ha ↦ ⟨hp.1 a ha, ?_⟩, ?_⟩
          · refine ⟨(hpne.1 head2 ?_).symm, hpne.2.1 a ha⟩
            simp
          · rw [wbtw_cons] at ht
            grind [List.pairwise_iff_forall_sublist]
      · rw [pairwise_cons] at hpne
        exact (ih.1 ⟨ht, hpne.2⟩).1
      · grind
    · have ht' : tail.Wbtw R := ht.imp _root_.Sbtw.wbtw
      simp only [ht', true_and, ht] at ih
      rw [pairwise_cons, ih]
      refine ⟨fun a ha' ↦ ?_, fun a ↦ ?_⟩
      · rintro rfl
        cases tail with
        | nil => simp at ha'
        | cons head2 tail =>
          rw [pairwise_cons] at hp
          rcases mem_cons.1 ha' with rfl | hat
          · cases tail with
            | nil => simp at ha
            | cons head3 tail => simpa using hp.1 head3
          · simpa using hp.1 head hat
      · rintro rfl
        simp at hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df737761c9dd3f993e7382e6cadd0d1f95cfbac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
