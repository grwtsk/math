# LaxMonoidalFunctor.associativity_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:828aa33c-eb68-484f-17b3-e1717ff40538",
  "kind": "theorem",
  "lexical_name": "LaxMonoidalFunctor.associativity_inv",
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
  "slug": "laxmonoidalfunctor-associativity-inv--f7dbbce0b55dd3819dc17aec",
  "source": {
    "blob": "411c31fecbf3bc3d24ea318eaa0497586c23868d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7dbbce0b55dd3819dc17aec470b7903b6662d73648f6c9fd56cb156067cf10d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:828aa33c-eb68-484f-17b3-e1717ff40538`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LaxMonoidalFunctor.associativity_inv (F : LaxMonoidalFunctor C D) (X Y Z : C) :
    (𝟙 (F.obj X) ⊗ F.μ Y Z) ≫ F.μ X (Y ⊗ Z) ≫ F.map (α_ X Y Z).inv =
      (α_ (F.obj X) (F.obj Y) (F.obj Z)).inv ≫ (F.μ X Y ⊗ 𝟙 (F.obj Z)) ≫ F.μ (X ⊗ Y) Z := by
  rw [Iso.eq_inv_comp, ← F.associativity_assoc, ← F.toFunctor.map_comp, Iso.hom_inv_id,
    F.toFunctor.map_id, comp_id]
#align category_theory.lax_monoidal_functor.associativity_inv CategoryTheory.LaxMonoidalFunctor.associativity_inv

end

/--
A monoidal functor is a lax monoidal functor for which the tensorator and unitor as isomorphisms.

See <https://stacks.math.columbia.edu/tag/0FFL>.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `411c31fecbf3bc3d24ea318eaa0497586c23868d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
