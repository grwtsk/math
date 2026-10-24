# rightDerivedZeroToSelfApp_comp_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2d8c85c-465a-fd08-5d61-6b7be2a1cc95",
  "kind": "theorem",
  "lexical_name": "rightDerivedZeroToSelfApp_comp_inv",
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
  "slug": "rightderivedzerotoselfapp-comp-inv--ea6d0c776e5188fba49704e4",
  "source": {
    "blob": "1886f7421ca4de2239a0ea86b677d40f46b1aa31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 248,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea6d0c776e5188fba49704e422d29299277de697f19729a94efd8765dc736769",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2d8c85c-465a-fd08-5d61-6b7be2a1cc95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightDerivedZeroToSelfApp_comp_inv [EnoughInjectives C] [PreservesFiniteLimits F] {X : C}
    (P : InjectiveResolution X) :
    rightDerivedZeroToSelfApp F P ≫ rightDerivedZeroToSelfAppInv F P = 𝟙 _ := by
  dsimp [rightDerivedZeroToSelfApp, rightDerivedZeroToSelfAppInv]
  rw [← Category.assoc, Iso.comp_inv_eq, Category.id_comp, Category.assoc, Category.assoc, ←
    Iso.eq_inv_comp, Iso.inv_hom_id]
  -- Porting note: broken ext
  apply homology.hom_to_ext
  apply homology.hom_from_ext
  rw [Category.assoc, Category.assoc, homology.lift_ι, Category.id_comp]
  erw [homology.π'_ι] -- Porting note: had to insist
  rw [Category.assoc, ← Category.assoc _ _ (cokernel.π _),
    Abelian.kernel.lift.inv, ← Category.assoc,
    ← Category.assoc _ (kernel.ι _), Limits.kernel.lift_ι, Category.assoc, Category.assoc, ←
    Category.assoc (homologyIsoKernelDesc _ _ _).hom _ _, ← homology.ι, ← Category.assoc]
  erw [homology.π'_ι] -- Porting note: had to insist
  rw [Category.assoc, ← Category.assoc (cokernel.π _)]
  erw [cokernel.π_desc] -- Porting note: had to insist
  rw [whisker_eq]
  dsimp; simp -- Porting note: was convert
  apply exact_of_map_injectiveResolution -- Porting note: Abelian.kernel.lift.inv
  -- created an Exact goal which was no longer automatically discharged
#align category_theory.abelian.functor.right_derived_zero_to_self_app_comp_inv CategoryTheory.Abelian.Functor.rightDerivedZeroToSelfApp_comp_inv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1886f7421ca4de2239a0ea86b677d40f46b1aa31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
