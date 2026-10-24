# readoutAt_actual_upper_pred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0eb610d6eb0d12edd35060becb80187c3cec035",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b24f5887-00f4-cbbe-613f-7f3e6092223c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d48ff2e-d09f-5ddb-b2b4-2681e3a9603b",
  "kind": "theorem",
  "lexical_name": "readoutAt_actual_upper_pred",
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
  "slug": "readoutat-actual-upper-pred--8a9be2af0d27b31f3bac2bfc",
  "source": {
    "blob": "b0eb610d6eb0d12edd35060becb80187c3cec035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 189,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variant129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a9be2af0d27b31f3bac2bfc9885941fee3b5bf4daa2085f1753ce8887dd9d2c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variant129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d48ff2e-d09f-5ddb-b2b4-2681e3a9603b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readoutAt_actual_upper_pred (A : ℝ) (hA : 1 ≤ A) :
    readoutAt A (by linarith) (vaughanCutoff A) (sourceKernelCutoff A) =
      readoutAt A (by linarith) (vaughanCutoff A) (sourceKernelCutoff A - 1) := by
  have hUK := actual_adjacent_le_upper hA
  have he : sourceKernelCutoff A - 1 + 1 = sourceKernelCutoff A := by omega
  have hz := actual_upper_pred_new_products_zero A hA
  simpa only [he] using readoutAt_upper_succ_of_new_products_zero A (by linarith)
    (vaughanCutoff A) (sourceKernelCutoff A - 1) (by omega) (by simpa only [he] using hz)

/-- The unchanged actual consumer has the same fixed-scale value at the predecessor inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variant129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variant129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0eb610d6eb0d12edd35060becb80187c3cec035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
