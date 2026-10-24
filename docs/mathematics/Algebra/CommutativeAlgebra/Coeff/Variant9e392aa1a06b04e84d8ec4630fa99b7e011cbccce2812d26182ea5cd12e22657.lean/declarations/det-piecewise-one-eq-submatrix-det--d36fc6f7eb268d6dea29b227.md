# det_piecewise_one_eq_submatrix_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:805e5eaf-98fd-72c0-1371-781a15c9e706",
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
  "slug": "det-piecewise-one-eq-submatrix-det--d36fc6f7eb268d6dea29b227",
  "source": {
    "blob": "0a2b30d6152c6119a3289753e0bd186b076b6bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 384,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant9e392aa1a06b04e84d8ec4630fa99b7e011cbccce2812d26182ea5cd12e22657.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d36fc6f7eb268d6dea29b22789b216b596a3800b49788dd80be88d2cc02e8342",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Coeff/Variant9e392aa1a06b04e84d8ec4630fa99b7e011cbccce2812d26182ea5cd12e22657.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:805e5eaf-98fd-72c0-1371-781a15c9e706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–406.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Coeff/Variant9e392aa1a06b04e84d8ec4630fa99b7e011cbccce2812d26182ea5cd12e22657.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant9e392aa1a06b04e84d8ec4630fa99b7e011cbccce2812d26182ea5cd12e22657.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a2b30d6152c6119a3289753e0bd186b076b6bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
