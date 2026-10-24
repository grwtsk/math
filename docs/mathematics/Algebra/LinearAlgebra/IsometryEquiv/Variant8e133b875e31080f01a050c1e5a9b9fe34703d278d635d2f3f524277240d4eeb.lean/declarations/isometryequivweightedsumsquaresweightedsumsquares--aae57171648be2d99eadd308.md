# isometryEquivWeightedSumSquaresWeightedSumSquares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad8becf3e62627e4ea4f09b773ec79ada0045eec7b93fef7ebe18ffe846736c9",
  "kind": "def",
  "lexical_name": "isometryEquivWeightedSumSquaresWeightedSumSquares",
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
  "slug": "isometryequivweightedsumsquaresweightedsumsquares--aae57171648be2d99eadd308",
  "source": {
    "blob": "2e42b0391d785897726d0e5802cdbed3a81b8d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 199,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aae57171648be2d99eadd308e78e7f6b8cbd5ffb9a75fc82c15013bd0fb96743",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad8becf3e62627e4ea4f09b773ec79ada0045eec7b93fef7ebe18ffe846736c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isometryEquivWeightedSumSquaresWeightedSumSquares (u : ι → Sˣ) (h : ∀ i, w' i * u i ^ 2 = w i) :
    IsometryEquiv (weightedSumSquares R w) (weightedSumSquares R w') where
  toFun x := u • x
  invFun x := u⁻¹ • x
  left_inv x := by simp
  right_inv x := by simp
  map_add' x y := by simp
  map_smul' v x := by
    ext i
    simp only [Pi.smul_apply', Pi.smul_apply, RingHom.id_apply, smul_comm]
  map_app' x := by
    simp only [weightedSumSquares_apply, Pi.smul_apply']
    refine Finset.sum_congr rfl fun j hj => ?_
    rw [smul_mul_smul, Units.smul_def, smul_smul, ← pow_two, ← h]
    simp

end QuadraticForm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e42b0391d785897726d0e5802cdbed3a81b8d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
