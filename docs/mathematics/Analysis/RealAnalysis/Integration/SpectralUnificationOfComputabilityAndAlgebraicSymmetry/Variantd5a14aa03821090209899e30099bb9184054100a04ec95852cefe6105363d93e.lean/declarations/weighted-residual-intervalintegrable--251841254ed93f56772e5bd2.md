# weighted_residual_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf7ff18e-460d-0de2-3ac6-5f3efafdfb94",
  "kind": "theorem",
  "lexical_name": "weighted_residual_intervalIntegrable",
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
  "slug": "weighted-residual-intervalintegrable--251841254ed93f56772e5bd2",
  "source": {
    "blob": "5eab35fca16d9da902e259fefa3abdf29703fca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd5a14aa03821090209899e30099bb9184054100a04ec95852cefe6105363d93e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:251841254ed93f56772e5bd2cacef3841dde90b2c81ecde4f1c4ca4c840180bd",
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

Occurrence: `result:cf7ff18e-460d-0de2-3ac6-5f3efafdfb94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_residual_intervalIntegrable (T : ℝ) (hT : 1 ≤ T) :
    IntervalIntegrable (fun A ↦ scaleWeight A * mertensResidual A) volume 1 T := by
  have hi (n : ℕ) (hn : n ∈ Finset.Icc 1 (sourceKernelCutoff T)) :
      IntervalIntegrable (fun A ↦ (vonMangoldt n / Real.sqrt n) *
        (scaleWeight A * sourceCorrelation explicitSecondDerivative A (Real.log n))) volume 1 T :=
    (weighted_correlation_intervalIntegrable T _ hT
      (Real.log_nonneg (by exact_mod_cast (Finset.mem_Icc.mp hn).1))).const_mul _
  have hs : IntervalIntegrable (fun A ↦ ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff T),
      (vonMangoldt n / Real.sqrt n) *
        (scaleWeight A * sourceCorrelation explicitSecondDerivative A (Real.log n))) volume 1 T :=
    ⟨integrable_finsetSum _ (fun n hn ↦ (hi n hn).1),
      integrable_finsetSum _ (fun n hn ↦ (hi n hn).2)⟩
  apply hs.congr
  intro A hA
  rw [uIoc_of_le hT] at hA
  exact (weighted_residual_eq A T hA.1.le hA.2).symm

/-- The actual signed primitive retains exactly the degree-twenty short-factor error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd5a14aa03821090209899e30099bb9184054100a04ec95852cefe6105363d93e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd5a14aa03821090209899e30099bb9184054100a04ec95852cefe6105363d93e.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eab35fca16d9da902e259fefa3abdf29703fca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
