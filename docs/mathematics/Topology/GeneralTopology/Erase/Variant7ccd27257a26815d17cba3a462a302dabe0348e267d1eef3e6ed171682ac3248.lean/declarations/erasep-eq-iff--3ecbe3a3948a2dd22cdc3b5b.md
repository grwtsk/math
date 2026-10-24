# eraseP_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61e119f9bbfb9ec7fb0485874c8fe7e885c2e3bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7ccd27257a26815d17cba3a462a302dabe0348e267d1eef3e6ed171682ac3248.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7c6812b-d88a-6ea8-3f76-d3e9c960cff6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d746639-78cc-93ac-75f2-1d5ba12a19ed",
  "kind": "theorem",
  "lexical_name": "eraseP_eq_iff",
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
  "slug": "erasep-eq-iff--3ecbe3a3948a2dd22cdc3b5b",
  "source": {
    "blob": "61e119f9bbfb9ec7fb0485874c8fe7e885c2e3bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 241,
    "path": "GRWTSK/Topology/GeneralTopology/Erase/Variant7ccd27257a26815d17cba3a462a302dabe0348e267d1eef3e6ed171682ac3248.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ecbe3a3948a2dd22cdc3b5b6f7e4bc06192672c9d9f96f44a5dc7a071231a01",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Erase/Variant7ccd27257a26815d17cba3a462a302dabe0348e267d1eef3e6ed171682ac3248.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d746639-78cc-93ac-75f2-1d5ba12a19ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eraseP_eq_iff {p} {l : List α} :
    l.eraseP p = l' ↔
      ((∀ a ∈ l, ¬ p a) ∧ l = l') ∨
        ∃ a l₁ l₂, (∀ b ∈ l₁, ¬ p b) ∧ p a ∧ l = l₁ ++ a :: l₂ ∧ l' = l₁ ++ l₂ := by
  cases exists_or_eq_self_of_eraseP p l with
  | inl h =>
    constructor
    · intro h'
      left
      exact ⟨eraseP_eq_self_iff.1 h, by simp_all⟩
    · rintro (⟨-, rfl⟩ | ⟨a, l₁, l₂, h₁, h₂, rfl, rfl⟩)
      · assumption
      · rw [eraseP_append_right _ h₁, eraseP_cons_of_pos h₂]
  | inr h =>
    obtain ⟨a, l₁, l₂, h₁, h₂, w₁, w₂⟩ := h
    rw [w₂]
    subst w₁
    constructor
    · rintro rfl
      right
      refine ⟨a, l₁, l₂, ?_⟩
      simp_all
    · rintro (h | h)
      · simp_all
      · obtain ⟨a', l₁', l₂', h₁', h₂', h, rfl⟩ := h
        have p : l₁ = l₁' := by
          have q : l₁ = takeWhile (fun x => !p x) (l₁ ++ a :: l₂) := by
            rw [takeWhile_append_of_pos (by simp_all),
              takeWhile_cons_of_neg (by simp [h₂]), append_nil]
          have q' : l₁' = takeWhile (fun x => !p x) (l₁' ++ a' :: l₂') := by
            rw [takeWhile_append_of_pos (by simpa using h₁'),
              takeWhile_cons_of_neg (by simp [h₂']), append_nil]
          simp [h] at q
          rw [q', q]
        subst p
        simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Erase/Variant7ccd27257a26815d17cba3a462a302dabe0348e267d1eef3e6ed171682ac3248.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Erase/Variant7ccd27257a26815d17cba3a462a302dabe0348e267d1eef3e6ed171682ac3248.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61e119f9bbfb9ec7fb0485874c8fe7e885c2e3bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
