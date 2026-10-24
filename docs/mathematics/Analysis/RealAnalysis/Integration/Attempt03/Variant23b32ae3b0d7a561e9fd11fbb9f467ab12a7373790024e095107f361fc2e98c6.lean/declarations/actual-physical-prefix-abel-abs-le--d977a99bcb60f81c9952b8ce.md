# actual_physical_prefix_abel_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d0abc1e-df49-ed8b-6caa-23859763afbf",
  "kind": "theorem",
  "lexical_name": "actual_physical_prefix_abel_abs_le",
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
  "slug": "actual-physical-prefix-abel-abs-le--d977a99bcb60f81c9952b8ce",
  "source": {
    "blob": "1d548d1814c1bf8b9cb6b8ef19adeee812522506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 275,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant23b32ae3b0d7a561e9fd11fbb9f467ab12a7373790024e095107f361fc2e98c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d977a99bcb60f81c9952b8ce7592143774330322d0a18696201abcbbc64d21d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt03/Variant23b32ae3b0d7a561e9fd11fbb9f467ab12a7373790024e095107f361fc2e98c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d0abc1e-df49-ed8b-6caa-23859763afbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_physical_prefix_abel_abs_le (U : ℕ) {l b : ℝ} (hU : 1 ≤ U)
    (hl : (U : ℝ) ≤ l) (hlb : l ≤ b) (F : ℝ → ℝ)
    (hF : ContDiffOn ℝ 1 F (uIcc l b)) :
    |∫ x in l..b,
      ((∑ n ∈ Finset.Ioc U (Nat.floor x), centeredBeta U n) -
        actualCenteredPrefixPeriodMean U) * F x| ≤
      (U : ℝ) * ((U : ℝ) + 1) / 16 *
        (|F b| + |F l| + ∫ x in l..b, |deriv F x|) := by
  let C : ℝ := (U : ℝ) * ((U : ℝ) + 1) / 16
  have hl0 : 0 ≤ l := (Nat.cast_nonneg U).trans hl
  have hFA : AbsolutelyContinuousOnInterval F l b := hF.absolutelyContinuousOnInterval
  have hn : |∫ x in l..b, actualPhysicalPeriodicPrimitive U x * deriv F x| ≤
      C * ∫ x in l..b, |deriv F x| := by
    have hg : IntervalIntegrable (fun x => C * |deriv F x|) volume l b := by
      simpa only [Real.norm_eq_abs] using hFA.intervalIntegrable_deriv.norm.const_mul C
    have he : ∀ᵐ x : ℝ, x ∈ Ioc l b →
        ‖actualPhysicalPeriodicPrimitive U x * deriv F x‖ ≤ C * |deriv F x| := by
      filter_upwards with x hx
      rw [Real.norm_eq_abs, abs_mul]
      exact mul_le_mul_of_nonneg_right
        (actualPhysicalPeriodicPrimitive_abs_le U x (hl0.trans hx.1.le)) (abs_nonneg _)
    have hi := intervalIntegral.norm_integral_le_of_norm_le hlb he hg
    simpa only [Real.norm_eq_abs, intervalIntegral.integral_const_mul] using hi
  have hb : |actualPhysicalPeriodicPrimitive U b * F b| ≤ C * |F b| := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_right
      (actualPhysicalPeriodicPrimitive_abs_le U b (hl0.trans hlb)) (abs_nonneg _)
  have hll : |actualPhysicalPeriodicPrimitive U l * F l| ≤ C * |F l| := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_right
      (actualPhysicalPeriodicPrimitive_abs_le U l hl0) (abs_nonneg _)
  rw [actual_physical_prefix_abel U hU hl hlb F hF]
  have hh := abs_sub_le (actualPhysicalPeriodicPrimitive U b * F b -
    actualPhysicalPeriodicPrimitive U l * F l)
      (∫ x in l..b, actualPhysicalPeriodicPrimitive U x * deriv F x)
  have hhh := abs_sub_le (actualPhysicalPeriodicPrimitive U b * F b)
    (actualPhysicalPeriodicPrimitive U l * F l)
  change _ ≤ C * _
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualPhysicalPeriodicPrimitive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variant23b32ae3b0d7a561e9fd11fbb9f467ab12a7373790024e095107f361fc2e98c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant23b32ae3b0d7a561e9fd11fbb9f467ab12a7373790024e095107f361fc2e98c6.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d548d1814c1bf8b9cb6b8ef19adeee812522506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
