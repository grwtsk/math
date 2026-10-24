# comp_Hσ_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e452808a-f0fc-2a86-79ea-27a3a5800fae",
  "kind": "theorem",
  "lexical_name": "comp_Hσ_eq_zero",
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
  "slug": "comp-h-eq-zero--8a4d158f2826b078df8a418f",
  "source": {
    "blob": "0626795feb9708db33ead9a38b53d128b6a49f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant971bf9f5a4474cdc38dd21e7defb6c97898ce0160bfdd5003263ea1085595d28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a4d158f2826b078df8a418f4ed5ec527d96703f64eff3af36c73c7c9918024a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant971bf9f5a4474cdc38dd21e7defb6c97898ce0160bfdd5003263ea1085595d28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e452808a-f0fc-2a86-79ea-27a3a5800fae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_Hσ_eq_zero {Y : C} {n q : ℕ} {φ : Y ⟶ X _[n + 1]} (v : HigherFacesVanish q φ)
    (hqn : n < q) : φ ≫ (Hσ q).f (n + 1) = 0 := by
  simp only [Hσ, Homotopy.nullHomotopicMap'_f (c_mk (n + 2) (n + 1) rfl) (c_mk (n + 1) n rfl)]
  rw [hσ'_eq_zero hqn (c_mk (n + 1) n rfl), comp_zero, zero_add]
  by_cases hqn' : n + 1 < q
  · rw [hσ'_eq_zero hqn' (c_mk (n + 2) (n + 1) rfl), zero_comp, comp_zero]
  · simp only [hσ'_eq (show n + 1 = 0 + q by linarith) (c_mk (n + 2) (n + 1) rfl), pow_zero,
      Fin.mk_zero, one_zsmul, eqToHom_refl, comp_id, comp_sum,
      AlternatingFaceMapComplex.obj_d_eq]
    rw [← Fin.sum_congr' _ (show 2 + (n + 1) = n + 1 + 2 by linarith), Fin.sum_trunc]
    · simp only [Fin.sum_univ_castSucc, Fin.sum_univ_zero, zero_add, Fin.last, Fin.castLE_mk,
        Fin.castIso_mk, Fin.castSucc_mk]
      simp only [Fin.mk_zero, Fin.val_zero, pow_zero, one_zsmul, Fin.mk_one, Fin.val_one, pow_one,
        neg_smul, comp_neg]
      erw [δ_comp_σ_self, δ_comp_σ_succ, add_right_neg]
    · intro j
      dsimp [Fin.castIso, Fin.castLE, Fin.castLT]
      rw [comp_zsmul, comp_zsmul, δ_comp_σ_of_gt', v.comp_δ_eq_zero_assoc, zero_comp, zsmul_zero]
      · simp only [Fin.lt_iff_val_lt_val]
        dsimp [Fin.succ]
        linarith
      · intro h
        simp only [Fin.pred, Fin.subNat, Fin.ext_iff, Nat.succ_add_sub_one,
          Fin.val_zero, add_eq_zero, false_and] at h
      · simp only [Fin.pred, Fin.subNat, Nat.pred_eq_sub_one, Nat.succ_add_sub_one]
        linarith
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.higher_faces_vanish.comp_Hσ_eq_zero AlgebraicTopology.DoldKan.HigherFacesVanish.comp_Hσ_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant971bf9f5a4474cdc38dd21e7defb6c97898ce0160bfdd5003263ea1085595d28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant971bf9f5a4474cdc38dd21e7defb6c97898ce0160bfdd5003263ea1085595d28.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0626795feb9708db33ead9a38b53d128b6a49f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
