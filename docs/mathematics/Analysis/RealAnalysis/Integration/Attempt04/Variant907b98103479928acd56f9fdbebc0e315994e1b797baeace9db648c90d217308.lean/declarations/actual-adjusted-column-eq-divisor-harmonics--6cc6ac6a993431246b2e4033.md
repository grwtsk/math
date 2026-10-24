# actual_adjusted_column_eq_divisor_harmonics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6709f7e1-1f0f-0c99-c1ff-0697df7779db",
  "kind": "theorem",
  "lexical_name": "actual_adjusted_column_eq_divisor_harmonics",
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
  "slug": "actual-adjusted-column-eq-divisor-harmonics--6cc6ac6a993431246b2e4033",
  "source": {
    "blob": "3ea63a26a1c3f4953404950d73b1e9c4d99170b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant907b98103479928acd56f9fdbebc0e315994e1b797baeace9db648c90d217308.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cc6ac6a993431246b2e4033bcc787ad0f694f856a108380612041ff144c49a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt04/Variant907b98103479928acd56f9fdbebc0e315994e1b797baeace9db648c90d217308.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6709f7e1-1f0f-0c99-c1ff-0697df7779db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_adjusted_column_eq_divisor_harmonics {A s : ℝ} (hA : 1 ≤ A)
    (hs0 : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s)
    (hs1 : s ≤ actualColumnUpper A) :
    actualCriticalAdjustedColumnPrimitive A s =
      2 * Real.sqrt (Real.exp s) *
        (alpha (vaughanCutoff A) * finiteHalfHarmonic (Nat.floor (Real.exp s)) -
          (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) / Real.sqrt (d : ℝ) *
            finiteHalfHarmonic (Nat.floor (Real.exp s) / d)) + 1 -
          alpha (vaughanCutoff A) * finiteHalfHarmonic (vaughanCutoff A)) -
      2 * (alpha (vaughanCutoff A) *
          (((Nat.floor (Real.exp s) : ℕ) : ℝ) - (vaughanCutoff A : ℝ)) + 1 -
        ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
          (moebius d : ℝ) * ((Nat.floor (Real.exp s) / d : ℕ) : ℝ)) +
      2 * Real.sqrt (Real.exp s) *
        (actualCenteredColumnTerminalTrace A - actualCenteredHalfUpperDefect A) := by
  have hU := vaughanCutoff_pos A hA
  have hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ Real.exp s := by
    calc
      _ = Real.exp (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) :=
        (Real.exp_log (by positivity)).symm
      _ ≤ _ := Real.exp_le_exp.mpr hs0
  have hM : vaughanCutoff A ≤ Nat.floor (Real.exp s) := by
    have := Nat.le_floor hu
    omega
  rw [actual_adjusted_column_eq_closed_inventory hA hs0 hs1,
    closedCenteredHalfInventory_eq_finite_harmonics _ _ hU hM,
    closed_centered_prefix_eq_divisor_quotients _ _ hU hM]

/-- At the closed upper K seam, the full inventory cancels its new jump and retains the main. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt04/Variant907b98103479928acd56f9fdbebc0e315994e1b797baeace9db648c90d217308.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant907b98103479928acd56f9fdbebc0e315994e1b797baeace9db648c90d217308.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea63a26a1c3f4953404950d73b1e9c4d99170b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
