# UniformOnFun.continuousSMul_induced_of_image_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e9852aada53b41541926f42227e28e26912493d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e6b335b-5cab-3c45-916c-6652ccd70c23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a45489a8-6687-e68b-a256-28e96e9965b5",
  "kind": "lemma",
  "lexical_name": "UniformOnFun.continuousSMul_induced_of_image_bounded",
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
  "slug": "uniformonfun-continuoussmul-induced-of-image-bounded--0e387f079794230bc41b9fa1",
  "source": {
    "blob": "3e9852aada53b41541926f42227e28e26912493d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/UniformConvergence/Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e387f079794230bc41b9fa1f70b097b88a7d79d0c96edfc753fb0817907be82",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformConvergence/Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a45489a8-6687-e68b-a256-28e96e9965b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UniformOnFun.continuousSMul_induced_of_image_bounded (φ : hom) (hφ : IsInducing (ofFun 𝔖 ∘ φ))
    (h : ∀ u : H, ∀ s ∈ 𝔖, Bornology.IsVonNBounded 𝕜 ((φ u : α → E) '' s)) :
    ContinuousSMul 𝕜 H := by
  obtain rfl := hφ.eq_induced; clear hφ
  simp only [induced_iInf, UniformOnFun.topologicalSpace_eq, induced_compose]
  refine continuousSMul_iInf fun s ↦ continuousSMul_iInf fun hs ↦ ?_
  letI : TopologicalSpace H :=
    .induced (UniformFun.ofFun ∘ s.restrict ∘ φ) (UniformFun.topologicalSpace s E)
  set φ' : H →ₗ[𝕜] (s → E) :=
    { toFun := s.restrict ∘ φ,
      map_smul' := fun c x ↦ by exact congr_arg s.restrict (map_smul φ c x),
      map_add' := fun x y ↦ by exact congr_arg s.restrict (map_add φ x y) }
  refine UniformFun.continuousSMul_induced_of_range_bounded 𝕜 s E H φ' ⟨rfl⟩ fun u ↦ ?_
  simpa only [Set.image_eq_range] using h u s hs

/-- Let `E` be a TVS, `𝔖 : Set (Set α)` and `H` a submodule of `α →ᵤ[𝔖] E`. If the image of any
`S ∈ 𝔖` by any `u ∈ H` is bounded (in the sense of `Bornology.IsVonNBounded`), then `H`,
equipped with the topology of `𝔖`-convergence, is a TVS.

If you have a hard time using this lemma, try the one above instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformConvergence/Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformConvergence/Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e9852aada53b41541926f42227e28e26912493d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
