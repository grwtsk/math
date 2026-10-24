# det_vandermonde

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49a4992177aa418867633cf21bfb9254435e4abb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93994880-6d3b-a670-9f64-4fde1fafce8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66c04fa6-a137-f84d-01c6-e5914547e47b",
  "kind": "theorem",
  "lexical_name": "det_vandermonde",
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
  "slug": "det-vandermonde--1d19aa22c7a55eb3260b5253",
  "source": {
    "blob": "49a4992177aa418867633cf21bfb9254435e4abb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d19aa22c7a55eb3260b525302dd6e668d7b67b251ee833107f702eaed7b3a48",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66c04fa6-a137-f84d-01c6-e5914547e47b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_vandermonde {n : ℕ} (v : Fin n → R) :
    det (vandermonde v) = ∏ i : Fin n, Finset.prod (Ioi i) (fun j => v j - v i) := by
  unfold vandermonde
  induction' n with n ih
  · exact det_eq_one_of_card_eq_zero (Fintype.card_fin 0)
  calc
    det (of fun i j : Fin n.succ => v i ^ (j : ℕ)) =
        det
          (of fun i j : Fin n.succ =>
            Matrix.vecCons (v 0 ^ (j : ℕ)) (fun i => v (Fin.succ i) ^ (j : ℕ) - v 0 ^ (j : ℕ)) i) :=
      det_eq_of_forall_row_eq_smul_add_const (Matrix.vecCons 0 1) 0 (Fin.cons_zero _ _) ?_
    _ =
        det
          (of fun i j : Fin n =>
            Matrix.vecCons (v 0 ^ (j.succ : ℕ))
              (fun i : Fin n => v (Fin.succ i) ^ (j.succ : ℕ) - v 0 ^ (j.succ : ℕ))
              (Fin.succAbove 0 i)) := by
      simp_rw [det_succ_column_zero, Fin.sum_univ_succ, of_apply, Matrix.cons_val_zero, submatrix,
        of_apply, Matrix.cons_val_succ, Fin.val_zero, pow_zero, one_mul, sub_self,
        mul_zero, zero_mul, Finset.sum_const_zero, add_zero]
    _ =
        det
          (of fun i j : Fin n =>
              (v (Fin.succ i) - v 0) *
                ∑ k in Finset.range (j + 1 : ℕ), v i.succ ^ k * v 0 ^ (j - k : ℕ) :
            Matrix _ _ R) := by
      congr
      ext i j
      rw [Fin.succAbove_zero, Matrix.cons_val_succ, Fin.val_succ, mul_comm]
      exact (geom_sum₂_mul (v i.succ) (v 0) (j + 1 : ℕ)).symm
    _ =
        (Finset.prod Finset.univ (fun i => v (Fin.succ i) - v 0)) *
          det fun i j : Fin n =>
            ∑ k in Finset.range (j + 1 : ℕ), v i.succ ^ k * v 0 ^ (j - k : ℕ) :=
      (det_mul_column (fun i => v (Fin.succ i) - v 0) _)
    _ = (Finset.prod Finset.univ (fun i => v (Fin.succ i) - v 0)) *
    det fun i j : Fin n => v (Fin.succ i) ^ (j : ℕ) := congr_arg _ ?_
    _ = ∏ i : Fin n.succ, Finset.prod (Ioi i) (fun j => v j - v i) := by
      simp_rw [Fin.prod_univ_succ, Fin.prod_Ioi_zero, Fin.prod_Ioi_succ]
      have h := ih (v ∘ Fin.succ)
      unfold Function.comp at h
      rw [h]

  · intro i j
    simp_rw [of_apply]
    rw [Matrix.cons_val_zero]
    refine' Fin.cases _ (fun i => _) i
    · simp
    rw [Matrix.cons_val_succ, Matrix.cons_val_succ, Pi.one_apply]
    ring
  · cases n
    · rw [det_eq_one_of_card_eq_zero (Fintype.card_fin 0),
      det_eq_one_of_card_eq_zero (Fintype.card_fin 0)]
    apply det_eq_of_forall_col_eq_smul_add_pred fun _ => v 0
    · intro j
      simp
    · intro i j
      simp only [smul_eq_mul, Pi.add_apply, Fin.val_succ, Fin.coe_castSucc, Pi.smul_apply]
      rw [Finset.sum_range_succ, add_comm, tsub_self, pow_zero, mul_one, Finset.mul_sum]
      congr 1
      refine' Finset.sum_congr rfl fun i' hi' => _
      rw [mul_left_comm (v 0), Nat.succ_sub, pow_succ]
      exact Nat.lt_succ_iff.mp (Finset.mem_range.mp hi')
#align matrix.det_vandermonde Matrix.det_vandermonde

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a4992177aa418867633cf21bfb9254435e4abb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
