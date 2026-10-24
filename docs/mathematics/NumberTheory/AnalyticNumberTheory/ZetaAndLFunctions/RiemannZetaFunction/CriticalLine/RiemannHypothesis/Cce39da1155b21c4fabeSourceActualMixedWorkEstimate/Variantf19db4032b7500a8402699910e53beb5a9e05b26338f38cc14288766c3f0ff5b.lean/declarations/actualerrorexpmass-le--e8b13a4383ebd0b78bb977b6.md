# actualErrorExpMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b6389c2-64a6-88a8-1fca-addcba237817",
  "kind": "theorem",
  "lexical_name": "actualErrorExpMass_le",
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
  "slug": "actualerrorexpmass-le--e8b13a4383ebd0b78bb977b6",
  "source": {
    "blob": "ed0b1d8f520a46b91dbeb2eb9829f53ff1df054d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cce39da1155b21c4fabeSourceActualMixedWorkEstimate/Variantf19db4032b7500a8402699910e53beb5a9e05b26338f38cc14288766c3f0ff5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8b13a4383ebd0b78bb977b61c989d5c8c88a925fff44faa701697caa2eadcaa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cce39da1155b21c4fabeSourceActualMixedWorkEstimate/Variantf19db4032b7500a8402699910e53beb5a9e05b26338f38cc14288766c3f0ff5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b6389c2-64a6-88a8-1fca-addcba237817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualErrorExpMass_le (A : ℝ) (hA : 1 ≤ A) :
    actualErrorExpMass A ≤
      2 * (Real.log 4 + 4 + Real.log 2) * Real.exp A := by
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let l := Real.log (U : ℝ)
  let b := Real.log (N : ℝ)
  let Ce := Real.log 4 + 4 + Real.log 2
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hUN : U ≤ N := vaughanCutoff_le_sourceKernelCutoff A hA
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hN0 : 0 < (N : ℝ) := by exact_mod_cast (by omega : 0 < N)
  have hl0 : 0 ≤ l := Real.log_nonneg (by exact_mod_cast hU)
  have hlb : l ≤ b := Real.log_le_log hU0 (by exact_mod_cast hUN)
  have he : IntervalIntegrable (fun t => mangoldtLogError t * Real.exp (t / 2))
      volume l b := by
    have hd (t : ℝ) : deriv (fun t : ℝ => 2 * Real.exp (t / 2)) t =
        Real.exp (t / 2) := (exp_half_antiderivative t).deriv
    have hc : ContDiff ℝ 1 (fun t : ℝ => 2 * Real.exp (t / 2)) := by fun_prop
    simpa only [hd] using mangoldtLogError_mul_deriv_intervalIntegrable l b hlb _ hc
  have hea : IntervalIntegrable (fun t => |mangoldtLogError t| * Real.exp (t / 2))
      volume l b := by
    apply he.abs.congr
    intro t _
    change |mangoldtLogError t * Real.exp (t / 2)| =
      |mangoldtLogError t| * Real.exp (t / 2)
    rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  have hexp : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2)) volume l b := by
    have hc : Continuous (fun t : ℝ => Real.exp (t / 2)) := by fun_prop
    exact hc.intervalIntegrable l b
  have hCe : 0 ≤ Ce := by
    dsimp only [Ce]
    positivity
  have hle : (∫ t in l..b, |mangoldtLogError t| * Real.exp (t / 2)) ≤
      ∫ t in l..b, Ce * Real.exp (t / 2) := by
    apply intervalIntegral.integral_mono_on hlb hea (hexp.const_mul Ce)
    intro t ht
    exact mul_le_mul_of_nonneg_right (mangoldtLogError_abs_le t (hl0.trans ht.1))
      (Real.exp_pos _).le
  have hi : (∫ t in l..b, Real.exp (t / 2)) =
      2 * Real.exp (b / 2) - 2 * Real.exp (l / 2) := by
    exact intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ => exp_half_antiderivative t) hexp
  have hNb : (N : ℝ) ≤ Real.exp (2 * A) := by
    exact Nat.floor_le (Real.exp_pos _).le
  have hb : b ≤ 2 * A := by
    have h := Real.log_le_log hN0 hNb
    simpa only [Real.log_exp] using h
  have heb : Real.exp (b / 2) ≤ Real.exp A :=
    Real.exp_le_exp.mpr (by linarith)
  change (∫ t in l..b, |mangoldtLogError t| * Real.exp (t / 2)) ≤ _
  rw [intervalIntegral.integral_const_mul, hi] at hle
  nlinarith [Real.exp_pos (l / 2)]

end
end FormalResearch.RiemannHypothesis.SourceActualMixedWorkEstimate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cce39da1155b21c4fabeSourceActualMixedWorkEstimate/Variantf19db4032b7500a8402699910e53beb5a9e05b26338f38cc14288766c3f0ff5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cce39da1155b21c4fabeSourceActualMixedWorkEstimate/Variantf19db4032b7500a8402699910e53beb5a9e05b26338f38cc14288766c3f0ff5b.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed0b1d8f520a46b91dbeb2eb9829f53ff1df054d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
