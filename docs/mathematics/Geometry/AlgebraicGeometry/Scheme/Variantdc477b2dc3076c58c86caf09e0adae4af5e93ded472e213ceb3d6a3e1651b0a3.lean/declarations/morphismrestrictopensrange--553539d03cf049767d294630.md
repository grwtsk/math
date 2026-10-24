# morphismRestrictOpensRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a242d62736ec4757aa6c1f8e5bd7da4ab93dabbacd3d3b63a230c2026bb55b9",
  "kind": "def",
  "lexical_name": "morphismRestrictOpensRange",
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
  "slug": "morphismrestrictopensrange--553539d03cf049767d294630",
  "source": {
    "blob": "83eaa0289eaf8fd200ee135abb4e3faa358d9a94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1076,
    "line": 1059,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:553539d03cf049767d2946307c6864293bd0f0ee138ad7d7a2d08ce3745f60c2",
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

Occurrence: `declaration:6a242d62736ec4757aa6c1f8e5bd7da4ab93dabbacd3d3b63a230c2026bb55b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1059–1076.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def morphismRestrictOpensRange {X Y U : Scheme} (f : X ⟶ Y) (g : U ⟶ Y) [hg : IsOpenImmersion g] :
    Arrow.mk (f ∣_ Scheme.Hom.opensRange g) ≅ Arrow.mk (pullback.snd : pullback f g ⟶ _) := by
  let V : Opens Y := Scheme.Hom.opensRange g
  let e :=
    IsOpenImmersion.isoOfRangeEq g (Y.ofRestrict V.openEmbedding) Subtype.range_coe.symm
  let t : pullback f g ⟶ pullback f (Y.ofRestrict V.openEmbedding) :=
    pullback.map _ _ _ _ (𝟙 _) e.hom (𝟙 _) (by rw [Category.comp_id, Category.id_comp])
      (by rw [Category.comp_id, IsOpenImmersion.isoOfRangeEq_hom, IsOpenImmersion.lift_fac])
  symm
  refine' Arrow.isoMk (asIso t ≪≫ pullbackRestrictIsoRestrict f V) e _
  rw [Iso.trans_hom, asIso_hom, ← Iso.comp_inv_eq, ← cancel_mono g, Arrow.mk_hom, Arrow.mk_hom,
    IsOpenImmersion.isoOfRangeEq_inv, Category.assoc, Category.assoc, Category.assoc,
    IsOpenImmersion.lift_fac, ← pullback.condition, morphismRestrict_ι,
    pullbackRestrictIsoRestrict_hom_restrict_assoc, pullback.lift_fst_assoc, Category.comp_id]
#align algebraic_geometry.morphism_restrict_opens_range AlgebraicGeometry.morphismRestrictOpensRange

/-- The restrictions onto two equal open sets are isomorphic. This currently has bad defeqs when
unfolded, but it should not matter for now. Replace this definition if better defeqs are needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean#L1059).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83eaa0289eaf8fd200ee135abb4e3faa358d9a94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
