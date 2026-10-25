# liftRel_append

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
      "line": 1557,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a23d9bba-42d1-aa80-0b71-cc798c9dcadf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d46d503-2e80-cf64-e6a1-5ebb513d3e45",
  "kind": "theorem",
  "lexical_name": "liftRel_append",
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
  "slug": "liftrel-append--70fbc1b3c444f08ec74c6475",
  "source": {
    "blob": "694d79c06b5c4f11401eea0253a2f8c29d3feaa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1585,
    "line": 1557,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70fbc1b3c444f08ec74c647585cfbdb4d598475b3f8f6053965afc26982045dc",
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

Occurrence: `result:3d46d503-2e80-cf64-e6a1-5ebb513d3e45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1557–1585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftRel_append (R : α → β → Prop) {s1 s2 : WSeq α} {t1 t2 : WSeq β} (h1 : LiftRel R s1 t1)
    (h2 : LiftRel R s2 t2) : LiftRel R (append s1 s2) (append t1 t2) :=
  ⟨fun s t => LiftRel R s t ∨ ∃ s1 t1, s = append s1 s2 ∧ t = append t1 t2 ∧ LiftRel R s1 t1,
    Or.inr ⟨s1, t1, rfl, rfl, h1⟩, fun {s t} h =>
    match s, t, h with
    | s, t, Or.inl h => by
      apply Computation.LiftRel.imp _ _ _ (liftRel_destruct h)
      intro a b; apply LiftRelO.imp_right
      intro s t; apply Or.inl
    | _, _, Or.inr ⟨s1, t1, rfl, rfl, h⟩ => by
      simp [destruct_append]
      apply Computation.liftRel_bind _ _ (liftRel_destruct h)
      intro o p h
      cases' o with a <;> cases' p with b
      · simp
        apply Computation.LiftRel.imp _ _ _ (liftRel_destruct h2)
        intro a b
        apply LiftRelO.imp_right
        intro s t
        apply Or.inl
      · cases b; cases h
      · cases a; cases h
      · cases' a with a s; cases' b with b t
        cases' h with r h
        -- Porting note: These 2 theorems should be excluded.
        simp [-liftRel_pure_left, -liftRel_pure_right]
        exact ⟨r, Or.inr ⟨s, rfl, t, rfl, h⟩⟩⟩
#align stream.wseq.lift_rel_append Stream'.WSeq.liftRel_append

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean#L1557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694d79c06b5c4f11401eea0253a2f8c29d3feaa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
