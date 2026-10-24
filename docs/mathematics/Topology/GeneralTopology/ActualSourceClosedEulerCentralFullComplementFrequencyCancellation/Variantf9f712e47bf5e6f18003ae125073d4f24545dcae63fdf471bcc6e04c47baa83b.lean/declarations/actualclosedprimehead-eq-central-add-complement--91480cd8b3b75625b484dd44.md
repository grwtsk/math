# actualClosedPrimeHead_eq_central_add_complement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd2e9f2a-a6e5-518c-330a-935443a4847b",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeHead_eq_central_add_complement",
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
  "slug": "actualclosedprimehead-eq-central-add-complement--91480cd8b3b75625b484dd44",
  "source": {
    "blob": "5440a36f5e5f22290a6ce9474faff579a7df8cfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 537,
    "path": "GRWTSK/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantf9f712e47bf5e6f18003ae125073d4f24545dcae63fdf471bcc6e04c47baa83b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91480cd8b3b75625b484dd44f23935c5f9f49f527558f4945a20813096334c15",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantf9f712e47bf5e6f18003ae125073d4f24545dcae63fdf471bcc6e04c47baa83b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd2e9f2a-a6e5-518c-330a-935443a4847b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeHead_eq_central_add_complement {A : ℝ} (hA : 1 ≤ A) :
    (actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re =
      actualCentralFrequencyMass A + actualComplementaryFrequencyMass A := by
  have hc := complex_density_continuous hA
  have hr := density_continuous hA
  have hi := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hr.intervalIntegrable (-actualBumpMovingHeight A (3 / 2))
      (-actualCentralFrequencyRadius A))
    (hr.intervalIntegrable (-actualCentralFrequencyRadius A) (actualCentralFrequencyRadius A))
  have hj := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hr.intervalIntegrable (-actualBumpMovingHeight A (3 / 2)) (actualCentralFrequencyRadius A))
    (hr.intervalIntegrable (actualCentralFrequencyRadius A) (actualBumpMovingHeight A (3 / 2)))
  unfold actualClosedPrimeHead actualCentralFrequencyMass actualComplementaryFrequencyMass
  have hs : (1 / (2 * Real.pi) : ℂ) = ((1 / (2 * Real.pi) : ℝ) : ℂ) := by norm_cast
  rw [hs]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  norm_num only [Complex.ofReal_div, Complex.ofReal_ofNat]
  have hre : (∫ t in -actualBumpMovingHeight A (3 / 2)..actualBumpMovingHeight A (3 / 2),
      actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
        actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)).re =
      ∫ t in -actualBumpMovingHeight A (3 / 2)..actualBumpMovingHeight A (3 / 2),
        actualClosedFrequencyDensity A t :=
    (intervalIntegral.intervalIntegral_re
      (hc.intervalIntegrable (-actualBumpMovingHeight A (3 / 2))
        (actualBumpMovingHeight A (3 / 2)))).symm
  rw [hre, ← hj, ← hi]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantf9f712e47bf5e6f18003ae125073d4f24545dcae63fdf471bcc6e04c47baa83b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantf9f712e47bf5e6f18003ae125073d4f24545dcae63fdf471bcc6e04c47baa83b.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5440a36f5e5f22290a6ce9474faff579a7df8cfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
