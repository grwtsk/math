# N₂Γ₂_inv_app_f_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb3796c3c8ab9d430bab1ff2f1a7dc322eababf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:767d146b-d607-5d07-9fce-0c37a4bc12b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b633f413-f811-688a-eb55-614fd0e6f65d",
  "kind": "theorem",
  "lexical_name": "N₂Γ₂_inv_app_f_f",
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
  "slug": "n-inv-app-f-f--02350627e5a42f3daa75a62a",
  "source": {
    "blob": "fb3796c3c8ab9d430bab1ff2f1a7dc322eababf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 168,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantb9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02350627e5a42f3daa75a62ab8e15a45286fc33497aa4092e4cd91b75b32b7ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantb9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b633f413-f811-688a-eb55-614fd0e6f65d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem N₂Γ₂_inv_app_f_f (X : Karoubi (ChainComplex C ℕ)) (n : ℕ) :
    (N₂Γ₂.inv.app X).f.f n =
      X.p.f n ≫ ((Γ₀.splitting X.X).cofan _).inj (Splitting.IndexSet.id (op ⦋n⦌)) := by
  dsimp [N₂Γ₂]
  simp only [whiskeringLeft_obj_preimage_app, NatTrans.comp_app, Functor.comp_map,
    Karoubi.comp_f, N₂Γ₂ToKaroubiIso_inv_app, HomologicalComplex.comp_f,
    N₁Γ₀_inv_app_f_f, toKaroubi_obj_X, Splitting.toKaroubiNondegComplexIsoN₁_hom_f_f,
    PInfty_on_Γ₀_splitting_summand_eq_self, N₂_map_f_f, Γ₂_map_f_app, unop_op, Karoubi.decompId_p_f,
    PInfty_on_Γ₀_splitting_summand_eq_self_assoc, Splitting.IndexSet.id_fst, SimplexCategory.len_mk,
    Splitting.ι_desc]
  apply Karoubi.HomologicalComplex.p_idem_assoc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantb9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantb9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb3796c3c8ab9d430bab1ff2f1a7dc322eababf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
