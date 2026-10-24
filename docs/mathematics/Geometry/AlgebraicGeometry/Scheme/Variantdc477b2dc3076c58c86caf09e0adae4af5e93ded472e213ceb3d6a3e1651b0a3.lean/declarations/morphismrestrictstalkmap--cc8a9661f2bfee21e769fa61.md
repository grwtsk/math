# morphismRestrictStalkMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:441a873f9c61cfdd3bbae4154e298f4fd401810488ac82bf879ad0cdf123437b",
  "kind": "def",
  "lexical_name": "morphismRestrictStalkMap",
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
  "slug": "morphismrestrictstalkmap--cc8a9661f2bfee21e769fa61",
  "source": {
    "blob": "83eaa0289eaf8fd200ee135abb4e3faa358d9a94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1166,
    "line": 1141,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc8a9661f2bfee21e769fa61dc09bc18f460f495a5344f3e084e45f3ce746a7a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:441a873f9c61cfdd3bbae4154e298f4fd401810488ac82bf879ad0cdf123437b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1141–1166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def morphismRestrictStalkMap {X Y : Scheme} (f : X ⟶ Y) (U : Opens Y) (x) :
    Arrow.mk (PresheafedSpace.stalkMap (f ∣_ U).1 x) ≅
      Arrow.mk (PresheafedSpace.stalkMap f.1 x.1) := by
  fapply Arrow.isoMk'
  · refine' Y.restrictStalkIso U.openEmbedding ((f ∣_ U).1.1 x) ≪≫ TopCat.Presheaf.stalkCongr _ _
    apply Inseparable.of_eq
    exact morphismRestrict_base_coe f U x
  · exact X.restrictStalkIso (Opens.openEmbedding _) _
  · apply TopCat.Presheaf.stalk_hom_ext
    intro V hxV
    simp only [TopCat.Presheaf.stalkCongr_hom, CategoryTheory.Category.assoc,
      CategoryTheory.Iso.trans_hom]
    erw [PresheafedSpace.restrictStalkIso_hom_eq_germ_assoc]
    erw [PresheafedSpace.stalkMap_germ_assoc _ V ⟨_, hxV⟩]
    rw [TopCat.Presheaf.germ_stalk_specializes'_assoc]
    -- Porting note : explicit variables and proofs were not necessary
    erw [PresheafedSpace.stalkMap_germ _ (U.openEmbedding.isOpenMap.functor.obj V)
      ⟨x.1, ⟨⟨f.1.base x.1, x.2⟩, _, rfl⟩⟩]
    swap
    · rw [morphismRestrict_val_base] at hxV
      exact hxV
    erw [PresheafedSpace.restrictStalkIso_hom_eq_germ]
    rw [morphismRestrict_c_app, Category.assoc, TopCat.Presheaf.germ_res]
    rfl
#align algebraic_geometry.morphism_restrict_stalk_map AlgebraicGeometry.morphismRestrictStalkMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean#L1141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83eaa0289eaf8fd200ee135abb4e3faa358d9a94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
