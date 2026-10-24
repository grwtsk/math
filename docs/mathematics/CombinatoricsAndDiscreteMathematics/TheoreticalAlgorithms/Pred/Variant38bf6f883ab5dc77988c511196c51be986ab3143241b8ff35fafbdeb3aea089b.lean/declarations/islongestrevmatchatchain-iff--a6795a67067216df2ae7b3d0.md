# isLongestRevMatchAtChain_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:914278e4-99e0-6b13-2541-861873ca890d",
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
  "slug": "islongestrevmatchatchain-iff--a6795a67067216df2ae7b3d0",
  "source": {
    "blob": "b5e0644dbede604f9fbbfd817995ce006bc9a43e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant38bf6f883ab5dc77988c511196c51be986ab3143241b8ff35fafbdeb3aea089b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6795a67067216df2ae7b3d0b5684135834353f343da9c19b1f8df94fcca726b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant38bf6f883ab5dc77988c511196c51be986ab3143241b8ff35fafbdeb3aea089b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:914278e4-99e0-6b13-2541-861873ca890d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–150.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant38bf6f883ab5dc77988c511196c51be986ab3143241b8ff35fafbdeb3aea089b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant38bf6f883ab5dc77988c511196c51be986ab3143241b8ff35fafbdeb3aea089b.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5e0644dbede604f9fbbfd817995ce006bc9a43e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
