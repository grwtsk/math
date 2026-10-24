# rank_submatrix_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:219eea21-5f97-1287-a4bc-b9c88fab0c13",
  "kind": "theorem",
  "lexical_name": "rank_submatrix_le",
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
  "slug": "rank-submatrix-le--e3dd7e7a3abe704aeb918443",
  "source": {
    "blob": "d5acbd5f7b8f25078c403b18cb5616273c22d3a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3dd7e7a3abe704aeb9184435a2ae5f18362b8605fb3dfa4600cfa583ca86654",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:219eea21-5f97-1287-a4bc-b9c88fab0c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_submatrix_le [CommSemiring R] [StrongRankCondition R] [Fintype n₀] (A : Matrix m n R)
    (r : m₀ → m) (c : n₀ → n) : (A.submatrix r c).rank ≤ A.rank := by
  nontriviality R
  have := Module.Finite.span_of_finite R (Set.finite_range (A.submatrix r id).col)
  calc
    _ = (((A.submatrix r id)ᵀᵀ.submatrix id c)ᵀᵀ).rank := by simp
    _ ≤ finrank R (span R (range (A.submatrix r id).col)) := by
      rw [rank, Matrix.mulVecLin_transpose, Matrix.transpose_submatrix, transpose_transpose,
        range_vecMulLinear, ← Matrix.transpose_submatrix, row_transpose]
      exact Submodule.finrank_mono (Submodule.span_mono (fun v ⟨j, hj⟩ => ⟨c j, hj⟩))
    _ = (A.submatrix r id)ᵀᵀ.rank := by
      rw [rank, Matrix.mulVecLin_transpose, range_vecMulLinear]
      rfl
    _ = (A.submatrix r (Equiv.refl n)).rank := by simp
  rw [rank, rank, mulVecLin_submatrix, LinearMap.range_comp, LinearMap.range_comp,
    show LinearMap.funLeft R R (Equiv.refl n).symm = LinearEquiv.funCongrLeft R R
      (Equiv.refl n).symm from rfl, LinearEquiv.range, Submodule.map_top]
  exact Submodule.finrank_map_le _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5acbd5f7b8f25078c403b18cb5616273c22d3a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
