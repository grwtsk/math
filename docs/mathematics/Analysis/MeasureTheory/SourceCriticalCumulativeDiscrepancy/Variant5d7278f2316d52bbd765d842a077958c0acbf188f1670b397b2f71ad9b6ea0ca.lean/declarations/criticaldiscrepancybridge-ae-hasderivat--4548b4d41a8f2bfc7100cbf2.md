# criticalDiscrepancyBridge_ae_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2ef870d5bf24dda9e1402dd5165a54cfd50d90d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a053f7c-2472-9352-d5cc-dd3eb165dabf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:249554f3-7673-74a6-8680-cc451fc34e11",
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
  "slug": "criticaldiscrepancybridge-ae-hasderivat--4548b4d41a8f2bfc7100cbf2",
  "source": {
    "blob": "b2ef870d5bf24dda9e1402dd5165a54cfd50d90d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 201,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4548b4d41a8f2bfc7100cbf2b77a892ab77e234304302820f31513dcee1e414a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:249554f3-7673-74a6-8680-cc451fc34e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–221.

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
  rw [← he]
  exact (hu huA).sub hl

end FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2ef870d5bf24dda9e1402dd5165a54cfd50d90d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
