# actualFarPeriodicCutoff_source_guards

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10d9f691-bd10-b526-e076-c8a7ae8c0566",
  "kind": "theorem",
  "lexical_name": "actualFarPeriodicCutoff_source_guards",
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
  "slug": "actualfarperiodiccutoff-source-guards--72479cbc4d24db5062ff1fd0",
  "source": {
    "blob": "b955fe6646388ea7a9657bf873bef9d091fb444b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 294,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualFarPeriodicWorkDecay/Variantd0ed98e7755281a1b9c334a0e3ab7c5d741e14c7c25299ef6a5fe13f324a227f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72479cbc4d24db5062ff1fd067f394c3c72844938e81abed4ac05372c50b7b18",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualFarPeriodicWorkDecay/Variantd0ed98e7755281a1b9c334a0e3ab7c5d741e14c7c25299ef6a5fe13f324a227f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10d9f691-bd10-b526-e076-c8a7ae8c0566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFarPeriodicCutoff_source_guards {A : ℝ} (hA : 25600 ≤ A) :
    ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualFarPeriodicCutoff A ∧
      actualFarPeriodicCutoff A ≤
        ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) ∧
      actualTimeLower A ≤ 2 * A - Real.log (actualFarPeriodicCutoff A) ∧
      2 * A - Real.log (actualFarPeriodicCutoff A) ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (vaughanCutoff A + 1)
  let S := A / 2 + Real.log (U : ℝ) + 3 * Real.log A / 2
  have hU1 : (1 : ℝ) ≤ (U : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA1
  have hUp : 0 < (U : ℝ) := by linarith
  have hAU : A ≤ (U : ℝ) := by
    have hf := Nat.lt_floor_add_one (A ^ 2)
    change A ^ 2 < (U : ℝ) + 1 at hf
    nlinarith [sq_nonneg (A - 1)]
  have hlogA : Real.log A ≤ Real.log (U : ℝ) := Real.log_le_log hAp hAU
  have hlogU : Real.log (U : ℝ) ≤ A / 40 := log_vaughanCutoff_le_early_window hA
  have hlogA0 : 0 ≤ Real.log A := Real.log_nonneg hA1
  have hSlo : Real.log (U : ℝ) + 3 ≤ S := by dsimp [S]; linarith
  have hShi : S ≤ 9 * A / 16 := by dsimp [S]; linarith
  have hKa : vaughanCutoff A + 1 ≤ K := actual_column_window_nonempty hA1
  have hKp : 0 < (K : ℝ) := by exact_mod_cast (show 0 < K by omega)
  have hc := actualUpperColumn_time_width_le hA1
  change 2 * A - Real.log (K : ℝ) - Real.log (U : ℝ) ≤ 3 / (U : ℝ) at hc
  have hdiv : 3 / (U : ℝ) ≤ 3 := (div_le_iff₀ hUp).2 (by nlinarith)
  have hSK : S ≤ Real.log (K : ℝ) := by linarith
  have hlogCut : Real.log (actualFarPeriodicCutoff A) = S := Real.log_exp S
  have hCutK : actualFarPeriodicCutoff A ≤ (K : ℝ) := by
    have he := Real.exp_le_exp.mpr hSK
    rw [Real.exp_log hKp] at he
    exact he
  have hCutU : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualFarPeriodicCutoff A := by
    have hlog2 : Real.log 2 ≤ 1 := by
      have hh := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
      linarith
    have he : 2 * (U : ℝ) ≤ Real.exp S := by
      calc
        _ = Real.exp (Real.log 2 + Real.log (U : ℝ)) := by
          rw [Real.exp_add, Real.exp_log (by norm_num : (0 : ℝ) < 2), Real.exp_log hUp]
        _ ≤ _ := Real.exp_le_exp.mpr (by linarith)
    have hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) = (U : ℝ) + 1 := by dsimp [U]; simp
    rw [hu]
    exact (by linarith : (U : ℝ) + 1 ≤ 2 * (U : ℝ)).trans he
  have htimeLo : actualTimeLower A ≤ 2 * A - Real.log (actualFarPeriodicCutoff A) := by
    rw [hlogCut]
    change Real.log (U : ℝ) ≤ 2 * A - S
    linarith
  have htimeHi : 2 * A - Real.log (actualFarPeriodicCutoff A) ≤
      Real.log (sourceKernelCutoff A : ℝ) := by
    rw [hlogCut]
    have hKN : (K : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
      exact_mod_cast Nat.div_le_self (sourceKernelCutoff A) (vaughanCutoff A + 1)
    have hlN := Real.log_le_log hKp hKN
    linarith
  exact ⟨hCutU, hCutK, htimeLo, htimeHi⟩

/-- The actual far periodic component has a genuine decaying budget, with no mean deletion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualFarPeriodicWorkDecay/Variantd0ed98e7755281a1b9c334a0e3ab7c5d741e14c7c25299ef6a5fe13f324a227f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualFarPeriodicWorkDecay/Variantd0ed98e7755281a1b9c334a0e3ab7c5d741e14c7c25299ef6a5fe13f324a227f.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b955fe6646388ea7a9657bf873bef9d091fb444b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
