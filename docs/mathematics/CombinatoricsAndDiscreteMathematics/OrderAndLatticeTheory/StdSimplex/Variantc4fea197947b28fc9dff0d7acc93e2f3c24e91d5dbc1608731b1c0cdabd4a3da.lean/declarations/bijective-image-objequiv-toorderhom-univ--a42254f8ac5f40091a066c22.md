# bijective_image_objEquiv_toOrderHom_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c98af9d488a3f7dec6733d001c95a893c9cf82f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 621,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b1652a5-6a55-9638-b29b-ac0379f8526c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4070dafa-a558-f9b5-6466-2e48a5463eab",
  "kind": "lemma",
  "lexical_name": "bijective_image_objEquiv_toOrderHom_univ",
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
  "slug": "bijective-image-objequiv-toorderhom-univ--a42254f8ac5f40091a066c22",
  "source": {
    "blob": "c98af9d488a3f7dec6733d001c95a893c9cf82f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 650,
    "line": 621,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a42254f8ac5f40091a066c22db2f75e69ca5db7c9eb75d1ac05f7a8f07a8fb3e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4070dafa-a558-f9b5-6466-2e48a5463eab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma bijective_image_objEquiv_toOrderHom_univ (m : ℕ) :
    Function.Bijective (fun (⟨x, hx⟩ : (Δ[n] : SSet.{u}).nonDegenerate m) ↦
      (⟨Finset.image (objEquiv x).toOrderHom .univ, by
        dsimp
        rw [mem_nonDegenerate_iff_mono, SimplexCategory.mono_iff_injective] at hx
        rw [Finset.card_image_of_injective _ (by exact hx), Finset.card_univ,
          Fintype.card_fin]⟩ : { S : Finset (Fin (n + 1)) | S.card = m + 1 })) := by
  constructor
  · rintro ⟨x₁, h₁⟩ ⟨x₂, h₂⟩ h₃
    obtain ⟨f₁, rfl⟩ := objEquiv.symm.surjective x₁
    obtain ⟨f₂, rfl⟩ := objEquiv.symm.surjective x₂
    simp only [mem_nonDegenerate_iff_mono, Equiv.apply_symm_apply,
      SimplexCategory.mono_iff_injective, SimplexCategory.len_mk] at h₁ h₂
    simp only [Set.mem_ofPred_eq, SimplexCategory.len_mk, Equiv.apply_symm_apply,
      Subtype.mk.injEq, EmbeddingLike.apply_eq_iff_eq] at h₃ ⊢
    apply SimplexCategory.Hom.ext
    rw [← OrderHom.range_eq_iff h₁ h₂]
    ext x
    simpa using congr_fun (congrArg Membership.mem h₃) x
  · intro ⟨S, hS⟩
    dsimp at hS
    let e := monoEquivOfFin S (k := m + 1) (by simpa using hS)
    refine ⟨⟨objMk ((OrderHom.Subtype.val _).comp e.toOrderEmbedding.toOrderHom), ?_⟩, ?_⟩
    · rw [mem_nonDegenerate_iff_mono, SimplexCategory.mono_iff_injective]
      intro a b h
      grind [e.injective, dsimp% h]
    · simp [e, ← Finset.image_image, Finset.image_univ_of_surjective e.surjective]

/-- Nondegenerate `d`-dimensional simplices of the standard simplex `Δ[n]`
identify to subsets of `Fin (n + 1)` of cardinality `d + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98af9d488a3f7dec6733d001c95a893c9cf82f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
