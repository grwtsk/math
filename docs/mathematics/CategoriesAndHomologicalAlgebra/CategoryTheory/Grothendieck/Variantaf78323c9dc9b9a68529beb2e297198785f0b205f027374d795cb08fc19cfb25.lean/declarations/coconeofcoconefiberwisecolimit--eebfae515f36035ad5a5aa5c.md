# coconeOfCoconeFiberwiseColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42a8d85d51a496a052ba9956366d06bd00bac05224882be7c53391d4a6d54c85",
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
  "slug": "coconeofcoconefiberwisecolimit--eebfae515f36035ad5a5aa5c",
  "source": {
    "blob": "2a9c3d1cc8e43c73a041215d8c863b7149ca5c6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 140,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eebfae515f36035ad5a5aa5cb542b2891bc372c04aabe0635f04a30c1ce7edb7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42a8d85d51a496a052ba9956366d06bd00bac05224882be7c53391d4a6d54c85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–153.

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

/-- If a cocone `c` over a functor `G : Grothendieck F ⥤ H` is a colimit, than the induced cocone
`coconeOfFiberwiseCocone G c` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9c3d1cc8e43c73a041215d8c863b7149ca5c6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
