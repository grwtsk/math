# isCardinalFiltered_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b36b959124b4eee2a83c40fd2a498ecb0bb1cc3158d8bbe62bdb30e87b9b1fbd",
  "kind": "instance",
  "lexical_name": "isCardinalFiltered_prod",
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
  "slug": "iscardinalfiltered-prod--33995cc86fa4b9437e841fcb",
  "source": {
    "blob": "f4c848d03449cb7400ec9eb4ac29ff3639a7d061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 243,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33995cc86fa4b9437e841fcb1c3bfee5faa6a6fcee56e8c3fdcece87661805d9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b36b959124b4eee2a83c40fd2a498ecb0bb1cc3158d8bbe62bdb30e87b9b1fbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isCardinalFiltered_prod (J₁ : Type u) (J₂ : Type u')
    [Category.{v} J₁] [Category.{v'} J₂] (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [IsCardinalFiltered J₁ κ] [IsCardinalFiltered J₂ κ] :
    IsCardinalFiltered (J₁ × J₂) κ where
  nonempty_cocone F hC := ⟨by
    let c₁ := cocone (F ⋙ Prod.fst _ _) hC
    let c₂ := cocone (F ⋙ Prod.snd _ _) hC
    exact
      { pt := (c₁.pt, c₂.pt)
        ι.app i := (c₁.ι.app i, c₂.ι.app i)
        ι.naturality {i j} f := by
          ext
          · simpa using c₁.w f
          · simpa using c₂.w f }⟩

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c848d03449cb7400ec9eb4ac29ff3639a7d061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
