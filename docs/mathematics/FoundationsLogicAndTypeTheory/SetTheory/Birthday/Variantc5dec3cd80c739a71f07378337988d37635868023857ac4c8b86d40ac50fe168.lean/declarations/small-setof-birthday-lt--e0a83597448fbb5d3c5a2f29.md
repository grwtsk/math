# small_setOf_birthday_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb057afddd5cdd4e8841a02f56457f9268f9fadb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0243c4d-1fc8-ed21-2858-237ea653b464",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28846de6-bc81-cb60-262c-1e4e4e3086a5",
  "kind": "theorem",
  "lexical_name": "small_setOf_birthday_lt",
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
  "slug": "small-setof-birthday-lt--e0a83597448fbb5d3c5a2f29",
  "source": {
    "blob": "fb057afddd5cdd4e8841a02f56457f9268f9fadb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0a83597448fbb5d3c5a2f29a712b54c70c93748f1d808d7721e72710dd8b1e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28846de6-bc81-cb60-262c-1e4e4e3086a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem small_setOf_birthday_lt (o : Ordinal) : Small.{u} {x : Game.{u} // birthday x < o} := by
  induction o using Ordinal.induction with | h o IH =>
  let S := ⋃ a ∈ Set.Iio o, {x : Game.{u} | birthday x < a}
  let H : Small.{u} S := @small_biUnion _ _ _ _ _ IH
  obtain rfl | ⟨a, rfl⟩ | ho := zero_or_succ_or_limit o
  · simp_rw [Ordinal.not_lt_zero]
    exact small_empty
  · simp_rw [Order.lt_succ_iff, le_iff_lt_or_eq]
    convert small_union.{u} {x | birthday x < a} {x | birthday x = a}
    · exact IH _ (Order.lt_succ a)
    · let f (g : Set S × Set S) : Game := ⟦PGame.mk _ _
        (fun x ↦ ((equivShrink g.1).symm x).1.1.out) (fun x ↦ ((equivShrink g.2).symm x).1.1.out)⟧
      suffices {x | x.birthday = a} ⊆ Set.range f from small_subset this
      rintro x rfl
      obtain ⟨y, rfl, hy'⟩ := birthday_eq_pGameBirthday x
      refine ⟨⟨{z | ∃ i, ⟦y.moveLeft i⟧ = z.1}, {z | ∃ i, ⟦y.moveRight i⟧ = z.1}⟩, ?_⟩
      apply PGame.game_eq <| PGame.Equiv.of_exists _ _ _ _ <;> intro i
      · obtain ⟨j, hj⟩ := ((equivShrink _).symm i).2
        exact ⟨j, by simp [PGame.equiv_iff_game_eq, hj]⟩
      · obtain ⟨j, hj⟩ := ((equivShrink _).symm i).2
        exact ⟨j, by simp [PGame.equiv_iff_game_eq, hj]⟩
      · refine ⟨equivShrink _ ⟨⟨⟦y.moveLeft i⟧, ?_⟩, i, rfl⟩, by simpa using Quotient.mk_out _⟩
        suffices ∃ b ≤ y.birthday, birthday ⟦y.moveLeft i⟧ < b by simpa [S, hy'] using this
        refine ⟨_, le_rfl, ?_⟩
        exact (birthday_quot_le_pGameBirthday _).trans_lt (PGame.birthday_moveLeft_lt i)
      · refine ⟨equivShrink _ ⟨⟨⟦y.moveRight i⟧, ?_⟩, i, rfl⟩, by simpa using Quotient.mk_out _⟩
        suffices ∃ b ≤ y.birthday, birthday ⟦y.moveRight i⟧ < b by simpa [S, hy'] using this
        refine ⟨_, le_rfl, ?_⟩
        exact (birthday_quot_le_pGameBirthday _).trans_lt (PGame.birthday_moveRight_lt i)
  · convert H
    change birthday _ < o ↔ ∃ a, _
    simpa using lt_limit ho

end Game

end SetTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb057afddd5cdd4e8841a02f56457f9268f9fadb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
