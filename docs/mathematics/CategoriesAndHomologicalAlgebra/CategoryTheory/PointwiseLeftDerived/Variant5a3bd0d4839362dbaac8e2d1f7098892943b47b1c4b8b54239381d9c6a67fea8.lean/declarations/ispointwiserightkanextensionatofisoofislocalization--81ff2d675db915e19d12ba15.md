# isPointwiseRightKanExtensionAtOfIsoOfIsLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cdaee10c70bb4c790299835b3aa185ee3cd0ba82549b9d07ec244fee45f2d04",
  "kind": "def",
  "lexical_name": "isPointwiseRightKanExtensionAtOfIsoOfIsLocalization",
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
  "slug": "ispointwiserightkanextensionatofisoofislocalization--81ff2d675db915e19d12ba15",
  "source": {
    "blob": "08673cdcdece7747cb60acd5a172c8e9aed7e7f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 115,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseLeftDerived/Variant5a3bd0d4839362dbaac8e2d1f7098892943b47b1c4b8b54239381d9c6a67fea8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81ff2d675db915e19d12ba15927a2ea64121eeac1f2ea954ee0614a3c4d7b1b0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseLeftDerived/Variant5a3bd0d4839362dbaac8e2d1f7098892943b47b1c4b8b54239381d9c6a67fea8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cdaee10c70bb4c790299835b3aa185ee3cd0ba82549b9d07ec244fee45f2d04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isPointwiseRightKanExtensionAtOfIsoOfIsLocalization
    {G : D ⥤ H} (e : F ≅ L ⋙ G) [L.IsLocalization W] (Y : C) :
    (RightExtension.mk _ e.inv).IsPointwiseRightKanExtensionAt (L.obj Y) where
  lift s := s.π.app (StructuredArrow.mk (𝟙 (L.obj Y))) ≫ e.hom.app Y
  fac s j := by
    refine Localization.induction_structuredArrow L W _ (by simp)
      (fun X₁ X₂ f φ hφ ↦ ?_) (fun X₁ X₂ w hw φ hφ ↦ ?_) j
    · have eq := s.π.naturality
        (StructuredArrow.homMk f : StructuredArrow.mk φ ⟶ StructuredArrow.mk (φ ≫ L.map f))
      dsimp at eq hφ ⊢
      rw [id_comp] at eq
      rw [assoc] at hφ
      simp [eq, ← reassoc_of% hφ, ← e.inv.naturality f]
    · have : IsIso (F.map w) := by
        have := Localization.inverts L W w hw
        rw [← NatIso.naturality_2 e w]
        dsimp
        infer_instance
      have eq := s.π.naturality (StructuredArrow.homMk w :
          StructuredArrow.mk (φ ≫ (Localization.isoOfHom L W w hw).inv) ⟶
            StructuredArrow.mk φ)
      dsimp at eq hφ ⊢
      rw [id_comp] at eq
      rw [assoc] at hφ
      simp only [← cancel_mono (F.map w), ← eq, comp_obj, comp_map, assoc,
        ← hφ, ← NatTrans.naturality, ← G.map_comp_assoc,
        Localization.isoOfHom_inv_hom_id, comp_id]
  uniq s m hm := by
    have := hm (StructuredArrow.mk (𝟙 (L.obj Y)))
    dsimp at this m hm ⊢
    simp [← reassoc_of% this]

/-- If `L` is a localization functor for `W` and `e : F ≅ L ⋙ G` is an isomorphism,
then `e.inv` makes `G` a pointwise right Kan extension of `F` along `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseLeftDerived/Variant5a3bd0d4839362dbaac8e2d1f7098892943b47b1c4b8b54239381d9c6a67fea8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseLeftDerived/Variant5a3bd0d4839362dbaac8e2d1f7098892943b47b1c4b8b54239381d9c6a67fea8.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08673cdcdece7747cb60acd5a172c8e9aed7e7f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
