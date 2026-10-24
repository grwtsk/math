# actualLowerColumnTimeFactor_eq_closed_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3fdac85-c895-0a9e-fb56-fe29f7cc00f7",
  "kind": "theorem",
  "lexical_name": "actualLowerColumnTimeFactor_eq_closed_window",
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
  "slug": "actuallowercolumntimefactor-eq-closed-window--7e658df44ea3198779b2cdb8",
  "source": {
    "blob": "a9199f49e80cd58de805343c65565a762d1b87ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion/Variante1a68170be7a19599d02fba2f6295a1c9d5a5b26a207f9fd7abced5abfce8395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e658df44ea3198779b2cdb83d925090630df92138c375d41ccd8e99047ac2ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion/Variante1a68170be7a19599d02fba2f6295a1c9d5a5b26a207f9fd7abced5abfce8395.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3fdac85-c895-0a9e-fb56-fe29f7cc00f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLowerColumnTimeFactor_eq_closed_window {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t
        (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) =
      mangoldtLogWindow (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ))
        (actualLowerColumnPrimeTest A) -
      (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualLowerColumnPrimeTest A t) +
      actualLowerColumnPrimeTest A (actualTimeLower A) *
        mangoldtLogError (actualTimeLower A) := by
  obtain ⟨hl, hb⟩ := actual_orders hA
  have hp : 0 < A := by linarith
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  have h0 := jet_contDiff_one hp 0 (by norm_num)
  have h2 := jet_contDiff_one hp 2 (by norm_num)
  simp only [iteratedDeriv_zero] at h0
  have hH : ContDiff ℝ 1 (fun t => actualLogMixedDensity A t a) := by
    unfold actualLogMixedDensity
    fun_prop
  have ht := actual_time_covariant_abel A 0 (Real.log (sourceKernelCutoff A : ℝ))
    hb (fun t => actualLogMixedDensity A t a) hH
  simp only [sub_zero, actualMixedDensity_upperTime_zero A hA a le_rfl, mul_zero,
    zero_sub, actualTwistedTimeDensity_eq_time_deriv hp] at ht
  have hd : deriv (actualLowerColumnPrimeTest A) =
      fun t => actualLogMixedDensity A t a := by
    funext t
    exact (actualLowerColumnPrimeTest_hasDerivAt hp t).deriv
  have ha := mangoldtLogWindow_sub_integral (actualTimeLower A)
    (Real.log (sourceKernelCutoff A : ℝ)) hl hb (actualLowerColumnPrimeTest A)
    (actualLowerColumnPrimeTest_contDiff hp)
  rw [actualLowerColumnPrimeTest_at_upper hA, zero_mul, zero_sub, hd, ht] at ha
  dsimp only [a] at ha
  linarith

/-- The lower trace is the exact product of both actual critical-half inventories. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion/Variante1a68170be7a19599d02fba2f6295a1c9d5a5b26a207f9fd7abced5abfce8395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion/Variante1a68170be7a19599d02fba2f6295a1c9d5a5b26a207f9fd7abced5abfce8395.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9199f49e80cd58de805343c65565a762d1b87ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
