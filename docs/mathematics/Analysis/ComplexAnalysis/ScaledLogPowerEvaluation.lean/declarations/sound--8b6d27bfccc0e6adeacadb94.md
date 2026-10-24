# sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ea0bf8b-5292-2e3f-e45a-6d64dc9f051d",
  "kind": "theorem",
  "lexical_name": "sound",
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
  "slug": "sound--8b6d27bfccc0e6adeacadb94",
  "source": {
    "blob": "5dd32cf82f5897f688145089415cc748f23651b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 125,
    "path": "GRWTSK/Analysis/Complex/ScaledLogPowerEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b6d27bfccc0e6adeacadb94417643164fc03e9788ef863ea9b9fb57e89e6e24",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ea0bf8b-5292-2e3f-e45a-6d64dc9f051d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sound (p : PointInput x h z) (hh : 0 < h) (ha : 1 < x - h)
    (hz : z.re ≤ 1) : ‖tentKernel x h z - p.value‖ ≤ p.error := by
  have hc := norm_tentKernel_sub_le_one x h hh ha z p.center hz p.center_re
  have hr0 : 0 ≤ p.coordinateError := (norm_nonneg _).trans p.coordinate_enclosure
  have hb0 : 0 ≤ 4 * (x + h) := by linarith
  have hlog0 : 0 ≤ Real.log (x + h) := Real.log_nonneg (by linarith)
  have hl : Real.log (x + h) ≤
      (p.upper.logarithm.center : ℝ) + (p.upper.logarithm.error : ℝ) := by
    have hu := (abs_le.mp p.upper.logarithm.sound).2
    linarith
  have hcoord : ‖tentKernel x h z - tentKernel x h p.center‖ ≤
      4 * (x + h) * ((p.upper.logarithm.center : ℝ) + (p.upper.logarithm.error : ℝ)) *
        p.coordinateError := by
    refine hc.trans ?_
    exact mul_le_mul (mul_le_mul_of_nonneg_left hl hb0) p.coordinate_enclosure
      (norm_nonneg _) (mul_nonneg hb0 (hlog0.trans hl))
  have he := endpoint_quotient_error x h hh ha p.center p.lower.value p.middle.value
    p.upper.value p.lower.error p.middle.error p.upper.error p.denominatorLower
    p.denominator_pos p.denominator_bound p.lower.sound p.middle.sound p.upper.sound
  change ‖tentKernel x h p.center - p.value‖ ≤ _ at he
  calc
    _ = ‖(tentKernel x h z - tentKernel x h p.center) +
          (tentKernel x h p.center - p.value)‖ := by congr 1; ring
    _ ≤ _ := (norm_add_le _ _).trans (add_le_add hcoord he)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ScaledLogPowerEvaluation.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dd32cf82f5897f688145089415cc748f23651b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
