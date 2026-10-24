# matPolyEquiv_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "961372eefc8a033c2e26d1b9c59f1a67e7191508",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db43b8e2-4c28-57a1-2e4e-d58bc490ca86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29bb098c-7129-ae56-a28f-bf186264243e",
  "kind": "theorem",
  "lexical_name": "matPolyEquiv_eval",
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
  "slug": "matpolyequiv-eval--350bda16acec98f761e2adf7",
  "source": {
    "blob": "961372eefc8a033c2e26d1b9c59f1a67e7191508",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 162,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:350bda16acec98f761e2adf77a7c95b28083fb322a5f48ea976ce55ff5120887",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29bb098c-7129-ae56-a28f-bf186264243e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matPolyEquiv_eval (M : Matrix n n R[X]) (r : R) (i j : n) :
    (matPolyEquiv M).eval ((scalar n) r) i j = (M i j).eval r := by
  unfold Polynomial.eval
  rw [Polynomial.eval₂_def, Polynomial.eval₂_def]  -- porting note: was `unfold eval₂`
  trans Polynomial.sum (matPolyEquiv M) fun (e : ℕ) (a : Matrix n n R) => (a * (scalar n) r ^ e) i j
  · unfold Polynomial.sum
    simp only [sum_apply]
    dsimp
  · simp_rw [← RingHom.map_pow, ← (scalar.commute _ _).eq]
    simp only [coe_scalar, Matrix.one_mul, RingHom.id_apply, Pi.smul_apply, smul_eq_mul,
      Algebra.smul_mul_assoc]
    -- porting note: the `have` was present and unused also in the original
    --have h : ∀ x : ℕ, (fun (e : ℕ) (a : R) => r ^ e * a) x 0 = 0 := by simp
    simp only [Polynomial.sum, matPolyEquiv_coeff_apply, mul_comm]
    simp only [smul_apply, matPolyEquiv_coeff_apply, smul_eq_mul]  -- porting note: added
    apply (Finset.sum_subset (support_subset_support_matPolyEquiv _ _ _) _).symm
    intro n _hn h'n
    rw [not_mem_support_iff] at h'n
    simp only [h'n, zero_mul]
    simp only [mul_zero]  -- porting note: added
#align matrix.mat_poly_equiv_eval Matrix.matPolyEquiv_eval

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `961372eefc8a033c2e26d1b9c59f1a67e7191508` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
