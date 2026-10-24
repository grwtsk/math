# uncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72ca73cd75081874a333d222e15ba2bc58f1049bcdb5d5b03188d9adca8d7359",
  "kind": "def",
  "lexical_name": "uncurry",
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
  "slug": "uncurry--5e8714c86a00efa2a8af3e1f",
  "source": {
    "blob": "e161c4c5c65174f3881765e178455bef08181ab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e8714c86a00efa2a8af3e1f1f08364b5b1ea8cece3964fb115b22479e352a70",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72ca73cd75081874a333d222e15ba2bc58f1049bcdb5d5b03188d9adca8d7359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uncurry : (C ⥤ D ⥤ E) ⥤ C × D ⥤ E
    where
  obj F :=
    { obj := fun X => (F.obj X.1).obj X.2
      map := fun {X} {Y} f => (F.map f.1).app X.2 ≫ (F.obj Y.1).map f.2
      map_comp := fun f g => by
        simp only [prod_comp_fst, prod_comp_snd, Functor.map_comp, NatTrans.comp_app,
          Category.assoc]
        slice_lhs 2 3 => rw [← NatTrans.naturality]
        rw [Category.assoc] }
  map T :=
    { app := fun X => (T.app X.1).app X.2
      naturality := fun X Y f => by
        simp only [prod_comp_fst, prod_comp_snd, Category.comp_id, Category.assoc, Functor.map_id,
          Functor.map_comp, NatTrans.id_app, NatTrans.comp_app]
        slice_lhs 2 3 => rw [NatTrans.naturality]
        slice_lhs 1 2 => rw [← NatTrans.comp_app, NatTrans.naturality, NatTrans.comp_app]
        rw [Category.assoc] }
#align category_theory.uncurry CategoryTheory.uncurry

/-- The object level part of the currying functor. (See `curry` for the functorial version.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e161c4c5c65174f3881765e178455bef08181ab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
