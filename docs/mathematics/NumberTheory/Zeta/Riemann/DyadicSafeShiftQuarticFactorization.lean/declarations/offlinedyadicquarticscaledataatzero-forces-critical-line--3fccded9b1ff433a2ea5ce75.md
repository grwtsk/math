# OffLineDyadicQuarticScaleDataAtZero.forces_critical_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c93910e-d5fe-d263-9daf-795176557cd4",
  "kind": "theorem",
  "lexical_name": "OffLineDyadicQuarticScaleDataAtZero.forces_critical_line",
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
  "slug": "offlinedyadicquarticscaledataatzero-forces-critical-line--3fccded9b1ff433a2ea5ce75",
  "source": {
    "blob": "9f35debeed342969235cb62b5f361f81224362a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 201,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fccded9b1ff433a2ea5ce75e965aa6c23dc672f6c556966e47c0d365481e0bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c93910e-d5fe-d263-9daf-795176557cd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OffLineDyadicQuarticScaleDataAtZero.forces_critical_line
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : OffLineDyadicQuarticScaleDataAtZero z ha) :
    z.1.re = 1 / 2 := by
  have hoccupied :
      Tendsto
        (fun j => data.scale j * safeQuarticDyadicPackingValue z j)
        atTop
        (𝓝
          (data.limitCoefficient *
            ((zeroDefect z.1) ^ 4 +
              3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2))) := by
    have hA := data.axial_scaled_tendsto
    have hT := data.transverse_scaled_tendsto
    have hsum :
        Tendsto
          (fun j =>
            (zeroDefect z.1) ^ 4 *
                (data.scale j * safeAxialDyadicQuarticCoefficient z j) +
              3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
                (data.scale j * safeTransverseDyadicQuarticCoefficient z j))
          atTop
          (𝓝
            ((zeroDefect z.1) ^ 4 * data.limitCoefficient +
              3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
                data.limitCoefficient)) :=
      (tendsto_const_nhds.mul hA).add
        (tendsto_const_nhds.mul hT)
    convert hsum using 1
    · funext j
      rw [safeQuarticDyadicPackingValue_factor]
      ring
    · ring
  have hoccupiedZero :
      Tendsto
        (fun j => data.scale j * safeQuarticDyadicPackingValue z j)
        atTop (𝓝 0) := by
    apply squeeze_zero
    · intro j
      exact mul_nonneg (data.scale_nonnegative j)
        (safeQuarticDyadicPackingValue_nonnegative z j)
    · intro j
      exact mul_le_mul_of_nonneg_left
        (safeQuarticDyadicPackingValue_le_greenEnvelope z j)
        (data.scale_nonnegative j)
    · exact data.scaledGreenEnvelope_tendsto_zero
  have heq :
      data.limitCoefficient *
          ((zeroDefect z.1) ^ 4 +
            3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2) = 0 :=
    tendsto_nhds_unique hoccupied hoccupiedZero
  have hquartic :
      (zeroDefect z.1) ^ 4 +
        3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 = 0 :=
    (mul_eq_zero.mp heq).resolve_left data.limitCoefficient_pos.ne'
  have hsquare : (zeroDefect z.1) ^ 2 = 0 := by
    nlinarith [sq_nonneg (z.1.im), sq_nonneg ((zeroDefect z.1)^2)]
  have hzero : zeroDefect z.1 = 0 := sq_eq_zero_iff.mp hsquare
  exact False.elim (ha hzero)

/-- Global corrected dyadic supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f35debeed342969235cb62b5f361f81224362a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
