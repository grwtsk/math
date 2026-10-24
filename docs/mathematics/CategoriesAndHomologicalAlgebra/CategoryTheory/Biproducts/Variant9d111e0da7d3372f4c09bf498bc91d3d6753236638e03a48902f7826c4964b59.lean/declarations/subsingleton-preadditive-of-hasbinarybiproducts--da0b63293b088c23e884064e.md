# subsingleton_preadditive_of_hasBinaryBiproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b50428b873a41a2abb36a7a33e7e27c705bbeedefa4fef466a0d9fd2a32d77d0",
  "kind": "instance",
  "lexical_name": "subsingleton_preadditive_of_hasBinaryBiproducts",
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
  "slug": "subsingleton-preadditive-of-hasbinarybiproducts--da0b63293b088c23e884064e",
  "source": {
    "blob": "0476da510420c1d0d7e60046693a1b1761a98240",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 665,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9d111e0da7d3372f4c09bf498bc91d3d6753236638e03a48902f7826c4964b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da0b63293b088c23e884064e0f3bc77852c3a924c733c3a0984decafbb616755",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9d111e0da7d3372f4c09bf498bc91d3d6753236638e03a48902f7826c4964b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b50428b873a41a2abb36a7a33e7e27c705bbeedefa4fef466a0d9fd2a32d77d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 665–685.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subsingleton_preadditive_of_hasBinaryBiproducts {C : Type u} [Category.{v} C]
    [HasZeroMorphisms C] [HasBinaryBiproducts C] : Subsingleton (Preadditive C) where
  allEq := fun a b => by
    apply Preadditive.ext; funext X Y; apply AddCommGroup.ext; funext f g
    have h₁ := @biprod.add_eq_lift_id_desc _ _ a _ _ f g
      (by convert! (inferInstance : HasBinaryBiproduct X X); subsingleton)
    have h₂ := @biprod.add_eq_lift_id_desc _ _ b _ _ f g
      (by convert! (inferInstance : HasBinaryBiproduct X X); subsingleton)
    refine h₁.trans (Eq.trans ?_ h₂.symm)
    congr! 2 <;> subsingleton

end

section

variable [HasBinaryBiproducts.{v} C]
variable {X₁ X₂ Y₁ Y₂ : C}
variable (f₁₁ : X₁ ⟶ Y₁) (f₁₂ : X₁ ⟶ Y₂) (f₂₁ : X₂ ⟶ Y₁) (f₂₂ : X₂ ⟶ Y₂)

/-- The "matrix" morphism `X₁ ⊞ X₂ ⟶ Y₁ ⊞ Y₂` with specified components.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9d111e0da7d3372f4c09bf498bc91d3d6753236638e03a48902f7826c4964b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9d111e0da7d3372f4c09bf498bc91d3d6753236638e03a48902f7826c4964b59.lean#L665).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0476da510420c1d0d7e60046693a1b1761a98240` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
