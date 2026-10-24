# leftMulMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68e5034e-f8b5-0c6c-8b8f-b5dde84c75fb",
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
  "slug": "leftmulmatrix--d0745b732f8d7e7bd7ec3928",
  "source": {
    "blob": "793eb36b4907170e6f62daefcbad72b68b648852",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 229,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0745b732f8d7e7bd7ec39288ee4015a3292c5e7c0ced068b3f90fdc8069a5f5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68e5034e-f8b5-0c6c-8b8f-b5dde84c75fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–254.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `793eb36b4907170e6f62daefcbad72b68b648852` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
