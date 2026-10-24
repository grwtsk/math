# identity_N₂_objectwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c046599f5f698c6ef4f51b8bcb9c1f0d1b731744",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e89b48a3-0722-f6ba-474a-c72de6ee6068",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a5cadbc-8998-c7da-c29e-45712bc69959",
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
  "slug": "identity-n-objectwise--8c6c903e1682cd55ed5e905a",
  "source": {
    "blob": "c046599f5f698c6ef4f51b8bcb9c1f0d1b731744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 195,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c6c903e1682cd55ed5e905a134c8b476aa02f6b8310478f27538fe1dba47322",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a5cadbc-8998-c7da-c29e-45712bc69959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–213.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c046599f5f698c6ef4f51b8bcb9c1f0d1b731744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
