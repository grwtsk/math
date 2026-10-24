# Algebra_of_Mon_

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e9b04b9c0f4883e0f867c0e4ff3c3b323e586d2002cbb82802a8823cb59526c",
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
  "slug": "algebra-of-mon--1a4513b99bb0a91f76af833a",
  "source": {
    "blob": "2a1c0d440a5a0a77abf354c24a67064224230530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a4513b99bb0a91f76af833a6d45b02e1739c0299d7fefdc8593c44d1c48b85f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e9b04b9c0f4883e0f867c0e4ff3c3b323e586d2002cbb82802a8823cb59526c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Algebra_of_Mon_ (A : Mon_ (ModuleCat.{u} R)) : Algebra R A.X :=
  { A.one with
    map_zero' := A.one.map_zero
    map_one' := rfl
    map_mul' := fun x y => by
      have h := LinearMap.congr_fun A.one_mul.symm (x ⊗ₜ A.one y)
      rwa [MonoidalCategory.leftUnitor_hom_apply, ← A.one.map_smul] at h
    commutes' := fun r a => by
      dsimp
      have h₁ := LinearMap.congr_fun A.one_mul (r ⊗ₜ a)
      have h₂ := LinearMap.congr_fun A.mul_one (a ⊗ₜ r)
      exact h₁.trans h₂.symm
    smul_def' := fun r a => (LinearMap.congr_fun A.one_mul (r ⊗ₜ a)).symm }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a1c0d440a5a0a77abf354c24a67064224230530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
