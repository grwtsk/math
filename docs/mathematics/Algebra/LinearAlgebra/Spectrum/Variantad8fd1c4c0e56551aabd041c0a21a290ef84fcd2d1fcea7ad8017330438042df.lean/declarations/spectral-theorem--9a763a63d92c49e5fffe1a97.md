# spectral_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7d16e2f-f125-ac26-4659-d01cc94ced61",
  "kind": "theorem",
  "lexical_name": "spectral_theorem",
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
  "slug": "spectral-theorem--9a763a63d92c49e5fffe1a97",
  "source": {
    "blob": "630f133ae01b20ef4890d8c29a3a776048af3e73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 115,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a763a63d92c49e5fffe1a9716941f9e66051d7694612bb8e2d9bfc30aae7763",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7d16e2f-f125-ac26-4659-d01cc94ced61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectral_theorem :
    hA.eigenvectorMatrixInv * A = diagonal ((↑) ∘ hA.eigenvalues) * hA.eigenvectorMatrixInv := by
  rw [eigenvectorMatrixInv, PiLp.basis_toMatrix_basisFun_mul]
  ext i j
  have := isHermitian_iff_isSymmetric.1 hA
  convert this.eigenvectorBasis_apply_self_apply finrank_euclideanSpace (EuclideanSpace.single j 1)
    ((Fintype.equivOfCardEq (Fintype.card_fin _)).symm i) using 1
  · dsimp only [EuclideanSpace.single, toEuclideanLin_piLp_equiv_symm, toLin'_apply,
      Matrix.of_apply, IsHermitian.eigenvectorBasis]
    simp_rw [mulVec_single, mul_one, OrthonormalBasis.coe_toBasis_repr_apply,
      OrthonormalBasis.repr_reindex]
    rfl
  · simp only [diagonal_mul, (· ∘ ·), eigenvalues]
    rw [eigenvectorBasis, Basis.toMatrix_apply, OrthonormalBasis.coe_toBasis_repr_apply,
      OrthonormalBasis.repr_reindex, eigenvalues₀, PiLp.basisFun_apply, WithLp.equiv_symm_single]
#align matrix.is_hermitian.spectral_theorem Matrix.IsHermitian.spectral_theorem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `630f133ae01b20ef4890d8c29a3a776048af3e73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
