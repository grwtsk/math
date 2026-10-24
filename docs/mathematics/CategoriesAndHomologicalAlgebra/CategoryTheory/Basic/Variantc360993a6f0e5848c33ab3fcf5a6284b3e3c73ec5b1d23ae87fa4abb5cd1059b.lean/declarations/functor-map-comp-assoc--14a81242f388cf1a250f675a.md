# Functor.map_comp_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97456d16-506f-bdad-2e58-0e3c0c136067",
  "kind": "lemma",
  "lexical_name": "Functor.map_comp_assoc",
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
  "slug": "functor-map-comp-assoc--14a81242f388cf1a250f675a",
  "source": {
    "blob": "8dc21ef7ee4cff1ba3334f64a71e6c31f095668f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14a81242f388cf1a250f675a48e14200524608b90dc4494562f2cabb20ed86aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97456d16-506f-bdad-2e58-0e3c0c136067`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Functor.map_comp_assoc {C : Type u₁} [Category C] {D : Type u₂}
  [Category D] (F : C ⥤ D) {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z)
  {W : D} (h : F.obj Z ⟶ W) :
    (F.map (f ≫ g)) ≫ h = F.map f ≫ F.map g ≫ h := by
  rw [F.map_comp, Category.assoc]
#align category_theory.functor.map_comp_assoc CategoryTheory.Functor.map_comp_assoc

namespace Functor

section

variable (C : Type u₁) [Category.{v₁} C]

initialize_simps_projections Functor

-- We don't use `@[simps]` here because we want `C` implicit for the simp lemmas.
/-- `𝟭 C` is the identity functor on a category `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc21ef7ee4cff1ba3334f64a71e6c31f095668f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
