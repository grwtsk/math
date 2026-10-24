# PrelaxFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a68a3de69d2ccfec4a78d84d8c08f95325cdcfd5fc132b54bea077158562404b",
  "kind": "structure",
  "lexical_name": "PrelaxFunctor",
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
  "slug": "prelaxfunctor--b388ca5c1effa806792da259",
  "source": {
    "blob": "c59c49d4b2f513472dee46007d09bdf5ecca665f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variantc6b8d510d7c15759d807106861361eeea790be493fa1447459d3d123ee0fbde0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b388ca5c1effa806792da259e5a0db77181b9d7fb104c6db190f512e3361507d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variantc6b8d510d7c15759d807106861361eeea790be493fa1447459d3d123ee0fbde0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a68a3de69d2ccfec4a78d84d8c08f95325cdcfd5fc132b54bea077158562404b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrelaxFunctor (B : Type u₁) [Bicategory.{w₁, v₁} B] (C : Type u₂) [Bicategory.{w₂, v₂} C]
    extends PrelaxFunctorStruct B C where
  /-- Prelax functors preserve identity 2-morphisms. -/
  map₂_id : ∀ {a b : B} (f : a ⟶ b), map₂ (𝟙 f) = 𝟙 (map f) := by aesop -- TODO: why not cat_disch?
  /-- Prelax functors preserve compositions of 2-morphisms. -/
  map₂_comp : ∀ {a b : B} {f g h : a ⟶ b} (η : f ⟶ g) (θ : g ⟶ h),
      map₂ (η ≫ θ) = map₂ η ≫ map₂ θ := by cat_disch

namespace PrelaxFunctor

initialize_simps_projections PrelaxFunctor (+toPrelaxFunctorStruct, -obj, -map, -map₂)

attribute [simp] map₂_id
attribute [reassoc] map₂_comp
attribute [simp] map₂_comp

/-- The underlying lax prefunctor. -/
add_decl_doc PrelaxFunctor.toPrelaxFunctorStruct

variable {B : Type u₁} [Bicategory.{w₁, v₁} B] {C : Type u₂} [Bicategory.{w₂, v₂} C]
variable {D : Type u₃} [Bicategory.{w₃, v₃} D]

/-- Construct a prelax functor from a map on objects, and functors between the corresponding
hom types. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variantc6b8d510d7c15759d807106861361eeea790be493fa1447459d3d123ee0fbde0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variantc6b8d510d7c15759d807106861361eeea790be493fa1447459d3d123ee0fbde0.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c59c49d4b2f513472dee46007d09bdf5ecca665f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
