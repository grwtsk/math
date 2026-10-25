# det_smul_inv_vecMul_eq_cramer_transpose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d00e22f2-4677-4bea-7dfa-e41e29c18da2",
  "kind": "theorem",
  "lexical_name": "det_smul_inv_vecMul_eq_cramer_transpose",
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
  "slug": "det-smul-inv-vecmul-eq-cramer-transpose--10f6e7710a40cfc527234748",
  "source": {
    "blob": "c4f01f4197240392f2cdc71430d0157e0c8de3e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 584,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant35193461e76b0f3fc1dd8fa6d24dcba92de4c563cb2ada0bfc84cc6095453340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10f6e7710a40cfc52723474810a27971bde8fa7940cacc1a3191c0f68b637981",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant35193461e76b0f3fc1dd8fa6d24dcba92de4c563cb2ada0bfc84cc6095453340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d00e22f2-4677-4bea-7dfa-e41e29c18da2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_smul_inv_vecMul_eq_cramer_transpose (A : Matrix n n α) (b : n → α) (h : IsUnit A.det) :
    A.det • A⁻¹.vecMul b = cramer Aᵀ b := by
  rw [← A⁻¹.transpose_transpose, vecMul_transpose, transpose_nonsing_inv, ← det_transpose,
    Aᵀ.det_smul_inv_mulVec_eq_cramer _ (isUnit_det_transpose A h)]
#align matrix.det_smul_inv_vec_mul_eq_cramer_transpose Matrix.det_smul_inv_vecMul_eq_cramer_transpose

/-! ### Inverses of permutated matrices

Note that the simp-normal form of `Matrix.reindex` is `Matrix.submatrix`, so we prove most of these
results about only the latter.
-/


section Submatrix

variable [Fintype m]

variable [DecidableEq m]

/-- `A.submatrix e₁ e₂` is invertible if `A` is -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant35193461e76b0f3fc1dd8fa6d24dcba92de4c563cb2ada0bfc84cc6095453340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant35193461e76b0f3fc1dd8fa6d24dcba92de4c563cb2ada0bfc84cc6095453340.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f01f4197240392f2cdc71430d0157e0c8de3e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
