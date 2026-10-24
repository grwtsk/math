# epi_pullback_of_epi_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ded40661da3bfe820fc4bcd0dca019c7ff9c404cfc45062ea83b87eaef5f1b56",
  "kind": "instance",
  "lexical_name": "epi_pullback_of_epi_f",
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
  "slug": "epi-pullback-of-epi-f--0c43d9af2e3ac6ddcdbb6395",
  "source": {
    "blob": "7f9b9fa1702bacda407e8a5d126090d46cfdac41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 658,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c43d9af2e3ac6ddcdbb63951005834db5e46eef0cfedab838d49c196f6252a3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ded40661da3bfe820fc4bcd0dca019c7ff9c404cfc45062ea83b87eaef5f1b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 658–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance epi_pullback_of_epi_f [Epi f] : Epi (pullback.snd f g) :=
  -- It will suffice to consider some morphism e : Y ⟶ R such that
    -- pullback.snd f g ≫ e = 0 and show that e = 0.
    epi_of_cancel_zero _ fun {R} e h => by
    -- Consider the morphism u := (0, e) : X ⊞ Y⟶ R.
    let u := biprod.desc (0 : X ⟶ R) e
    -- The composite pullback f g ⟶ X ⊞ Y ⟶ R is zero by assumption.
    have hu : PullbackToBiproductIsKernel.pullbackToBiproduct f g ≫ u = 0 := by simpa [u]
    -- pullbackToBiproduct f g is a kernel of (f, -g), so (f, -g) is a
    -- cokernel of pullbackToBiproduct f g
    have :=
      epiIsCokernelOfKernel _
        (PullbackToBiproductIsKernel.isLimitPullbackToBiproduct f g)
    -- We use this fact to obtain a factorization of u through (f, -g) via some d : Z ⟶ R.
    obtain ⟨d, hd⟩ := CokernelCofork.IsColimit.desc' this u hu
    dsimp at d; dsimp [u] at hd
    -- But then f ≫ d = 0:
    have : f ≫ d = 0 := calc
      f ≫ d = (biprod.inl ≫ biprod.desc f (-g)) ≫ d := by rw [biprod.inl_desc]
      _ = biprod.inl ≫ u := by rw [Category.assoc, hd]
      _ = 0 := biprod.inl_desc _ _
    -- But f is an epimorphism, so d = 0...
    have : d = 0 := (cancel_epi f).1 (by simpa)
    -- ...or, in other words, e = 0.
    calc
      e = biprod.inr ≫ biprod.desc (0 : X ⟶ R) e := by rw [biprod.inr_desc]
      _ = biprod.inr ≫ biprod.desc f (-g) ≫ d := by rw [← hd]
      _ = biprod.inr ≫ biprod.desc f (-g) ≫ 0 := by rw [this]
      _ = (biprod.inr ≫ biprod.desc f (-g)) ≫ 0 := by rw [← Category.assoc]
      _ = 0 := HasZeroMorphisms.comp_zero _ _

/-- In an abelian category, the pullback of an epimorphism is an epimorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean#L658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9b9fa1702bacda407e8a5d126090d46cfdac41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
