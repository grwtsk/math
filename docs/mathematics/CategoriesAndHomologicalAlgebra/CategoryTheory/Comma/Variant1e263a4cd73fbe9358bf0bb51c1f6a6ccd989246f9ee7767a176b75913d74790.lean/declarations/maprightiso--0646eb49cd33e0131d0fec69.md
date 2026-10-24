# mapRightIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d3bcdaa2aa4dac5ce052b3b2f33f9a67cda4bb9fa6d15f6b10f6cd44eb49c9f",
  "kind": "def",
  "lexical_name": "mapRightIso",
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
  "slug": "maprightiso--0646eb49cd33e0131d0fec69",
  "source": {
    "blob": "b9ed750bc5ba48fd64d0d9b5373353575df2584f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 481,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0646eb49cd33e0131d0fec69d9d46e22702f497287f71cd9848acffe0d5516e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d3bcdaa2aa4dac5ce052b3b2f33f9a67cda4bb9fa6d15f6b10f6cd44eb49c9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapRightIso [P.RespectsIso] [Q.RespectsIso] [W.RespectsIso]
      (e : R₁ ≅ R₂) :
    P.Comma L R₁ Q W ≌ P.Comma L R₂ Q W where
  functor := Comma.mapRight L e.hom (fun X ↦ (P.cancel_right_of_respectsIso _ _).mpr X.prop)
  inverse := Comma.mapRight L e.inv (fun X ↦ (P.cancel_right_of_respectsIso _ _).mpr X.prop)
  unitIso := (mapRightId _ _).symm ≪≫
    mapRightEq _ _ _ e.hom_inv_id.symm (fun X ↦ by simpa using X.prop) ≪≫
    mapRightComp _ _ _
      (fun X ↦ (P.cancel_right_of_respectsIso _ _).mpr X.prop)
      (fun X ↦ (P.cancel_right_of_respectsIso _ _).mpr X.prop)
      (fun X ↦ (P.cancel_right_of_respectsIso _ _).mpr X.prop)
  counitIso :=
    (mapRightComp _ _ _
      (fun X ↦ (P.cancel_right_of_respectsIso _ _).mpr X.prop)
      (fun X ↦ (P.cancel_right_of_respectsIso _ _).mpr X.prop)
      (fun X ↦ (P.cancel_right_of_respectsIso _ _).mpr X.prop)).symm ≪≫
    mapRightEq _ _ _ e.inv_hom_id
      (fun X ↦ (P.cancel_right_of_respectsIso _ _).mpr X.prop) ≪≫
    mapRightId _ _

end Functoriality

end Comma

end Comma

section Arrow

variable {T : Type*} [Category* T]
  (P Q W : MorphismProperty T) [Q.IsMultiplicative] [W.IsMultiplicative]

/-- Given a morphism property `P` on a category `T`, this is the
subcategory of `Arrow T` defined by `P` where morphisms satisfy `Q` and `W` on the left and right,
respectively. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9ed750bc5ba48fd64d0d9b5373353575df2584f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
