# det_piecewise_one_eq_submatrix_det

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
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c32a38a-edf4-b3ff-676d-a088a915af2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0399867f-1df1-62dc-38d5-b1cf34bf2df3",
  "kind": "lemma",
  "lexical_name": "det_piecewise_one_eq_submatrix_det",
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
  "slug": "det-piecewise-one-eq-submatrix-det--6d9a4f48212e068a6f11a123",
  "source": {
    "blob": "0f1f9f1b2ee9a0af47373b039eab1bb5d7f33ccd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 376,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d9a4f48212e068a6f11a123f679317a22ef508f181463daff0c5d7392a24ad1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0399867f-1df1-62dc-38d5-b1cf34bf2df3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma det_piecewise_one_eq_submatrix_det
    (M : Matrix n n R) (s : Finset n) :
    det (Matrix.of <| s.piecewise M.row (1 : Matrix n n R).row) =
    (M.submatrix (↑) (↑) : Matrix s s R).det := by
  let e := Equiv.sumCompl (fun x => x ∈ s)
  let +generalize A : Matrix n n R := Matrix.of (s.piecewise M (1 : Matrix n n R))
  rw [← Matrix.det_submatrix_equiv_self e A]
  have h_blocks : A.submatrix e e =
      Matrix.fromBlocks
        (M.submatrix Subtype.val Subtype.val)
        (M.submatrix Subtype.val Subtype.val) 0 1 := by
    ext (i | i) (j | j) <;> dsimp [A, e]
    · simp only [Finset.piecewise, ite_eq_left i.prop]
    · simp only [Finset.piecewise, ite_eq_left i.prop]
    · simp only [Finset.piecewise, ite_eq_right i.prop]
      exact Matrix.one_apply_ne (fun h => i.prop (h ▸ j.prop))
    · simp only [Finset.piecewise, ite_eq_right i.prop, Matrix.one_apply, Subtype.ext_iff]
  rw [h_blocks, Matrix.det_fromBlocks_zero₂₁, Matrix.det_one, mul_one]

set_option backward.isDefEq.respectTransparency.types false in
/-- The k-th coefficient of `det (1 + X • M)` equals the sum of all k×k principal minors of M.
This generalizes `coeff_det_one_add_X_smul_one` (the k = 1 case, which gives the trace)
and `det_eq_sign_charpoly_coeff` (the k = n case, which gives the determinant). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f1f9f1b2ee9a0af47373b039eab1bb5d7f33ccd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
