# coeff_det_one_add_X_smul_eq_sum_minors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f1f9f1b2ee9a0af47373b039eab1bb5d7f33ccd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc864509-c74c-c19f-3c98-647cef4358d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1a5a9f5-81d6-2514-54f1-b8758cea25ad",
  "kind": "theorem",
  "lexical_name": "coeff_det_one_add_X_smul_eq_sum_minors",
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
  "slug": "coeff-det-one-add-x-smul-eq-sum-minors--805ff76443773f46a8a56c0d",
  "source": {
    "blob": "0f1f9f1b2ee9a0af47373b039eab1bb5d7f33ccd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 399,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:805ff76443773f46a8a56c0dd53102b1a4b9ae57a6dca0b74937048703b7092d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1a5a9f5-81d6-2514-54f1-b8758cea25ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_det_one_add_X_smul_eq_sum_minors
    (M : Matrix n n R) (k : ℕ) :
    (det (1 + (X : R[X]) • M.map C)).coeff k =
    ∑ s ∈ Finset.univ.powersetCard k,
      (M.submatrix (Subtype.val : s → n) (Subtype.val : s → n)).det := by
  simp only [det]
  let D := (detRowAlternating : (n → R[X]) [⋀^n]→ₗ[R[X]] R[X])
  rw [add_comm]
  change (D (fun i => ((X : R[X]) • M.map C) i + (1 : Matrix n n R[X]) i)).coeff k = _
  conv_lhs => rw [show (fun i ↦ ((X : R[X]) • M.map C) i + (1 : Matrix n n R[X]) i) =
      (fun i => ((X : R[X]) • M.map C) i) + (fun i => (1 : Matrix n n R[X]) i) from rfl]
  conv_lhs => rw [D.map_add_univ]
  have h_map : ∀ s : Finset n,
        (s.piecewise (fun i ↦ (M.map C) i)
          (fun i ↦ (1 : Matrix n n R[X]) i) : Matrix n n R[X]) =
        Matrix.map (s.piecewise M (1 : Matrix n n R)) C := by
      intro s; ext i j
      simp only [Finset.piecewise, Matrix.map_apply]
      split_ifs with h <;> simp [Matrix.one_apply]
  have h_det : ∀ s : Finset n,
      D (s.piecewise (fun i ↦ (M.map C) i)
        (fun i ↦ (1 : Matrix n n R[X]) i)) =
      C (det (s.piecewise M (1 : Matrix n n R))) := by
    intro s; change det _ = _
    rw [h_map]; exact (RingHom.map_det C _).symm
  calc (∑ s : Finset n, D (Finset.piecewise s (fun i ↦ ((X : R[X]) • M.map C) i)
            (fun i ↦ (1 : Matrix n n R[X]) i))).coeff k
      _ = (∑ s : Finset n, (X : R[X]) ^ s.card •
            D (s.piecewise (fun i ↦ (M.map C) i)
              (fun i ↦ (1 : Matrix n n R[X]) i))).coeff k := by
        congr 3 with s
        have h_smul : s.piecewise (fun i ↦ ((X : R[X]) • M.map C) i)
            (fun i ↦ (1 : Matrix n n R[X]) i) =
            fun i => (if i ∈ s then (X : R[X]) else 1) •
              s.piecewise (fun i ↦ (M.map C) i) (fun i ↦ (1 : Matrix n n R[X]) i) i := by
          funext i j
          simp only [piecewise, Pi.smul_apply, smul_eq_mul, ite_mul, one_mul]
          split_ifs <;> rfl
        rw [h_smul, D.map_smul_univ]
        congr 1
        simp only [Finset.prod_ite_mem, Finset.univ_inter, Finset.prod_const]
      _ = ∑ s : Finset n, ((X : R[X]) ^ s.card •
            D (Finset.piecewise s (fun i ↦ (M.map C) i)
              (fun i ↦ (1 : Matrix n n R[X]) i))).coeff k := by
        simp only [Polynomial.finsetSum_coeff]
      _ = _ := by
        simp_rw [h_det, smul_eq_mul, mul_comm (X ^ _) (C _)]
        simp_rw [C_mul_X_pow_eq_monomial, coeff_monomial]
        rw [← Finset.sum_filter]
        have h_set : Finset.univ.filter (fun s : Finset n => s.card = k) =
            Finset.univ.powersetCard k := by
          ext s; simp [Finset.mem_powersetCard]
        rw [h_set]
        exact Finset.sum_congr rfl fun s _ => det_piecewise_one_eq_submatrix_det M s

/-- The coefficients of the characteristic polynomial are signed sums of principal minors.
Specifically, the (n-k)-th coefficient of the characteristic polynomial of M equals
`(-1)^k` times the sum of all k×k principal minors of M. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f1f9f1b2ee9a0af47373b039eab1bb5d7f33ccd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
