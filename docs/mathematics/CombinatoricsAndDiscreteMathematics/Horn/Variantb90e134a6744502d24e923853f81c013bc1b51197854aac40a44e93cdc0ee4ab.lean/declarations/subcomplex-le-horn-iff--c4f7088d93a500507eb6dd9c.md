# subcomplex_le_horn_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "624590ab5dd582466a25ebaf4afa54485ea83c6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b90e134a6744502d24e923853f81c013bc1b51197854aac40a44e93cdc0ee4ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89b51f5f-836b-58be-ece4-f3d137ca89cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a708ce8-a7b9-4e90-5db8-39c30b62d872",
  "kind": "lemma",
  "lexical_name": "subcomplex_le_horn_iff",
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
  "slug": "subcomplex-le-horn-iff--c4f7088d93a500507eb6dd9c",
  "source": {
    "blob": "624590ab5dd582466a25ebaf4afa54485ea83c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variantb90e134a6744502d24e923853f81c013bc1b51197854aac40a44e93cdc0ee4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4f7088d93a500507eb6dd9cbc7217e6897b86379ba26c1d9526a5f614898ce2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Horn/Variantb90e134a6744502d24e923853f81c013bc1b51197854aac40a44e93cdc0ee4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a708ce8-a7b9-4e90-5db8-39c30b62d872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subcomplex_le_horn_iff {n : ℕ}
    (A : Δ[n + 1].Subcomplex) (i : Fin (n + 2)) :
    A ≤ horn.{u} (n + 1) i ↔ ¬ stdSimplex.face {i}ᶜ ≤ A := by
  refine ⟨fun hA h ↦ ?_, fun h ↦ ?_⟩
  · replace h := h.trans hA
    rw [stdSimplex.face_singleton_compl, Subcomplex.ofSimplex_le_iff, mem_horn_iff] at h
    apply h
    rw [stdSimplex.coe_asOrderHom_objEquiv_symm, SimplexCategory.coe_δ,
      Fin.range_succAbove, Set.compl_union_self]
  · rw [Subcomplex.le_iff_contains_nonDegenerate]
    intro d x hx
    by_cases! hd : d < n
    · simp [horn_obj_eq_univ i d]
    · obtain ⟨⟨S, hS⟩, rfl⟩ := stdSimplex.nonDegenerateEquiv'.symm.surjective x
      dsimp at hS
      simp only [stdSimplex.nonDegenerateEquiv'_symm_mem_iff_face_le] at hx ⊢
      obtain hd | rfl := hd.lt_or_eq
      · obtain rfl : S = .univ := by
          rw [← Finset.card_eq_iff_eq_univ, Fintype.card_fin]
          exact le_antisymm (card_finset_fin_le S) (by lia)
        exact (h (le_trans (by simp) hx)).elim
      · replace hS : Sᶜ.card = 1 := by
          have := S.card_compl_add_card
          rw [Fintype.card_fin] at this
          lia
        obtain ⟨j, rfl⟩ : ∃ j, S = {j}ᶜ := by
          rw [Finset.card_eq_one] at hS
          obtain ⟨j, hS⟩ := hS
          exact ⟨j, by simp [← hS]⟩
        exact face_le_horn _ _ (by rintro rfl; tauto)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Horn/Variantb90e134a6744502d24e923853f81c013bc1b51197854aac40a44e93cdc0ee4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variantb90e134a6744502d24e923853f81c013bc1b51197854aac40a44e93cdc0ee4ab.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624590ab5dd582466a25ebaf4afa54485ea83c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
