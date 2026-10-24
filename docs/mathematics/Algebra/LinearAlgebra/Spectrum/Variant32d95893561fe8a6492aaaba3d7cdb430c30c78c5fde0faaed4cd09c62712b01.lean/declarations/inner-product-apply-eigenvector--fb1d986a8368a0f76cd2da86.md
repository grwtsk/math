# inner_product_apply_eigenvector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "873ac320c1f56ff01b2c54b662e2600174633cef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdd0d4d0-e324-6dbb-cf5e-ea8fc0744bc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8183335-ebe5-4b83-40e9-1f360176482f",
  "kind": "theorem",
  "lexical_name": "inner_product_apply_eigenvector",
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
  "slug": "inner-product-apply-eigenvector--fb1d986a8368a0f76cd2da86",
  "source": {
    "blob": "873ac320c1f56ff01b2c54b662e2600174633cef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 285,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb1d986a8368a0f76cd2da861c6ab38c5c95aefc9403b5000e186a89f0c8c365",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8183335-ebe5-4b83-40e9-1f360176482f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_product_apply_eigenvector {μ : 𝕜} {v : E} {T : E →ₗ[𝕜] E}
    (h : v ∈ Module.End.eigenspace T μ) : ⟪v, T v⟫ = μ * (‖v‖ : 𝕜) ^ 2 := by
  simp only [mem_eigenspace_iff.mp h, inner_smul_right, inner_self_eq_norm_sq_to_K]
#align inner_product_apply_eigenvector inner_product_apply_eigenvector

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `873ac320c1f56ff01b2c54b662e2600174633cef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
