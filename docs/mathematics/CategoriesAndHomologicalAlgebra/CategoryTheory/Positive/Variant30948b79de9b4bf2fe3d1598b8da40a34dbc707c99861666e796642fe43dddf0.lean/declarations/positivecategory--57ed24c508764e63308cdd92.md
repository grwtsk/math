# PositiveCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71d3280fbd9a9380a611ed7f7da6490bc3db5e23ce17a8fd91fd55243884ed52",
  "kind": "class",
  "lexical_name": "PositiveCategory",
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
  "slug": "positivecategory--57ed24c508764e63308cdd92",
  "source": {
    "blob": "4d3f0c8a13b106d166593170bfbd95be2d8004a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Positive/Variant30948b79de9b4bf2fe3d1598b8da40a34dbc707c99861666e796642fe43dddf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57ed24c508764e63308cdd9261d846074c33049c3d1af891be2e18574611cf7b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Positive/Variant30948b79de9b4bf2fe3d1598b8da40a34dbc707c99861666e796642fe43dddf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71d3280fbd9a9380a611ed7f7da6490bc3db5e23ce17a8fd91fd55243884ed52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class PositiveCategory (C : Type u) [Category.{v} C] [MonoidalCategory C] extends
    MarkovCategory C where
  /-- Given morphisms `f : X ⟶ Y` and `g : Y ⟶ Z`, if their composition is deterministic, then
  process `f`, copy and then process `g` equals copy and process `f` and `g` independently. -/
  copy_comp_natural {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [h : Deterministic (f ≫ g)] :
      f ≫ Δ ≫ (g ⊗ₘ 𝟙 Y) = Δ ≫ (f ≫ g ⊗ₘ f)

variable {C : Type u} [Category.{v} C] [MonoidalCategory C]

namespace PositiveCategory

variable [PositiveCategory C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Positive/Variant30948b79de9b4bf2fe3d1598b8da40a34dbc707c99861666e796642fe43dddf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Positive/Variant30948b79de9b4bf2fe3d1598b8da40a34dbc707c99861666e796642fe43dddf0.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d3f0c8a13b106d166593170bfbd95be2d8004a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
