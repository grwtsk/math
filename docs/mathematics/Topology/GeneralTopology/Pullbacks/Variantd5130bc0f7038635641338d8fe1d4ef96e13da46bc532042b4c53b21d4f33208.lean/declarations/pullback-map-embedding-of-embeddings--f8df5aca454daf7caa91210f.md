# pullback_map_embedding_of_embeddings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64fdbcb58c63fc72ed92220e855d28a941b91815",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:858a1ecd-e905-1d33-7c2e-804cefce75d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73e85d5d-dda4-75ba-4bc7-a4a1ee3a9e83",
  "kind": "theorem",
  "lexical_name": "pullback_map_embedding_of_embeddings",
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
  "slug": "pullback-map-embedding-of-embeddings--f8df5aca454daf7caa91210f",
  "source": {
    "blob": "64fdbcb58c63fc72ed92220e855d28a941b91815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 247,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8df5aca454daf7caa91210fb3a25093998f9abba3294e68211f275924e921ae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73e85d5d-dda4-75ba-4bc7-a4a1ee3a9e83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_map_embedding_of_embeddings {W X Y Z S T : TopCat.{u}} (f₁ : W ⟶ S) (f₂ : X ⟶ S)
    (g₁ : Y ⟶ T) (g₂ : Z ⟶ T) {i₁ : W ⟶ Y} {i₂ : X ⟶ Z} (H₁ : Embedding i₁) (H₂ : Embedding i₂)
    (i₃ : S ⟶ T) (eq₁ : f₁ ≫ i₃ = i₁ ≫ g₁) (eq₂ : f₂ ≫ i₃ = i₂ ≫ g₂) :
    Embedding (pullback.map f₁ f₂ g₁ g₂ i₁ i₂ i₃ eq₁ eq₂) := by
  refine'
    embedding_of_embedding_compose (ContinuousMap.continuous_toFun _)
      (show Continuous (prod.lift pullback.fst pullback.snd : pullback g₁ g₂ ⟶ Y ⨯ Z) from
        ContinuousMap.continuous_toFun _)
      _
  suffices
    Embedding (prod.lift pullback.fst pullback.snd ≫ Limits.prod.map i₁ i₂ : pullback f₁ f₂ ⟶ _) by
    simpa [← coe_comp] using this
  rw [coe_comp]
  refine Embedding.comp (embedding_prod_map H₁ H₂) (embedding_pullback_to_prod _ _)
#align Top.pullback_map_embedding_of_embeddings TopCat.pullback_map_embedding_of_embeddings

/-- If there is a diagram where the morphisms `W ⟶ Y` and `X ⟶ Z` are open embeddings, and `S ⟶ T`
is mono, then the induced morphism `W ×ₛ X ⟶ Y ×ₜ Z` is also an open embedding.
  W ⟶ Y
    ↘      ↘
      S ⟶ T
    ↗       ↗
  X ⟶ Z
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64fdbcb58c63fc72ed92220e855d28a941b91815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
