# findSome?_eq_some_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbb4651b-cd41-b145-1a03-7c13fddb7d75",
  "kind": "theorem",
  "lexical_name": "findSome?_eq_some_iff",
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
  "slug": "findsome-eq-some-iff--74c2e888da20aff97c141847",
  "source": {
    "blob": "7ceeb09718ee7d849c1834e40ca786aa32e47c75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74c2e888da20aff97c141847d41b2e37d07246b3761366eebe64c3b20bcbea10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbb4651b-cd41-b145-1a03-7c13fddb7d75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem findSome?_eq_some_iff {f : α → Option β} {l : List α} {b : β} :
    l.findSome? f = some b ↔ ∃ l₁ a l₂, l = l₁ ++ a :: l₂ ∧ f a = some b ∧ ∀ x ∈ l₁, f x = none := by
  induction l with
  | nil => simp
  | cons p l ih =>
    simp only [findSome?_cons]
    split <;> rename_i b' h
    · simp only [Option.some.injEq, exists_and_right]
      constructor
      · rintro rfl
        exact ⟨[], p, ⟨l, rfl⟩, h, by simp⟩
      · rintro ⟨(⟨⟩ | ⟨p', l₁⟩), a, ⟨l₂, h₁⟩, h₂, h₃⟩
        · simp only [nil_append, cons.injEq] at h₁
          apply Option.some.inj
          simp [← h, ← h₂, h₁.1]
        · simp only [cons_append, cons.injEq] at h₁
          obtain ⟨rfl, rfl⟩ := h₁
          specialize h₃ p
          simp_all
    · rw [ih]
      constructor
      · rintro ⟨l₁, a, l₂, rfl, h₁, h₂⟩
        refine ⟨p :: l₁, a, l₂, rfl, h₁, ?_⟩
        intro a w
        simp at w
        rcases w with rfl | w
        · exact h
        · exact h₂ _ w
      · rintro ⟨l₁, a, l₂, h₁, h₂, h₃⟩
        rcases l₁ with (⟨⟩ | ⟨a', l₁⟩)
        · simp_all
        · simp only [cons_append, cons.injEq] at h₁
          obtain ⟨⟨rfl, rfl⟩, rfl⟩ := h₁
          exact ⟨l₁, a, l₂, rfl, h₂, fun a' w => h₃ a' (mem_cons_of_mem p w)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ceeb09718ee7d849c1834e40ca786aa32e47c75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
