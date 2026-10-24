# distance_mul_sampledTriangularKernelAtOctavePeriod_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ade253f9-d358-6cba-e31d-d696c2e1dfc7",
  "kind": "theorem",
  "lexical_name": "distance_mul_sampledTriangularKernelAtOctavePeriod_le",
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
  "slug": "distance-mul-sampledtriangularkernelatoctaveperiod-le--604ec18b9a5a0cb969150966",
  "source": {
    "blob": "4057a71b4614ee62806063bbc945c6c2a81f2426",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 34,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:604ec18b9a5a0cb9691509669a784976ff5f53e11c5b8c250138ade0b17d3605",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ade253f9-d358-6cba-e31d-d696c2e1dfc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distance_mul_sampledTriangularKernelAtOctavePeriod_le
    {X N d : ℕ}
    (hX : 0 < X)
    (hN : 0 < N)
    (hd : 0 < d)
    (hdMax : d ≤ 2 * X) :
    (d : ℝ) *
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d
      ≤ (X : ℝ) / ((N : ℝ) * (d : ℝ)) := by
  have hsample :=
    sampledTriangularKernelAtOctavePeriod_le hX hN hd hdMax
  have hdr : (0 : ℝ) ≤ (d : ℝ) := by positivity
  have hmul :=
    mul_le_mul_of_nonneg_left hsample hdr
  calc
    (d : ℝ) *
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d
      ≤ (d : ℝ) *
          ((X : ℝ) / ((N : ℝ) * (d : ℝ)^2)) := hmul
    _ = (X : ℝ) / ((N : ℝ) * (d : ℝ)) := by
      have hNr : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
      have hdr' : (0 : ℝ) < (d : ℝ) := by exact_mod_cast hd
      field_simp [hNr.ne', hdr'.ne']
      ring

/-- Finite harmonic bookkeeping still to be discharged: summing the proved
pointwise first-moment estimate costs no power beyond X/N. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4057a71b4614ee62806063bbc945c6c2a81f2426` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
