# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5910cd4be57f515fa7b5bc76d2699d68312e7092e80f1661683460fa1495457",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c2b47a9ac526b865910c6b4f",
  "source": {
    "blob": "d7de8a732627b7cf3beac25b46cfb8f680be4052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 176,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant7a455f4a94c18c5cda7622cae1601fe03bed1bb5962479a8b4b6e7df01a72c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2b47a9ac526b865910c6b4fa837f1fe878440de0173a707a3c5d3b4dac06e26",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant7a455f4a94c18c5cda7622cae1601fe03bed1bb5962479a8b4b6e7df01a72c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5910cd4be57f515fa7b5bc76d2699d68312e7092e80f1661683460fa1495457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 10) exponentialIdeal_of_preservesBinaryProducts
    [Limits.PreservesLimitsOfShape (Discrete Limits.WalkingPair) (reflector i)] :
    ExponentialIdeal i := by
  let ir := reflectorAdjunction i
  let L : C ⥤ D := reflector i
  let η : 𝟭 C ⟶ L ⋙ i := ir.unit
  let ε : i ⋙ L ⟶ 𝟭 D := ir.counit
  apply ExponentialIdeal.mk'
  intro B A
  let q : i.obj (L.obj (A ⟹ i.obj B)) ⟶ A ⟹ i.obj B := by
    apply MonoidalClosed.curry (ir.homEquiv _ _ _)
    apply _ ≫ (ir.homEquiv _ _).symm ((ihom.ev A).app (i.obj B))
    exact prodComparison L A _ ≫ (_ ◁ (ε.app _)) ≫ inv (prodComparison _ _ _)
  have : η.app (A ⟹ i.obj B) ≫ q = 𝟙 (A ⟹ i.obj B) := by
    dsimp
    rw [← curry_natural_left, curry_eq_iff, uncurry_id_eq_ev, ← ir.homEquiv_naturality_left,
      ir.homEquiv_apply_eq, Category.assoc, Category.assoc,
      prodComparison_natural_whiskerLeft_assoc, ← whiskerLeft_comp_assoc,
      ir.left_triangle_components, whiskerLeft_id, Category.id_comp]
    apply IsIso.hom_inv_id_assoc
  have : IsSplitMono (η.app (A ⟹ i.obj B)) := IsSplitMono.mk' ⟨_, this⟩
  apply mem_essImage_of_unit_isSplitMono

variable [ExponentialIdeal i]

set_option backward.defeqAttrib.useBackward true in
/-- If `i` witnesses that `D` is a reflective subcategory and an exponential ideal, then `D` is
itself Cartesian closed.

To allow for better control of definitional equality, this construction
takes in an explicit choice of lift of the essential image of `i` to `D`, in the form of a functor
`l : i.EssImageSubcategory ⥤ D` and natural isomorphism `φ : l ⋙ i ≅ i.essImage.ι`. When
`l ⋙ i` is defeq to `i.essImage.ι`, images of exponential objects in `D` under `i` will be defeq
to the respective exponential objects in `C`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant7a455f4a94c18c5cda7622cae1601fe03bed1bb5962479a8b4b6e7df01a72c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant7a455f4a94c18c5cda7622cae1601fe03bed1bb5962479a8b4b6e7df01a72c0a.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7de8a732627b7cf3beac25b46cfb8f680be4052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
