# leftMulMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ce20ada3f3ed6c5d5b05e9dd080b01208d8a2ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b90c1936-a240-8954-e3b5-bf471ab544c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21d930a0-a0a1-ad9e-989d-860206342784",
  "kind": "theorem",
  "lexical_name": "leftMulMatrix",
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
  "slug": "leftmulmatrix--8fb00a1b7514a3c1d870f6c5",
  "source": {
    "blob": "3ce20ada3f3ed6c5d5b05e9dd080b01208d8a2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 221,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fb00a1b7514a3c1d870f6c5deeca37caa8a293da5469eb769c85c2fff6c7cdb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21d930a0-a0a1-ad9e-989d-860206342784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem leftMulMatrix (pb : PowerBasis A S) : Algebra.leftMulMatrix pb.basis pb.gen =
    @Matrix.of (Fin pb.dim) (Fin pb.dim) _ fun i j =>
      if ↑j + 1 = pb.dim then -pb.minpolyGen.coeff ↑i else if (i : ℕ) = j + 1 then 1 else 0 := by
  cases subsingleton_or_nontrivial A; · apply Subsingleton.elim
  rw [Algebra.leftMulMatrix_apply, ← LinearEquiv.eq_symm_apply, LinearMap.toMatrix_symm]
  refine' pb.basis.ext fun k => _
  simp_rw [Matrix.toLin_self, Matrix.of_apply, pb.basis_eq_pow]
  apply (pow_succ _ _).symm.trans
  split_ifs with h
  · simp_rw [h, neg_smul, Finset.sum_neg_distrib, eq_neg_iff_add_eq_zero]
    convert pb.aeval_minpolyGen
    rw [add_comm, aeval_eq_sum_range, Finset.sum_range_succ, ← leadingCoeff,
      pb.minpolyGen_monic.leadingCoeff, one_smul, natDegree_minpolyGen, Finset.sum_range]
  · rw [Fintype.sum_eq_single (⟨(k : ℕ) + 1, lt_of_le_of_ne k.2 h⟩ : Fin pb.dim), if_pos, one_smul]
    · rfl
    intro x hx
    rw [if_neg, zero_smul]
    apply mt Fin.ext hx
#align power_basis.left_mul_matrix PowerBasis.leftMulMatrix

end minpoly

section Equiv

variable [Algebra A S] {S' : Type*} [Ring S'] [Algebra A S']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ce20ada3f3ed6c5d5b05e9dd080b01208d8a2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
