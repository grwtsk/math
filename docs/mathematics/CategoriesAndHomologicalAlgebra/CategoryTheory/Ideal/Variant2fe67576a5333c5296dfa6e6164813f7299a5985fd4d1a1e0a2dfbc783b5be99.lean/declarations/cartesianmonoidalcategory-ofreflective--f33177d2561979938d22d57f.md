# CartesianMonoidalCategory.ofReflective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e730010e41032106f170e7fc2d8420a177dceb8f91c09342207923e0f362809",
  "kind": "abbrev",
  "lexical_name": "CartesianMonoidalCategory.ofReflective",
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
  "slug": "cartesianmonoidalcategory-ofreflective--f33177d2561979938d22d57f",
  "source": {
    "blob": "e5af173b989f8103433f3771e32cd9646b9ea41e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f33177d2561979938d22d57fe6595719c31c9828c68adcd6d37e089330c5deac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e730010e41032106f170e7fc2d8420a177dceb8f91c09342207923e0f362809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev CartesianMonoidalCategory.ofReflective [CartesianMonoidalCategory C] [Reflective i] :
    CartesianMonoidalCategory D :=
  .ofChosenFiniteProducts
    ({  cone := Limits.asEmptyCone <| (reflector i).obj (𝟙_ C)
        isLimit := by
          apply isLimitOfReflects i
          apply isLimitChangeEmptyCone _ isTerminalTensorUnit
          letI : IsIso ((reflectorAdjunction i).unit.app (𝟙_ C)) := by
            have := reflective_products i
            refine Functor.essImage.unit_isIso ⟨terminal D, ⟨PreservesTerminal.iso i |>.trans ?_⟩⟩
            exact IsLimit.conePointUniqueUpToIso (limit.isLimit _) isTerminalTensorUnit
          exact asIso ((reflectorAdjunction i).unit.app (𝟙_ C)) })
  fun X Y ↦
    { cone := BinaryFan.mk
        ((reflector i).map (fst (i.obj X) (i.obj Y)) ≫ (reflectorAdjunction i).counit.app _)
        ((reflector i).map (snd (i.obj X) (i.obj Y)) ≫ (reflectorAdjunction i).counit.app _)
      isLimit := by
        apply isLimitOfReflects i
        apply IsLimit.equivOfNatIsoOfIso (pairComp X Y _) _ _ _|>.invFun
          (tensorProductIsBinaryProduct (i.obj X) (i.obj Y))
        fapply BinaryFan.ext
        · change (reflector i ⋙ i).obj (i.obj X ⊗ i.obj Y) ≅ (𝟭 C).obj (i.obj X ⊗ i.obj Y)
          letI : IsIso ((reflectorAdjunction i).unit.app (i.obj X ⊗ i.obj Y)) := by
            apply Functor.essImage.unit_isIso
            haveI := reflective_products i
            use Limits.prod X Y
            constructor
            apply Limits.PreservesLimitPair.iso i _ _|>.trans
            refine Limits.IsLimit.conePointUniqueUpToIso (limit.isLimit (pair (i.obj X) (i.obj Y)))
              (tensorProductIsBinaryProduct _ _)
          exact asIso ((reflectorAdjunction i).unit.app (i.obj X ⊗ i.obj Y))|>.symm
        · simp only [BinaryFan.fst, Cones.postcompose, pairComp]
          simp [← Functor.comp_map, ← NatTrans.naturality_assoc, fst]
        · simp only [BinaryFan.snd, Cones.postcompose, pairComp]
          simp [← Functor.comp_map, ← NatTrans.naturality_assoc, snd] }

@[deprecated (since := "2025-05-15")]
noncomputable alias reflectiveChosenFiniteProducts := CartesianMonoidalCategory.ofReflective

variable [CartesianMonoidalCategory C] [Reflective i] [CartesianClosed C]
  [CartesianMonoidalCategory D]

/-- If the reflector preserves binary products, the subcategory is an exponential ideal.
This is the converse of `preservesBinaryProductsOfExponentialIdeal`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5af173b989f8103433f3771e32cd9646b9ea41e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
