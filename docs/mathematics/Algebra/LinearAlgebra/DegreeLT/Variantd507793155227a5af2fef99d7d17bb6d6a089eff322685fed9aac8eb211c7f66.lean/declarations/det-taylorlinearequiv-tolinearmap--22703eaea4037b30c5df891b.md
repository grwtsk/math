# det_taylorLinearEquiv_toLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0a78299-2874-c110-bd39-cae07bc27200",
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
  "slug": "det-taylorlinearequiv-tolinearmap--22703eaea4037b30c5df891b",
  "source": {
    "blob": "4059620b60d91b2dcb0e5a63d727df112a568740",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 186,
    "path": "GRWTSK/Algebra/LinearAlgebra/DegreeLT/Variantd507793155227a5af2fef99d7d17bb6d6a089eff322685fed9aac8eb211c7f66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22703eaea4037b30c5df891ba846bd8ff3f6d1394e703306b8d5b55e76e3733c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DegreeLT/Variantd507793155227a5af2fef99d7d17bb6d6a089eff322685fed9aac8eb211c7f66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0a78299-2874-c110-bd39-cae07bc27200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–199.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DegreeLT/Variantd507793155227a5af2fef99d7d17bb6d6a089eff322685fed9aac8eb211c7f66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DegreeLT/Variantd507793155227a5af2fef99d7d17bb6d6a089eff322685fed9aac8eb211c7f66.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4059620b60d91b2dcb0e5a63d727df112a568740` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
