# actualSecondProfileCorrelation_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01a35cc9e67ac9e9d6c8b8980a1ec1a028cee68a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42a0b4261e2f3c30838528a7ca00fc64a6a6fc454bb207e2a1a0b9176afd2512.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94fd324d-c623-6ec8-32ac-c0d55caf13a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa34cfb3-f3d3-f3f2-64d8-6ad976717e7d",
  "kind": "theorem",
  "lexical_name": "actualSecondProfileCorrelation_continuous",
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
  "slug": "actualsecondprofilecorrelation-continuous--b3933cc6e1c2dcac7c900660",
  "source": {
    "blob": "01a35cc9e67ac9e9d6c8b8980a1ec1a028cee68a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant42a0b4261e2f3c30838528a7ca00fc64a6a6fc454bb207e2a1a0b9176afd2512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3933cc6e1c2dcac7c900660621ca3c3ecc670bafc1bc7fd2c7f1f467cc6783b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant42a0b4261e2f3c30838528a7ca00fc64a6a6fc454bb207e2a1a0b9176afd2512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa34cfb3-f3d3-f3f2-64d8-6ad976717e7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSecondProfileCorrelation_continuous (A : ℝ) (hA : 0 < A) :
    Continuous (actualSecondProfileCorrelation A) := by
  obtain ⟨M, _hM0, hM⟩ := actualSecondProfile_bounded A hA
  apply continuous_iff_continuousAt.mpr
  intro t
  apply continuousAt_of_dominated
    (F := fun s x : ℝ => actualSecondProfile A x * actualSecondProfile A (x - s))
    (bound := fun x : ℝ => |actualSecondProfile A x| * M)
  · exact Eventually.of_forall fun s =>
      (actualSecondProfile_correlation_integrand_integrable A s hA).aestronglyMeasurable
  · filter_upwards [] with s
    filter_upwards [] with x
    rw [Real.norm_eq_abs, abs_mul]
    exact mul_le_mul_of_nonneg_left (hM (x - s)) (abs_nonneg _)
  · exact (actualSecondProfile_integrable A hA).abs.mul_const M
  · filter_upwards [ae_neq (t - A), ae_neq (t + A)] with x hxl hxr
    have hl : x - t ≠ -A := by intro h; apply hxl; linarith
    have hr : x - t ≠ A := by intro h; apply hxr; linarith
    have hc := (actualSecondProfile_continuousAt_of_ne_endpoints A (x - t) hA hl hr).comp
      (continuousAt_const.sub continuousAt_id)
    exact continuousAt_const.mul hc

end
end FormalResearch.RiemannHypothesis.SourceSecondProfileContinuity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant42a0b4261e2f3c30838528a7ca00fc64a6a6fc454bb207e2a1a0b9176afd2512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant42a0b4261e2f3c30838528a7ca00fc64a6a6fc454bb207e2a1a0b9176afd2512.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01a35cc9e67ac9e9d6c8b8980a1ec1a028cee68a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
