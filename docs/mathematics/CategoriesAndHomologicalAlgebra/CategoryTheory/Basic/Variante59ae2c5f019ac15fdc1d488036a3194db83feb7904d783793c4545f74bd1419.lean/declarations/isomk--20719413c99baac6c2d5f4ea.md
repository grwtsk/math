# isoMk₄

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14af4c7182dc5724d9c2d8e233d71b7f46784860049a47e90c282c22ee2bcb9b",
  "kind": "def",
  "lexical_name": "isoMk₄",
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
  "slug": "isomk--20719413c99baac6c2d5f4ea",
  "source": {
    "blob": "980e2922b391c692ffafb4e4153c3d2fcd88d5c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 865,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante59ae2c5f019ac15fdc1d488036a3194db83feb7904d783793c4545f74bd1419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20719413c99baac6c2d5f4ea1e1f44b7cb6ab5b933de01672ffd467d3ec60047",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante59ae2c5f019ac15fdc1d488036a3194db83feb7904d783793c4545f74bd1419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14af4c7182dc5724d9c2d8e233d71b7f46784860049a47e90c282c22ee2bcb9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 865–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoMk₄ {f g : ComposableArrows C 4}
    (app₀ : f.obj' 0 ≅ g.obj' 0) (app₁ : f.obj' 1 ≅ g.obj' 1) (app₂ : f.obj' 2 ≅ g.obj' 2)
    (app₃ : f.obj' 3 ≅ g.obj' 3) (app₄ : f.obj' 4 ≅ g.obj' 4)
    (w₀ : f.map' 0 1 ≫ app₁.hom = app₀.hom ≫ g.map' 0 1)
    (w₁ : f.map' 1 2 ≫ app₂.hom = app₁.hom ≫ g.map' 1 2)
    (w₂ : f.map' 2 3 ≫ app₃.hom = app₂.hom ≫ g.map' 2 3)
    (w₃ : f.map' 3 4 ≫ app₄.hom = app₃.hom ≫ g.map' 3 4) :
    f ≅ g where
  hom := homMk₄ app₀.hom app₁.hom app₂.hom app₃.hom app₄.hom w₀ w₁ w₂ w₃
  inv := homMk₄ app₀.inv app₁.inv app₂.inv app₃.inv app₄.inv
    (by rw [map'_inv_eq_inv_map' (by valid) app₀ app₁ w₀])
    (by rw [map'_inv_eq_inv_map' (by valid) app₁ app₂ w₁])
    (by rw [map'_inv_eq_inv_map' (by valid) app₂ app₃ w₂])
    (by rw [map'_inv_eq_inv_map' (by valid) app₃ app₄ w₃])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante59ae2c5f019ac15fdc1d488036a3194db83feb7904d783793c4545f74bd1419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante59ae2c5f019ac15fdc1d488036a3194db83feb7904d783793c4545f74bd1419.lean#L865).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `980e2922b391c692ffafb4e4153c3d2fcd88d5c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
