# diagramCompIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90b0afd8d49b5f4ff8999fe3f0d0be0b9992a3eb48433463fd4e61070040b9d9",
  "kind": "def",
  "lexical_name": "diagramCompIso",
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
  "slug": "diagramcompiso--99a3b2da6fcb4951386e053f",
  "source": {
    "blob": "aa0f3a6e20a342eab81e1a3c16e82e62a2488db0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99a3b2da6fcb4951386e053fb9c72e378c53d92a0b413b71b97ed0e441b53359",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90b0afd8d49b5f4ff8999fe3f0d0be0b9992a3eb48433463fd4e61070040b9d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diagramCompIso (X : C) : J.diagram P X ⋙ F ≅ J.diagram (P ⋙ F) X :=
  NatIso.ofComponents
    (fun W => by
      refine' _ ≪≫ HasLimit.isoOfNatIso (W.unop.multicospanComp _ _).symm
      refine'
        (isLimitOfPreserves F (limit.isLimit _)).conePointUniqueUpToIso (limit.isLimit _))
    (by
      intro A B f
      -- porting note: this used to work with `ext`
      -- See https://github.com/leanprover-community/mathlib4/issues/5229
      apply Multiequalizer.hom_ext
      dsimp
      simp only [Functor.mapCone_π_app, Multiequalizer.multifork_π_app_left, Iso.symm_hom,
        Multiequalizer.lift_ι, eqToHom_refl, Category.comp_id,
        limit.conePointUniqueUpToIso_hom_comp,
        GrothendieckTopology.Cover.multicospanComp_hom_inv_left, HasLimit.isoOfNatIso_hom_π,
        Category.assoc]
      simp only [← F.map_comp, limit.lift_π, Multifork.ofι_π_app, implies_true])
#align category_theory.grothendieck_topology.diagram_comp_iso CategoryTheory.GrothendieckTopology.diagramCompIso

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa0f3a6e20a342eab81e1a3c16e82e62a2488db0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
