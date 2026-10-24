# balancedCoreAux_maximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5118af1439853e7c81bf7e74ae51b1ffbe27e026",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e38704da-94e9-7bfc-45f0-1d9aa485a11d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e56f6daf-6a40-fe69-8a8a-7b96a00430a4",
  "kind": "theorem",
  "lexical_name": "balancedCoreAux_maximal",
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
  "slug": "balancedcoreaux-maximal--26bcc9081e7878af1d0903fd",
  "source": {
    "blob": "5118af1439853e7c81bf7e74ae51b1ffbe27e026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 191,
    "path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26bcc9081e7878af1d0903fd4241535fd8b02437ee311b3d542418ff3ce88ad5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e56f6daf-6a40-fe69-8a8a-7b96a00430a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedCoreAux_maximal (h : t ⊆ s) (ht : Balanced 𝕜 t) : t ⊆ balancedCoreAux 𝕜 s := by
  refine fun x hx => mem_balancedCoreAux_iff.2 fun r hr => ?_
  rw [mem_smul_set_iff_inv_smul_mem₀ (norm_pos_iff.mp <| zero_lt_one.trans_le hr)]
  refine h (ht.smul_mem ?_ hx)
  rw [norm_inv]
  exact inv_le_one_of_one_le₀ hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5118af1439853e7c81bf7e74ae51b1ffbe27e026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
