# sourceAffineLocally_respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0fad4c7-bef4-46a5-5cb8-082ebb6f77d5",
  "kind": "theorem",
  "lexical_name": "sourceAffineLocally_respectsIso",
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
  "slug": "sourceaffinelocally-respectsiso--cbb7761333c34bb583dac399",
  "source": {
    "blob": "653ea3160ced1b0792ac93326eb237d91538f8c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 189,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbb7761333c34bb583dac399835fa4549ea3db2712519aa6b62a7043ffebcb54",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0fad4c7-bef4-46a5-5cb8-082ebb6f77d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceAffineLocally_respectsIso (h₁ : RingHom.RespectsIso @P) :
    (sourceAffineLocally @P).toProperty.RespectsIso := by
  apply AffineTargetMorphismProperty.respectsIso_mk
  · introv H U
    rw [← h₁.cancel_right_isIso _ (Scheme.Γ.map (Scheme.restrictMapIso e.inv U.1).hom.op), ←
      Functor.map_comp, ← op_comp]
    convert H ⟨_, U.prop.map_isIso e.inv⟩ using 3
    -- Porting note : have to add this instance manually
    haveI i1 : IsOpenImmersion
      (Scheme.ofRestrict Y ((Opens.map e.inv.val.base).obj U.1).openEmbedding ≫ e.inv) :=
      PresheafedSpace.IsOpenImmersion.comp _ _
    rw [IsOpenImmersion.isoOfRangeEq_hom, IsOpenImmersion.lift_fac_assoc, Category.assoc,
      e.inv_hom_id_assoc]
  · introv H U
    rw [← Category.assoc, op_comp, Functor.map_comp, h₁.cancel_left_isIso]
    exact H U
#align algebraic_geometry.source_affine_locally_respects_iso AlgebraicGeometry.sourceAffineLocally_respectsIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653ea3160ced1b0792ac93326eb237d91538f8c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
