# exists_rank_normal_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27f2a59f-7041-54d1-65fd-41f5d0821efd",
  "kind": "theorem",
  "lexical_name": "exists_rank_normal_form",
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
  "slug": "exists-rank-normal-form--4d6d734ccfc40265eb27ccad",
  "source": {
    "blob": "d5acbd5f7b8f25078c403b18cb5616273c22d3a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 430,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d6d734ccfc40265eb27ccadaa96109e3f9d6eca79f323212dbfbdededf9794f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27f2a59f-7041-54d1-65fd-41f5d0821efd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rank_normal_form [Fintype m] [DecidableEq m] (M : Matrix m m R) :
    ∃ (V U : Matrix m m R) (e : m ≃ Fin M.rank ⊕ Fin (Fintype.card m - M.rank)),
      IsUnit V ∧ IsUnit U ∧
      V * M * U = (fromBlocks 1 0 0 0).submatrix e e := by
  classical
  obtain ⟨L, L', D, hM0⟩ := Matrix.Pivot.exists_list_transvec_mul_diagonal_mul_list_transvec M
  set E := fun i ↦ if D i = 0 then 1 else (D i)⁻¹ with E_def
  set s : Finset m := .filter (fun i ↦ D i ≠ 0) .univ with s_def
  set V := diagonal E * (L.reverse.map (toMatrix ∘ .inv)).prod with V_def
  set U := (L'.reverse.map (toMatrix ∘ .inv)).prod with U_def
  have hUdet : IsUnit U.det := (isUnit_iff_isUnit_det _).1 <| isUnit_prod_comp_inverse _
  have hVdet : IsUnit V.det := by
    rw [V_def, det_mul, det_diagonal]
    exact IsUnit.mk0 _ (Finset.prod_ne_zero_iff.2 (by grind)) |>.mul <|
      (isUnit_iff_isUnit_det _).1 (isUnit_prod_comp_inverse _)
  have hM : V * M * U = diagonal (fun i ↦ if i ∈ s then 1 else 0) := by
    rw [V_def, U_def, hM0, mul_assoc, mul_assoc _ (L'.map _).prod, prod_mul_reverse_inv_prod,
      mul_one, ← mul_assoc, mul_assoc _ (L.reverse.map _).prod, reverse_inv_prod_mul_prod, mul_one]
    ext
    simp only [E_def, mul_diagonal, diagonal_apply, ite_mul, one_mul, zero_mul, s_def,
      Finset.mem_filter, Finset.mem_univ, true_and, ite_not]
    split_ifs with h1 h2 <;> first | rw [← h1, h2] | rw [← h1, inv_mul_cancel₀ h2] | rfl
  have hs : s.card = M.rank := by
    simp [← rank_mul_eq_right_of_isUnit_det V M hVdet, ← rank_mul_eq_left_of_isUnit_det U (V * M)
      hUdet, hM, rank_diagonal]
  set e : m ≃ Fin M.rank ⊕ Fin (Fintype.card m - M.rank) :=
    (Equiv.sumCompl (· ∈ s)).symm.trans <| (Finset.equivFinOfCardEq hs).sumCongr <|
      Fintype.equivFinOfCardEq <| by rw [Fintype.card_subtype_compl, Fintype.card_coe, hs] with he
  refine ⟨V, U, e, (isUnit_iff_isUnit_det _).2 hVdet, isUnit_prod_comp_inverse _, ?_⟩
  rw [hM, ← diagonal_one, ← diagonal_zero, fromBlocks_diagonal, submatrix_diagonal_equiv]
  refine congrArg _ (funext fun i ↦ ?_)
  split_ifs with hi <;> simp [he, hi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5acbd5f7b8f25078c403b18cb5616273c22d3a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
