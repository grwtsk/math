# criticalDiscrepancyBridge_ae_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4052f11-f6cf-ff2f-a019-49e504a093d5",
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
  "slug": "criticaldiscrepancybridge-ae-hasderivat--40c9ec73dd78dc3c71ed481a",
  "source": {
    "blob": "80ce55de1c441d92963b35fac984b2ab5f818496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 210,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40c9ec73dd78dc3c71ed481a3b6dcb8403b5390ec147783c7ee7820566316431",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4052f11-f6cf-ff2f-a019-49e504a093d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–230.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80ce55de1c441d92963b35fac984b2ab5f818496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
