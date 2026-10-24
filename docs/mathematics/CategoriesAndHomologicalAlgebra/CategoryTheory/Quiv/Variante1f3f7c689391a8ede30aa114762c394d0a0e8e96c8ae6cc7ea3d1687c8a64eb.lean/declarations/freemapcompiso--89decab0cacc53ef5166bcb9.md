# freeMapCompIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a646bc5d8e7604728f90983f26475ddd69d2232d137b38960d0a82ec351f2c2",
  "kind": "def",
  "lexical_name": "freeMapCompIso",
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
  "slug": "freemapcompiso--89decab0cacc53ef5166bcb9",
  "source": {
    "blob": "a425aafc567a31cd91731b19394ee0e071dfca7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variante1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89decab0cacc53ef5166bcb9bfc8a9f7097202d50bbeb723a6f7fcf1a3d24412",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variante1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a646bc5d8e7604728f90983f26475ddd69d2232d137b38960d0a82ec351f2c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def freeMapCompIso {V₁ : Type u₁} {V₂ : Type u₂} {V₃ : Type u₃}
    [Quiver.{v₁} V₁] [Quiver.{v₂} V₂] [Quiver.{v₃} V₃] (F : V₁ ⥤q V₂) (G : V₂ ⥤q V₃) :
    freeMap (F ⋙q G) ≅ freeMap F ⋙ freeMap G :=
  NatIso.ofComponents (fun _ ↦ Iso.refl _) (fun f ↦ by
    dsimp
    simp only [Category.comp_id, Category.id_comp, Prefunctor.mapPath_comp_apply])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variante1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variante1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a425aafc567a31cd91731b19394ee0e071dfca7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
