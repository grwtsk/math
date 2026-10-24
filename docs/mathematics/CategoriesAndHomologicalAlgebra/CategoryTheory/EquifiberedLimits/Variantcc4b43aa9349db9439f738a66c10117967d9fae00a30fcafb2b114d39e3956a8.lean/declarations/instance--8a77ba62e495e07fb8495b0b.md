# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49b573579d6c501b8717616eae911a3e52a6cd983e4ebc40e8dd18398be5793b",
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
  "slug": "instance--8a77ba62e495e07fb8495b0b",
  "source": {
    "blob": "4372e025e6bba0938b14ac317c57c48891921532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquifiberedLimits/Variantcc4b43aa9349db9439f738a66c10117967d9fae00a30fcafb2b114d39e3956a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a77ba62e495e07fb8495b0bf21aa863493f58b8cdbe9a74fbbefd2a1d3ed05a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EquifiberedLimits/Variantcc4b43aa9349db9439f738a66c10117967d9fae00a30fcafb2b114d39e3956a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49b573579d6c501b8717616eae911a3e52a6cd983e4ebc40e8dd18398be5793b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (F : C ⥤ D) [∀ a b : C, HasProductsOfShape (a ⟶ b) D] :
    IsClosedUnderColimitsOfShape (fun f : Under F ↦ f.hom.Coequifibered) J := by
  have : IsClosedUnderIsomorphisms fun f : Under F ↦ f.hom.Coequifibered :=
    ⟨fun {X Y} e ↦ by rw [← Under.w e.hom, Coequifibered.cancel_right_of_respectsIso]; simp⟩
  have (a b : Cᵒᵖ) : HasCoproductsOfShape (a ⟶ b) Dᵒᵖ :=
    hasColimitsOfShape_of_equivalence (Discrete.equivalence Quiver.Hom.opEquiv)
  let e : Over F.op ≌ (Under F)ᵒᵖ := (postEquiv _ (opUnopEquiv _ _)).symm.trans (opEquivOpUnder F)
  rw [isClosedUnderColimitsOfShape_iff_op, ← isClosedUnderLimitsOfShape_inverseImage_iff _ _ e]
  convert!
    (inferInstance : IsClosedUnderLimitsOfShape (fun f : Over F.op ↦ f.hom.Equifibered) Jᵒᵖ) with f
  simp [e, MorphismProperty.cancel_left_of_respectsIso, ← coequifibered_unop_iff]
  rfl

end CategoryTheory.NatTrans
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EquifiberedLimits/Variantcc4b43aa9349db9439f738a66c10117967d9fae00a30fcafb2b114d39e3956a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquifiberedLimits/Variantcc4b43aa9349db9439f738a66c10117967d9fae00a30fcafb2b114d39e3956a8.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4372e025e6bba0938b14ac317c57c48891921532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
