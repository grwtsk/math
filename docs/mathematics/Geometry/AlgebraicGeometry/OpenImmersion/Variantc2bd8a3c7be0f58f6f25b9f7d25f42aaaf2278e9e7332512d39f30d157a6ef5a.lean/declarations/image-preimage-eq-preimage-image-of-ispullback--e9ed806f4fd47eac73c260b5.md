# image_preimage_eq_preimage_image_of_isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e09b364f460e7c6653fce88e8bc03ab813f618f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 559,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b34fe2c-6ba4-301d-490d-6d27880aa95a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:519e7dc6-0272-8718-ed8c-06941dba91d6",
  "kind": "lemma",
  "lexical_name": "image_preimage_eq_preimage_image_of_isPullback",
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
  "slug": "image-preimage-eq-preimage-image-of-ispullback--e9ed806f4fd47eac73c260b5",
  "source": {
    "blob": "e09b364f460e7c6653fce88e8bc03ab813f618f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 559,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantc2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9ed806f4fd47eac73c260b58da27857f71fce8329fbfb027f0feacf114ed0e7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variantc2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:519e7dc6-0272-8718-ed8c-06941dba91d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma image_preimage_eq_preimage_image_of_isPullback {X Y U V : Scheme.{u}}
    {f : X ⟶ Y} {f' : U ⟶ V} {iU : U ⟶ X} {iV : V ⟶ Y} [IsOpenImmersion iV] [IsOpenImmersion iU]
    (H : IsPullback f' iU iV f) (W : V.Opens) : iU ''ᵁ f' ⁻¹ᵁ W = f ⁻¹ᵁ iV ''ᵁ W := by
  ext x
  by_cases hx : x ∈ Set.range iU.base
  · obtain ⟨x, rfl⟩ := hx
    simp only [IsOpenMap.coe_functor_obj, TopologicalSpace.Opens.map_coe,
      iU.isOpenEmbedding.injective.mem_set_image, Set.mem_preimage, SetLike.mem_coe,
      ← Scheme.comp_base_apply, ← H.w]
    simp only [Scheme.comp_coeBase, TopCat.comp_app,
      iV.isOpenEmbedding.injective.mem_set_image, SetLike.mem_coe]
  · constructor
    · rintro ⟨x, hx, rfl⟩; cases hx ⟨x, rfl⟩
    · rintro ⟨y, hy, e : iV.base y = f.base x⟩
      obtain ⟨x, rfl⟩ := (IsOpenImmersion.range_pullback_snd_of_left iV f).ge ⟨y, e⟩
      rw [← H.isoPullback_inv_snd] at hx
      cases hx ⟨_, rfl⟩

/-- The universal property of open immersions:
For an open immersion `f : X ⟶ Z`, given any morphism of schemes `g : Y ⟶ Z` whose topological
image is contained in the image of `f`, we can lift this morphism to a unique `Y ⟶ X` that
commutes with these maps.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variantc2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantc2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09b364f460e7c6653fce88e8bc03ab813f618f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
