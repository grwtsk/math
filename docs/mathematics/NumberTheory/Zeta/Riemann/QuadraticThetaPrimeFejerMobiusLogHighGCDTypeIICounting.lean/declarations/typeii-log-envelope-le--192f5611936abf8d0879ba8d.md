# typeII_log_envelope_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d5413fc-4316-ce0b-f2cb-93d6ad0e33d1",
  "kind": "theorem",
  "lexical_name": "typeII_log_envelope_le",
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
  "slug": "typeii-log-envelope-le--192f5611936abf8d0879ba8d",
  "source": {
    "blob": "d70aa7eaaad0837560046946811c547bd5fc5266",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 236,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:192f5611936abf8d0879ba8df38d1c6f895f2baee3afdb1118054ae40614c477",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d5413fc-4316-ce0b-f2cb-93d6ad0e33d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeII_log_envelope_le
    (j : ℕ) :
    (Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 *
        (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 ≤
      225 * (Real.log (dyadicScale j : ℝ))^4 := by
  have hL0 : 0 ≤ Real.log (dyadicScale j : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast
      one_le_dyadicScale_for_boundaryMinimalFejerSchedule j
  have h4log0 :
      0 ≤ Real.log (((4 * dyadicScale j : ℕ) : ℝ)) := by
    apply Real.log_nonneg
    exact_mod_cast (by
      have hX := dyadicScale_pos_for_boundaryMinimalFejerSchedule j
      omega : 1 ≤ 4 * dyadicScale j)
  have h1log0 :
      0 ≤ 1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)) := by
    linarith
  have hsquare1 :
      (Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 ≤
        (3 * Real.log (dyadicScale j : ℝ))^2 :=
    (sq_le_sq₀ h4log0 (by positivity)).2
      (log_four_mul_dyadicScale_le_three_log_for_typeII j)
  have hsquare2 :
      (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 ≤
        (5 * Real.log (dyadicScale j : ℝ))^2 :=
    (sq_le_sq₀ h1log0 (by positivity)).2
      (one_add_log_four_mul_dyadicScale_le_five_log j)
  calc
    (Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 *
        (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2
      ≤
      (3 * Real.log (dyadicScale j : ℝ))^2 *
        (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 :=
          mul_le_mul_of_nonneg_right hsquare1 (sq_nonneg _)
    _ ≤
      (3 * Real.log (dyadicScale j : ℝ))^2 *
        (5 * Real.log (dyadicScale j : ℝ))^2 :=
          mul_le_mul_of_nonneg_left hsquare2 (sq_nonneg _)
    _ = 225 * (Real.log (dyadicScale j : ℝ))^4 := by ring

/-- Actual target-scale estimate for the exact absolute high-g Type II
aggregate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d70aa7eaaad0837560046946811c547bd5fc5266` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
