# toPushforwardOfIso_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e2b9b31-44d0-5388-192e-bcbcaea0441d",
  "kind": "theorem",
  "lexical_name": "toPushforwardOfIso_app",
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
  "slug": "topushforwardofiso-app--fab4896de78f12d8a5403ba5",
  "source": {
    "blob": "624ac71332f87878b5a09ffb110b5adc6acb864c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 442,
    "path": "GRWTSK/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab4896de78f12d8a5403ba578edf478ea817d1f678295150c2570d3292b062d",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e2b9b31-44d0-5388-192e-bcbcaea0441d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toPushforwardOfIso_app {X Y : TopCat} (H₁ : X ≅ Y) {ℱ : X.Presheaf C} {𝒢 : Y.Presheaf C}
    (H₂ : H₁.hom _* ℱ ⟶ 𝒢) (U : (Opens X)ᵒᵖ) :
    (toPushforwardOfIso H₁ H₂).app U =
      ℱ.map (eqToHom (by simp [Opens.map, Set.preimage_preimage])) ≫
        H₂.app (op ((Opens.map H₁.inv).obj (unop U))) := by
  delta toPushforwardOfIso
  -- Porting note : originally is a single invocation of `simp`
  simp only [pushforwardObj_obj, Functor.op_obj, Equivalence.toAdjunction, Adjunction.homEquiv_unit,
    Functor.id_obj, Functor.comp_obj, Adjunction.mkOfUnitCounit_unit, unop_op, eqToHom_map]
  rw [NatTrans.comp_app, presheafEquivOfIso_inverse_map_app, Equivalence.Equivalence_mk'_unit]
  congr 1
  simp only [Equivalence.unit, Equivalence.op, CategoryTheory.Equivalence.symm, Opens.mapMapIso,
    Functor.id_obj, Functor.comp_obj, Iso.symm_hom, NatIso.op_inv, Iso.symm_inv, NatTrans.op_app,
    NatIso.ofComponents_hom_app, eqToIso.hom, eqToHom_op, Equivalence.Equivalence_mk'_unitInv,
    Equivalence.Equivalence_mk'_counitInv, NatIso.op_hom, unop_op, op_unop, eqToIso.inv,
    NatIso.ofComponents_inv_app, eqToHom_unop, ←ℱ.map_comp, eqToHom_trans, eqToHom_map,
    presheafEquivOfIso_unitIso_hom_app_app]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.to_pushforward_of_iso_app TopCat.Presheaf.toPushforwardOfIso_app

/-- If `H : X ≅ Y` is a homeomorphism,
then given an `H _* ℱ ⟶ 𝒢`, we may obtain an `ℱ ⟶ H ⁻¹ _* 𝒢`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624ac71332f87878b5a09ffb110b5adc6acb864c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
