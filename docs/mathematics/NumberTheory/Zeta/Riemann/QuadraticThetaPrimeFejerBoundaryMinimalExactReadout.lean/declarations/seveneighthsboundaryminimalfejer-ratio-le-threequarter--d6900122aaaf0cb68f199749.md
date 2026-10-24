# sevenEighthsBoundaryMinimalFejer_ratio_le_threeQuarter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3d0a66b-d6ef-fc46-1ab7-0a6377584f05",
  "kind": "theorem",
  "lexical_name": "sevenEighthsBoundaryMinimalFejer_ratio_le_threeQuarter",
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
  "slug": "seveneighthsboundaryminimalfejer-ratio-le-threequarter--d6900122aaaf0cb68f199749",
  "source": {
    "blob": "440e1957e04c7480d04be040ce5d07afc312d50a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 154,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6900122aaaf0cb68f19974949deaa57cb03941292af9758de6a5b715dc4e2dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3d0a66b-d6ef-fc46-1ab7-0a6377584f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sevenEighthsBoundaryMinimalFejer_ratio_le_threeQuarter
    (j : ℕ) :
    (dyadicScale j : ℝ) /
        (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ) ≤
      Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) := by
  have hXpos : 0 < (dyadicScale j : ℝ) := by
    exact_mod_cast
      dyadicScale_pos_for_boundaryMinimalFejerSchedule j
  have hrootPos :
      0 <
        Real.rpow (dyadicScale j : ℝ)
          ((1 : ℝ) / 4) :=
    sevenEighthsBoundaryMinimalFejerPower_pos j
  have hdiv :
      (dyadicScale j : ℝ) /
          (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ) ≤
        (dyadicScale j : ℝ) /
          Real.rpow (dyadicScale j : ℝ)
            ((1 : ℝ) / 4) := by
    exact div_le_div_of_nonneg_left
      hXpos.le hrootPos
      (sevenEighthsBoundaryMinimalFejerCutoff_lower_power j)
  calc
    (dyadicScale j : ℝ) /
        (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ)
      ≤
        (dyadicScale j : ℝ) /
          Real.rpow (dyadicScale j : ℝ)
            ((1 : ℝ) / 4) := hdiv
    _ =
        Real.rpow (dyadicScale j : ℝ)
          (1 - (1 : ℝ) / 4) := by
            rw [Real.rpow_sub hXpos, Real.rpow_one]
    _ =
        Real.rpow (dyadicScale j : ℝ)
          ((3 : ℝ) / 4) := by
            congr 1
            ring

/-- An exact bound for the explicit quadratic correlation gives the matching
square-root bound for the corrected smoothed value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440e1957e04c7480d04be040ce5d07afc312d50a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
