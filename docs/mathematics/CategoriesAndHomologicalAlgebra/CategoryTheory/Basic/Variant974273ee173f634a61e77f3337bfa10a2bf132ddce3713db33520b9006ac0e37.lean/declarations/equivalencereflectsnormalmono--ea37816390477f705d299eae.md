# equivalenceReflectsNormalMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0f7c39c2d3f31054f326e6eed3901f07a64f9217759c9fb9e036a7337a4947a",
  "kind": "def",
  "lexical_name": "equivalenceReflectsNormalMono",
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
  "slug": "equivalencereflectsnormalmono--ea37816390477f705d299eae",
  "source": {
    "blob": "b555cd0314c3bc45846307e61d8f2a2f45baf4f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea37816390477f705d299eae118bb3e3fc628046fa07aa5a2e046b3c8eaa7b3b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0f7c39c2d3f31054f326e6eed3901f07a64f9217759c9fb9e036a7337a4947a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalenceReflectsNormalMono {D : Type u₂} [Category.{v₁} D] [HasZeroMorphisms D] (F : C ⥤ D)
    [F.IsEquivalence] {X Y : C} {f : X ⟶ Y} (hf : NormalMono (F.map f)) : NormalMono f where
  Z := F.objPreimage hf.Z
  g := F.preimage (hf.g ≫ (F.objObjPreimageIso hf.Z).inv)
  w := F.map_injective <| by
    have reassoc' {W : D} (h : hf.Z ⟶ W) : F.map f ≫ hf.g ≫ h = 0 ≫ h := by
      rw [← Category.assoc, eq_whisker hf.w]
    simp [reassoc']
  isLimit := isLimitOfReflects F <|
    IsLimit.ofConeEquiv (Cones.postcomposeEquivalence (compNatIso F)) <|
      (IsLimit.ofIsoLimit (IsKernel.ofCompIso _ _ (F.objObjPreimageIso hf.Z) (by
        simp only [Functor.map_preimage, Category.assoc, Iso.inv_hom_id, Category.comp_id])
        hf.isLimit)) (Fork.ext (Iso.refl _) (by simp [compNatIso, Fork.ι]))

end

/-- Every normal monomorphism is a regular monomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b555cd0314c3bc45846307e61d8f2a2f45baf4f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
