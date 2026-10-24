# stdBasis_repr_eq_matrixToStdBasis_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f9f0541131a9c5fdd24e452b713156eeb5398a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 602,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a0ab45b-0667-a39e-91a1-bdba3609941e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64477dfe-6cde-3037-4055-024d50b8143d",
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
  "slug": "stdbasis-repr-eq-matrixtostdbasis-mul--82a68b5a6c5579de81b18ab5",
  "source": {
    "blob": "9f9f0541131a9c5fdd24e452b713156eeb5398a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 602,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82a68b5a6c5579de81b18ab56b1e6e09209867e712643d591819bdbe42d4b56e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64477dfe-6cde-3037-4055-024d50b8143d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–644.

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
    · simp only [Fin.zero_eta, Fin.isValue, id_eq, stdBasis_apply_isComplex_fst, re_eq_add_conj,
        mul_neg, fromBlocks_apply₂₁, zero_apply, zero_mul, sum_const_zero, fromBlocks_apply₂₂,
        submatrix_apply, Prod.swap_prod_mk, blockDiagonal_apply, of_apply, cons_val', cons_val_zero,
        empty_val', cons_val_fin_one, ite_mul, cons_val_one, head_cons, sum_add_distrib, sum_ite_eq,
        mem_univ, ↓reduceIte, ← hx (embedding w), zero_add]
      field_simp
    · simp only [Fin.mk_one, Fin.isValue, id_eq, stdBasis_apply_isComplex_snd, im_eq_sub_conj,
        mul_neg, fromBlocks_apply₂₁, zero_apply, zero_mul, sum_const_zero, fromBlocks_apply₂₂,
        submatrix_apply, Prod.swap_prod_mk, blockDiagonal_apply, of_apply, cons_val', cons_val_zero,
        empty_val', cons_val_fin_one, cons_val_one, head_fin_const, ite_mul, neg_mul, head_cons,
        sum_add_distrib, sum_ite_eq, mem_univ, ↓reduceIte, ← hx (embedding w), zero_add]
      ring_nf; field_simp

end stdBasis

noncomputable section integerLattice

variable [NumberField K]

open Module.Free

open scoped nonZeroDivisors

/-- The image of the ring of integers of `K` in the mixed space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f9f0541131a9c5fdd24e452b713156eeb5398a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
