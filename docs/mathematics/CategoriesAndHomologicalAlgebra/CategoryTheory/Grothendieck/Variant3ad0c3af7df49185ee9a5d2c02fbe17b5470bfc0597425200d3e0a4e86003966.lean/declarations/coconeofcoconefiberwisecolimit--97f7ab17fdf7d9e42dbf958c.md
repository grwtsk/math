# coconeOfCoconeFiberwiseColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f4c74758bcb97c69e3a8fbd0517647b5ce47dd2bfa393f03a6312b7ab9a52c8",
  "kind": "def",
  "lexical_name": "coconeOfCoconeFiberwiseColimit",
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
  "slug": "coconeofcoconefiberwisecolimit--97f7ab17fdf7d9e42dbf958c",
  "source": {
    "blob": "1ea3eeef05b0c26383bec89cef39d2017bd00a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97f7ab17fdf7d9e42dbf958c1335bcef15d25ad2a21c3cf8553596f61e565326",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f4c74758bcb97c69e3a8fbd0517647b5ce47dd2bfa393f03a6312b7ab9a52c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coconeOfCoconeFiberwiseColimit (c : Cocone (fiberwiseColimit G)) : Cocone G where
  pt := c.pt
  ι := { app := fun X => colimit.ι (Grothendieck.ι F X.base ⋙ G) X.fiber ≫ c.ι.app X.base
         naturality := fun {X Y} ⟨f, g⟩ => by
          simp only [Functor.const_obj_obj, Functor.const_obj_map, Category.comp_id]
          rw [← Category.assoc, ← c.w f, ← Category.assoc]
          simp only [fiberwiseColimit_obj, fiberwiseColimit_map, ι_colimMap_assoc,
            Functor.comp_obj, Grothendieck.ι_obj, NatTrans.comp_app, whiskerRight_app,
            Functor.associator_hom_app, Category.comp_id, colimit.ι_pre]
          rw [← colimit.w _ g, ← Category.assoc, Functor.comp_map, ← G.map_comp]
          congr <;> simp }

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If a cocone `c` over a functor `G : Grothendieck F ⥤ H` is a colimit, then the induced cocone
`coconeOfFiberwiseCocone G c` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea3eeef05b0c26383bec89cef39d2017bd00a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
