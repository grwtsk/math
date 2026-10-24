# precomp₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0509f0404ee111df8ad60ab95baf0de9c70502838f8949b61093054b712fbd88",
  "kind": "instance",
  "lexical_name": "precomp₁",
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
  "slug": "precomp--f20fe356a1bc445179aea149",
  "source": {
    "blob": "4c5182fd9ca2cb1b12301ed0e77f71bfb898a14a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variant6f5552e20500087309102925bd1d1dbc14f4539c687a104325b4780825070d57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f20fe356a1bc445179aea1497fa1a1bf19407ad1f794f7956078e1661222fc99",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variant6f5552e20500087309102925bd1d1dbc14f4539c687a104325b4780825070d57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0509f0404ee111df8ad60ab95baf0de9c70502838f8949b61093054b712fbd88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance precomp₁ {M : Type*} [AddCommMonoid M] [HasShift C₁ M] [HasShift C₁' M]
    [HasShift C₂ M] [HasShift D M] (F : C₁' ⥤ C₁) [F.CommShift M]
    (G : C₁ ⥤ C₂ ⥤ D) (h : CommShift₂Setup D M) [G.CommShift₂ h] :
    (F ⋙ G).CommShift₂ h where
  commShiftObj (X₁' : C₁') := inferInstanceAs ((G.obj (F.obj X₁')).CommShift M)
  commShift_map {X₁' Y₁' : C₁'} (f : X₁' ⟶ Y₁') := by dsimp; infer_instance
  commShiftFlipObj (X₂ : C₂) := CommShift.comp F (G.flip.obj X₂)
  commShift_flip_map {X₂ Y₂ : C₂} (g : X₂ ⟶ Y₂) :=
    inferInstanceAs (NatTrans.CommShift (whiskerLeft F (G.flip.map g)) M)
  comm X₁' X₂ m n := by
    have := G.commShift₂_comm h (F.obj X₁') X₂ m n
    dsimp [commShiftIso] at this ⊢
    simp only [Category.comp_id, Category.id_comp, map_comp, Category.assoc]
    rw [NatTrans.shift_app (G.map ((F.commShiftIso m).hom.app X₁')) n X₂]
    simp [this]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variant6f5552e20500087309102925bd1d1dbc14f4539c687a104325b4780825070d57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variant6f5552e20500087309102925bd1d1dbc14f4539c687a104325b4780825070d57.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c5182fd9ca2cb1b12301ed0e77f71bfb898a14a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
