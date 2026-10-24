# fast_endpoint_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf9dc457-4948-0ac5-6405-7af3e80d803d",
  "kind": "theorem",
  "lexical_name": "fast_endpoint_bounds",
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
  "slug": "fast-endpoint-bounds--890368aef264f2e74ca87e88",
  "source": {
    "blob": "bafbeea2b78457e2dff83c2823e8914c81cbe09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:890368aef264f2e74ca87e88231035935f1308959f3ac2c0ce60c8772bdf9b6c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf9dc457-4948-0ac5-6405-7af3e80d803d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fast_endpoint_bounds (X : ℕ) (hX : 4 ≤ X) :
    ‖correctedNumerator X (1 / 2 + (fastEpsilon X : ℂ))‖ ≤ logScale X ^ 2 / (X : ℝ) ∧
    (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (fastEpsilon X) d|) /
      Real.sqrt (cutoffSchedule X) ≤ 3 / Real.sqrt (X : ℝ) := by
  have hXn : 1 ≤ X := by omega
  obtain ⟨hx, hL, hL0⟩ := scale_facts X hXn
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hXn
  have he := (fast_schedule_admissible X hX).1
  constructor
  · have hb := correctedNumerator_half_add_norm_le X (fastEpsilon X) hXn he.le
    simpa only [fastEpsilon, logScale, one_div_mul_eq_div] using hb
  · have hb := dampedCoefficient_abs_sum_le X (fastEpsilon X) hXn he.le
    change (∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (fastEpsilon X) d|) ≤
      2 * (X : ℝ) * logScale X at hb
    rw [cutoff_sqrt X hXn]
    have hXL : 1 ≤ (X : ℝ) * logScale X := one_le_mul_of_one_le_of_one_le hXr hL
    apply (div_le_div_iff₀ (by positivity) (Real.sqrt_pos.mpr hx)).mpr
    nlinarith [Real.sqrt_nonneg (X : ℝ)]

/-- The complete first-order Taylor norm budget vanishes without reducing the original cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafbeea2b78457e2dff83c2823e8914c81cbe09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
