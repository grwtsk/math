# plusCompIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f3eab3af9725761586a51dc7341ffe56aa79b397cab8637ea79afc0a8fd8853",
  "kind": "def",
  "lexical_name": "plusCompIso",
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
  "slug": "pluscompiso--97aecbc7217e371010a0a6cf",
  "source": {
    "blob": "aa0f3a6e20a342eab81e1a3c16e82e62a2488db0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97aecbc7217e371010a0a6cfc8257c2c08ece02d0d744cad3824bb570731c1dc",
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

Occurrence: `declaration:1f3eab3af9725761586a51dc7341ffe56aa79b397cab8637ea79afc0a8fd8853`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def plusCompIso : J.plusObj P ⋙ F ≅ J.plusObj (P ⋙ F) :=
  NatIso.ofComponents
    (fun X => by
      refine' _ ≪≫ HasColimit.isoOfNatIso (J.diagramCompIso F P X.unop)
      refine'
        (isColimitOfPreserves F
              (colimit.isColimit (J.diagram P (unop X)))).coconePointUniqueUpToIso
          (colimit.isColimit _))
    (by
      intro X Y f
      apply (isColimitOfPreserves F (colimit.isColimit (J.diagram P X.unop))).hom_ext
      intro W
      dsimp [plusObj, plusMap]
      simp only [Functor.map_comp, Category.assoc]
      slice_rhs 1 2 =>
        erw [(isColimitOfPreserves F (colimit.isColimit (J.diagram P X.unop))).fac]
      slice_lhs 1 3 =>
        simp only [← F.map_comp]
        dsimp [colimMap, IsColimit.map, colimit.pre]
        simp only [colimit.ι_desc_assoc, colimit.ι_desc]
        dsimp [Cocones.precompose]
        simp only [Category.assoc, colimit.ι_desc]
        dsimp [Cocone.whisker]
        rw [F.map_comp]
      simp only [Category.assoc]
      slice_lhs 2 3 =>
        erw [(isColimitOfPreserves F (colimit.isColimit (J.diagram P Y.unop))).fac]
      dsimp
      simp only [HasColimit.isoOfNatIso_ι_hom_assoc, GrothendieckTopology.diagramPullback_app,
        colimit.ι_pre, HasColimit.isoOfNatIso_ι_hom, ι_colimMap_assoc]
      simp only [← Category.assoc]
      dsimp
      congr 1
      ext
      dsimp
      simp only [Category.assoc]
      erw [Multiequalizer.lift_ι, diagramCompIso_hom_ι, diagramCompIso_hom_ι, ← F.map_comp,
        Multiequalizer.lift_ι])
#align category_theory.grothendieck_topology.plus_comp_iso CategoryTheory.GrothendieckTopology.plusCompIso

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa0f3a6e20a342eab81e1a3c16e82e62a2488db0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
