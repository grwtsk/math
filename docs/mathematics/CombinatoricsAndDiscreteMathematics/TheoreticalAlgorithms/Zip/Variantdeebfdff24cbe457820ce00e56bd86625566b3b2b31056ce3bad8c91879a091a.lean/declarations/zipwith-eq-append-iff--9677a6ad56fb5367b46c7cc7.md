# zipWith_eq_append_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75787595ff749134e9e675604c82a9e41bc041ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/deebfdff24cbe457820ce00e56bd86625566b3b2b31056ce3bad8c91879a091a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c312b06-ebc7-eb43-cba3-4900a27aad83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c922b48b-f8f2-52f8-2f52-dc3ec2c9dd2e",
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
  "slug": "zipwith-eq-append-iff--9677a6ad56fb5367b46c7cc7",
  "source": {
    "blob": "75787595ff749134e9e675604c82a9e41bc041ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 200,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantdeebfdff24cbe457820ce00e56bd86625566b3b2b31056ce3bad8c91879a091a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9677a6ad56fb5367b46c7cc798f7220e9c19c46906eef34f959ae288c634046c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantdeebfdff24cbe457820ce00e56bd86625566b3b2b31056ce3bad8c91879a091a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c922b48b-f8f2-52f8-2f52-dc3ec2c9dd2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–244.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantdeebfdff24cbe457820ce00e56bd86625566b3b2b31056ce3bad8c91879a091a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantdeebfdff24cbe457820ce00e56bd86625566b3b2b31056ce3bad8c91879a091a.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75787595ff749134e9e675604c82a9e41bc041ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
