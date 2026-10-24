# zipWith_eq_append_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8c2e7cc-da25-d0dc-f99c-dd48ada4ce9c",
  "kind": "theorem",
  "lexical_name": "zipWith_eq_append_iff",
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
  "slug": "zipwith-eq-append-iff--c17a22473ee10e0d1352864f",
  "source": {
    "blob": "205eab01f290721e9734eed5e1d692631f7c01b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantee6fa14bb02b5e477ed0c82bb188176dc8af70e113d4d6a389a90b34066827a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c17a22473ee10e0d1352864f5b15d974d8e3becccdd126d4218218167dd91c57",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantee6fa14bb02b5e477ed0c82bb188176dc8af70e113d4d6a389a90b34066827a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8c2e7cc-da25-d0dc-f99c-dd48ada4ce9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zipWith_eq_append_iff {f : α → β → γ} {l₁ : List α} {l₂ : List β} :
    zipWith f l₁ l₂ = l₁' ++ l₂' ↔
      ∃ ws xs ys zs, ws.length = ys.length ∧ l₁ = ws ++ xs ∧ l₂ = ys ++ zs ∧ l₁' = zipWith f ws ys ∧ l₂' = zipWith f xs zs := by
  induction l₁ generalizing l₂ l₁' with
  | nil =>
    simp
    constructor
    · rintro ⟨rfl, rfl⟩
      exact ⟨[], [], [], by simp⟩
    · rintro ⟨_, _, _, -, ⟨rfl, rfl⟩, _, rfl, rfl, rfl⟩
      simp
  | cons x₁ l₁ ih₁ =>
    cases l₂ with
    | nil =>
      constructor
      · simp only [zipWith_nil_right, nil_eq, append_eq_nil_iff, exists_and_left, and_imp]
        rintro rfl  rfl
        exact ⟨[], x₁ :: l₁, [], by simp⟩
      · rintro ⟨_, _, _, _, h₁, _, h₃, rfl, rfl⟩
        simp only [nil_eq, append_eq_nil_iff] at h₃
        obtain ⟨rfl, rfl⟩ := h₃
        simp
    | cons x₂ l₂ =>
      simp only [zipWith_cons_cons]
      rw [cons_eq_append_iff]
      constructor
      · rintro (⟨rfl, rfl⟩ | ⟨_, rfl, h⟩)
        · exact ⟨[], x₁ :: l₁, [], x₂ :: l₂, by simp⟩
        · rw [ih₁] at h
          obtain ⟨ws, xs, ys, zs, h, rfl, rfl, h', rfl⟩ := h
          refine ⟨x₁ :: ws, xs, x₂ :: ys, zs, by simp [h, h']⟩
      · rintro ⟨_, _, _, _, h₁, h₂, h₃, rfl, rfl⟩
        rw [cons_eq_append_iff] at h₂
        rw [cons_eq_append_iff] at h₃
        obtain (⟨rfl, rfl⟩ | ⟨_, rfl, rfl⟩) := h₂
        · simp only [zipWith_nil_left, true_and, nil_eq, reduceCtorEq, false_and, exists_const,
          or_false]
          obtain (⟨rfl, rfl⟩ | ⟨_, rfl, rfl⟩) := h₃
          · simp
          · simp_all
        · obtain (⟨rfl, rfl⟩ | ⟨_, rfl, rfl⟩) := h₃
          · simp_all
          · simp_all [zipWith_append, Nat.succ_inj]

/-- See also `List.zipWith_replicate` in `Init.Data.List.TakeDrop` for a generalization with different lengths. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantee6fa14bb02b5e477ed0c82bb188176dc8af70e113d4d6a389a90b34066827a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantee6fa14bb02b5e477ed0c82bb188176dc8af70e113d4d6a389a90b34066827a0.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `205eab01f290721e9734eed5e1d692631f7c01b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
