# isPointwiseLeftKanExtensionAtOfIsoOfIsLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7823f71275676528f9f5fc6299460b0f7969c2a94ba3bd57e7cde01eed362b7",
  "kind": "def",
  "lexical_name": "isPointwiseLeftKanExtensionAtOfIsoOfIsLocalization",
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
  "slug": "ispointwiseleftkanextensionatofisoofislocalization--cd1b5cc58235a60194266d28",
  "source": {
    "blob": "0e3a020d697105dbc57154d00fc2714c9c76d1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant292f21336c1746d5409d76373facfb5f7c29952487f273a7ccad9af6ccbf0711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd1b5cc58235a60194266d285e2edb10cc505deb7775e4a43da52099879f9c18",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant292f21336c1746d5409d76373facfb5f7c29952487f273a7ccad9af6ccbf0711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7823f71275676528f9f5fc6299460b0f7969c2a94ba3bd57e7cde01eed362b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isPointwiseLeftKanExtensionAtOfIsoOfIsLocalization
    {G : D ⥤ H} (e : F ≅ L ⋙ G) [L.IsLocalization W] (Y : C) :
    (LeftExtension.mk _ e.hom).IsPointwiseLeftKanExtensionAt (L.obj Y) where
  desc s := e.inv.app Y ≫ s.ι.app (CostructuredArrow.mk (𝟙 (L.obj Y)))
  fac s j := by
    refine Localization.induction_costructuredArrow L W _ (by simp)
      (fun X₁ X₂ f φ hφ ↦ ?_) (fun X₁ X₂ w hw φ hφ ↦ ?_) j
    · have eq := s.ι.naturality
        (CostructuredArrow.homMk f : CostructuredArrow.mk (L.map f ≫ φ) ⟶ CostructuredArrow.mk φ)
      dsimp at eq hφ ⊢
      rw [comp_id] at eq
      rw [assoc] at hφ
      rw [assoc, map_comp_assoc, ← eq, ← hφ, NatTrans.naturality_assoc, comp_map]
    · have : IsIso (F.map w) := by
        have := Localization.inverts L W w hw
        rw [← NatIso.naturality_2 e w]
        dsimp
        infer_instance
      have eq := s.ι.naturality
        (CostructuredArrow.homMk w : CostructuredArrow.mk φ ⟶ CostructuredArrow.mk
          ((Localization.isoOfHom L W w hw).inv ≫ φ))
      dsimp at eq hφ ⊢
      rw [comp_id] at eq
      rw [assoc] at hφ
      rw [map_comp, assoc, assoc, ← cancel_epi (F.map w), eq, ← hφ,
        NatTrans.naturality_assoc, comp_map, ← G.map_comp_assoc]
      simp
  uniq s m hm := by
    have := hm (CostructuredArrow.mk (𝟙 (L.obj Y)))
    dsimp at this m hm ⊢
    simp only [← this, map_id, comp_id, Iso.inv_hom_id_app_assoc]

/-- If `L` is a localization functor for `W` and `e : F ≅ L ⋙ G` is an isomorphism,
then `e.hom` makes `G` a pointwise left Kan extension of `F` along `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant292f21336c1746d5409d76373facfb5f7c29952487f273a7ccad9af6ccbf0711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant292f21336c1746d5409d76373facfb5f7c29952487f273a7ccad9af6ccbf0711.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e3a020d697105dbc57154d00fc2714c9c76d1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
