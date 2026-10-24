# tendsto_diagnostic_exponent_test_point_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10186dd935491151c269697c9e3584f2eded1d36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32728629-59de-537b-7a6a-694bfd8f3caa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aedd1aa0-f424-3579-bc6b-556d841ee7d6",
  "kind": "theorem",
  "lexical_name": "tendsto_diagnostic_exponent_test_point_atTop",
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
  "slug": "tendsto-diagnostic-exponent-test-point-attop--0798f538e07c2d9f5f796560",
  "source": {
    "blob": "10186dd935491151c269697c9e3584f2eded1d36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 92,
    "path": "GRWTSK/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0798f538e07c2d9f5f79656089ff009947c1dbae6dc4122ed6aab9e80471c45a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aedd1aa0-f424-3579-bc6b-556d841ee7d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_diagnostic_exponent_test_point_atTop (c d : ℝ) {s : ℝ} (hs : 0 < s) :
    Tendsto (fun A : ℝ ↦ diagnosticExponent c d s A (testPoint s A)) atTop atTop := by
  have h := tendsto_id.atTop_mul_pos (show (0 : ℝ) < 1 by norm_num)
    (tendsto_diagnostic_exponent_test_point_div c d hs)
  apply h.congr'
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
  exact mul_div_cancel₀ _ (ne_of_gt hA)

end

end FormalResearch.RiemannHypothesis.GevreyEnvelope
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10186dd935491151c269697c9e3584f2eded1d36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
