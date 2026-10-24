# one_le_norm_mul_norm_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a86695945e4c66640b661f94d3ce85955fba3bf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1971,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa7da818-36c9-4570-b3ae-93b9e33ed062",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c55f0bf6-a4e8-f4b8-e78b-6b7e1c3dbefb",
  "kind": "theorem",
  "lexical_name": "one_le_norm_mul_norm_symm",
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
  "slug": "one-le-norm-mul-norm-symm--ef61d500fef59e4e6f0fd2a7",
  "source": {
    "blob": "a86695945e4c66640b661f94d3ce85955fba3bf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1977,
    "line": 1971,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef61d500fef59e4e6f0fd2a7522dcc83e9bb6becca136f9c2e56db82776ccb86",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c55f0bf6-a4e8-f4b8-e78b-6b7e1c3dbefb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1971–1977.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_le_norm_mul_norm_symm [RingHomIsometric σ₁₂] [Nontrivial E] (e : E ≃SL[σ₁₂] F) :
    1 ≤ ‖(e : E →SL[σ₁₂] F)‖ * ‖(e.symm : F →SL[σ₂₁] E)‖ := by
  rw [mul_comm]
  convert(e.symm : F →SL[σ₂₁] E).op_norm_comp_le (e : E →SL[σ₁₂] F)
  rw [e.coe_symm_comp_coe, ContinuousLinearMap.norm_id]
#align continuous_linear_equiv.one_le_norm_mul_norm_symm ContinuousLinearEquiv.one_le_norm_mul_norm_symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean#L1971).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86695945e4c66640b661f94d3ce85955fba3bf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
