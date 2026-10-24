# fast_taylor_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eebd8f51-ca3a-6a38-32ee-016114551e46",
  "kind": "theorem",
  "lexical_name": "fast_taylor_bound",
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
  "slug": "fast-taylor-bound--1b1daa51251fcafeefba82b9",
  "source": {
    "blob": "bafbeea2b78457e2dff83c2823e8914c81cbe09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b1daa51251fcafeefba82b95f5bc04c7bc8312d736322782f5d1ba2c72d7cda",
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

Occurrence: `result:eebd8f51-ca3a-6a38-32ee-016114551e46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fast_taylor_bound (X : ℕ) (hX : 4 ≤ X) :
    fastEpsilon X ^ 2 * Real.sqrt (cutoffSchedule X - 1) *
      Real.log (cutoffSchedule X) ^ 2 ≤ 25 * logScale X ^ 3 / Real.sqrt (X : ℝ) := by
  have hXn : 1 ≤ X := by omega
  obtain ⟨hx, hL, hL0⟩ := scale_facts X hXn
  have hY := (fast_schedule_admissible X hX).2.2
  have hylog : Real.log (cutoffSchedule X) = 3 * Real.log (X : ℝ) + 2 * Real.log (logScale X) := by
    unfold cutoffSchedule
    rw [Real.log_mul (by positivity) (by positivity), Real.log_pow, Real.log_pow]
    norm_num
  have hlogL := Real.log_le_sub_one_of_pos hL0
  have hlog : Real.log (cutoffSchedule X) ≤ 5 * logScale X := by
    rw [hylog]
    dsimp only [logScale] at *
    linarith
  have hsq : Real.log (cutoffSchedule X) ^ 2 ≤ 25 * logScale X ^ 2 := by
    nlinarith [Real.log_nonneg hY]
  have hsqrt := Real.sqrt_le_sqrt (show cutoffSchedule X - 1 ≤ cutoffSchedule X by linarith)
  calc
    _ ≤ fastEpsilon X ^ 2 * Real.sqrt (cutoffSchedule X) * (25 * logScale X ^ 2) := by
      exact mul_le_mul (mul_le_mul_of_nonneg_left hsqrt (sq_nonneg _)) hsq
        (sq_nonneg _) (by positivity)
    _ = _ := by
      rw [cutoff_sqrt X hXn]
      unfold fastEpsilon
      have hsqx := Real.sq_sqrt hx.le
      have hsx : Real.sqrt (X : ℝ) ≠ 0 := (Real.sqrt_pos.mpr hx).ne'
      field_simp
      nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafbeea2b78457e2dff83c2823e8914c81cbe09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
