# isAdjointPair_toLinearMap₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b90c06cd39f14a71893be45074492f8f9967e604",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 574,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ec53e00-ed1a-aebf-28f2-cf0a83c7060a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc4ae7f6-fdd3-4a64-8b0f-1aabfb0e5378",
  "kind": "theorem",
  "lexical_name": "isAdjointPair_toLinearMap₂",
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
  "slug": "isadjointpair-tolinearmap--cee2f34b6c427f0bdea339d0",
  "source": {
    "blob": "b90c06cd39f14a71893be45074492f8f9967e604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 574,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cee2f34b6c427f0bdea339d04ddb708c712d1766ddc2b7baf65994bd9658cc94",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc4ae7f6-fdd3-4a64-8b0f-1aabfb0e5378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAdjointPair_toLinearMap₂ :
    LinearMap.IsAdjointPair (Matrix.toLinearMap₂ b₁ b₁ J) (Matrix.toLinearMap₂ b₂ b₂ J')
        (Matrix.toLin b₁ b₂ A) (Matrix.toLin b₂ b₁ A') ↔
      Matrix.IsAdjointPair J J' A A' := by
  rw [isAdjointPair_iff_comp_eq_compl₂]
  have h :
    ∀ B B' : M₁ →ₗ[R] M₂ →ₗ[R] R,
      B = B' ↔ LinearMap.toMatrix₂ b₁ b₂ B = LinearMap.toMatrix₂ b₁ b₂ B' := by
    intro B B'
    constructor <;> intro h
    · rw [h]
    · exact (LinearMap.toMatrix₂ b₁ b₂).injective h
  simp_rw [h, LinearMap.toMatrix₂_comp b₂ b₂, LinearMap.toMatrix₂_compl₂ b₁ b₁,
    LinearMap.toMatrix_toLin, LinearMap.toMatrix₂_toLinearMap₂]
  rfl
#align is_adjoint_pair_to_linear_map₂ isAdjointPair_toLinearMap₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90c06cd39f14a71893be45074492f8f9967e604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
