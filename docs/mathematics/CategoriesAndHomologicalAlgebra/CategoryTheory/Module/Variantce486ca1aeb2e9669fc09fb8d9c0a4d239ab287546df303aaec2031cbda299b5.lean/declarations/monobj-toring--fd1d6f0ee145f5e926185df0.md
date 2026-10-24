# MonObj.toRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5cbab1eb149c7b0ec246bee33468fc0035eb398c754219fdf4320fd9bb92423",
  "kind": "def",
  "lexical_name": "MonObj.toRing",
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
  "slug": "monobj-toring--fd1d6f0ee145f5e926185df0",
  "source": {
    "blob": "5caf32116fa1612592b6f5ce76a914dfe0f1d301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 47,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantce486ca1aeb2e9669fc09fb8d9c0a4d239ab287546df303aaec2031cbda299b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd1d6f0ee145f5e926185df0bd33e6293f45012c1686e55f91844d566fef24a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantce486ca1aeb2e9669fc09fb8d9c0a4d239ab287546df303aaec2031cbda299b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5cbab1eb149c7b0ec246bee33468fc0035eb398c754219fdf4320fd9bb92423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MonObj.toRing (A : ModuleCat.{u} R) [MonObj A] : Ring A :=
  { (inferInstance : AddCommGroup A) with
    one := η[A] (1 : R)
    mul := fun x y => μ[A] (x ⊗ₜ y)
    one_mul := fun x => by
      convert! LinearMap.congr_fun (ModuleCat.hom_ext_iff.mp (one_mul A)) ((1 : R) ⊗ₜ x)
      rw [MonoidalCategory.leftUnitor_hom_apply, one_smul]
    mul_one := fun x => by
      convert! LinearMap.congr_fun (ModuleCat.hom_ext_iff.mp (mul_one A)) (x ⊗ₜ (1 : R))
      rw [MonoidalCategory.rightUnitor_hom_apply, one_smul]
    mul_assoc := fun x y z => by
      convert! LinearMap.congr_fun (ModuleCat.hom_ext_iff.mp (mul_assoc A)) (x ⊗ₜ y ⊗ₜ z)
    left_distrib := fun x y z => by
      convert! μ[A].hom.map_add (x ⊗ₜ y) (x ⊗ₜ z)
      rw [← TensorProduct.tmul_add]
      rfl
    right_distrib := fun x y z => by
      convert! μ[A].hom.map_add (x ⊗ₜ z) (y ⊗ₜ z)
      rw [← TensorProduct.add_tmul]
      rfl
    zero_mul := fun x => show μ[A] _ = 0 by
      rw [TensorProduct.zero_tmul, map_zero]
    mul_zero := fun x => show μ[A] _ = 0 by
      rw [TensorProduct.tmul_zero, map_zero] }

scoped[ModuleCat.MonModuleEquivalenceAlgebra] attribute [instance] MonObj.toRing

/-- The algebra structure on a monoid object.
This instance is dangerous as it doesn't round trip from a ring to a monoid object and then back
to a ring, since the `npow` field is lost in the middle. Therefore, it is scoped. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantce486ca1aeb2e9669fc09fb8d9c0a4d239ab287546df303aaec2031cbda299b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantce486ca1aeb2e9669fc09fb8d9c0a4d239ab287546df303aaec2031cbda299b5.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5caf32116fa1612592b6f5ce76a914dfe0f1d301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
