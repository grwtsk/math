# dropInfix?_go_eq_some_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5da35a018fd4bc6264539fedb73a10c0f68f7691",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 544,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/6292c025f7f8ec5c19415566dba8895eb5061ad77fd5a2dcfc1c04fdf697dbbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67929a3a-afcf-d0de-32e6-ba3db69923f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ece18d8-ec8b-9404-bb1d-56f0252d1ff1",
  "kind": "theorem",
  "lexical_name": "dropInfix?_go_eq_some_iff",
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
  "slug": "dropinfix-go-eq-some-iff--e59a06037cbf2296872c47ed",
  "source": {
    "blob": "5da35a018fd4bc6264539fedb73a10c0f68f7691",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 544,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6292c025f7f8ec5c19415566dba8895eb5061ad77fd5a2dcfc1c04fdf697dbbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e59a06037cbf2296872c47ed3cba877afe2e0d20fb0df35950149ffc38acaea8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6292c025f7f8ec5c19415566dba8895eb5061ad77fd5a2dcfc1c04fdf697dbbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ece18d8-ec8b-9404-bb1d-56f0252d1ff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dropInfix?_go_eq_some_iff [BEq α] {i l acc p s : List α} :
    dropInfix?.go i l acc = some (p, s) ↔ ∃ p',
      p = acc.reverse ++ p' ∧
      -- `i` is an infix up to `==`
      (∃ i', l = p' ++ i' ++ s ∧ i' == i) ∧
        -- and there is no shorter prefix for which that is the case
        (∀ p'' i'' s'', l = p'' ++ i'' ++ s'' → i'' == i → p''.length ≥ p'.length) := by
  unfold dropInfix?.go
  split
  · simp only [isEmpty_iff, ite_none_right_eq_some, some.injEq, Prod.mk.injEq, nil_eq,
      append_assoc, append_eq_nil_iff, ge_iff_le, and_imp]
    constructor
    · rintro ⟨rfl, rfl, rfl⟩
      simp
    · rintro ⟨p', rfl, ⟨_, ⟨rfl, rfl, rfl⟩, h⟩, w⟩
      simp_all
  · rename_i a t
    split <;> rename_i h
    · rw [dropInfix?_go_eq_some_iff]
      constructor
      · rintro ⟨p', rfl, ⟨i', rfl, h₂⟩, w⟩
        refine ⟨a :: p', ?_⟩
        simp [h₂]
        intro p'' i'' s'' h₁ h₂
        rw [cons_eq_append_iff] at h₁
        obtain (⟨rfl, h₁⟩ | ⟨p'', rfl, h₁⟩) := h₁
        · rw [append_assoc, ← h₁] at h
          have := dropPrefix?_append_of_beq s'' h₂
          simp_all
        · simpa using w p'' i'' s'' (by simpa using h₁) h₂
      · rintro ⟨p', rfl, ⟨i', h₁, h₂⟩, w⟩
        rw [cons_eq_append_iff] at h₁
        simp at h₁
        obtain (⟨⟨rfl, rfl⟩, rfl⟩ | ⟨a', h₁, rfl⟩) := h₁
        · simp only [nil_beq_eq, isEmpty_iff] at h₂
          simp only [h₂] at h
          simp at h
        · rw [append_eq_cons_iff] at h₁
          obtain (⟨rfl, rfl⟩ | ⟨p', rfl, rfl⟩) := h₁
          · rw [← cons_append] at h
            have := dropPrefix?_append_of_beq s h₂
            simp_all
          · refine ⟨p', ?_⟩
            simp only [reverse_cons, append_assoc, singleton_append, append_cancel_left_eq,
              append_cancel_right_eq, exists_eq_left', ge_iff_le, true_and]
            refine ⟨h₂, ?_⟩
            intro p'' i'' s'' h₃ h₄
            rw [← append_assoc] at h₃
            rw [h₃] at w
            simpa using w (a :: p'') i'' s'' (by simp) h₄
    · rename_i s'
      simp only [some.injEq, Prod.mk.injEq, append_assoc, ge_iff_le]
      rw [dropPrefix?_eq_some_iff] at h
      obtain ⟨p', h, w⟩ := h
      constructor
      · rintro ⟨rfl, rfl⟩
        simpa using ⟨p', by simp_all⟩
      · rintro ⟨p'', rfl, ⟨i', h₁, h₂⟩, w'⟩
        specialize w' [] p' s' (by simpa using h) w
        simp at w'
        simp [w'] at h₁ ⊢
        rw [h] at h₁
        apply append_inj_right h₁
        replace w := length_eq_of_beq w
        replace h₂ := length_eq_of_beq h₂
        simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6292c025f7f8ec5c19415566dba8895eb5061ad77fd5a2dcfc1c04fdf697dbbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6292c025f7f8ec5c19415566dba8895eb5061ad77fd5a2dcfc1c04fdf697dbbb.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5da35a018fd4bc6264539fedb73a10c0f68f7691` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
