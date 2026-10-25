# join_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6113af4c-ec82-59bf-2d6f-79be6f17778f",
  "kind": "theorem",
  "lexical_name": "join_join",
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
  "slug": "join-join--85ac5b112ff13eb1956c8c50",
  "source": {
    "blob": "c0bc9d078b276e9a874538a523cadcdc74cb0520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 526,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant3077026d604bab59b6dfb25f4fce1beb4ffe334b7fb95dcb2eb94503841cbdab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85ac5b112ff13eb1956c8c507cf81c9e3d6667006b38a8341dfdbe7f793844e4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant3077026d604bab59b6dfb25f4fce1beb4ffe334b7fb95dcb2eb94503841cbdab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6113af4c-ec82-59bf-2d6f-79be6f17778f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem join_join (SS : WSeq (WSeq (WSeq α))) : join (join SS) ~ʷ join (map join SS) := by
  refine
    ⟨fun s1 s2 =>
      ∃ s S SS,
        s1 = append s (join (append S (join SS))) ∧
          s2 = append s (append (join S) (join (map join SS))),
      ⟨nil, nil, SS, by simp, by simp⟩, ?_⟩
  intro s1 s2 h
  apply
    liftRel_rec
      (fun c1 c2 =>
        ∃ s S SS,
          c1 = destruct (append s (join (append S (join SS)))) ∧
            c2 = destruct (append s (append (join S) (join (map join SS)))))
      _ (destruct s1) (destruct s2)
      (let ⟨s, S, SS, h1, h2⟩ := h
      ⟨s, S, SS, by simp [h1], by simp [h2]⟩)
  intro c1 c2 h
  exact
    match c1, c2, h with
    | _, _, ⟨s, S, SS, rfl, rfl⟩ => by
      clear h
      induction' s using WSeq.recOn with a s s
      · induction' S using WSeq.recOn with s S S
        · simp only [nil_append, join_nil]
          induction' SS using WSeq.recOn with S SS SS
          · simp
          · refine ⟨nil, S, SS, ?_, ?_⟩ <;> simp
          · refine ⟨nil, nil, SS, ?_, ?_⟩ <;> simp
        · simpa using ⟨s, S, SS, rfl, rfl⟩
        · refine ⟨nil, S, SS, ?_, ?_⟩ <;> simp
      · simpa using ⟨s, S, SS, rfl, rfl⟩
      · simpa using ⟨s, S, SS, rfl, rfl⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant3077026d604bab59b6dfb25f4fce1beb4ffe334b7fb95dcb2eb94503841cbdab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant3077026d604bab59b6dfb25f4fce1beb4ffe334b7fb95dcb2eb94503841cbdab.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0bc9d078b276e9a874538a523cadcdc74cb0520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
