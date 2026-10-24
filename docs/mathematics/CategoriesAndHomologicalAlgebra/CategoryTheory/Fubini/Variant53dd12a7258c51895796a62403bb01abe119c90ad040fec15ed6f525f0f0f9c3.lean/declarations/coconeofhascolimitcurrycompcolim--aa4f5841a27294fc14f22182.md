# coconeOfHasColimitCurryCompColim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be14df6691632190c6c258950a89799d1f0ed0f790e495971d542095028af3fe",
  "kind": "def",
  "lexical_name": "coconeOfHasColimitCurryCompColim",
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
  "slug": "coconeofhascolimitcurrycompcolim--aa4f5841a27294fc14f22182",
  "source": {
    "blob": "a6efcff2998a3fcc0db95052f7c0624f71424f56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 467,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant53dd12a7258c51895796a62403bb01abe119c90ad040fec15ed6f525f0f0f9c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa4f5841a27294fc14f22182ae7a20e9549dc2ab47fae28c2e216f92ad6b55ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant53dd12a7258c51895796a62403bb01abe119c90ad040fec15ed6f525f0f0f9c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be14df6691632190c6c258950a89799d1f0ed0f790e495971d542095028af3fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coconeOfHasColimitCurryCompColim : Cocone G :=
  let Q : DiagramOfCocones (curry.obj G) := .mkOfHasColimits _
  { pt := colimit (curry.obj G ⋙ colim),
    ι :=
    { app x := (Q.obj x.fst).ι.app x.snd ≫ colimit.ι (curry.obj G ⋙ colim) x.fst
      naturality {x y} := fun ⟨f₁, f₂⟩ ↦ by
        have := (Q.obj y.1).w f₂
        dsimp [Q] at this ⊢
        rw [← colimit.w (F := curry.obj G ⋙ colim) (f := f₁),
          Category.assoc, Category.comp_id, Prod.fac' (f₁, f₂),
          G.map_comp_assoc, ← curry_obj_map_app, ← curry_obj_obj_map]
        dsimp
        simp [ι_colimMap_assoc, curry_obj_map_app, reassoc_of% this] } }


set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The cocone `coconeOfHasColimitCurryCompColim` is in fact a limit cocone.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant53dd12a7258c51895796a62403bb01abe119c90ad040fec15ed6f525f0f0f9c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant53dd12a7258c51895796a62403bb01abe119c90ad040fec15ed6f525f0f0f9c3.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6efcff2998a3fcc0db95052f7c0624f71424f56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
