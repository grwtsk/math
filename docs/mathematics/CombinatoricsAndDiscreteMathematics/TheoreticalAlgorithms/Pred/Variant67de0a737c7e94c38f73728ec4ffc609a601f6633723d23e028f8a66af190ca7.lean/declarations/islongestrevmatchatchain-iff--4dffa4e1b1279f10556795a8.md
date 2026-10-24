# isLongestRevMatchAtChain_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22ae6c0ffed585af9f76432ffaa34450f1f54a3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67de0a737c7e94c38f73728ec4ffc609a601f6633723d23e028f8a66af190ca7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1086b8b-73ff-6da6-3489-b3be72f8ba91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95920c73-54af-bc99-ffb5-753de4139e23",
  "kind": "theorem",
  "lexical_name": "isLongestRevMatchAtChain_iff",
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
  "slug": "islongestrevmatchatchain-iff--4dffa4e1b1279f10556795a8",
  "source": {
    "blob": "22ae6c0ffed585af9f76432ffaa34450f1f54a3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant67de0a737c7e94c38f73728ec4ffc609a601f6633723d23e028f8a66af190ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dffa4e1b1279f10556795a800007f6498b2c4963f0a458eb413cd1988363843",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant67de0a737c7e94c38f73728ec4ffc609a601f6633723d23e028f8a66af190ca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95920c73-54af-bc99-ffb5-753de4139e23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLongestRevMatchAtChain_iff {p : Char → Bool} {s : Slice} {pos pos' : s.Pos} :
    IsLongestRevMatchAtChain p pos pos' ↔ pos ≤ pos' ∧ ∀ pos'', pos ≤ pos'' → (h : pos'' < pos') → p (pos''.get (Pos.ne_endPos_of_lt h)) := by
  induction pos' using WellFounded.induction Pos.wellFounded_lt with | h pos' ih
  obtain (h|rfl|h) := Std.lt_trichotomy pos pos'
  · refine ⟨fun h => ?_, fun ⟨h₁, h₂⟩ => ?_⟩
    · cases h with
      | nil => exact (Std.lt_irrefl h).elim
      | cons _ _ hchain hmatch =>
        obtain ⟨hne, hmid, hp⟩ := isLongestRevMatchAt_iff.1 hmatch
        refine ⟨Std.le_of_lt h, fun pos'' hp₁ hp₂ => ?_⟩
        rcases Std.le_iff_lt_or_eq.1 (Pos.le_prev_iff_lt.2 hp₂) with hh | heq
        · exact ((ih _ Pos.prev_lt).1 (hmid ▸ hchain)).2 _ hp₁ hh
        · exact heq ▸ hp
    · have hne : pos' ≠ s.startPos := Slice.Pos.ne_startPos_of_lt h
      refine .cons _ (pos'.prev hne) _ ((ih _ Pos.prev_lt).2 ?_)
        (isLongestRevMatchAt_of_get (h₂ _ (Pos.le_prev_iff_lt.2 h) Pos.prev_lt))
      exact ⟨Pos.le_prev_iff_lt.2 h, fun pos'' hp₁ hp₂ =>
        h₂ _ hp₁ (Std.lt_trans hp₂ Pos.prev_lt)⟩
  · simpa using fun _ h₁ h₂ => (Std.lt_irrefl (Std.lt_of_le_of_lt h₁ h₂)).elim
  · simpa [Std.not_le.2 h] using! fun h' => (Std.not_le.2 h h'.le).elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant67de0a737c7e94c38f73728ec4ffc609a601f6633723d23e028f8a66af190ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant67de0a737c7e94c38f73728ec4ffc609a601f6633723d23e028f8a66af190ca7.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22ae6c0ffed585af9f76432ffaa34450f1f54a3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
