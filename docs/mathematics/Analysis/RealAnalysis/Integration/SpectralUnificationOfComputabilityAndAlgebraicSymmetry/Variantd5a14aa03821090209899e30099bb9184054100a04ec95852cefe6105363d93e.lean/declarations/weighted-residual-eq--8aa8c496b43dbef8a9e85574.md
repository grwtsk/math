# weighted_residual_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5771de3b-5f56-ecbe-b836-b9a7cea8138d",
  "kind": "theorem",
  "lexical_name": "weighted_residual_eq",
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
  "slug": "weighted-residual-eq--8aa8c496b43dbef8a9e85574",
  "source": {
    "blob": "5eab35fca16d9da902e259fefa3abdf29703fca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd5a14aa03821090209899e30099bb9184054100a04ec95852cefe6105363d93e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8aa8c496b43dbef8a9e85574946ad04281b387ea62703e4a26f654a37b8d70eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd5a14aa03821090209899e30099bb9184054100a04ec95852cefe6105363d93e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5771de3b-5f56-ecbe-b836-b9a7cea8138d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_residual_eq (A T : ℝ) (hA : 1 ≤ A) (hAT : A ≤ T) :
    scaleWeight A * mertensResidual A = ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff T),
      (vonMangoldt n / Real.sqrt n) *
        (scaleWeight A * sourceCorrelation explicitSecondDerivative A (Real.log n)) := by
  rw [mertensResidual_eq_plainWeight_sum A hA, Finset.mul_sum]
  calc
    _ = ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff T),
        scaleWeight A * (vonMangoldt n * sourcePlainWeight A n) := by
      apply Finset.sum_subset (Finset.Icc_subset_Icc_right (sourceKernelCutoff_mono hAT))
      intro n hn hnot
      have hcut : sourceKernelCutoff A < n := by
        have := Finset.mem_Icc.mp hn
        simp only [Finset.mem_Icc] at hnot
        omega
      rw [sourcePlainWeight_zero_of_cutoff_lt A hA n hcut, mul_zero, mul_zero]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro n _
      dsimp [sourcePlainWeight]
      ring

/-- All residual terms are genuinely integrable on every bounded real scale interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd5a14aa03821090209899e30099bb9184054100a04ec95852cefe6105363d93e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd5a14aa03821090209899e30099bb9184054100a04ec95852cefe6105363d93e.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eab35fca16d9da902e259fefa3abdf29703fca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
