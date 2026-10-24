# exists_rank_normal_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31faae9f47694f8f386f96f3529dfb84a0d6fb2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 422,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2db8f87a-8509-b762-bb04-f46ba3a4e027",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:518952a9-dd06-16ae-52e3-d120e20743a6",
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
  "slug": "exists-rank-normal-form--22f63d7d0b8c0573b6d864a3",
  "source": {
    "blob": "31faae9f47694f8f386f96f3529dfb84a0d6fb2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 422,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22f63d7d0b8c0573b6d864a377d870c7afba971499542240802d50f212c5a1fd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:518952a9-dd06-16ae-52e3-d120e20743a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–454.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31faae9f47694f8f386f96f3529dfb84a0d6fb2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
