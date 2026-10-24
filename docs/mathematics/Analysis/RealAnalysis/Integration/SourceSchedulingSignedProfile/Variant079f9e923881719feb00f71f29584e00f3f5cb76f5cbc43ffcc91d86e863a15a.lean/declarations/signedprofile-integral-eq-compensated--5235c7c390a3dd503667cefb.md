# signedProfile_integral_eq_compensated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39db1ae7-6146-7617-5dbb-0ee2f51b44a3",
  "kind": "theorem",
  "lexical_name": "signedProfile_integral_eq_compensated",
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
  "slug": "signedprofile-integral-eq-compensated--5235c7c390a3dd503667cefb",
  "source": {
    "blob": "c0d9c7f1efed4b385020c98feece283847a955a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant079f9e923881719feb00f71f29584e00f3f5cb76f5cbc43ffcc91d86e863a15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5235c7c390a3dd503667cefb8679d9db8f66d8eebc92c87aaa637d37055357c3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant079f9e923881719feb00f71f29584e00f3f5cb76f5cbc43ffcc91d86e863a15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39db1ae7-6146-7617-5dbb-0ee2f51b44a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedProfile_integral_eq_compensated (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * signedProfile A t) =
        SourceKapitzaCompensatedReadout.compensatedSourceSum A := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  have hc : ContDiff ℝ 2 C := SourceCorrelationCurvature.sourceCorrelation_contDiff_two hp
  have hd : Continuous (deriv (deriv C)) := hc.deriv'.continuous_deriv_one
  have hi (n : ℕ) : IntervalIntegrable
      (fun t => if Real.log n ≤ t then (t - Real.log n) * deriv (deriv C) t else 0)
      volume 0 (2 * A) :=
    intervalIntegrable_closed_step 0 (2 * A) (Real.log n) _
      (((by fun_prop : Continuous (fun t : ℝ => t - Real.log n)).mul hd).intervalIntegrable
        0 (2 * A))
  have he : (fun t => deriv (deriv C) t * signedProfile A t) =
      fun t => ∑ n ∈ primePowerInventory (2 * A),
        (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
          (if Real.log n ≤ t then (t - Real.log n) * deriv (deriv C) t else 0) := by
    funext t
    unfold signedProfile
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    by_cases hn : Real.log n ≤ t <;> simp only [hn, if_true, if_false, mul_zero]
    ring
  change (∫ t in 0..2 * A, deriv (deriv C) t * signedProfile A t) = _
  rw [he, intervalIntegral.integral_finsetSum]
  · unfold SourceKapitzaCompensatedReadout.compensatedSourceSum
    apply Finset.sum_congr rfl
    intro n hn
    have hnlog := mangoldtInventory_log_bounds (2 * A) n hn
    rw [intervalIntegral.integral_const_mul,
      integral_closed_step 0 (2 * A) (Real.log n) hnlog.1 hnlog.2]
    rw [second_endpoint_integral C hc (Real.log n) (2 * A)
      (sourceCorrelation_upper_endpoint A hp)
      (EstimateSourceMobiusDerivative.sourceCorrelation_deriv_zero_of_two_mul_le
        A (2 * A) hp (le_refl _))]
    have hn0 : 0 < n := by
      have := (Finset.mem_Icc.mp hn).1
      omega
    rw [exponentialTest_log _ n hn0]
    dsimp only [C]
    ring
  · intro n _
    exact (hi n).const_mul _

/-- A one-sided integral bound is sufficient; no absolute profile or transport cost is required. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant079f9e923881719feb00f71f29584e00f3f5cb76f5cbc43ffcc91d86e863a15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant079f9e923881719feb00f71f29584e00f3f5cb76f5cbc43ffcc91d86e863a15a.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0d9c7f1efed4b385020c98feece283847a955a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
