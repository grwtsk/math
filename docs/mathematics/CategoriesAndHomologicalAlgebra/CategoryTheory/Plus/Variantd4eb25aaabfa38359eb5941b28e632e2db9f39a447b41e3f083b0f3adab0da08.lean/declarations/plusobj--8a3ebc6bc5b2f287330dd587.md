# plusObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:178195f1e3a99693bdbb7bc3573a3c849fb43fe7e46ab3b1e58c9680aaa492c3",
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
  "slug": "plusobj--8a3ebc6bc5b2f287330dd587",
  "source": {
    "blob": "fafeb60fe7732457faa5fee9b1c62f986cc3b6c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 105,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a3ebc6bc5b2f287330dd5872dfb3648f486b660c57f9c1f516715b522cf135d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:178195f1e3a99693bdbb7bc3573a3c849fb43fe7e46ab3b1e58c9680aaa492c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–142.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fafeb60fe7732457faa5fee9b1c62f986cc3b6c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
