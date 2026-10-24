# comp_Hσ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fdcdfc9fa43f4cda7d2f0deff65514b470872bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e24a1ee033ac513b522fb5bd9bd9c3f92a8dbcb96dc3ea8c4d9a283a2dbdecd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef19748d-ad09-d4c5-87c7-b6816acea1ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e13be6b-4b17-126b-50d8-1e83371a7493",
  "kind": "theorem",
  "lexical_name": "comp_Hσ_eq",
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
  "slug": "comp-h-eq--d59fceb4091eb96f16c31f3f",
  "source": {
    "blob": "7fdcdfc9fa43f4cda7d2f0deff65514b470872bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant0e24a1ee033ac513b522fb5bd9bd9c3f92a8dbcb96dc3ea8c4d9a283a2dbdecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d59fceb4091eb96f16c31f3f5d0f98bc9e35037d712b0b427a53dc1d88d2b8cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant0e24a1ee033ac513b522fb5bd9bd9c3f92a8dbcb96dc3ea8c4d9a283a2dbdecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e13be6b-4b17-126b-50d8-1e83371a7493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_Hσ_eq {Y : C} {n a q : ℕ} {φ : Y ⟶ X _[n + 1]} (v : HigherFacesVanish q φ)
    (hnaq : n = a + q) :
    φ ≫ (Hσ q).f (n + 1) =
      -φ ≫ X.δ ⟨a + 1, Nat.succ_lt_succ (Nat.lt_succ_iff.mpr (Nat.le.intro hnaq.symm))⟩ ≫
        X.σ ⟨a, Nat.lt_succ_iff.mpr (Nat.le.intro hnaq.symm)⟩ := by
  have hnaq_shift : ∀ d : ℕ, n + d = a + d + q := by
    intro d
    rw [add_assoc, add_comm d, ← add_assoc, hnaq]
  rw [Hσ, Homotopy.nullHomotopicMap'_f (c_mk (n + 2) (n + 1) rfl) (c_mk (n + 1) n rfl),
    hσ'_eq hnaq (c_mk (n + 1) n rfl), hσ'_eq (hnaq_shift 1) (c_mk (n + 2) (n + 1) rfl)]
  simp only [AlternatingFaceMapComplex.obj_d_eq, eqToHom_refl, comp_id, comp_sum, sum_comp,
    comp_add]
  simp only [comp_zsmul, zsmul_comp, ← assoc, ← mul_zsmul]
  -- cleaning up the first sum
  rw [← Fin.sum_congr' _ (hnaq_shift 2).symm, Fin.sum_trunc]
  swap
  · rintro ⟨k, hk⟩
    suffices φ ≫ X.δ (⟨a + 2 + k, by linarith⟩ : Fin (n + 2)) = 0 by
      simp only [this, Fin.natAdd_mk, Fin.castIso_mk, zero_comp, smul_zero]
    convert v ⟨a + k + 1, by linarith⟩ (by rw [Fin.val_mk]; linarith)
    dsimp
    linarith
  -- cleaning up the second sum
  rw [← Fin.sum_congr' _ (hnaq_shift 3).symm, @Fin.sum_trunc _ _ (a + 3)]
  swap
  · rintro ⟨k, hk⟩
    rw [assoc, X.δ_comp_σ_of_gt', v.comp_δ_eq_zero_assoc, zero_comp, zsmul_zero]
    · simp only [Fin.lt_iff_val_lt_val]
      dsimp [Fin.natAdd, Fin.castIso]
      linarith
    · intro h
      rw [Fin.pred_eq_iff_eq_succ, Fin.ext_iff] at h
      dsimp [Fin.castIso] at h
      linarith
    · dsimp [Fin.castIso, Fin.pred]
      rw [Nat.add_right_comm, Nat.add_sub_assoc (by norm_num : 1 ≤ 3)]
      linarith
  simp only [assoc]
  conv_lhs =>
    congr
    · rw [Fin.sum_univ_castSucc]
    · rw [Fin.sum_univ_castSucc, Fin.sum_univ_castSucc]
  dsimp [Fin.castIso, Fin.castLE, Fin.castLT]
  /- the purpose of the following `simplif` is to create three subgoals in order
      to finish the proof -/
  have simplif :
    ∀ a b c d e f : Y ⟶ X _[n + 1], b = f → d + e = 0 → c + a = 0 → a + b + (c + d + e) = f := by
    intro a b c d e f h1 h2 h3
    rw [add_assoc c d e, h2, add_zero, add_comm a, add_assoc, add_comm a, h3, add_zero, h1]
  apply simplif
  · -- b = f
    rw [← pow_add, Odd.neg_one_pow, neg_smul, one_zsmul]
    exact ⟨a, by linarith⟩
  · -- d + e = 0
    rw [X.δ_comp_σ_self' (Fin.castSucc_mk _ _ _).symm,
      X.δ_comp_σ_succ' (Fin.succ_mk _ _ _).symm]
    simp only [comp_id, pow_add _ (a + 1) 1, pow_one, mul_neg, mul_one, neg_mul, neg_smul,
      add_right_neg]
  · -- c + a = 0
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_eq_zero
    rintro ⟨i, hi⟩ _
    simp only
    have hia : (⟨i, by linarith⟩ : Fin (n + 2)) ≤
        Fin.castSucc (⟨a, by linarith⟩ : Fin (n + 1)) := by
      rw [Fin.le_iff_val_le_val]
      dsimp
      linarith
    erw [δ_comp_σ_of_le X hia, add_eq_zero_iff_eq_neg, ← neg_zsmul]
    congr 2
    ring
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.higher_faces_vanish.comp_Hσ_eq AlgebraicTopology.DoldKan.HigherFacesVanish.comp_Hσ_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant0e24a1ee033ac513b522fb5bd9bd9c3f92a8dbcb96dc3ea8c4d9a283a2dbdecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant0e24a1ee033ac513b522fb5bd9bd9c3f92a8dbcb96dc3ea8c4d9a283a2dbdecd.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fdcdfc9fa43f4cda7d2f0deff65514b470872bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
