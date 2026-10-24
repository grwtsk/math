# concreteCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:020cc6931bf51c91d91bbdcc27e167772778812e7a50538c4bcfa63a211e19bf",
  "kind": "instance",
  "lexical_name": "concreteCategory",
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
  "slug": "concretecategory--1e1d757f714f0e8de39bd82f",
  "source": {
    "blob": "8ea14405ef5581b666aceff90c32a22eef88aad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e1d757f714f0e8de39bd82f3e8e1a856a91d046bd54317f58c0107c475a5cb6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:020cc6931bf51c91d91bbdcc27e167772778812e7a50538c4bcfa63a211e19bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance concreteCategory : ConcreteCategory.{u} (Bundled c)
    where
  forget :=
    { obj := fun X => X
      map := @fun X Y f => 𝒞.toFun X.str Y.str f
      map_id := fun X => 𝒞.id_toFun X.str
      map_comp := fun f g => by dsimp; erw [𝒞.comp_toFun];rfl }
  forget_faithful := { map_injective := by (intros; apply 𝒞.hom_ext) }
#align category_theory.bundled_hom.concrete_category CategoryTheory.BundledHom.concreteCategory

variable {hom}

attribute [local instance] ConcreteCategory.funLike

/-- A version of `HasForget₂.mk'` for categories defined using `@BundledHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ea14405ef5581b666aceff90c32a22eef88aad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
