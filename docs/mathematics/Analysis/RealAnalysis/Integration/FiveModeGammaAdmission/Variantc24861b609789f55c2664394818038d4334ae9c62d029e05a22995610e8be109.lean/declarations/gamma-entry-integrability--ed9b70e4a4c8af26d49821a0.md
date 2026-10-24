# gamma_entry_integrability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51657fc7-c2d6-f047-e1dc-c7bbd6a0008d",
  "kind": "theorem",
  "lexical_name": "gamma_entry_integrability",
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
  "slug": "gamma-entry-integrability--ed9b70e4a4c8af26d49821a0",
  "source": {
    "blob": "c43f4136af20443e8d33f3b71d96fb89ceb35208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 184,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeGammaAdmission/Variantc24861b609789f55c2664394818038d4334ae9c62d029e05a22995610e8be109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed9b70e4a4c8af26d49821a0fae548894788ef57ab982b39448c425b70f96f95",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeGammaAdmission/Variantc24861b609789f55c2664394818038d4334ae9c62d029e05a22995610e8be109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51657fc7-c2d6-f047-e1dc-c7bbd6a0008d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gamma_entry_integrability (A : ℝ) (hA : 0 < A) : GammaEntryIntegrability A := by
  intro i j
  have hc_i := mode_fourier_continuous A i
  have hc_j := mode_fourier_continuous A j
  have hm : AEStronglyMeasurable (fun ω : ℝ => archimedeanMultiplier ω *
      (modeFourier A i ω * modeFourier A j ω).re) :=
    (archimedeanMultiplier_measurable.mul
      (Complex.continuous_re.comp (hc_i.mul hc_j)).measurable).aestronglyMeasurable
  have hi := gamma_energy_majorant_integrable A hA i
  have hj := gamma_energy_majorant_integrable A hA j
  apply (hi.add hj).mono' hm
  filter_upwards [] with ω
  rw [Real.norm_eq_abs, abs_mul]
  have hp : |(modeFourier A i ω * modeFourier A j ω).re| ≤
      Complex.normSq (modeFourier A i ω) + Complex.normSq (modeFourier A j ω) := by
    apply (Complex.abs_re_le_norm _).trans
    rw [norm_mul, Complex.normSq_eq_norm_sq, Complex.normSq_eq_norm_sq]
    nlinarith [sq_nonneg (‖modeFourier A i ω‖ - ‖modeFourier A j ω‖),
      sq_nonneg ‖modeFourier A i ω‖, sq_nonneg ‖modeFourier A j ω‖]
  calc
    |archimedeanMultiplier ω| * |(modeFourier A i ω * modeFourier A j ω).re| ≤
        gammaEnergyMajorant ω *
          (Complex.normSq (modeFourier A i ω) + Complex.normSq (modeFourier A j ω)) :=
      mul_le_mul (multiplier_abs_le_of_estimate AdmissionSource.multiplier_estimate ω)
        hp (abs_nonneg _) (gammaEnergyMajorant_nonneg ω)
    _ = _ := by simp only [Pi.add_apply]; ring

end CommonMeanScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeGammaAdmission/Variantc24861b609789f55c2664394818038d4334ae9c62d029e05a22995610e8be109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeGammaAdmission/Variantc24861b609789f55c2664394818038d4334ae9c62d029e05a22995610e8be109.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43f4136af20443e8d33f3b71d96fb89ceb35208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
