# sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89b54ecf-30c5-6e97-1e79-f3c10a6a2006",
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
  "slug": "sound--f9e7fee19deb67aaea03aa1c",
  "source": {
    "blob": "69e8ee54d817d84dbf1b96a7a821e0ae8b8c84c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 168,
    "path": "GRWTSK/Analysis/Complex/TentKernelEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9e7fee19deb67aaea03aa1c01a6fa4e1b899675b42a1838c7125bb528242d4a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89b54ecf-30c5-6e97-1e79-f3c10a6a2006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sound (p : PointEvaluation x h z) (hh : 0 < h) (ha : 1 < x - h)
    (hz : z.re ≤ 1) : ‖tentKernel x h z - p.value‖ ≤ p.error := by
  have hc := norm_tentKernel_sub_le_one x h hh ha z p.center hz p.center_re
  have hr0 : 0 ≤ p.coordinateError := (norm_nonneg _).trans p.coordinate_enclosure
  have hb0 : 0 ≤ 4 * (x + h) := by linarith
  have hlog0 : 0 ≤ Real.log (x + h) := Real.log_nonneg (by linarith)
  have hl : Real.log (x + h) ≤ p.upper.logCenter + p.upper.logError := by
    have hu := (abs_le.mp p.upper.log_enclosure).2
    linarith
  have hcoord : ‖tentKernel x h z - tentKernel x h p.center‖ ≤
      4 * (x + h) * (p.upper.logCenter + p.upper.logError) * p.coordinateError := by
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

/-- This follows from a proved bound, not from nonnegative metadata alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentKernelEnclosure.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e8ee54d817d84dbf1b96a7a821e0ae8b8c84c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
