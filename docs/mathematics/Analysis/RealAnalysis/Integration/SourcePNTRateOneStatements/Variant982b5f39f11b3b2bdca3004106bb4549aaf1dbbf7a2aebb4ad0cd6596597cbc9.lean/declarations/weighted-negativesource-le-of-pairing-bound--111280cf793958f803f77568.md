# weighted_negativeSource_le_of_pairing_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9377976-6b6e-cd4e-2f9c-7736db3fe63b",
  "kind": "theorem",
  "lexical_name": "weighted_negativeSource_le_of_pairing_bound",
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
  "slug": "weighted-negativesource-le-of-pairing-bound--111280cf793958f803f77568",
  "source": {
    "blob": "d8c764e42fb0f89d8ef5add85f419220c46cd67c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePNTRateOneStatements/Variant982b5f39f11b3b2bdca3004106bb4549aaf1dbbf7a2aebb4ad0cd6596597cbc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:111280cf793958f803f7756827e592b419b89f1d036ea93d0cca8359dd2e319d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePNTRateOneStatements/Variant982b5f39f11b3b2bdca3004106bb4549aaf1dbbf7a2aebb4ad0cd6596597cbc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9377976-6b6e-cd4e-2f9c-7736db3fe63b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_negativeSource_le_of_pairing_bound
    (C c A : ℝ) (hC : 0 ≤ C) (hA : 1 ≤ A)
    (hI : |signedPairing Realization.explicitSecondDerivative A| ≤
      C * (Real.exp (A / 2) + Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10)))) :
    Real.exp (-A) * negativeSource A ≤
      (42 * (|archimedeanMultiplier 0 - 6 * Real.sqrt 2| + 2 * C)) *
        (A ^ 17 * Real.exp (-A) + A ^ 17 * Real.exp (-A / 2) +
          A ^ 17 * Real.exp (-c * A ^ ((1 : ℝ) / 10))) := by
  let M := |archimedeanMultiplier 0 - 6 * Real.sqrt 2|
  let P := Real.exp (A / 2) + Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10))
  have hM : 0 ≤ M := abs_nonneg _
  have hP : 0 ≤ P := by dsimp [P]; positivity
  have hI' : -C * P ≤ signedPairing Realization.explicitSecondDerivative A := by
    have h := neg_abs_le (signedPairing Realization.explicitSecondDerivative A)
    dsimp [P] at *
    linarith
  have hcorr := SourceCorrectionEstimate.actual_correction_lower A hA
  have hM' : -M ≤ archimedeanMultiplier 0 - 6 * Real.sqrt 2 := neg_abs_le _
  have hQ := CorrelationAssembly.source_arithmetic_representation A hA
  have hneg : max (-sourceQuadraticValue Realization.explicitSecondDerivative A) 0 ≤
      M + 2 * C * P := max_le (by linarith) (by positivity)
  have hscale := actual_scale_le A hA
  have hbound : negativeSource A ≤ 42 * A ^ 17 * (M + 2 * C * P) := by
    unfold negativeSource
    exact mul_le_mul hscale hneg (le_max_right _ _) (by positivity)
  have he₁ : Real.exp (-A) * Real.exp (A / 2) = Real.exp (-A / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have he₂ : Real.exp (-A) * Real.exp A = 1 := by
    rw [← Real.exp_add, neg_add_cancel, Real.exp_zero]
  have hp₁ : 0 ≤ A ^ 17 * Real.exp (-A) := by positivity
  have hp₂ : 0 ≤ A ^ 17 * Real.exp (-A / 2) := by positivity
  have hp₃ : 0 ≤ A ^ 17 * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by positivity
  calc
    _ ≤ Real.exp (-A) * (42 * A ^ 17 * (M + 2 * C * P)) :=
      mul_le_mul_of_nonneg_left hbound (Real.exp_pos _).le
    _ = 42 * (M * (A ^ 17 * Real.exp (-A)) +
        (2 * C) * (A ^ 17 * Real.exp (-A / 2)) +
        (2 * C) * (A ^ 17 * Real.exp (-c * A ^ ((1 : ℝ) / 10)))) := by
      dsimp [P]
      calc
        _ = 42 * (M * (A ^ 17 * Real.exp (-A)) +
            (2 * C) * (A ^ 17 * (Real.exp (-A) * Real.exp (A / 2))) +
            (2 * C) * (A ^ 17 * (Real.exp (-A) * Real.exp A) *
              Real.exp (-c * A ^ ((1 : ℝ) / 10)))) := by ring
        _ = _ := by rw [he₁, he₂, mul_one]
    _ ≤ _ := by dsimp [M] at *; nlinarith

/-- The final rate-one source transport keeps the eventual arithmetic premise explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePNTRateOneStatements/Variant982b5f39f11b3b2bdca3004106bb4549aaf1dbbf7a2aebb4ad0cd6596597cbc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePNTRateOneStatements/Variant982b5f39f11b3b2bdca3004106bb4549aaf1dbbf7a2aebb4ad0cd6596597cbc9.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8c764e42fb0f89d8ef5add85f419220c46cd67c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
