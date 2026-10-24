# LinearMap.mul_toMatrix₂

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
      "line": 493,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3eff82c-d95a-6147-d179-3da2d5b7a5bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4efd8361-81e1-fc53-9976-2f0c87de1663",
  "kind": "theorem",
  "lexical_name": "LinearMap.mul_toMatrix₂",
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
  "slug": "linearmap-mul-tomatrix--de0a45a4dd8dce4e88ef647f",
  "source": {
    "blob": "b90c06cd39f14a71893be45074492f8f9967e604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 493,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de0a45a4dd8dce4e88ef647fcad55bab95f5ddade8d06a99a5f8aa1b08fb5472",
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

Occurrence: `result:4efd8361-81e1-fc53-9976-2f0c87de1663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.mul_toMatrix₂ (B : M₁ →ₗ[R] M₂ →ₗ[R] R) (M : Matrix n' n R) :
    M * LinearMap.toMatrix₂ b₁ b₂ B = LinearMap.toMatrix₂ b₁' b₂ (B.comp (toLin b₁' b₁ Mᵀ)) := by
  rw [LinearMap.toMatrix₂_comp b₁, toMatrix_toLin, transpose_transpose]
#align linear_map.mul_to_matrix₂ LinearMap.mul_toMatrix₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90c06cd39f14a71893be45074492f8f9967e604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
