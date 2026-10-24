# truncatedOperator_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea12e2afea9c5f87a4e9800b8a52bc82f11eed73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 381,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a05f985acd2724a7b3e978b2a0f2c6b0bd3a0ee9d9ec79b2c3e73adc76a9494.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78e89dbd-b81e-523a-a9a9-9af13fba1a73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3480f5e-bcd3-1f13-922b-a1292f34d0a1",
  "kind": "theorem",
  "lexical_name": "truncatedOperator_norm_le",
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
  "slug": "truncatedoperator-norm-le--85c757966c82ad9f56a50a38",
  "source": {
    "blob": "ea12e2afea9c5f87a4e9800b8a52bc82f11eed73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 381,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant6a05f985acd2724a7b3e978b2a0f2c6b0bd3a0ee9d9ec79b2c3e73adc76a9494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85c757966c82ad9f56a50a38fa0cdb06b59a76b718b29992bfaeda3b7c5540f2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant6a05f985acd2724a7b3e978b2a0f2c6b0bd3a0ee9d9ec79b2c3e73adc76a9494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3480f5e-bcd3-1f13-922b-a1292f34d0a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncatedOperator_norm_le (N : ℝ) : ‖truncatedOperator N‖ ≤ kernelMass :=
  (halfConvolution_norm_le _ _).trans (truncated_norm_integral_le N)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant6a05f985acd2724a7b3e978b2a0f2c6b0bd3a0ee9d9ec79b2c3e73adc76a9494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant6a05f985acd2724a7b3e978b2a0f2c6b0bd3a0ee9d9ec79b2c3e73adc76a9494.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea12e2afea9c5f87a4e9800b8a52bc82f11eed73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
