# kernelMomentOne_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afa9eaa0-46dd-f4d8-2358-f9371e7c7e59",
  "kind": "theorem",
  "lexical_name": "kernelMomentOne_eq",
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
  "slug": "kernelmomentone-eq--bd07bb71660c73e555244962",
  "source": {
    "blob": "4f1ee3508d66942141d062fe874b58d26fab20d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 308,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd07bb71660c73e5552449627fa37f9938c3b61a52315b5dc572d9f65ad08e49",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afa9eaa0-46dd-f4d8-2358-f9371e7c7e59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernelMomentOne_eq (A : ℝ) (hA : 1 ≤ A) :
    kernelMomentOne A = 2 * A * (1 + criticalContinuousMoment A) -
      criticalContinuousMoment A - negativeFirstMoment A := by
  have hp : 0 < A := by linarith
  have hc := criticalPrimeTest_contDiff A hp
  have hi := hc.continuous.intervalIntegrable (μ := volume) 0 (2 * A)
  have hd := hc.continuous_deriv_one.intervalIntegrable (μ := volume) 0 (2 * A)
  have hit : IntervalIntegrable (fun s : ℝ => s * criticalPrimeTest A s) volume 0 (2 * A) := by
    exact (continuous_id.mul hc.continuous).intervalIntegrable 0 (2 * A)
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (0 : ℝ)) (b := 2 * A)
    (u := fun s : ℝ => 2 * A - s) (u' := fun _ : ℝ => (-1 : ℝ))
    (v := criticalPrimeTest A) (v' := deriv (criticalPrimeTest A))
    (fun s _ => (hasDerivAt_id s).const_sub (2 * A))
    (fun s _ => (hc.differentiable (by norm_num) s).hasDerivAt)
    (continuous_const.intervalIntegrable 0 (2 * A)) hd
  rw [criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A hA] at hparts
  simp only [sub_self, zero_mul, mul_one, sub_zero, neg_one_mul,
    intervalIntegral.integral_neg] at hparts
  have hip : IntervalIntegrable (fun s => (2 * A - s) * deriv (criticalPrimeTest A) s)
      volume 0 (2 * A) := by
    exact ((by fun_prop : Continuous (fun s : ℝ => 2 * A - s)).mul
      hc.continuous_deriv_one).intervalIntegrable 0 (2 * A)
  have hf : (fun s => kapitzaWeight A s * (2 * A - s)) =
      fun s => (2 * A * criticalPrimeTest A s - s * criticalPrimeTest A s) -
        (2 * A - s) * deriv (criticalPrimeTest A) s := by
    funext s
    rw [criticalPrimeTest_deriv A s hp]
    unfold kapitzaWeight kapitzaKernel criticalPrimeTest
    ring
  rw [kernelMomentOne, hf, intervalIntegral.integral_sub ((hi.const_mul _).sub hit) hip,
    intervalIntegral.integral_sub (hi.const_mul _) hit, intervalIntegral.integral_const_mul]
  have hfirst : (∫ s in 0..2 * A, s * criticalPrimeTest A s) = negativeFirstMoment A := by
    simpa only [criticalPrimeTest, mul_assoc] using positiveFirstMoment_eq_negative A hA
  rw [hfirst]
  change 2 * A * criticalContinuousMoment A - negativeFirstMoment A - _ = _
  have hparts2 : (∫ s in 0..2 * A, (2 * A - s) * deriv (criticalPrimeTest A) s) =
      -(2 * A) + criticalContinuousMoment A := by
    simpa only [zero_sub, sub_neg_eq_add, criticalContinuousMoment] using hparts
  rw [hparts2]
  ring

/-- The negative first trace has the fixed integral budget four. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f1ee3508d66942141d062fe874b58d26fab20d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
