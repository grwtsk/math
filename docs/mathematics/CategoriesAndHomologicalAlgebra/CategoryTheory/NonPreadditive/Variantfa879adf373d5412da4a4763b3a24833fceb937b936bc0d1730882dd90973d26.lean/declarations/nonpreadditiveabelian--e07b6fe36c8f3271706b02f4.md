# NonPreadditiveAbelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a08b621d3aefca8977518af7d89bd09e6a2a099f5aba6b08634b73fa1f281b20",
  "kind": "class",
  "lexical_name": "NonPreadditiveAbelian",
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
  "slug": "nonpreadditiveabelian--e07b6fe36c8f3271706b02f4",
  "source": {
    "blob": "74be5eb68b8835009cc44c8eb3f4a2f7b139c4c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantfa879adf373d5412da4a4763b3a24833fceb937b936bc0d1730882dd90973d26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e07b6fe36c8f3271706b02f43d00ee2fd0ae86242531b1e1ae8e34fa4c972854",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantfa879adf373d5412da4a4763b3a24833fceb937b936bc0d1730882dd90973d26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a08b621d3aefca8977518af7d89bd09e6a2a099f5aba6b08634b73fa1f281b20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class NonPreadditiveAbelian extends HasZeroMorphisms C, IsNormalMonoCategory C,
    IsNormalEpiCategory C where
  [has_zero_object : HasZeroObject C]
  [has_kernels : HasKernels C]
  [has_cokernels : HasCokernels C]
  [has_finite_products : HasFiniteProducts C]
  [has_finite_coproducts : HasFiniteCoproducts C]

attribute [instance] NonPreadditiveAbelian.has_zero_object

attribute [instance] NonPreadditiveAbelian.has_kernels

attribute [instance] NonPreadditiveAbelian.has_cokernels

attribute [instance] NonPreadditiveAbelian.has_finite_products

attribute [instance] NonPreadditiveAbelian.has_finite_coproducts

end

end CategoryTheory

open CategoryTheory

universe v u

variable {C : Type u} [Category.{v} C] [NonPreadditiveAbelian C]

namespace CategoryTheory.NonPreadditiveAbelian

section Factor

variable {P Q : C} (f : P ⟶ Q)

/-- The map `p : P ⟶ image f` is an epimorphism -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantfa879adf373d5412da4a4763b3a24833fceb937b936bc0d1730882dd90973d26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantfa879adf373d5412da4a4763b3a24833fceb937b936bc0d1730882dd90973d26.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74be5eb68b8835009cc44c8eb3f4a2f7b139c4c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
