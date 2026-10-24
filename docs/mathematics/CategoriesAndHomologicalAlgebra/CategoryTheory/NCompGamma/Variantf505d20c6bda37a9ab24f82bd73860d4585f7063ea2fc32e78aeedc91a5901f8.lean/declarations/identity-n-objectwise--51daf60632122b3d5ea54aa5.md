# identity_N₂_objectwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82d36927-49ea-81c4-bed0-c6751b36c379",
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
  "slug": "identity-n-objectwise--51daf60632122b3d5ea54aa5",
  "source": {
    "blob": "30b6d1cbf0e89fba76c1440fac4f9c3f9fd9ba6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantf505d20c6bda37a9ab24f82bd73860d4585f7063ea2fc32e78aeedc91a5901f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51daf60632122b3d5ea54aa5b70aa8d85a4ecf37a7bc9ae2913cc986a876ba04",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantf505d20c6bda37a9ab24f82bd73860d4585f7063ea2fc32e78aeedc91a5901f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82d36927-49ea-81c4-bed0-c6751b36c379`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem identity_N₂_objectwise (P : Karoubi (SimplicialObject C)) :
    (N₂Γ₂.inv.app (N₂.obj P) : N₂.obj P ⟶ N₂.obj (Γ₂.obj (N₂.obj P))) ≫
    N₂.map (Γ₂N₂.natTrans.app P) = 𝟙 (N₂.obj P) := by
  ext n
  have eq₁ : (N₂Γ₂.inv.app (N₂.obj P)).f.f n = PInfty.f n ≫ P.p.app (op ⦋n⦌) ≫
      ((Γ₀.splitting (N₂.obj P).X).cofan _).inj (Splitting.IndexSet.id (op ⦋n⦌)) := by
    simp only [N₂Γ₂_inv_app_f_f, N₂_obj_p_f, assoc]
  have eq₂ : ((Γ₀.splitting (N₂.obj P).X).cofan _).inj (Splitting.IndexSet.id (op ⦋n⦌)) ≫
      (N₂.map (Γ₂N₂.natTrans.app P)).f.f n = PInfty.f n ≫ P.p.app (op ⦋n⦌) := by
    dsimp
    rw [PInfty_on_Γ₀_splitting_summand_eq_self_assoc, Γ₂N₂.natTrans_app_f_app]
    dsimp
    rw [Γ₂N₂ToKaroubiIso_hom_app, assoc, Splitting.ι_desc_assoc, assoc, assoc]
    dsimp [toKaroubi]
    rw [Splitting.ι_desc_assoc]
    simp [Splitting.IndexSet.e]
  simp only [Karoubi.comp_f, HomologicalComplex.comp_f, Karoubi.id_f, N₂_obj_p_f, assoc,
    eq₁, eq₂, PInfty_f_naturality_assoc, app_idem, PInfty_f_idem_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantf505d20c6bda37a9ab24f82bd73860d4585f7063ea2fc32e78aeedc91a5901f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantf505d20c6bda37a9ab24f82bd73860d4585f7063ea2fc32e78aeedc91a5901f8.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30b6d1cbf0e89fba76c1440fac4f9c3f9fd9ba6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
