# det_projVandermonde_of_field

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93d7a0d0453c8bd268025ec25a2390ec96a36091",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6d8fd40-6be7-aebe-60b2-8409a2e1a1bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3406d927-6683-72eb-c528-a3f886961b9a",
  "kind": "theorem",
  "lexical_name": "det_projVandermonde_of_field",
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
  "slug": "det-projvandermonde-of-field--6d6efb245866fbc8046efcff",
  "source": {
    "blob": "93d7a0d0453c8bd268025ec25a2390ec96a36091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 154,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d6efb245866fbc8046efcffe7e61634023400da46d1f61248f336ba2eb46951",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3406d927-6683-72eb-c528-a3f886961b9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem det_projVandermonde_of_field (v w : Fin n → K) :
    (projVandermonde v w).det = ∏ i : Fin n, ∏ j ∈ Finset.Ioi i, (v j * w i - v i * w j) := by
  induction n with
  | zero => simp
  | succ n ih =>
  /- We can assume not all `w i` are zero, and therefore that `w 0 ≠ 0`,
  since otherwise we can swap row `0` with another nonzero row. -/
  wlog h0 : w 0 ≠ 0 generalizing v w with aux
  · obtain h0' | ⟨i₀, hi₀ : w i₀ ≠ 0⟩ := forall_or_exists_not (w · = 0)
    · obtain rfl | hne := eq_or_ne n 0
      · simp [projVandermonde_apply]
      rw [det_eq_zero_of_column_eq_zero 0 (fun i ↦ by simpa [projVandermonde_apply, h0']),
        Finset.prod_sigma', Finset.prod_eq_zero (i := ⟨0, Fin.last n⟩) (by simpa) (by simp [h0'])]
    rw [← mul_right_inj' (a := ((Equiv.swap 0 i₀).sign : K))
      (by simp [show 0 ≠ i₀ by rintro rfl; contradiction]), ← det_permute, ← projVandermonde_comp,
      aux _ _ (by simpa), ← (Equiv.swap 0 i₀).prod_Ioi_comp_eq_sign_mul_prod (by simp)]
    rfl
  /- Let `W` be obtained from the matrix by subtracting `r = (v 0) / (w 0)` times each column
  from the next column, starting from the penultimate column. This doesn't change the determinant.-/
  set r := v 0 / w 0 with hr
  set W : Matrix (Fin (n + 1)) (Fin (n + 1)) K := .of fun i ↦ (cons (projVandermonde v w i 0)
    (fun j ↦ projVandermonde v w i j.succ - r * projVandermonde v w i j.castSucc))
  -- deleting the first row and column of `W` gives a row-scaling of a Vandermonde matrix.
  have hW_eq : (W.submatrix succ succ) = .of fun i j ↦ (v (succ i) - r * w (succ i)) *
      projVandermonde (v ∘ succ) (w ∘ succ) i j := by
    ext i j
    simp only [projVandermonde_apply, val_zero, rev_zero, val_last, val_succ,
      val_castSucc, submatrix_apply, Function.comp_apply, rev_succ,
      W, r, rev_castSucc]
    simp
    ring
  /- The first row of `W` is `[(w 0)^n, 0, ..., 0]` - take a cofactor expansion along this row,
  and apply induction. -/
  rw [det_eq_of_forall_col_eq_smul_add_pred (B := W) (c := fun _ ↦ r) (by simp [W])
    (fun i j ↦ by simp [W, r, projVandermonde_apply]), det_succ_row_zero,
    Finset.sum_eq_single 0 _ (by simp)]
  · rw [succAbove_zero, hW_eq, det_mul_column, ih]
    simp only [Nat.succ_eq_add_one, coe_ofNat_eq_mod, Nat.zero_mod,
      pow_zero, show W 0 0 = w 0 ^ n by simp [W, projVandermonde_apply], one_mul, hr]
    field_simp
    simp only [Finset.prod_div_distrib, Finset.prod_const, Finset.card_fin, Function.comp_apply]
    field_simp
    simp only [prod_univ_succ, Ioi_zero_eq_map, Finset.prod_map, coe_succEmb, prod_Ioi_succ]
  intro j _ hj0
  obtain ⟨j, rfl⟩ := j.eq_succ_of_ne_zero hj0
  rw [mul_eq_zero, mul_eq_zero]
  refine .inl (.inr ?_)
  simp only [of_apply, projVandermonde_apply_of_ne_zero h0, val_succ, val_castSucc, cons_succ, W, r]
  ring

/-- The formula for the determinant of a projective Vandermonde matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93d7a0d0453c8bd268025ec25a2390ec96a36091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
