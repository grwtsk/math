# Algebra_of_Mon_

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b40f73ce2c7ab0563db3ce4e8fcf3c807beec297bfb056ff5e314b028bf787a9",
  "kind": "instance",
  "lexical_name": "Algebra_of_Mon_",
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
  "slug": "algebra-of-mon--5ecf840b651c8489739a42ab",
  "source": {
    "blob": "8f1f3ab63086a036d2504cf6d14bfe370049f1c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant64ec30dd3dc847c410c62ebe35999a860f1be97085c8281252005371fc8cd4bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ecf840b651c8489739a42ab791a6485e5a4f802d2608d23b1eacbd8bd37b617",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant64ec30dd3dc847c410c62ebe35999a860f1be97085c8281252005371fc8cd4bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b40f73ce2c7ab0563db3ce4e8fcf3c807beec297bfb056ff5e314b028bf787a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance Algebra_of_Mon_ (A : ModuleCat.{u} R) [MonObj A] : Algebra R A where
  algebraMap :=
  { η[A].hom with
    map_zero' := η[A].hom.map_zero
    map_one' := rfl
    map_mul' := fun x y => by
      have h := LinearMap.congr_fun (ModuleCat.hom_ext_iff.mp (one_mul A).symm) (x ⊗ₜ η[A] y)
      rwa [MonoidalCategory.leftUnitor_hom_apply, ← η[A].hom.map_smul] at h }
  commutes' := fun r a => by
    dsimp
    have h₁ := LinearMap.congr_fun (ModuleCat.hom_ext_iff.mp (one_mul A)) (r ⊗ₜ a)
    have h₂ := LinearMap.congr_fun (ModuleCat.hom_ext_iff.mp (mul_one A)) (a ⊗ₜ r)
    exact h₁.trans h₂.symm
  smul_def' := fun r a =>
    (LinearMap.congr_fun (ModuleCat.hom_ext_iff.mp (one_mul A)) (r ⊗ₜ a)).symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant64ec30dd3dc847c410c62ebe35999a860f1be97085c8281252005371fc8cd4bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant64ec30dd3dc847c410c62ebe35999a860f1be97085c8281252005371fc8cd4bf.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f1f3ab63086a036d2504cf6d14bfe370049f1c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
