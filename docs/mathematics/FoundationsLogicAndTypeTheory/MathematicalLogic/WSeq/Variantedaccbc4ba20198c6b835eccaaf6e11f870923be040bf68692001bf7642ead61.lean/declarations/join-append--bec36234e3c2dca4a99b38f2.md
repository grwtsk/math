# join_append

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
      "line": 1705,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17efaadd-6c8b-b7bf-828d-837e42f9e0c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bbc600b2-1e71-8f23-1866-296dc1ede039",
  "kind": "theorem",
  "lexical_name": "join_append",
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
  "slug": "join-append--bec36234e3c2dca4a99b38f2",
  "source": {
    "blob": "694d79c06b5c4f11401eea0253a2f8c29d3feaa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1732,
    "line": 1705,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bec36234e3c2dca4a99b38f28217680139957d1dcd210e8dd296d7ec08fd1df4",
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

Occurrence: `result:bbc600b2-1e71-8f23-1866-296dc1ede039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1705–1732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem join_append (S T : WSeq (WSeq α)) : join (append S T) ~ʷ append (join S) (join T) := by
  refine'
    ⟨fun s1 s2 =>
      ∃ s S T, s1 = append s (join (append S T)) ∧ s2 = append s (append (join S) (join T)),
      ⟨nil, S, T, by simp, by simp⟩, _⟩
  intro s1 s2 h
  apply
    lift_rel_rec
      (fun c1 c2 =>
        ∃ (s : WSeq α) (S T : _),
          c1 = destruct (append s (join (append S T))) ∧
            c2 = destruct (append s (append (join S) (join T))))
      _ _ _
      (let ⟨s, S, T, h1, h2⟩ := h
      ⟨s, S, T, congr_arg destruct h1, congr_arg destruct h2⟩)
  rintro c1 c2 ⟨s, S, T, rfl, rfl⟩
  induction' s using WSeq.recOn with a s s <;> simp
  · induction' S using WSeq.recOn with s S S <;> simp
    · induction' T using WSeq.recOn with s T T <;> simp
      · refine' ⟨s, nil, T, _, _⟩ <;> simp
      · refine' ⟨nil, nil, T, _, _⟩ <;> simp
    · exact ⟨s, S, T, rfl, rfl⟩
    · refine' ⟨nil, S, T, _, _⟩ <;> simp
  · exact ⟨s, S, T, rfl, rfl⟩
  · exact ⟨s, S, T, rfl, rfl⟩
#align stream.wseq.join_append Stream'.WSeq.join_append

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean#L1705).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694d79c06b5c4f11401eea0253a2f8c29d3feaa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
