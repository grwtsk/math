# stdBasis_repr_eq_matrixToStdBasis_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ae254de-dd39-b02a-22d4-93669093e53f",
  "kind": "theorem",
  "lexical_name": "stdBasis_repr_eq_matrixToStdBasis_mul",
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
  "slug": "stdbasis-repr-eq-matrixtostdbasis-mul--9ae1ed78cfc78f4205656ee6",
  "source": {
    "blob": "82a4cd2cca4d1719930333affd8822ea9a3db609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 599,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ae1ed78cfc78f4205656ee60f1e545b7d18f95fd4a9e94f807ac835d972a09b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ae254de-dd39-b02a-22d4-93669093e53f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stdBasis_repr_eq_matrixToStdBasis_mul (x : (K →+* ℂ) → ℂ)
    (hx : ∀ φ, conj (x φ) = x (ComplexEmbedding.conjugate φ)) (c : index K) :
    ((stdBasis K).repr (commMap K x) c : ℂ) =
      (matrixToStdBasis K *ᵥ (x ∘ (indexEquiv K))) c := by
  simp_rw [commMap, matrixToStdBasis, LinearMap.coe_mk, AddHom.coe_mk,
    mulVec, dotProduct, Function.comp_apply, index, Fintype.sum_sum_type,
    diagonal_one, reindex_apply, ← univ_product_univ, sum_product,
    indexEquiv_apply_isReal, Fin.sum_univ_two, indexEquiv_apply_isComplex_fst,
    indexEquiv_apply_isComplex_snd, smul_of, smul_cons, smul_eq_mul,
    mul_one, Matrix.smul_empty, Equiv.prodComm_symm, Equiv.coe_prodComm]
  cases c with
  | inl w =>
      simp_rw [stdBasis_apply_isReal, fromBlocks_apply₁₁, fromBlocks_apply₁₂,
        one_apply, Matrix.zero_apply, ite_mul, one_mul, zero_mul, sum_ite_eq, mem_univ, ite_true,
        add_zero, sum_const_zero, add_zero, ← conj_eq_iff_re, hx (embedding w.val),
        conjugate_embedding_eq_of_isReal w.prop]
  | inr c =>
    rcases c with ⟨w, j⟩
    fin_cases j
    · simp only [Fin.zero_eta, Fin.isValue, stdBasis_apply_isComplex_fst, re_eq_add_conj,
        mul_neg, fromBlocks_apply₂₁, Matrix.zero_apply, zero_mul, sum_const_zero,
        fromBlocks_apply₂₂, submatrix_apply, Prod.swap_prod_mk, blockDiagonal_apply, of_apply,
        cons_val', cons_val_zero, empty_val', cons_val_fin_one, ite_mul, cons_val_one,
        sum_add_distrib, sum_ite_eq, mem_univ, ↓reduceIte, ← hx (embedding w), zero_add]
      ring
    · simp only [Fin.mk_one, Fin.isValue, stdBasis_apply_isComplex_snd, im_eq_sub_conj,
        mul_neg, fromBlocks_apply₂₁, Matrix.zero_apply, zero_mul, sum_const_zero,
        fromBlocks_apply₂₂, submatrix_apply, Prod.swap_prod_mk, blockDiagonal_apply, of_apply,
        cons_val', cons_val_zero, empty_val', cons_val_fin_one, cons_val_one, ite_mul, neg_mul,
        sum_add_distrib, sum_ite_eq, mem_univ, ↓reduceIte, ← hx (embedding w), zero_add]
      ring_nf; simp [field]

end stdBasis

noncomputable section integerLattice

variable [NumberField K]

open Module.Free

open scoped nonZeroDivisors

/-- The image of the ring of integers of `K` in the mixed space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a4cd2cca4d1719930333affd8822ea9a3db609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
