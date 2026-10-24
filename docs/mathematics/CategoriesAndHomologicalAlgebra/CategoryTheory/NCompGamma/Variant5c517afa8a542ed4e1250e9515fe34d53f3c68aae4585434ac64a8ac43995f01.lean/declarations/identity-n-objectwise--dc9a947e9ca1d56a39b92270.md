# identity_N₂_objectwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b03b1df-e3c6-c1fb-21f4-ea8f4d41eb03",
  "kind": "theorem",
  "lexical_name": "identity_N₂_objectwise",
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
  "slug": "identity-n-objectwise--dc9a947e9ca1d56a39b92270",
  "source": {
    "blob": "ca3f4382b221c40c1acee6973d25b5eff1a87a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 240,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant5c517afa8a542ed4e1250e9515fe34d53f3c68aae4585434ac64a8ac43995f01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc9a947e9ca1d56a39b922702c0f5e06fee992f57d9efc9b59346a22bcb9f146",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant5c517afa8a542ed4e1250e9515fe34d53f3c68aae4585434ac64a8ac43995f01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b03b1df-e3c6-c1fb-21f4-ea8f4d41eb03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem identity_N₂_objectwise (P : Karoubi (SimplicialObject C)) :
  (N₂Γ₂.inv.app (N₂.obj P) : N₂.obj P ⟶ N₂.obj (Γ₂.obj (N₂.obj P))) ≫ N₂.map (Γ₂N₂.natTrans.app P) =
    𝟙 (N₂.obj P) := by
  ext n
  have eq₁ : (N₂Γ₂.inv.app (N₂.obj P)).f.f n = PInfty.f n ≫ P.p.app (op [n]) ≫
      (Γ₀.splitting (N₂.obj P).X).ιSummand (Splitting.IndexSet.id (op [n])) := by
    simp only [N₂Γ₂_inv_app_f_f, N₂_obj_p_f, assoc]
  have eq₂ : (Γ₀.splitting (N₂.obj P).X).ιSummand (Splitting.IndexSet.id (op [n])) ≫
      (N₂.map (Γ₂N₂.natTrans.app P)).f.f n = PInfty.f n ≫ P.p.app (op [n]) := by
    dsimp
    simp only [assoc, Γ₂N₂.natTrans_app_f_app, Functor.comp_map, NatTrans.comp_app,
      Karoubi.comp_f, compatibility_Γ₂N₁_Γ₂N₂_hom_app, eqToHom_refl, Karoubi.eqToHom_f,
      PInfty_on_Γ₀_splitting_summand_eq_self_assoc, Functor.comp_obj]
    dsimp [N₂]
    simp only [Splitting.ι_desc_assoc, assoc, id_comp, unop_op,
      Splitting.IndexSet.id_fst, len_mk, Splitting.IndexSet.e,
      Splitting.IndexSet.id_snd_coe, op_id, P.X.map_id, id_comp,
      PInfty_f_naturality_assoc, PInfty_f_idem_assoc, app_idem]
  simp only [Karoubi.comp_f, HomologicalComplex.comp_f, Karoubi.id_eq, N₂_obj_p_f, assoc,
    eq₁, eq₂, PInfty_f_naturality_assoc, app_idem, PInfty_f_idem_assoc]
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.identity_N₂_objectwise AlgebraicTopology.DoldKan.identity_N₂_objectwise

-- porting note: `Functor.associator` was added to the statement in order to prevent a timeout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant5c517afa8a542ed4e1250e9515fe34d53f3c68aae4585434ac64a8ac43995f01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant5c517afa8a542ed4e1250e9515fe34d53f3c68aae4585434ac64a8ac43995f01.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3f4382b221c40c1acee6973d25b5eff1a87a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
