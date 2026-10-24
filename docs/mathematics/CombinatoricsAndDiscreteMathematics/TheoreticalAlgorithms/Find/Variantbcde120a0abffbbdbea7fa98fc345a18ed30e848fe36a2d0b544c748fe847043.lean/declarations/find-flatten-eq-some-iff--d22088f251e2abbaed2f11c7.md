# find?_flatten_eq_some_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a449de6-3be7-3c29-fa98-ec677ff55037",
  "kind": "theorem",
  "lexical_name": "find?_flatten_eq_some_iff",
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
  "slug": "find-flatten-eq-some-iff--d22088f251e2abbaed2f11c7",
  "source": {
    "blob": "7ceeb09718ee7d849c1834e40ca786aa32e47c75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 390,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d22088f251e2abbaed2f11c748bc03ed9fa7d8157299a6d05977fe8e22f0c1a9",
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

Occurrence: `result:2a449de6-3be7-3c29-fa98-ec677ff55037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find?_flatten_eq_some_iff {xs : List (List α)} {p : α → Bool} {a : α} :
    xs.flatten.find? p = some a ↔
      p a ∧ ∃ as ys zs bs, xs = as ++ (ys ++ a :: zs) :: bs ∧
        (∀ l ∈ as, ∀ x ∈ l, !p x) ∧ (∀ x ∈ ys, !p x) := by
  rw [find?_eq_some_iff_append]
  constructor
  · rintro ⟨h, ⟨ys, zs, h₁, h₂⟩⟩
    refine ⟨h, ?_⟩
    rw [flatten_eq_append_iff] at h₁
    obtain (⟨as, bs, rfl, rfl, h₁⟩ | ⟨as, bs, c, cs, ds, rfl, rfl, h₁⟩) := h₁
    · replace h₁ := h₁.symm
      rw [flatten_eq_cons_iff] at h₁
      obtain ⟨bs, cs, ds, rfl, h₁, rfl⟩ := h₁
      refine ⟨as ++ bs, [], cs, ds, by simp, ?_⟩
      simp
      rintro l (ma | mb) x m
      · simpa using h₂ x (by simpa using ⟨l, ma, m⟩)
      · specialize h₁ _ mb
        simp_all
    · simp
      refine ⟨as, bs, ?_⟩
      refine ⟨?_, ?_, ?_⟩
      · simp_all
      · intro l ml a m
        simpa using h₂ a (by simpa using .inl ⟨l, ml, m⟩)
      · intro x m
        simpa using h₂ x (by simpa using .inr m)
  · rintro ⟨h, ⟨as, ys, zs, bs, rfl, h₁, h₂⟩⟩
    refine ⟨h, as.flatten ++ ys, zs ++ bs.flatten, by simp, ?_⟩
    intro a m
    simp at m
    obtain ⟨l, ml, m⟩ | m := m
    · exact h₁ l ml a m
    · exact h₂ a m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ceeb09718ee7d849c1834e40ca786aa32e47c75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
