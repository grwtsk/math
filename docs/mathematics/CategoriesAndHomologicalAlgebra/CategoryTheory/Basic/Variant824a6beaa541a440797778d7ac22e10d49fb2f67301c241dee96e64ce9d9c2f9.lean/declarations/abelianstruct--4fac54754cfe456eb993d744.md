# AbelianStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f6cb6a3bd25b0a5a48ce4198fea6384b94bda33e8c7a8f2def9cef74905a2c4",
  "kind": "structure",
  "lexical_name": "AbelianStruct",
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
  "slug": "abelianstruct--4fac54754cfe456eb993d744",
  "source": {
    "blob": "7f9b9fa1702bacda407e8a5d126090d46cfdac41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 832,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fac54754cfe456eb993d744a6a4ab53456b4004d3ca93db47cf6da0c7c5c04d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f6cb6a3bd25b0a5a48ce4198fea6384b94bda33e8c7a8f2def9cef74905a2c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 832–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AbelianStruct {X Y : C} (f : X ⟶ Y) where
  /-- a limit kernel fork of `f` -/
  kernelFork : KernelFork f
  /-- the kernel fork is a limit -/
  isLimitKernelFork : IsLimit kernelFork
  /-- a colimit cokernel cofork of `f` -/
  cokernelCofork : CokernelCofork f
  /-- the cokernel cofork is a a limit -/
  isColimitCokernelCofork : IsColimit cokernelCofork
  /-- the image of `f` -/
  image : C
  /-- the projection to the image -/
  imageπ : X ⟶ image
  ι_imageπ : kernelFork.ι ≫ imageπ = 0 := by cat_disch
  /-- the image is a cokernel -/
  imageIsCokernel : IsColimit (CokernelCofork.ofπ _ ι_imageπ)
  /-- the inclusion of the image -/
  imageι : image ⟶ Y
  imageι_π : imageι ≫ cokernelCofork.π = 0 := by cat_disch
  /-- the image is a kernel -/
  imageIsKernel : IsLimit (KernelFork.ofι _ imageι_π)
  fac : imageπ ≫ imageι = f := by cat_disch

namespace AbelianStruct

attribute [reassoc (attr := simp)] ι_imageπ imageι_π fac

end AbelianStruct

/-- Constructor for abelian categories. We assume that the category `C` is
preadditive, has finite products, and that any morphism `f : X ⟶ Y` has
a kernel `i : K ⟶ X`, a cokernel `p : Y ⟶ Q` such that `f` factors as `f = π ≫ ι`
where `π : X ⟶ I` is a cokernel of `i` and `ι : I ⟶ Y` is a kernel of `p`.
This assumption is packaged in a structure `AbelianStruct f`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean#L832).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9b9fa1702bacda407e8a5d126090d46cfdac41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
