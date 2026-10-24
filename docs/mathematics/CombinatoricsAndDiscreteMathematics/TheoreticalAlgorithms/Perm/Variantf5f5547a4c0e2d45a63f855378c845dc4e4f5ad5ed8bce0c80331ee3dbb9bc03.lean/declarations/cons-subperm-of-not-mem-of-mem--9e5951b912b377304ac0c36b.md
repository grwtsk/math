# cons_subperm_of_not_mem_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a1a3a37aee8bc87a494e2450b6bbb939840562a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5f5547a4c0e2d45a63f855378c845dc4e4f5ad5ed8bce0c80331ee3dbb9bc03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5de5698c-94bf-3441-a33e-e07ef258921a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:179022d1-6599-6e32-515f-3439d138ecd1",
  "kind": "theorem",
  "lexical_name": "cons_subperm_of_not_mem_of_mem",
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
  "slug": "cons-subperm-of-not-mem-of-mem--9e5951b912b377304ac0c36b",
  "source": {
    "blob": "2a1a3a37aee8bc87a494e2450b6bbb939840562a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf5f5547a4c0e2d45a63f855378c845dc4e4f5ad5ed8bce0c80331ee3dbb9bc03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e5951b912b377304ac0c36b9941e016151748db4b8f69ff61208d57d049c5fd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf5f5547a4c0e2d45a63f855378c845dc4e4f5ad5ed8bce0c80331ee3dbb9bc03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:179022d1-6599-6e32-515f-3439d138ecd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cons_subperm_of_not_mem_of_mem {a : α} {l₁ l₂ : List α} (h₁ : a ∉ l₁) (h₂ : a ∈ l₂)
    (s : l₁ <+~ l₂) : a :: l₁ <+~ l₂ := by
  obtain ⟨l, p, s⟩ := s
  induction s generalizing l₁ with
  | slnil => cases h₂
  | @cons r₁ _ b s' ih =>
    simp at h₂
    match h₂ with
    | .inl e => subst_vars; exact ⟨_ :: r₁, p.cons _, s'.cons_cons _⟩
    | .inr m => let ⟨t, p', s'⟩ := ih h₁ m p; exact ⟨t, p', s'.cons _⟩
  | @cons_cons _ r₂ b _ ih =>
    have bm : b ∈ l₁ := p.subset mem_cons_self
    have am : a ∈ r₂ := by
      simp only [mem_cons] at h₂
      exact h₂.resolve_left fun e => h₁ <| e.symm ▸ bm
    obtain ⟨t₁, t₂, rfl⟩ := append_of_mem bm
    have st : t₁ ++ t₂ <+ t₁ ++ b :: t₂ := by simp
    obtain ⟨t, p', s'⟩ := ih (mt (st.subset ·) h₁) am (.cons_inv <| p.trans perm_middle)
    exact ⟨b :: t, (p'.cons b).trans <|
    (Perm.swap ..).trans (perm_middle.symm.cons a), s'.cons_cons _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf5f5547a4c0e2d45a63f855378c845dc4e4f5ad5ed8bce0c80331ee3dbb9bc03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf5f5547a4c0e2d45a63f855378c845dc4e4f5ad5ed8bce0c80331ee3dbb9bc03.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a1a3a37aee8bc87a494e2450b6bbb939840562a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
