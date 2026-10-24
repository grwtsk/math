# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8e026daeb07d5f53d64eff5698ba1797f8433b9712f843954dd350ff6916b91",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--70bb9342721b00d3ac3dbece",
  "source": {
    "blob": "e852550af61634440115d1e966fa8382569cf57d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variant71fcdd2a663c803a61afb719e08018c14ec74ce3c81e44e251bc9970cf6dbc82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70bb9342721b00d3ac3dbece3881898b07b3f7f2653968ce03fb1d3992d24f7f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variant71fcdd2a663c803a61afb719e08018c14ec74ce3c81e44e251bc9970cf6dbc82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8e026daeb07d5f53d64eff5698ba1797f8433b9712f843954dd350ff6916b91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [P.IsMonoidalStable] : MonoidalCategoryStruct (WideSubcategory P) where
  tensorObj c c' := ⟨c.obj ⊗ c'.obj⟩
  whiskerLeft c _ _ f := ⟨c.obj ◁ f.1, P.whiskerLeft_mem _ _ f.2⟩
  whiskerRight f c' := ⟨f.1 ▷ c'.obj, P.whiskerRight_mem _ f.2 _⟩
  tensorUnit := ⟨𝟙_ C⟩
  associator _ _ _ :=
    isoMk (α_ _ _ _) (P.associator_hom_mem _ _ _) (P.associator_inv_mem _ _ _)
  leftUnitor _ :=
    isoMk (λ_ _) (P.leftUnitor_hom_mem _) (P.leftUnitor_inv_mem _)
  rightUnitor _ :=
    isoMk (ρ_ _) (P.rightUnitor_hom_mem _) (P.rightUnitor_inv_mem _)
  tensorHom f g := ⟨f.1 ⊗ₘ g.1, P.tensorHom_mem _ _ f.2 g.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variant71fcdd2a663c803a61afb719e08018c14ec74ce3c81e44e251bc9970cf6dbc82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variant71fcdd2a663c803a61afb719e08018c14ec74ce3c81e44e251bc9970cf6dbc82.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e852550af61634440115d1e966fa8382569cf57d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
