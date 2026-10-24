# evenPowerMoment_eq_logSum_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45c160c33c1f7be7de4255fea1045560def77484",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbbe43ac-db64-a2a5-d753-44375935cad0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86710625-7277-775d-816e-b90ed63bcf60",
  "kind": "theorem",
  "lexical_name": "evenPowerMoment_eq_logSum_integral",
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
  "slug": "evenpowermoment-eq-logsum-integral--9ff09ce9f99f2582c7a8721e",
  "source": {
    "blob": "45c160c33c1f7be7de4255fea1045560def77484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ff09ce9f99f2582c7a8721eae952abb07b9449365e729d81ecbb80c393eba50",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86710625-7277-775d-816e-b90ed63bcf60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evenPowerMoment_eq_logSum_integral (A : ℝ) (hA : 1 ≤ A) :
    evenPowerMoment A =
      -(∫ t in (0 : ℝ)..(2 * A), mangoldtLogSum (Real.exp (t / 2)) *
        deriv (sourceCorrelation explicitSecondDerivative A) t) := by
  have hA0 : 0 ≤ 2 * A := by linarith
  have hC := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have he : (∫ t in (0 : ℝ)..(2 * A), mangoldtLogSum (Real.exp (t / 2)) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) =
      ∑ n ∈ primePowerInventory A, (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
        (sourceCorrelation explicitSecondDerivative A (2 * A) -
          sourceCorrelation explicitSecondDerivative A (2 * Real.log n)) := by
    calc
      _ = ∫ t in (0 : ℝ)..(2 * A), ∑ n ∈ primePowerInventory A,
          (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
            (if 2 * Real.log n ≤ t then
              deriv (sourceCorrelation explicitSecondDerivative A) t else 0) := by
        apply intervalIntegral.integral_congr
        intro t ht
        exact mangoldtLogSum_mul_eq_steps A t _ ((uIcc_of_le hA0 ▸ ht).2)
      _ = _ := integral_finite_steps_deriv 0 (2 * A) (primePowerInventory A)
        (fun n ↦ 2 * Real.log n) (fun n ↦ ArithmeticFunction.vonMangoldt n / (n : ℝ))
        (by
          intro n hn
          have hb := inventory_log_bounds A n hn
          have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by
            exact_mod_cast (show 1 ≤ n from le_trans (by norm_num) (Finset.mem_Icc.mp hn).1))
          constructor <;> linarith)
        _ hC
  rw [he, sourceCorrelation_upper_endpoint A (by linarith)]
  simp only [zero_sub, mul_neg, Finset.sum_neg_distrib, neg_neg, evenPowerMoment]

/-- The complete Mertens discrepancy term is integrable on the actual source interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c160c33c1f7be7de4255fea1045560def77484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
