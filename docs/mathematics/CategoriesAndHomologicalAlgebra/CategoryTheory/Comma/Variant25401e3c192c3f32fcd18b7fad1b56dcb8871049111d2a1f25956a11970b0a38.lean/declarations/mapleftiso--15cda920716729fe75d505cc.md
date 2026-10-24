# mapLeftIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a618018981b8504f0ba6c8beaf208173648d6784dc95d4c46e75334c8b2a0373",
  "kind": "def",
  "lexical_name": "mapLeftIso",
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
  "slug": "mapleftiso--15cda920716729fe75d505cc",
  "source": {
    "blob": "c45fcfc2279811dbdcf7db3245160397f4c238a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 424,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant25401e3c192c3f32fcd18b7fad1b56dcb8871049111d2a1f25956a11970b0a38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15cda920716729fe75d505ccec7c2cc4379220462329947bbc6846860e0c69cb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant25401e3c192c3f32fcd18b7fad1b56dcb8871049111d2a1f25956a11970b0a38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a618018981b8504f0ba6c8beaf208173648d6784dc95d4c46e75334c8b2a0373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapLeftIso [P.RespectsIso] [Q.RespectsIso] [W.RespectsIso]
      (e : L₁ ≅ L₂) :
    P.Comma L₁ R Q W ≌ P.Comma L₂ R Q W where
  functor := Comma.mapLeft R e.inv (fun X ↦ (P.cancel_left_of_respectsIso _ _).mpr X.prop)
  inverse := Comma.mapLeft R e.hom (fun X ↦ (P.cancel_left_of_respectsIso _ _).mpr X.prop)
  unitIso := (mapLeftId _ _).symm ≪≫
    mapLeftEq _ _ _ e.hom_inv_id.symm (fun X ↦ by simpa using X.prop) ≪≫
    mapLeftComp _ _ _
      (fun X ↦ (P.cancel_left_of_respectsIso _ _).mpr X.prop)
      (fun X ↦ (P.cancel_left_of_respectsIso _ _).mpr X.prop)
      (fun X ↦ (P.cancel_left_of_respectsIso _ _).mpr X.prop)
  counitIso :=
    (mapLeftComp _ _ _
      (fun X ↦ (P.cancel_left_of_respectsIso _ _).mpr X.prop)
      (fun X ↦ (P.cancel_left_of_respectsIso _ _).mpr X.prop)
      (fun X ↦ (P.cancel_left_of_respectsIso _ _).mpr X.prop)).symm ≪≫
    mapLeftEq _ _ _ e.inv_hom_id
      (fun X ↦ (P.cancel_left_of_respectsIso _ _).mpr X.prop) ≪≫
    mapLeftId _ _

variable (L) in
/-- A natural transformation `R₁ ⟶ R₂` induces a functor `P.Comma L R₁ Q W ⥤ P.Comma L R₂ Q W`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant25401e3c192c3f32fcd18b7fad1b56dcb8871049111d2a1f25956a11970b0a38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant25401e3c192c3f32fcd18b7fad1b56dcb8871049111d2a1f25956a11970b0a38.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c45fcfc2279811dbdcf7db3245160397f4c238a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
