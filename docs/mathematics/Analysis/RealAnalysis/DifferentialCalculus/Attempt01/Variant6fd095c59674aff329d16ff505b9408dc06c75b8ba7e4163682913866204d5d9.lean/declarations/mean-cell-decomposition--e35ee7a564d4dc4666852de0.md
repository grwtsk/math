# mean_cell_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f90dd53b-3802-965e-bae3-0f7df10f204d",
  "kind": "theorem",
  "lexical_name": "mean_cell_decomposition",
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
  "slug": "mean-cell-decomposition--e35ee7a564d4dc4666852de0",
  "source": {
    "blob": "9f5068f22db4f9d87613c98a76906597e6744dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant6fd095c59674aff329d16ff505b9408dc06c75b8ba7e4163682913866204d5d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e35ee7a564d4dc4666852de0e7744c295e6e7a4b5d9d1a9c526ff56c3e4d6d69",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant6fd095c59674aff329d16ff505b9408dc06c75b8ba7e4163682913866204d5d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f90dd53b-3802-965e-bae3-0f7df10f204d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mean_cell_decomposition {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualLogColumnPrefix A s * actualTwistedTimeDensity A t s) =
      actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
          actualTwistedTimeDensity A t s) +
      ∑ M ∈ Finset.Ico (vaughanCutoff A + 1)
          (sourceKernelCutoff A / (vaughanCutoff A + 1)),
        ((∑ n ∈ Finset.Ioc (vaughanCutoff A) M, centeredBeta (vaughanCutoff A) n) -
          actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
            actualPeriodicColumnEndpointWeight A t (M + 1) := by
  let U := vaughanCutoff A
  let a := U + 1
  let K := sourceKernelCutoff A / a
  have hK : a ≤ K := actual_column_window_nonempty hA
  have hT := (twisted_contDiff (by linarith : 0 < A) t).continuous
  have h := actual_finite_log_prefix_transport A K hK (actualTwistedTimeDensity A t) hT
  have hs := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (a := fun M : ℕ => Real.log (M : ℝ)) hK
    (fun M _ => hT.intervalIntegrable _ _)
  rw [← h]
  change _ = actualCenteredPrefixPeriodMean U *
    (∫ s in Real.log (a : ℝ)..Real.log (K : ℝ), actualTwistedTimeDensity A t s) + _
  rw [← hs, Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro M _
  rw [weight_succ A t M]
  ring

/-- The actual source prefix integral equals its retained mean and finite Abel row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant6fd095c59674aff329d16ff505b9408dc06c75b8ba7e4163682913866204d5d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant6fd095c59674aff329d16ff505b9408dc06c75b8ba7e4163682913866204d5d9.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f5068f22db4f9d87613c98a76906597e6744dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
