# liftRel_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "694d79c06b5c4f11401eea0253a2f8c29d3feaa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1638,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d230e095-1430-3d9a-2f43-04dd5b730e40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab9d1a4c-9316-20c2-8368-2bff27b2ab77",
  "kind": "theorem",
  "lexical_name": "liftRel_join",
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
  "slug": "liftrel-join--290ae477ea395dffca702d56",
  "source": {
    "blob": "694d79c06b5c4f11401eea0253a2f8c29d3feaa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1666,
    "line": 1638,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:290ae477ea395dffca702d56d43d87dc461cb47c00af0ab122f3d3f6d9621e92",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab9d1a4c-9316-20c2-8368-2bff27b2ab77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1638–1666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftRel_join (R : α → β → Prop) {S : WSeq (WSeq α)} {T : WSeq (WSeq β)}
    (h : LiftRel (LiftRel R) S T) : LiftRel R (join S) (join T) :=
  ⟨fun s1 s2 =>
    ∃ s t S T,
      s1 = append s (join S) ∧ s2 = append t (join T) ∧ LiftRel R s t ∧ LiftRel (LiftRel R) S T,
    ⟨nil, nil, S, T, by simp, by simp, by simp, h⟩, fun {s1 s2} ⟨s, t, S, T, h1, h2, st, ST⟩ => by
    rw [h1, h2]; rw [destruct_append, destruct_append]
    apply Computation.liftRel_bind _ _ (liftRel_destruct st)
    exact fun {o p} h =>
      match o, p, h with
      | some (a, s), some (b, t), ⟨h1, h2⟩ => by
        -- Porting note: These 2 theorems should be excluded.
        simp [-liftRel_pure_left, -liftRel_pure_right]
        exact ⟨h1, s, t, S, rfl, T, rfl, h2, ST⟩
      | none, none, _ => by
        -- Porting note: `LiftRelO` should be excluded.
        dsimp [destruct_append.aux, Computation.LiftRel, -LiftRelO]; constructor
        · intro
          apply liftRel_join.lem _ ST fun _ _ => id
        · intro b mb
          rw [← LiftRelO.swap]
          apply liftRel_join.lem (swap R)
          · rw [← LiftRel.swap R, ← LiftRel.swap]
            apply ST
          · rw [← LiftRel.swap R, ← LiftRel.swap (LiftRel R)]
            exact fun s1 s2 ⟨s, t, S, T, h1, h2, st, ST⟩ => ⟨t, s, T, S, h2, h1, st, ST⟩
          · exact mb⟩
#align stream.wseq.lift_rel_join Stream'.WSeq.liftRel_join

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean#L1638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694d79c06b5c4f11401eea0253a2f8c29d3feaa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
