# windingRawSupport_cast_le_reciprocalSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5916f7eb-8fec-adc8-edf1-73a216905300",
  "kind": "theorem",
  "lexical_name": "windingRawSupport_cast_le_reciprocalSquare",
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
  "slug": "windingrawsupport-cast-le-reciprocalsquare--8303e5368e87edf956a1f8c8",
  "source": {
    "blob": "9006e9d372c01b40895226a42062b414ee893e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 99,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8303e5368e87edf956a1f8c865801f2c97c6fea16b252b8ec20c7e5063bae981",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5916f7eb-8fec-adc8-edf1-73a216905300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem windingRawSupport_cast_le_reciprocalSquare
    (b d : ℕ) [NeZero d] :
    (centeredFourDistinctWindingRawSupportCeilingSum b d : ℝ) ≤
      (b : ℝ) * (((d : ℝ) ^ 2)⁻¹) *
        (((b + 1 : ℕ) : ℝ) ^ 3) := by
  have h := square_mul_windingRawSupport_le_b_mul_cube b d
  have hdR : (d : ℝ) ≠ 0 := by exact_mod_cast (NeZero.ne d)
  have hd : (0 : ℝ) < (d : ℝ) ^ 2 := sq_pos_of_ne_zero hdR
  have hcast :
      (d : ℝ)^2 *
          (centeredFourDistinctWindingRawSupportCeilingSum b d : ℝ) ≤
        (b : ℝ) * (((b + 1 : ℕ) : ℝ) ^ 3) := by
    have hnat : d^2 * centeredFourDistinctWindingRawSupportCeilingSum b d ≤
        b * (b + 1)^3 := by
      simpa only [pow_succ, pow_zero, mul_one, one_mul, mul_assoc] using h
    exact_mod_cast hnat
  calc
    (centeredFourDistinctWindingRawSupportCeilingSum b d : ℝ) =
      ((d : ℝ) ^ 2)⁻¹ *
        (((d : ℝ) ^ 2) *
          (centeredFourDistinctWindingRawSupportCeilingSum b d : ℝ)) := by
            field_simp [hdR]
    _ ≤ ((d : ℝ) ^ 2)⁻¹ *
        ((b : ℝ) * (((b + 1 : ℕ) : ℝ) ^ 3)) := by
          exact mul_le_mul_of_nonneg_left hcast (by positivity)
    _ = (b : ℝ) * (((d : ℝ) ^ 2)⁻¹) *
        (((b + 1 : ℕ) : ℝ) ^ 3) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9006e9d372c01b40895226a42062b414ee893e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
