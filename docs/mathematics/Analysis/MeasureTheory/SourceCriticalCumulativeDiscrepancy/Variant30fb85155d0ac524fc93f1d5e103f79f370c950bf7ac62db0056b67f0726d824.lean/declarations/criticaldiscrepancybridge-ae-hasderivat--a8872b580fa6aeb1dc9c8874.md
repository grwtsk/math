# criticalDiscrepancyBridge_ae_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2437031b8f988fa84fb1d22910b017738e5e015e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c261b0b-9f6b-b981-b534-82c3ccccb098",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d8f508b-6125-e38e-1847-142de92d5799",
  "kind": "theorem",
  "lexical_name": "criticalDiscrepancyBridge_ae_hasDerivAt",
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
  "slug": "criticaldiscrepancybridge-ae-hasderivat--a8872b580fa6aeb1dc9c8874",
  "source": {
    "blob": "2437031b8f988fa84fb1d22910b017738e5e015e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 201,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8872b580fa6aeb1dc9c887478ff606f190a62dd84b31d2c1015d8d56c49241b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d8f508b-6125-e38e-1847-142de92d5799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalDiscrepancyBridge_ae_hasDerivAt {A : ℝ} (hA : 0 < A) :
    ∀ᵐ u ∂volume, u ∈ uIcc (0 : ℝ) (2 * A) →
      HasDerivAt (criticalDiscrepancyBridge A)
        (criticalCumulativeDiscrepancy u -
          criticalDiscrepancyPrimitive (2 * A) / (2 * A)) u := by
  filter_upwards [criticalDiscrepancyPrimitive_ae_hasDerivAt (2 * A)] with u hu
  intro huA
  have hid := (hasDerivAt_id u).div_const (2 * A)
  have hl := hid.mul_const (criticalDiscrepancyPrimitive (2 * A))
  change HasDerivAt (fun y => criticalDiscrepancyPrimitive y -
      (y / (2 * A)) * criticalDiscrepancyPrimitive (2 * A))
    (criticalCumulativeDiscrepancy u - criticalDiscrepancyPrimitive (2 * A) / (2 * A)) u
  have he : criticalCumulativeDiscrepancy u -
      (1 / (2 * A)) * criticalDiscrepancyPrimitive (2 * A) =
      criticalCumulativeDiscrepancy u - criticalDiscrepancyPrimitive (2 * A) / (2 * A) := by
    have hn : 2 * A ≠ 0 := ne_of_gt (by linarith : 0 < 2 * A)
    field_simp [hn]
    <;> ring
  rw [← he]
  exact (hu huA).sub hl

end FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2437031b8f988fa84fb1d22910b017738e5e015e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
