# submatrix_succAbove_det_eq_negOnePow_submatrix_succAbove_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:189eb659-19d6-918d-78ba-16ac4473e5e5",
  "kind": "theorem",
  "lexical_name": "submatrix_succAbove_det_eq_negOnePow_submatrix_succAbove_det",
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
  "slug": "submatrix-succabove-det-eq-negonepow-submatrix-succabove-det--82864fce2e6cb6003a6d7b22",
  "source": {
    "blob": "32be61dcf46bc1d99de028984e15d7bd0fe9d56a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 31,
    "path": "GRWTSK/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82864fce2e6cb6003a6d7b22e2fc8f9e028b433c02f2cd0743a07572e4ce0577",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:189eb659-19d6-918d-78ba-16ac4473e5e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submatrix_succAbove_det_eq_negOnePow_submatrix_succAbove_det {n : ℕ}
    (M : Matrix (Fin (n + 1)) (Fin n) R) (hv : ∑ j, M j = 0) (j₁ j₂ : Fin (n + 1)) :
    (M.submatrix (Fin.succAbove j₁) id).det =
      Int.negOnePow (j₁ - j₂) • (M.submatrix (Fin.succAbove j₂) id).det := by
  suffices ∀ j, (M.submatrix (Fin.succAbove j) id).det =
      Int.negOnePow j • (M.submatrix (Fin.succAbove 0) id).det by
    rw [this j₁, this j₂, smul_smul, ← Int.negOnePow_add, sub_add_cancel]
  intro j
  induction j using Fin.induction with
  | zero => rw [Fin.val_zero, Nat.cast_zero, Int.negOnePow_zero, one_smul]
  | succ i h_ind =>
      rw [Fin.val_succ, Nat.cast_add, Nat.cast_one, Int.negOnePow_succ, Units.neg_smul,
        ← neg_eq_iff_eq_neg, ← neg_one_smul R,
        ← det_updateRow_sum (M.submatrix i.succ.succAbove id) i (fun _ ↦ -1),
        ← Fin.coe_castSucc i, ← h_ind]
      congr
      ext a b
      simp_rw [neg_one_smul, updateRow_apply, Finset.sum_neg_distrib, Pi.neg_apply,
        Finset.sum_apply, submatrix_apply, id_eq]
      split_ifs with h
      · replace hv := congr_fun hv b
        rw [Fin.sum_univ_succAbove _ i.succ, Pi.add_apply, Finset.sum_apply] at hv
        rwa [h, Fin.succAbove_castSucc_self, neg_eq_iff_add_eq_zero, add_comm]
      · obtain h|h := ne_iff_lt_or_gt.mp h
        · rw [Fin.succAbove_castSucc_of_lt _ _ h,
            Fin.succAbove_of_succ_le _ _ (Fin.succ_lt_succ_iff.mpr h).le]
        · rw [Fin.succAbove_succ_of_lt _ _ h, Fin.succAbove_castSucc_of_le _ _ h.le]

/-- Let `M` be a `(n+1) × n` matrix whose column sums to zero. Then all the matrices obtained by
deleting one column have the same determinant up to a sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32be61dcf46bc1d99de028984e15d7bd0fe9d56a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
