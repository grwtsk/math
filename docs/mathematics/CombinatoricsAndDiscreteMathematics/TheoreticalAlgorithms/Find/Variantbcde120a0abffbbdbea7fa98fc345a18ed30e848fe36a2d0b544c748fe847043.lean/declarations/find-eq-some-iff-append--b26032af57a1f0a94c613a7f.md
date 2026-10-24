# find?_eq_some_iff_append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e910333-e356-47ba-9478-6b636ebbc611",
  "kind": "theorem",
  "lexical_name": "find?_eq_some_iff_append",
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
  "slug": "find-eq-some-iff-append--b26032af57a1f0a94c613a7f",
  "source": {
    "blob": "7ceeb09718ee7d849c1834e40ca786aa32e47c75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 250,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b26032af57a1f0a94c613a7fd668da4a82c56a757780ce433e12404d9c90a89d",
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

Occurrence: `result:5e910333-e356-47ba-9478-6b636ebbc611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find?_eq_some_iff_append :
    xs.find? p = some b ↔ p b ∧ ∃ as bs, xs = as ++ b :: bs ∧ ∀ a ∈ as, !p a := by
  induction xs with
  | nil => simp
  | cons x xs ih =>
    simp only [find?_cons, exists_and_right]
    split <;> rename_i h
    · simp only [Option.some.injEq]
      constructor
      · rintro rfl
        exact ⟨h, [], ⟨xs, rfl⟩, by simp⟩
      · rintro ⟨-, ⟨as, ⟨⟨bs, h₁⟩, h₂⟩⟩⟩
        cases as with
        | nil => simp_all
        | cons a as =>
          specialize h₂ a mem_cons_self
          simp only [cons_append] at h₁
          obtain ⟨rfl, -⟩ := h₁
          simp_all
    · simp only [ih, Bool.not_eq_eq_eq_not, Bool.not_true, exists_and_right, and_congr_right_iff]
      intro pb
      constructor
      · rintro ⟨as, ⟨⟨bs, rfl⟩, h₁⟩⟩
        refine ⟨x :: as, ⟨⟨bs, rfl⟩, ?_⟩⟩
        intro a m
        simp at m
        obtain (rfl|m) := m
        · exact h
        · exact h₁ a m
      · rintro ⟨as, ⟨bs, h₁⟩, h₂⟩
        cases as with
        | nil => simp_all
        | cons a as =>
          refine ⟨as, ⟨⟨bs, ?_⟩, fun a m => h₂ a (mem_cons_of_mem _ m)⟩⟩
          cases h₁
          simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ceeb09718ee7d849c1834e40ca786aa32e47c75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
