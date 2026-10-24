# pullback_map_isEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "367d7864bfcf0f8c68f9edfb33aa7e2066c11321",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23602966-61c8-31fb-b9de-2250716025f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d67895f5-6559-a299-f62d-26f9db6c15f7",
  "kind": "theorem",
  "lexical_name": "pullback_map_isEmbedding",
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
  "slug": "pullback-map-isembedding--052d3a133ba35da92400608c",
  "source": {
    "blob": "367d7864bfcf0f8c68f9edfb33aa7e2066c11321",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 237,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:052d3a133ba35da92400608c5f7d2c695ba566cd64ec82d25fc3d98a286b9b64",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d67895f5-6559-a299-f62d-26f9db6c15f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem pullback_map_isEmbedding {W X Y Z S T : TopCat.{u}} (f₁ : W ⟶ S) (f₂ : X ⟶ S)
    (g₁ : Y ⟶ T) (g₂ : Z ⟶ T) {i₁ : W ⟶ Y} {i₂ : X ⟶ Z} (H₁ : IsEmbedding i₁)
    (H₂ : IsEmbedding i₂) (i₃ : S ⟶ T) (eq₁ : f₁ ≫ i₃ = i₁ ≫ g₁) (eq₂ : f₂ ≫ i₃ = i₂ ≫ g₂) :
    IsEmbedding (pullback.map f₁ f₂ g₁ g₂ i₁ i₂ i₃ eq₁ eq₂) := by
  refine .of_comp (ContinuousMap.continuous_toFun _)
    (show Continuous (prod.lift (pullback.fst g₁ g₂) (pullback.snd g₁ g₂)) from
        ContinuousMap.continuous_toFun _)
      ?_
  suffices
    IsEmbedding (prod.lift (pullback.fst f₁ f₂) (pullback.snd f₁ f₂) ≫ Limits.prod.map i₁ i₂) by
    simpa [← coe_comp] using this
  rw [coe_comp]
  exact (isEmbedding_prodMap H₁ H₂).comp (isEmbedding_pullback_to_prod _ _)

/-- If there is a diagram where the morphisms `W ⟶ Y` and `X ⟶ Z` are open embeddings, and `S ⟶ T`
is mono, then the induced morphism `W ×ₛ X ⟶ Y ×ₜ Z` is also an open embedding.

```
W ⟶ Y
 ↘   ↘
  S ⟶ T
 ↗   ↗
X ⟶ Z
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `367d7864bfcf0f8c68f9edfb33aa7e2066c11321` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
