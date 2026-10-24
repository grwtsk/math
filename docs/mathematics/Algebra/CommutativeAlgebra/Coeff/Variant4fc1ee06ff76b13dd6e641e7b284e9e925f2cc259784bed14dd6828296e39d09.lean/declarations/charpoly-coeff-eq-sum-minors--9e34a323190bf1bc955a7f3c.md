# charpoly_coeff_eq_sum_minors

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
      "line": 457,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfef7a44-9168-96f9-79a8-635475c14292",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7d7cbcd-938d-749d-4125-63da8e94bfe6",
  "kind": "theorem",
  "lexical_name": "charpoly_coeff_eq_sum_minors",
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
  "slug": "charpoly-coeff-eq-sum-minors--9e34a323190bf1bc955a7f3c",
  "source": {
    "blob": "0f1f9f1b2ee9a0af47373b039eab1bb5d7f33ccd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 457,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e34a323190bf1bc955a7f3c0781577d1482dc6c0881897d45eac8c3f56c043f",
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

Occurrence: `result:b7d7cbcd-938d-749d-4125-63da8e94bfe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem charpoly_coeff_eq_sum_minors
    (M : Matrix n n R) (k : ℕ) (hk : k ≤ Fintype.card n) :
    M.charpoly.coeff (Fintype.card n - k) =
    (-1) ^ k * ∑ s ∈ Finset.univ.powersetCard k,
      (M.submatrix (Subtype.val : s → n) (Subtype.val : s → n)).det := by
  nontriviality R
  have hnd := M.charpoly_natDegree_eq_dim
  have hrev : M.charpoly.coeff (Fintype.card n - k) = M.charpoly.reverse.coeff k := by
    simp [Polynomial.coeff_reverse, hnd, hk]
  rw [hrev, M.reverse_charpoly]
  have hcharpolyRev : M.charpolyRev = det (1 + (X : R[X]) • (-M).map C) := by
    simp only [charpolyRev, sub_eq_add_neg]
    congr 2
    rw [Matrix.map_neg C (map_neg C) M, smul_neg]
  rw [hcharpolyRev, coeff_det_one_add_X_smul_eq_sum_minors]
  simp only [submatrix_neg, Pi.neg_apply, det_neg, Fintype.card_coe, mul_sum]
  exact Finset.sum_congr rfl fun s hs => by rw [(Finset.mem_powersetCard.mp hs).2]

end reverse

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f1f9f1b2ee9a0af47373b039eab1bb5d7f33ccd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
