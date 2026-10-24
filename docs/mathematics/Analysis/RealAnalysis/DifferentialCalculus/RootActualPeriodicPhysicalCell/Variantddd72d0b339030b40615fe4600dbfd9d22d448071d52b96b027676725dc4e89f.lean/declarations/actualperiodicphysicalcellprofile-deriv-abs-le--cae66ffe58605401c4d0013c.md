# actualPeriodicPhysicalCellProfile_deriv_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd756a3c-052f-bf28-01e6-7a5451b4d3c6",
  "kind": "theorem",
  "lexical_name": "actualPeriodicPhysicalCellProfile_deriv_abs_le",
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
  "slug": "actualperiodicphysicalcellprofile-deriv-abs-le--cae66ffe58605401c4d0013c",
  "source": {
    "blob": "ab93beaea40b8cc45709cb9ad041ea53fd34765f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variantddd72d0b339030b40615fe4600dbfd9d22d448071d52b96b027676725dc4e89f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cae66ffe58605401c4d0013ceb646978790c87048691a100ebdf768d735812a4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variantddd72d0b339030b40615fe4600dbfd9d22d448071d52b96b027676725dc4e89f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd756a3c-052f-bf28-01e6-7a5451b4d3c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicPhysicalCellProfile_deriv_abs_le {A t x : ℝ}
    (hA : 91 ≤ A) (hx : 0 < x) (hz : 0 ≤ t + Real.log x) :
    |deriv (actualPeriodicPhysicalCellProfile A t) x| ≤
      Real.exp (t / 2) * Real.exp (-5 * Real.log x / 2) * (4 / A) := by
  rw [actualPeriodicPhysicalCellProfile_deriv (by linarith : 0 < A) hx t]
  have he : Real.exp (-Real.log x) = x⁻¹ := by rw [Real.exp_neg, Real.exp_log hx]
  have hb := actualPeriodicWeightedTransport_abs_le hA hz
  rw [he, abs_mul, abs_of_pos (inv_pos.mpr hx)] at hb
  have hm := mul_le_mul_of_nonneg_left hb (inv_pos.mpr hx).le
  have hleft : x⁻¹ * (x⁻¹ *
      |covariantMixedDerivative (actualLogMixedDensity A) t (Real.log x) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log x)|) =
      |(covariantMixedDerivative (actualLogMixedDensity A) t (Real.log x) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log x)) / x ^ 2| := by
    rw [abs_div, abs_of_pos (sq_pos_of_pos hx)]
    ring
  rw [hleft] at hm
  calc
    _ ≤ _ := hm
    _ = _ := by
      rw [← he, show Real.exp (-5 * Real.log x / 2) =
        Real.exp (-Real.log x) * Real.exp (-3 * Real.log x / 2) by
          rw [← Real.exp_add]; congr 1; ring]
      ring

/-- Every genuine closed source log cell equals its physical-variable integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variantddd72d0b339030b40615fe4600dbfd9d22d448071d52b96b027676725dc4e89f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variantddd72d0b339030b40615fe4600dbfd9d22d448071d52b96b027676725dc4e89f.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab93beaea40b8cc45709cb9ad041ea53fd34765f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
