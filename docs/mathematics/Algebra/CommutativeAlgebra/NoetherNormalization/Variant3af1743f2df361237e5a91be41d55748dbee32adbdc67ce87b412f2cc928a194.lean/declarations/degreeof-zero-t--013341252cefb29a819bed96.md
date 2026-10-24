# degreeOf_zero_t

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19bd3baac472298f31fa6148da114b6f39d02e78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:394e2e0b-4c3a-e057-2b20-7ac33b67b578",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:caac5ce2-7d4c-f16b-1a7c-5790bf5ab04b",
  "kind": "lemma",
  "lexical_name": "degreeOf_zero_t",
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
  "slug": "degreeof-zero-t--013341252cefb29a819bed96",
  "source": {
    "blob": "19bd3baac472298f31fa6148da114b6f39d02e78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 97,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:013341252cefb29a819bed96ac42b4b7f5287dbf8a65ae4b396aa467e63594b1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caac5ce2-7d4c-f16b-1a7c-5790bf5ab04b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma degreeOf_zero_t {a : k} (ha : a ≠ 0) : ((T f) (monomial v a)).degreeOf 0 =
    ∑ i : Fin (n + 1), (r i) * v i := by
  rw [← natDegree_finSuccEquiv, monomial_eq, Finsupp.prod_pow v fun a ↦ X a]
  simp only [Fin.prod_univ_succ, Fin.sum_univ_succ, map_mul, map_prod, map_pow,
    AlgEquiv.ofAlgHom_apply, MvPolynomial.aeval_C, MvPolynomial.aeval_X, if_pos, Fin.succ_ne_zero,
    ite_false, one_smul, map_add, finSuccEquiv_X_zero, finSuccEquiv_X_succ, algebraMap_eq]
  have h (i : Fin n) :
      (Polynomial.C (X (R := k) i) + Polynomial.X ^ r i.succ) ^ v i.succ ≠ 0 :=
    pow_ne_zero (v i.succ) (leadingCoeff_ne_zero.mp <| by simp [add_comm, leadingCoeff_X_pow_add_C])
  rw [natDegree_mul (by simp [ha]) (mul_ne_zero (by simp) (Finset.prod_ne_zero_iff.mpr
    (fun i _ ↦ h i))), natDegree_mul (by simp) (Finset.prod_ne_zero_iff.mpr (fun i _ ↦ h i)),
    natDegree_prod _  _ (fun i _ ↦ h i), natDegree_finSuccEquiv, degreeOf_C]
  simpa only [natDegree_pow, zero_add, natDegree_X, mul_one, Fin.val_zero, pow_zero, one_mul,
    add_right_inj] using Finset.sum_congr rfl (fun i _ ↦ by
    rw [add_comm (Polynomial.C _), natDegree_X_pow_add_C, mul_comm])

/- `T` maps different monomials of `f` to polynomials with different degrees in `X_0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19bd3baac472298f31fa6148da114b6f39d02e78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
