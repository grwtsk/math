# plusObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f84093a3d2310695e80ac253791e7ef17b619d80a3cc62c89d4c5a49f549702",
  "kind": "def",
  "lexical_name": "plusObj",
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
  "slug": "plusobj--a23c03c20f2797c9fa515c2a",
  "source": {
    "blob": "e024d48c9ccd1996869493ad494fcbcc3f9b447e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variant0b88d584353a39a0f9e259ab023b91fb096610589c31b7639ca59e4789a048dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a23c03c20f2797c9fa515c2a0d74dd72433669278ed9dab172b67f1b9948a570",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variant0b88d584353a39a0f9e259ab023b91fb096610589c31b7639ca59e4789a048dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f84093a3d2310695e80ac253791e7ef17b619d80a3cc62c89d4c5a49f549702`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def plusObj : Cᵒᵖ ⥤ D where
  obj X := colimit (J.diagram P X.unop)
  map f := colimMap (J.diagramPullback P f.unop) ≫ colimit.pre _ _
  map_id := by
    intro X
    refine colimit.hom_ext (fun S => ?_)
    dsimp
    simp only [diagramPullback_app, colimit.ι_pre, ι_colimMap_assoc, Category.comp_id]
    let e := S.unop.pullbackId
    dsimp only [Functor.op, pullback_obj]
    rw [← colimit.w _ e.inv.op, ← Category.assoc]
    convert Category.id_comp (colimit.ι (diagram J P (unop X)) S)
    refine Multiequalizer.hom_ext _ _ _ (fun I => ?_)
    dsimp
    simp only [Multiequalizer.lift_ι, Category.id_comp, Category.assoc]
    dsimp [Cover.Arrow.map, Cover.Arrow.base]
    cases I
    congr
    simp
  map_comp := by
    intro X Y Z f g
    refine colimit.hom_ext (fun S => ?_)
    dsimp
    simp only [diagramPullback_app, colimit.ι_pre_assoc, colimit.ι_pre, ι_colimMap_assoc,
      Category.assoc]
    let e := S.unop.pullbackComp g.unop f.unop
    dsimp only [Functor.op, pullback_obj]
    rw [← colimit.w _ e.inv.op, ← Category.assoc, ← Category.assoc]
    congr 1
    refine Multiequalizer.hom_ext _ _ _ (fun I => ?_)
    dsimp
    simp only [Multiequalizer.lift_ι, Category.assoc]
    cases I
    dsimp only [Cover.Arrow.base, Cover.Arrow.map]
    congr 2
    simp

/-- An auxiliary definition used in `plus` below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variant0b88d584353a39a0f9e259ab023b91fb096610589c31b7639ca59e4789a048dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variant0b88d584353a39a0f9e259ab023b91fb096610589c31b7639ca59e4789a048dd.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e024d48c9ccd1996869493ad494fcbcc3f9b447e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
