# map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "730a42b41c6792d3493613d857a37c52ad6f5a3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/adf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2687b835-48a1-29ad-658f-6de63ead509d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39c9fed4-d27c-f30c-c9f0-9d8966243b69",
  "kind": "lemma",
  "lexical_name": "map_comp",
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
  "slug": "map-comp--aa8e717d26dcff3c98a331b2",
  "source": {
    "blob": "730a42b41c6792d3493613d857a37c52ad6f5a3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa8e717d26dcff3c98a331b2cd8bbd9d9313b3629c29b67f767e56e0133cc674",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39c9fed4-d27c-f30c-c9f0-9d8966243b69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_comp (i₁ i₂ i₃ : J) (h₁₂ : i₁ ≤ i₂) (h₂₃ : i₂ ≤ i₃) (h : i₃ ≤ Order.succ j) :
    map hj F τ i₁ i₃ (h₁₂.trans h₂₃) h =
      map hj F τ i₁ i₂ h₁₂ (h₂₃.trans h) ≫ map hj F τ i₂ i₃ h₂₃ h := by
  by_cases h₁ : i₃ ≤ j
  · rw [map_eq hj F τ i₁ i₂ _ (h₂₃.trans h₁), map_eq hj F τ i₂ i₃ _ h₁,
      map_eq hj F τ i₁ i₃ _ h₁, assoc, assoc, Iso.inv_hom_id_assoc, ← Functor.map_comp_assoc,
      homOfLE_comp]
  · obtain rfl : i₃ = Order.succ j := le_antisymm h (Order.succ_le_of_lt (not_le.1 h₁))
    obtain h₂ | rfl := h₂₃.lt_or_eq
    · rw [Order.lt_succ_iff_of_not_isMax hj] at h₂
      rw [map_eq hj F τ i₁ i₂ _ h₂]
      dsimp [map]
      rw [dif_neg h₁, dif_pos (h₁₂.trans h₂), dif_neg h₁, dif_pos h₂, assoc, assoc,
        Iso.inv_hom_id_assoc,comp_id, ← Functor.map_comp_assoc, homOfLE_comp]
    · rw [map_id, comp_id]

end extendToSucc

open extendToSucc in
include hj in
/-- The extension to `Set.Iic (Order.succ j) ⥤ C` of a functor `F : Set.Iic j ⥤ C`,
when we specify a morphism `F.obj ⟨j, _⟩ ⟶ X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `730a42b41c6792d3493613d857a37c52ad6f5a3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
