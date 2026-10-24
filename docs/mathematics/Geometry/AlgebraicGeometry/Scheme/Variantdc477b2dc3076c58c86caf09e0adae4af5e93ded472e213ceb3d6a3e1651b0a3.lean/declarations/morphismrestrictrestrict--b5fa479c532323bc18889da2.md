# morphismRestrictRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0383f244e36bf3d773cec213786feb61a10376854c6e78c216b107e404cce8e",
  "kind": "def",
  "lexical_name": "morphismRestrictRestrict",
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
  "slug": "morphismrestrictrestrict--b5fa479c532323bc18889da2",
  "source": {
    "blob": "83eaa0289eaf8fd200ee135abb4e3faa358d9a94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1117,
    "line": 1086,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5fa479c532323bc18889da2b8be051728562d4eaedc1fee01fae12c6ba65118",
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

Occurrence: `declaration:f0383f244e36bf3d773cec213786feb61a10376854c6e78c216b107e404cce8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1086–1117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def morphismRestrictRestrict {X Y : Scheme} (f : X ⟶ Y) (U : Opens Y) (V : Opens U) :
    Arrow.mk (f ∣_ U ∣_ V) ≅ Arrow.mk (f ∣_ U.openEmbedding.isOpenMap.functor.obj V) := by
  set g := ((Y.restrict U.openEmbedding).ofRestrict (V.openEmbedding (X := TopCat.of U)) ≫
    Y.ofRestrict U.openEmbedding)
  have i1 : IsOpenImmersion g := PresheafedSpace.IsOpenImmersion.comp _ _
  have i2 : HasPullback f g := IsOpenImmersion.hasPullback_of_right g f
  set h : _ ⟶ pullback f g :=
    (pullbackRestrictIsoRestrict (f ∣_ U) V).inv ≫
      (pullbackSymmetry _ _).hom ≫
      pullback.map _ _ _ _ (𝟙 _)
        ((pullbackRestrictIsoRestrict f U).inv ≫ (pullbackSymmetry _ _).hom) (𝟙 _)
        ((Category.comp_id _).trans (Category.id_comp _).symm) (by aesop_cat) ≫
      (pullbackRightPullbackFstIso _ _ _).hom ≫ (pullbackSymmetry _ _).hom
  have i3 : IsIso h
  · repeat
      apply (config := { allowSynthFailures := true }) IsIso.comp_isIso
  have : (f ∣_ U ∣_ V) ≫ (Iso.refl _).hom = (asIso h).hom ≫ pullback.snd (f := f) (g := g)
  · simp only [Category.comp_id, pullbackRightPullbackFstIso_hom_fst, Iso.refl_hom,
      Category.assoc, pullbackSymmetry_hom_comp_snd, asIso_hom, pullback.lift_fst,
      pullbackSymmetry_hom_comp_fst]
    rfl
  refine'
    Arrow.isoMk' _ _ _ _ this.symm ≪≫
      (morphismRestrictOpensRange _ _).symm ≪≫ morphismRestrictEq _ _
  ext1
  dsimp
  rw [coe_comp, Set.range_comp]
  apply congr_arg (U.inclusion '' ·)
  exact Subtype.range_val
#align algebraic_geometry.morphism_restrict_restrict AlgebraicGeometry.morphismRestrictRestrict

/-- Restricting a morphism twice onto a basic open set is isomorphic to one restriction.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean#L1086).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83eaa0289eaf8fd200ee135abb4e3faa358d9a94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
