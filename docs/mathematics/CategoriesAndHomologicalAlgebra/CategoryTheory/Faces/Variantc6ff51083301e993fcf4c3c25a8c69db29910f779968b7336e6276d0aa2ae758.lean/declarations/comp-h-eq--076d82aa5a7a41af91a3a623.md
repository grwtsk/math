# comp_Hσ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48d6cf29-58fc-ef33-f7a2-ad2c8b9daf4f",
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
  "slug": "comp-h-eq--076d82aa5a7a41af91a3a623",
  "source": {
    "blob": "64e58fc3718d4104aa9095e0ec8804a437343b27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variantc6ff51083301e993fcf4c3c25a8c69db29910f779968b7336e6276d0aa2ae758.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:076d82aa5a7a41af91a3a6239e4079fab237042d57cfbe1b9ec4f86ac0268289",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variantc6ff51083301e993fcf4c3c25a8c69db29910f779968b7336e6276d0aa2ae758.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48d6cf29-58fc-ef33-f7a2-ad2c8b9daf4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_Hσ_eq {Y : C} {n a q : ℕ} {φ : Y ⟶ X _⦋n + 1⦌} (v : HigherFacesVanish q φ)
    (hnaq : n = a + q) :
    φ ≫ (Hσ q).f (n + 1) = -φ ≫ X.δ ⟨a + 1, by lia⟩ ≫ X.σ ⟨a, by lia⟩ := by
  have hnaq_shift (d : ℕ) : n + d = a + d + q := by lia
  rw [Hσ, Homotopy.nullHomotopicMap'_f (c_mk (n + 2) (n + 1) rfl) (c_mk (n + 1) n rfl),
    hσ'_eq hnaq (c_mk (n + 1) n rfl), hσ'_eq (hnaq_shift 1) (c_mk (n + 2) (n + 1) rfl)]
  simp only [AlternatingFaceMapComplex.obj_d_eq, eqToHom_refl, comp_id, comp_sum, sum_comp,
    comp_add]
  simp only [comp_zsmul, zsmul_comp, ← assoc, ← mul_zsmul]
  -- cleaning up the first sum
  rw [← Fin.sum_congr' _ (hnaq_shift 2).symm, Fin.sum_trunc]
  swap
  · rintro ⟨k, hk⟩
    suffices φ ≫ X.δ (⟨a + 2 + k, by lia⟩ : Fin (n + 2)) = 0 by
      simp only [this, Fin.natAdd_mk, Fin.cast_mk, zero_comp, smul_zero]
    convert! v ⟨a + k + 1, by lia⟩ (by rw [Fin.val_mk]; lia)
    dsimp
    lia
  -- cleaning up the second sum
  rw [← Fin.sum_congr' _ (hnaq_shift 3).symm, @Fin.sum_trunc _ _ (a + 3)]
  swap
  · rintro ⟨k, hk⟩
    rw [assoc, X.δ_comp_σ_of_gt', v.comp_δ_eq_zero_assoc, zero_comp, zsmul_zero]
    · intro h
      replace h : a + 3 + k = 1 := by simp [Fin.ext_iff] at h
      lia
    · dsimp [Fin.cast, Fin.pred]
      rw [Nat.add_right_comm, Nat.add_sub_assoc (by simp : 1 ≤ 3)]
      lia
    · simp only [Fin.lt_def]
      dsimp [Fin.natAdd, Fin.cast]
      lia
  simp only [assoc]
  conv_lhs =>
    congr
    · rw [Fin.sum_univ_castSucc]
    · rw [Fin.sum_univ_castSucc, Fin.sum_univ_castSucc]
  dsimp [Fin.cast, Fin.castLE, Fin.castLT]
  /- the purpose of the following `simplif` is to create three subgoals in order
      to finish the proof -/
  have simplif :
    ∀ a b c d e f : Y ⟶ X _⦋n + 1⦌, b = f → d + e = 0 → c + a = 0 → a + b + (c + d + e) = f := by
    intro a b c d e f h1 h2 h3
    rw [add_assoc c d e, h2, add_zero, add_comm a, add_assoc, add_comm a, h3, add_zero, h1]
  apply simplif
  · -- b = f
    rw [← pow_add, Odd.neg_one_pow, neg_smul, one_zsmul]
    exact ⟨a, by lia⟩
  · -- d + e = 0
    rw [X.δ_comp_σ_self' (Fin.castSucc_mk _ _ _).symm,
      X.δ_comp_σ_succ' (Fin.succ_mk _ _ _).symm]
    simp only [comp_id, pow_add _ (a + 1) 1, pow_one, mul_neg, mul_one, neg_mul, neg_smul,
      add_neg_cancel]
  · -- c + a = 0
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_eq_zero
    rintro ⟨i, hi⟩ _
    simp only
    have hia : (⟨i, by lia⟩ : Fin (n + 2)) ≤
        Fin.castSucc (⟨a, by lia⟩ : Fin (n + 1)) := by
      rw [Fin.le_iff_val_le_val]
      dsimp
      lia
    generalize_proofs
    rw [← Fin.succ_mk (n + 1) a ‹_›, ← Fin.castSucc_mk (n + 2) i ‹_›,
      δ_comp_σ_of_le X hia, add_eq_zero_iff_eq_neg, ← neg_zsmul]
    congr 2
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variantc6ff51083301e993fcf4c3c25a8c69db29910f779968b7336e6276d0aa2ae758.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variantc6ff51083301e993fcf4c3c25a8c69db29910f779968b7336e6276d0aa2ae758.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e58fc3718d4104aa9095e0ec8804a437343b27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
