# det_taylorLinearEquiv_toLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90ddc2d3-0c6d-d9b9-6363-4a90f4005028",
  "kind": "theorem",
  "lexical_name": "det_taylorLinearEquiv_toLinearMap",
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
  "slug": "det-taylorlinearequiv-tolinearmap--b0d1a80ffab1dad8730223b3",
  "source": {
    "blob": "8715ce3b0e0d6807062d40b3ee0c18a4a751f15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 178,
    "path": "GRWTSK/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0d1a80ffab1dad8730223b36fecbb6af2107da08a54903007fe6e2d5ff47e7a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90ddc2d3-0c6d-d9b9-6363-4a90f4005028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem det_taylorLinearEquiv_toLinearMap :
    (taylorLinearEquiv r n).toLinearMap.det = 1 := by
  nontriviality R
  rw [← LinearMap.det_toMatrix (degreeLT.basis R n),
    Matrix.det_of_isUpperTriangular, Fintype.prod_eq_one]
  · intro i
    rw [LinearMap.toMatrix_apply, degreeLT.basis_repr, ← natDegree_X_pow (R := R) (i : ℕ)]
    change (taylor r (degreeLT.basis R n i)).coeff _ = 1
    rw [degreeLT.basis_val, coeff_taylor_natDegree, leadingCoeff_X_pow]
  · intro i j hji
    rw [LinearMap.toMatrix_apply, LinearEquiv.coe_coe, degreeLT.basis_repr]
    change (taylor r (degreeLT.basis R n j)).coeff i = 0
    rw [degreeLT.basis_val, coeff_eq_zero_of_degree_lt (by simpa [-taylor_X_pow, -taylor_pow])]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8715ce3b0e0d6807062d40b3ee0c18a4a751f15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
