# coeff_charpoly_mem_ideal_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3b51fa2-36b5-b82e-c132-3705456f676d",
  "kind": "theorem",
  "lexical_name": "coeff_charpoly_mem_ideal_pow",
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
  "slug": "coeff-charpoly-mem-ideal-pow--4538946579230f341075273a",
  "source": {
    "blob": "94bbe9b6a583bc5e8406ff6594ed66ef6f168d52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 252,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variantc35c4ac3336ec0902566608616d708e41f7cf841ef327c7873bb7042fa6be0de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4538946579230f341075273a6aa993d8739c7fff0ba5291d3c0fe6783165e5d4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Coeff/Variantc35c4ac3336ec0902566608616d708e41f7cf841ef327c7873bb7042fa6be0de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3b51fa2-36b5-b82e-c132-3705456f676d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_charpoly_mem_ideal_pow {I : Ideal R} (h : ∀ i j, M i j ∈ I) (k : ℕ) :
    M.charpoly.coeff k ∈ I ^ (Fintype.card n - k) := by
  delta charpoly
  rw [Matrix.det_apply, finset_sum_coeff]
  apply sum_mem
  rintro c -
  rw [coeff_smul, Submodule.smul_mem_iff']
  have : ∑ x : n, 1 = Fintype.card n := by rw [Finset.sum_const, card_univ, smul_eq_mul, mul_one]
  rw [← this]
  apply coeff_prod_mem_ideal_pow_tsub
  rintro i - (_ | k)
  · rw [Nat.zero_eq]  -- porting note: `rw [Nat.zero_eq]` was not present
    rw [tsub_zero, pow_one, charmatrix_apply, coeff_sub, coeff_X_mul_zero, coeff_C_zero, zero_sub]
    apply neg_mem  -- porting note: was `rw [neg_mem_iff]`, but Lean could not synth `NegMemClass`
    exact h (c i) i
  · rw [Nat.succ_eq_one_add, tsub_self_add, pow_zero, Ideal.one_eq_top]
    exact Submodule.mem_top
#align coeff_charpoly_mem_ideal_pow coeff_charpoly_mem_ideal_pow

end Ideal

section reverse

open Polynomial
open LaurentPolynomial hiding C

/-- The right hand side of the equality in this lemma statement is sometimes called the
"characteristic power series" of a matrix.

It has some advantages over the characteristic polynomial, including the fact that it can be
extended to infinite dimensions (for appropriate operators). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Coeff/Variantc35c4ac3336ec0902566608616d708e41f7cf841ef327c7873bb7042fa6be0de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variantc35c4ac3336ec0902566608616d708e41f7cf841ef327c7873bb7042fa6be0de.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94bbe9b6a583bc5e8406ff6594ed66ef6f168d52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
