# sampledTriangularKernelAtOctavePeriod_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7485c989-5ead-b492-b1a7-64c869118c2a",
  "kind": "theorem",
  "lexical_name": "sampledTriangularKernelAtOctavePeriod_le",
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
  "slug": "sampledtriangularkernelatoctaveperiod-le--321573e3c1c69009edb31d1f",
  "source": {
    "blob": "37a36ad73a23a7011596aea2d948c05e3aeda521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 104,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:321573e3c1c69009edb31d1f9901d13a0856bf2a8a4cde88edd12d5560d87506",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7485c989-5ead-b492-b1a7-64c869118c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampledTriangularKernelAtOctavePeriod_le
    {X N d : ℕ}
    (hX : 0 < X)
    (hN : 0 < N)
    (hd : 0 < d)
    (hdMax : d ≤ 2 * X) :
    sampledTriangularKernelAtPeriod (fejerOctavePeriod X) N d ≤
      (X : ℝ) / ((N : ℝ) * (d : ℝ)^2) := by
  unfold sampledTriangularKernelAtPeriod fejerOctavePeriod
  have hL : (0 : ℝ) < (4 * X : ℕ) := by
    exact_mod_cast (by omega : 0 < 4 * X)
  have hNr : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
  have hdr : (0 : ℝ) < (d : ℝ) := by exact_mod_cast hd
  have ht0 :
      0 < |((d : ℝ) / ((4 * X : ℕ) : ℝ))| := by
    rw [abs_of_pos (div_pos hdr hL)]
    exact div_pos hdr hL
  have htHalf :
      |((d : ℝ) / ((4 * X : ℕ) : ℝ))| ≤ (1 : ℝ) / 2 := by
    rw [abs_of_pos (div_pos hdr hL)]
    rw [div_le_iff₀ hL]
    have hdR : (d : ℝ) ≤ 2 * (X : ℝ) := by exact_mod_cast hdMax
    norm_num at *
    linarith
  have hK :=
    symmetricTriangularKernelDecay_explicit hN ht0 htHalf
  have hscale : 0 ≤ (1 : ℝ) / ((4 * X : ℕ) : ℝ) := by positivity
  have hs := mul_le_mul_of_nonneg_left hK hscale
  calc
    (1 / (((4 * X : ℕ) : ℝ))) *
        ‖symmetricTriangularKernel N
          (((d : ℝ) / (((4 * X : ℕ) : ℝ))) : AddCircle (1 : ℝ))‖
      ≤ (1 / (((4 * X : ℕ) : ℝ))) *
        (((1 : ℝ) / 4) /
          ((N : ℝ) * ((d : ℝ) / (((4 * X : ℕ) : ℝ)))^2)) := hs
    _ = (X : ℝ) / ((N : ℝ) * (d : ℝ)^2) := by
      have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
      field_simp [hXr.ne', hNr.ne', hdr.ne']
      ring

/-- Source-faithful representation of the corrected operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37a36ad73a23a7011596aea2d948c05e3aeda521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
