# rightDerivedZeroToSelfApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc43476a7dbe96b31d383a9590d41fac9c975837695f912d58b744b5ef3f0523",
  "kind": "def",
  "lexical_name": "rightDerivedZeroToSelfApp",
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
  "slug": "rightderivedzerotoselfapp--76b5055c1f3f16d14c41fb13",
  "source": {
    "blob": "1886f7421ca4de2239a0ea86b677d40f46b1aa31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76b5055c1f3f16d14c41fb13ca4da69fdfac0044937273ac59b65fff001995fd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc43476a7dbe96b31d383a9590d41fac9c975837695f912d58b744b5ef3f0523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightDerivedZeroToSelfApp [EnoughInjectives C] [PreservesFiniteLimits F] {X : C}
    (P : InjectiveResolution X) : (F.rightDerived 0).obj X ⟶ F.obj X :=
  (rightDerivedObjIso F 0 P).hom ≫
    (homologyIsoKernelDesc _ _ _).hom ≫
      kernel.map _ (((F.mapHomologicalComplex (ComplexShape.up ℕ)).obj P.cocomplex).dFrom 0)
      (cokernel.desc _ (𝟙 _) (by simp)) (𝟙 _)
          (by
            -- Porting note: was ext; simp
            ext
            dsimp
            simp) ≫
        -- Porting note: isIso_kernel_lift_of_exact_of_mono is no longer allowed as an
        -- instance for reasons I am not privy to
        have : IsIso <| kernel.lift _ _ (exact_of_map_injectiveResolution F P).w :=
          isIso_kernel_lift_of_exact_of_mono _ _ (exact_of_map_injectiveResolution F P)
        (asIso (kernel.lift _ _ (exact_of_map_injectiveResolution F P).w)).inv
#align category_theory.abelian.functor.right_derived_zero_to_self_app CategoryTheory.Abelian.Functor.rightDerivedZeroToSelfApp

/-- Given `P : InjectiveResolution X`, a morphism `F.obj X ⟶ (F.rightDerived 0).obj X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1886f7421ca4de2239a0ea86b677d40f46b1aa31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
