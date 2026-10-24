# colim.map_mono'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ef06ea469b077cb29b2783324dcd675164e9f08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3768c7bd-3e46-39dc-50c1-c2ee5efec6f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bcde70b-9c0e-8ab3-114b-be8e98ecdf4d",
  "kind": "lemma",
  "lexical_name": "colim.map_mono'",
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
  "slug": "colim-map-mono--ae922e4f0f91be005c71f40f",
  "source": {
    "blob": "2ef06ea469b077cb29b2783324dcd675164e9f08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae922e4f0f91be005c71f40fed66b147c74c385e2b79b98d47665500ff2ace3d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bcde70b-9c0e-8ab3-114b-be8e98ecdf4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma colim.map_mono' [HasColimitsOfShape J C]
    [(colim : (J ⥤ C) ⥤ C).PreservesMonomorphisms]
    {X₁ X₂ : J ⥤ C} (φ : X₁ ⟶ X₂) [Mono φ]
    {c₁ : Cocone X₁} (hc₁ : IsColimit c₁) {c₂ : Cocone X₂} (hc₂ : IsColimit c₂)
    (f : c₁.pt ⟶ c₂.pt) (hf : ∀ j, c₁.ι.app j ≫ f = φ.app j ≫ c₂.ι.app j) : Mono f := by
  refine ((MorphismProperty.monomorphisms C).arrow_mk_iso_iff ?_).2
    (inferInstanceAs (Mono (colim.map φ)))
  exact Arrow.isoMk
    (IsColimit.coconePointUniqueUpToIso hc₁ (colimit.isColimit _))
    (IsColimit.coconePointUniqueUpToIso hc₂ (colimit.isColimit _))
    (hc₁.hom_ext (fun j ↦ by
      dsimp
      rw [IsColimit.comp_coconePointUniqueUpToIso_hom_assoc,
        colimit.cocone_ι, ι_colimMap, reassoc_of% (hf j),
        IsColimit.comp_coconePointUniqueUpToIso_hom, colimit.cocone_ι]))

/-- Assume that `φ : X₁ ⟶ X₂` is a natural transformation in `J ⥤ C` which
consists of epimorphisms, then if `f : c₁.pt ⟶ c₂.pt` is a morphism
between the points of cocones `c₁` and `c₂` for `X₁` and `X₂`, in such
a way that `c₂` is colimit and `f` is compatible with `φ`, then `f` is an epimorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef06ea469b077cb29b2783324dcd675164e9f08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
