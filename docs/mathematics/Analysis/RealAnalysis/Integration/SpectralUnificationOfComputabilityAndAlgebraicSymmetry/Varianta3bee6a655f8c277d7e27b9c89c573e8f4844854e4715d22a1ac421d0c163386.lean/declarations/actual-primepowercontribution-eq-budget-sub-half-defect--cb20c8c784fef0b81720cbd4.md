# actual_primePowerContribution_eq_budget_sub_half_defect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4c0b58e-a09c-818a-d088-edafc103b7ef",
  "kind": "theorem",
  "lexical_name": "actual_primePowerContribution_eq_budget_sub_half_defect",
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
  "slug": "actual-primepowercontribution-eq-budget-sub-half-defect--cb20c8c784fef0b81720cbd4",
  "source": {
    "blob": "0849e6295c3f90ed2a41b1a3b8581cd497fc61d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 226,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta3bee6a655f8c277d7e27b9c89c573e8f4844854e4715d22a1ac421d0c163386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb20c8c784fef0b81720cbd4b64d8f218c71323839df7c6b8bb544e287b02f9b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta3bee6a655f8c277d7e27b9c89c573e8f4844854e4715d22a1ac421d0c163386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4c0b58e-a09c-818a-d088-edafc103b7ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_primePowerContribution_eq_budget_sub_half_defect (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution explicitSecondDerivative A =
      totalWeight A - phaseDefectMass A / 2 := by
  have hp := primePowerContribution_eq_cosine_integral explicitSecondDerivative A
    (spectralDensity A) (fun n _ ↦ spectralDensity_cos_integrable A (Real.log n) hA)
    (fun n _ ↦ sourceCorrelation_eq_integral_cos A (Real.log n) hA)
  rw [cosine_integral_eq_budget_add_defect A (spectralDensity A)
    (spectralDensity_integrable A hA) (spectralDensity_integral A hA)
    (fun n _ ↦ spectralDensity_cos_integrable A (Real.log n) hA)] at hp
  change -2 * primePowerContribution explicitSecondDerivative A =
    -2 * totalWeight A + phaseDefectMass A at hp
  linarith

/-- The unconditional exact source decomposition keeps the full negative
prime-power budget. A radius-uniform compensation estimate remains open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta3bee6a655f8c277d7e27b9c89c573e8f4844854e4715d22a1ac421d0c163386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta3bee6a655f8c277d7e27b9c89c573e8f4844854e4715d22a1ac421d0c163386.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0849e6295c3f90ed2a41b1a3b8581cd497fc61d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
