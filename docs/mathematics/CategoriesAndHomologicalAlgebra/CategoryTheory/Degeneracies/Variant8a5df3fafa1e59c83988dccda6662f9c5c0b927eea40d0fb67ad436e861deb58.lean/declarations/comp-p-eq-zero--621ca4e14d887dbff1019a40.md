# σ_comp_P_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ed3017c4598005e96f535efa92b4eea7ddb04b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:998d5788-5c80-2db7-b166-00a63e754cdd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a03f2df9-0609-a6d7-6cb1-40876163b01b",
  "kind": "theorem",
  "lexical_name": "σ_comp_P_eq_zero",
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
  "slug": "comp-p-eq-zero--621ca4e14d887dbff1019a40",
  "source": {
    "blob": "6ed3017c4598005e96f535efa92b4eea7ddb04b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:621ca4e14d887dbff1019a40cd33785873bf03b49ca533020af696374850f75b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a03f2df9-0609-a6d7-6cb1-40876163b01b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem σ_comp_P_eq_zero (X : SimplicialObject C) {n q : ℕ} (i : Fin (n + 1)) (hi : n + 1 ≤ i + q) :
    X.σ i ≫ (P q).f (n + 1) = 0 := by
  revert i hi
  induction' q with q hq
  · intro i (hi : n + 1 ≤ i)
    exfalso
    linarith [Fin.is_lt i]
  · intro i (hi : n + 1 ≤ i + q + 1)
    by_cases n + 1 ≤ (i : ℕ) + q
    · rw [P_succ, HomologicalComplex.comp_f, ← assoc, hq i h, zero_comp]
    · replace hi : n = i + q := by
        obtain ⟨j, hj⟩ := le_iff_exists_add.mp hi
        rw [← Nat.lt_succ_iff, Nat.succ_eq_add_one, hj, not_lt, add_le_iff_nonpos_right,
          nonpos_iff_eq_zero] at h
        rw [← add_left_inj 1, hj, self_eq_add_right, h]
      rcases n with _|n
      · fin_cases i
        dsimp at h hi
        rw [show q = 0 by linarith]
        change X.σ 0 ≫ (P 1).f 1 = 0
        simp only [P_succ, HomologicalComplex.add_f_apply, comp_add,
          HomologicalComplex.id_f, AlternatingFaceMapComplex.obj_d_eq, Hσ,
          HomologicalComplex.comp_f, Homotopy.nullHomotopicMap'_f (c_mk 2 1 rfl) (c_mk 1 0 rfl),
          comp_id]
        erw [hσ'_eq' (zero_add 0).symm, hσ'_eq' (add_zero 1).symm, comp_id, Fin.sum_univ_two,
          Fin.sum_univ_succ, Fin.sum_univ_two]
        simp only [Fin.val_zero, pow_zero, pow_one, pow_add, one_smul, neg_smul, Fin.mk_one,
          Fin.val_succ, Fin.val_one, Fin.succ_one_eq_two, P_zero, HomologicalComplex.id_f,
          Fin.val_two, pow_two, mul_neg, one_mul, neg_mul, neg_neg, id_comp, add_comp,
          comp_add, Fin.mk_zero, neg_comp, comp_neg, Fin.succ_zero_eq_one]
        erw [SimplicialObject.δ_comp_σ_self, SimplicialObject.δ_comp_σ_self_assoc,
          SimplicialObject.δ_comp_σ_succ, comp_id,
          SimplicialObject.δ_comp_σ_of_le X
            (show (0 : Fin 2) ≤ Fin.castSucc 0 by rw [Fin.castSucc_zero]),
          SimplicialObject.δ_comp_σ_self_assoc, SimplicialObject.δ_comp_σ_succ_assoc]
        simp only [add_right_neg, add_zero, zero_add]
      · rw [← id_comp (X.σ i), ← (P_add_Q_f q n.succ : _ = 𝟙 (X.obj _)), add_comp, add_comp,
          P_succ]
        have v : HigherFacesVanish q ((P q).f n.succ ≫ X.σ i) :=
          (HigherFacesVanish.of_P q n).comp_σ hi
        erw [← assoc, v.comp_P_eq_self, HomologicalComplex.add_f_apply, Preadditive.comp_add,
          comp_id, v.comp_Hσ_eq hi, assoc, SimplicialObject.δ_comp_σ_succ_assoc, Fin.eta,
          decomposition_Q n q, sum_comp, sum_comp, Finset.sum_eq_zero, add_zero, add_neg_eq_zero]
        intro j hj
        simp only [true_and_iff, Finset.mem_univ, Finset.mem_filter] at hj
        simp only [Nat.succ_eq_add_one] at hi
        obtain ⟨k, hk⟩ := Nat.le.dest (Nat.lt_succ_iff.mp (Fin.is_lt j))
        rw [add_comm] at hk
        have hi' : i = Fin.castSucc ⟨i, by linarith⟩ := by
          ext
          simp only [Fin.castSucc_mk, Fin.eta]
        have eq := hq j.revPerm.succ (by
          simp only [← hk, Fin.revPerm_eq j hk.symm, Nat.succ_eq_add_one, Fin.succ_mk, Fin.val_mk]
          linarith)
        rw [HomologicalComplex.comp_f, assoc, assoc, assoc, hi',
          SimplicialObject.σ_comp_σ_assoc, reassoc_of% eq, zero_comp, comp_zero, comp_zero,
          comp_zero]
        simp only [Fin.revPerm_eq j hk.symm, Fin.le_iff_val_le_val, Fin.val_mk]
        linarith
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.σ_comp_P_eq_zero AlgebraicTopology.DoldKan.σ_comp_P_eq_zero

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed3017c4598005e96f535efa92b4eea7ddb04b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
