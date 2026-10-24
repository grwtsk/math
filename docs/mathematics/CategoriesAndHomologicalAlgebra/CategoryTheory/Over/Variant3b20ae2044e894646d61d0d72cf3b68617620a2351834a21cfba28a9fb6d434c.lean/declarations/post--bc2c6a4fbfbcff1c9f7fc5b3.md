# post

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9af73466569cb78f777f93b7fc60d3deb3746c952bc853634f8b049554b84456",
  "kind": "def",
  "lexical_name": "post",
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
  "slug": "post--bc2c6a4fbfbcff1c9f7fc5b3",
  "source": {
    "blob": "82848c85450307796cc452080aed7f7cf96fb646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 299,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant3b20ae2044e894646d61d0d72cf3b68617620a2351834a21cfba28a9fb6d434c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc2c6a4fbfbcff1c9f7fc5b3c66c3a0608734923c4f621e8afb0cde3df4d3ec7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant3b20ae2044e894646d61d0d72cf3b68617620a2351834a21cfba28a9fb6d434c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9af73466569cb78f777f93b7fc60d3deb3746c952bc853634f8b049554b84456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def post (F : T ⥤ D) : Over X ⥤ Over (F.obj X)
    where
  obj Y := mk <| F.map Y.hom
  map f := Over.homMk (F.map f.left) (by aesop_cat_nonterminal; erw [← F.map_comp, w])
#align category_theory.over.post CategoryTheory.Over.post

end

end Over

namespace CostructuredArrow

variable {D : Type u₂} [Category.{v₂} D]

/-- Reinterpreting an `F`-costructured arrow `F.obj d ⟶ X` as an arrow over `X` induces a functor
    `CostructuredArrow F X ⥤ Over X`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant3b20ae2044e894646d61d0d72cf3b68617620a2351834a21cfba28a9fb6d434c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant3b20ae2044e894646d61d0d72cf3b68617620a2351834a21cfba28a9fb6d434c.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82848c85450307796cc452080aed7f7cf96fb646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
