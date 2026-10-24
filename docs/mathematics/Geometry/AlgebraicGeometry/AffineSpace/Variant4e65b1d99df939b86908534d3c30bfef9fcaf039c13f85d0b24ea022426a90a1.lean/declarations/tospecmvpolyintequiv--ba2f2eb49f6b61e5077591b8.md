# toSpecMvPolyIntEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a21581efb81551577c05f953db9e2c5b22922a8c74a802782258f78a251c31cf",
  "kind": "def",
  "lexical_name": "toSpecMvPolyIntEquiv",
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
  "slug": "tospecmvpolyintequiv--ba2f2eb49f6b61e5077591b8",
  "source": {
    "blob": "75e2e9160ebd6820908289ec31ccbc450862c613",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 77,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba2f2eb49f6b61e5077591b8c435857d40bf53e1074471006198cc398c6c79e8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a21581efb81551577c05f953db9e2c5b22922a8c74a802782258f78a251c31cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSpecMvPolyIntEquiv : (X ⟶ Spec ℤ[n]) ≃ (n → Γ(X, ⊤)) where
  toFun f i := f.appTop ((Scheme.ΓSpecIso ℤ[n]).inv (.X i))
  invFun v := X.toSpecΓ ≫ Spec.map
    (CommRingCat.ofHom (MvPolynomial.eval₂Hom ((algebraMap ℤ _).comp ULift.ringEquiv.toRingHom) v))
  left_inv f := by
    apply (ΓSpec.adjunction.homEquiv _ _).symm.injective
    apply Quiver.Hom.unop_inj
    rw [Adjunction.homEquiv_symm_apply, Adjunction.homEquiv_symm_apply]
    simp only [Functor.rightOp_obj, Scheme.Γ_obj, Scheme.Spec_obj, algebraMap_int_eq,
      RingEquiv.toRingHom_eq_coe, TopologicalSpace.Opens.map_top, Functor.rightOp_map, op_comp,
      Scheme.Γ_map, unop_comp, Quiver.Hom.unop_op, Scheme.comp_app, Scheme.toSpecΓ_appTop,
      Scheme.ΓSpecIso_naturality, ΓSpec.adjunction_counit_app, Category.assoc,
      Iso.cancel_iso_inv_left, ← Iso.eq_inv_comp]
    apply of_mvPolynomial_int_ext
    intro i
    rw [ConcreteCategory.hom_ofHom, coe_eval₂Hom, eval₂_X]
    rfl
  right_inv v := by
    ext i
    simp only [algebraMap_int_eq, RingEquiv.toRingHom_eq_coe, Scheme.comp_coeBase,
      TopologicalSpace.Opens.map_comp_obj, TopologicalSpace.Opens.map_top, Scheme.comp_app,
      Scheme.toSpecΓ_appTop, Scheme.ΓSpecIso_naturality, CommRingCat.comp_apply,
      CommRingCat.coe_of]
    -- TODO: why does `simp` not apply this lemma?
    rw [CommRingCat.hom_inv_apply]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75e2e9160ebd6820908289ec31ccbc450862c613` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
